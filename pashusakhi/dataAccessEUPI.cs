﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for dataAccessEUPI
/// </summary>
public class dataAccessEUPI
{
    public dataAccessEUPI()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    // Default connection string. a connection named MsSql should be defined in web.config file.
    public const string CONNECTION_STRING_NAME = "Data Source=(local);Initial Catalog =PashusakhiDB;User Id=sa;Password=123"; 

    //This returns the connection string  
    private static string _connectionString = string.Empty;
    public static string ConnectionString
    {
        get
        {
            if (_connectionString == string.Empty)
            {
                _connectionString = CONNECTION_STRING_NAME;
            }
            return _connectionString;
        }
    }


    /// <summary>
    /// Brings a SqlCommand object to be able to add some parameters in it. After you send this to Execute method.
    /// </summary>
    /// <param name="sql"></param>
    /// <returns></returns>
    public SqlCommand GetCommand(string sql)
    {
        SqlConnection conn = new SqlConnection(ConnectionString);
        SqlCommand sqlCmd = new SqlCommand(sql, conn);
        return sqlCmd;
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="sql"></param>
    /// <returns></returns>
    public DataTable Execute(string sql)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = GetCommand(sql);
        cmd.Connection.Open();
        dt.Load(cmd.ExecuteReader());
        cmd.Connection.Close();
        return dt;
    }

    /// <summary>
    /// Datatable Döndür
    /// </summary>
    /// <param name="command"></param>
    /// <returns></returns>
    public DataTable Execute(SqlCommand command)
    {
        DataTable dt = new DataTable();
        command.Connection.Open();
        //command.ExecuteNonQuery();
        dt.Load(command.ExecuteReader());
        command.Connection.Close();
        return dt;
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="sql"></param>
    /// <returns></returns>
    public int ExecuteNonQuery(string sql)
    {
        SqlCommand cmd = GetCommand(sql);
        cmd.Connection.Open();
        int result = cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        return result;
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="command"></param>
    /// <returns></returns>
    public int ExecuteNonQuery(SqlCommand command)
    {
        command.Connection.Open();
        int result = command.ExecuteNonQuery();
        command.Connection.Close();
        return result;
    }


    /// <summary>
    /// 
    /// </summary>
    /// <param name="spName"></param>
    /// <returns></returns>
    public int ExecuteStoredProcedure(string spName)
    {
        SqlCommand cmd = GetCommand(spName);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Connection.Open();
        int result = cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        return result;
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="command"></param>
    /// <returns></returns>
    public int ExecuteStoredProcedure(SqlCommand command)
    {
        command.CommandType = CommandType.StoredProcedure;
        command.Connection.Open();
        int result = command.ExecuteNonQuery();
        command.Connection.Close();
        return result;
    }
}
