using Product_List.Backend.Controls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Product__List.Views
{
    public partial class delete : System.Web.UI.Page
    {
        Dictionary<bool, string> response = new Dictionary<bool, string>();

        ProductControl product = new ProductControl();

        protected void RemoveProduct(object sender, EventArgs e)
        {
            product.ID = int.Parse(product__id_remove.Value);

            response = product.Remove();

            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "ReturnPage", "$(document).ready(function () { location.href = 'https://localhost:44339/index.aspx'; });", true);
        }
    }
}