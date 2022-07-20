﻿using Product_List.Backend.Entity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Product_List.Backend.Models
{
    public class CommandsDB : ConnectionDB
    {
        Dictionary<bool, string> Message = new Dictionary<bool, string>();
        List<Product> lstProducts = new List<Product>();

        SqlCommand sqlCommand = new SqlCommand();
        SqlDataReader dataReader;

        public Dictionary<bool, string> Insert(string name, string description, string type, double price)
        {
            ClearCollenctions();

            sqlCommand.CommandText = "INSERT INTO PRODUCT VALUES (@NAME, @DESCRIPTION, @FK_TYPE_ID, @PRICE)";
            sqlCommand.Parameters.AddWithValue("@NAME", name);
            sqlCommand.Parameters.AddWithValue("@DESCRIPTION", description);
            sqlCommand.Parameters.AddWithValue("@FK_TYPE_ID", type);
            sqlCommand.Parameters.AddWithValue("@PRICE", price);

            try
            {
                sqlCommand.Connection = Connect();
                sqlCommand.ExecuteNonQuery();

                Message.Add(true, "Cadastrado com Sucesso!");
            }
            catch (SqlException ex)
            {
                Message.Add(false, string.Format("Erro com Banco de Dados -> {0}", ex.Message));
            }
            finally
            {
                Disconnect();
            }

            return Message;
        }

        public List<Product> SelectAll(string table)
        {
            ClearCollenctions();

            sqlCommand.CommandText = string.Format("SELECT * FROM {0}", table);
            
            try
            {
                sqlCommand.Connection = Connect();
                dataReader = sqlCommand.ExecuteReader();

                if (dataReader.HasRows)
                {
                    while (dataReader.Read())
                    {
                        lstProducts.Add(new Product() 
                        {   
                            ID = int.Parse(dataReader.GetValue(0).ToString()),
                            Name = dataReader.GetValue(1).ToString(), 
                            Description = dataReader.GetValue(2).ToString(), 
                            Type = dataReader.GetValue(3).ToString(), 
                            Price = Double.Parse(dataReader.GetValue(4).ToString())
                        });
                    }
                }

                Message.Add(true, "Sucesso!");
            }
            catch (SqlException ex)
            {
                Message.Add(false, string.Format("Erro com Banco de Dados -> {0}", ex.Message));
            }
            finally
            {
                dataReader.Close();
                Disconnect();
            }

            return lstProducts;
        }

        public List<Product> SelectByID(string table, int id)
        {
            ClearCollenctions();

            sqlCommand.CommandText = string.Format("SELECT * FROM {0} WHERE ID = {1}", table, id);

            try
            {
                sqlCommand.Connection = Connect();
                dataReader = sqlCommand.ExecuteReader();

                if (dataReader.HasRows)
                {
                    while (dataReader.Read())
                    {
                        lstProducts.Add(new Product()
                        {
                            ID = int.Parse(dataReader.GetValue(0).ToString()),
                            Name = dataReader.GetValue(1).ToString(),
                            Description = dataReader.GetValue(2).ToString(),
                            Type = dataReader.GetValue(3).ToString(),
                            Price = Double.Parse(dataReader.GetValue(4).ToString())
                        });
                    }
                }

                Message.Add(true, "Sucesso!");
            }
            catch (SqlException ex)
            {
                Message.Add(false, string.Format("Erro com Banco de Dados -> {0}", ex.Message));
            }
            finally
            {
                dataReader.Close();
                Disconnect();
            }

            return lstProducts;
        }

        public Dictionary<bool, string> Update(int id, string name, string description, int type, double price)
        {
            ClearCollenctions();

            sqlCommand.CommandText = "UPDATE PRODUCT SET NAME = @NAME, DESCRIPTION = @DESCRIPTION, FK_TYPE_ID = @FK_TYPE_ID, PRICE = @PRICE WHERE ID = @ID";
            sqlCommand.Parameters.AddWithValue("NAME", name);
            sqlCommand.Parameters.AddWithValue("DESCRIPTION", description);
            sqlCommand.Parameters.AddWithValue("FK_TYPE_ID", type);
            sqlCommand.Parameters.AddWithValue("PRICE", price);
            sqlCommand.Parameters.AddWithValue("ID", id);

            try
            {
                sqlCommand.Connection = Connect();
                sqlCommand.ExecuteNonQuery();

                Message.Add(true, "Dados alterados com sucesso");
            }
            catch (SqlException ex)
            {
                Message.Add(false, string.Format("Erro com Banco de Dados -> {0}", ex.Message));
            }
            finally
            {
                Disconnect();
            }

            return Message;
        }

        public Dictionary<bool, string> Delete(int id)
        {
            ClearCollenctions();

            sqlCommand.CommandText = string.Format("DELETE FROM PRODUCT WHERE = ID = {0}", id);

            try
            {
                sqlCommand.Connection = Connect();
                sqlCommand.ExecuteNonQuery();

                Message.Add(true, "Dados alterados com sucesso");
            }
            catch (SqlException ex)
            {
                Message.Add(false, string.Format("Erro com Banco de Dados -> {0}", ex.Message));
            }
            finally
            {
                Disconnect();
            }

            return Message;
        }

        // Metodo para Limpar lstProducts e Message
        private void ClearCollenctions()
        {
            lstProducts.Clear();
            Message.Clear();
        }
    }
}