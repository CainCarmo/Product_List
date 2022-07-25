using System;

namespace Product_List.Backend.Entity
{
    public class Product
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string Type { get; set; }
        public double Price { get; set; }
        public DateTime RegisDate { get; set; }
    }
}