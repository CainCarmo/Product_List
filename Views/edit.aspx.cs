using Product_List.Backend.Controls;
using Product_List.Backend.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Product__List.Views
{
    public partial class edit : System.Web.UI.Page
    {
        Dictionary<bool, string> response = new Dictionary<bool, string>();

        ProductControl product = new ProductControl();

        protected void EditProduct(object sender, EventArgs e)
        {
            product.ID = int.Parse(product__id_edit.Value);
            product.Name = product__name_edit.Value;
            product.Description = product__description_edit.Value;
            product.Type = Request["product__type_edit"].ToString();
            product.Price = Double.Parse(product__price_edit.Value);

            response = product.Edit();

            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "ReturnPage", "$(document).ready(function () { location.href = 'https://localhost:44339/index.aspx'; });", true);
        }
    }
}