using System;
using System.Collections.Generic;
using Product_List.Backend.Controls;
using Product_List.Backend.Entity;

namespace Product__List
{
    public partial class index : System.Web.UI.Page
    {
        public Dictionary<bool, string> response = new Dictionary<bool, string>();
        public List<Product> lstProducts = new List<Product>();

        ProductControl product = new ProductControl();

        protected void Page_Load(object sender, EventArgs e)
        {
            lstProducts = product.FindAll();
            lstProducts.ForEach(x => { x.Type = product.ToggleType(x.Type); });
        }

        protected void SendProduct(object sender, EventArgs e)
        {
            product.Name = product__name_include.Value;
            product.Description = product__description_include.Value;
            product.Type = Request["product__type_include"].ToString();
            product.Price = Double.Parse(product__price_include.Value);
            product.RegisDate = DateTime.Now;

            response = product.Register();

            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "ReturnPage", "$(document).ready(function () { location.href = location.href; });", true);
        }
    }
}