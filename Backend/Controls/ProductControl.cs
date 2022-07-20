using System;
using Product_List.Backend.Entity;
using System.Collections.Generic;
using Product_List.Backend.Models;
using System.Linq;
using System.Web;

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
            return commands.Insert(Name, Description, Type, Price);
        }

        public List<Product> FindAll()
        {
            return commands.SelectAll("PRODUCT");
        }

        public List<Product> FindByID(int id)
        {
            return commands.SelectByID("PRODUCT", id);
        }

        public Dictionary<bool, string> Edit(int id)
        {
            return commands.Update(id, Name, Description, int.Parse(Type), Price);
        }

        public Dictionary<bool, string> Remove(int id)
        {
            return commands.Delete(id);
        }
    }
}