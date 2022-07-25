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
        public Dictionary<bool, string> response = new Dictionary<bool, string>();
        public List<Product> lstProduct = new List<Product>();

        ProductControl product = new ProductControl();

        protected void EditProduct(object sender, EventArgs e)
        {
            product.ID = int.Parse(product__id_edit.Value);

            GetProductByID();
            VerifyField();

            response = product.Edit();

            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "ReturnPage", "$(document).ready(function () { location.href = 'https://localhost:44339/index.aspx'; });", true);
        }

        private void GetProductByID()
        {
            lstProduct = product.FindByID();

            product.Name = lstProduct[0].Name;
            product.Description = lstProduct[0].Description;
            product.Type = lstProduct[0].Type;
            product.Price = lstProduct[0].Price;
        }

        private void VerifyField()
        {
            if (product__name_edit.Value != null)
            {
                product.Name = product__name_edit.Value;
            }
            if (product__description_edit.Value != null)
            {
                product.Description = product__description_edit.Value;
            }
            if (Request["product__type_edit"] != null)
            {
                product.Type = Request["product__type_edit"].ToString();
            }
            if (product__price_edit.Value != null)
            {
                product.Price = Double.Parse(product__price_edit.Value);
            }
        }
    }
}