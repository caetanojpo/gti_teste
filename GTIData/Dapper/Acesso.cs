﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace Data.Dapper
{
    public  class Acesso
    {
        private IDbConnection _connection;
        public Acesso()
        {
            _connection = new SqlConnection("Data Source=DESKTOP-QUFJ40L;Initial Catalog=TESTE_GTI;Integrated Security=True;TrustServerCertificate=True;");
        }

        public IDbConnection dbConnectiondbConnection => _connection;
    }
}
