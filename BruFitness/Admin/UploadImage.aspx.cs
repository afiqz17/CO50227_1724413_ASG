using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace BruFitness
{
    public partial class UploadPictures : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ProductID = Request.QueryString["Id"];
            string filename = ProductID + ".jpg";

            LatestImage.ImageUrl = "/Pictures/Products/" + filename;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string ProductID = Request.QueryString["Id"];

            string filename = ProductID + ".jpg";

            string saveLocation = Server.MapPath("/Pictures/Products/" + filename);

            PicturesFileUploadControl.SaveAs(saveLocation);

        }
    }
}