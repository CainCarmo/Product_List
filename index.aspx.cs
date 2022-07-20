using System;
using System.Collections.Generic;
using Product_List.Backend.Controls;
using Product_List.Backend.Entity;

namespace Product_List
{
    public partial class index : System.Web.UI.Page
    {
        ProductControl product = new ProductControl();

        public Dictionary<bool, string> response = new Dictionary<bool, string>();
        public List<Product> lstProducts = new List<Product>();
        public List<Product> lstProduct = new List<Product>();

        protected void Page_Load(object sender, EventArgs e)
        {
            lstProducts = product.FindAll();

            lstProducts.ForEach(x => { x.Type = ToggleType(x.Type); });
        }

        protected void Product__submit_Click(object sender, EventArgs e)
        {
            product.Name = Request["product-name"].ToString();
            product.Description = Request["product-description"].ToString();
            product.Type = Request["product-type"].ToString();
            product.Price = Double.Parse(Request["product-price"]);

            response =  product.Register();
        }

        public string ToggleType(string type)
        {
            ProductType productType = (ProductType)int.Parse(type);

            return productType.ToString();
        }
    }
}