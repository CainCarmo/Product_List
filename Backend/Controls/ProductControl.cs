using Product_List.Backend.Entity;
using System.Collections.Generic;
using Product_List.Backend.Models;

namespace Product_List.Backend.Controls
{
    public enum ProductType
    {
        Alimentício = 1,
        Bebida,
        Limpeza,
        Saúde,
        Higiene,
        Automotivo,
        Ferramenta,
        Eletrônico,
        Eletrodoméstico,
        Construção,
        Móveis,
        Decoração,
        Utensílio,
        Vestuário,
        Acessórios,
        Beleza,
        Papelaria
    }

    public class ProductControl : Product
    {
        CommandsDB commands = new CommandsDB();

        public Dictionary<bool, string> Register()
        {
            return commands.Insert(Name, Description, Type, Price, RegisDate);
        }

        public List<Product> FindAll()
        {
            return commands.SelectAll();
        }

        public List<Product> FindByID()
        {
            return commands.SelectByID(ID);
        }

        public Dictionary<bool, string> Edit()
        {
            return commands.Update(ID, Name, Description, int.Parse(Type), Price);
        }

        public Dictionary<bool, string> Remove()
        {
            return commands.Delete(ID);
        }

        public string ToggleType(string type)
        {
            ProductType productType = (ProductType)int.Parse(type);

            return productType.ToString();
        }
    }
}