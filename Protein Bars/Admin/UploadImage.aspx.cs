using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Protein_Bars
{
    public partial class UploadPictures : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];
            string filename = productId + ".jpg";

            LatestImage.ImageUrl = "~/Pictures/Products/" + filename;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string productId = Request.QueryString["Id"];

            string filename = productId + ".jpg";

            string saveLocation = Server.MapPath("~/Pictures/Products/" + filename);

            PicturesFileUploadControl.SaveAs(saveLocation);

        }
    }
}