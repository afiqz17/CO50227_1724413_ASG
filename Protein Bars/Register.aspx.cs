using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Protein_Bars
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            IdentityRole adminRole = new IdentityRole("RegisteredUser");
            roleManager.Create(adminRole);

            //Create user
            var user = new IdentityUser() { UserName = txtUserName.Text, Email = txtEmail.Text };
            IdentityResult result = manager.Create(user, txtPassword.Text);
            if (result.Succeeded)
            {
                manager.AddToRole(user.Id, "RegisteredUser");
                manager.Update(user);
                Literal.Text = "Successfully Registered";

            }
            else
            {
                Literal.Text = " An error has occured: " + result.Errors.FirstOrDefault();
            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var usermanager = new UserManager<IdentityUser>(userStore);
            var user = usermanager.Find(txtLogInUser.Text, txtLogInPassword.Text);

            if (user != null)
            {
                LogUserIn(usermanager, user);
                Literal2.Text = "Successfully login.";
                /*if (Roles.IsUserInRole(user.UserName,"Admin"))
                {
                    Page.Response.Redirect("Admin/Admin.aspx");
                }
                else
                {

                    Response.Redirect("~/Index.aspx");
                }*/
            }

            else

            {

                Literal2.Text = " Incorrect Username or Password: ";
                
            }


        }

        private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new Microsoft.Owin.Security.AuthenticationProperties() { }, userIdentity);


        
                String userAdminRoles = usermanager.GetRoles(user.Id).FirstOrDefault();
            if (userAdminRoles.Equals("Admin"))
            {
                Response.Redirect("~/Admin/Admin.aspx");
            }
            else
            {
                String userRoles = usermanager.GetRoles(user.Id).FirstOrDefault();
                if (userRoles.Equals("RegisteredUser"))
                {
                    Response.Redirect("~/Index.aspx");
                }
            }


            }
        } 

}
    

