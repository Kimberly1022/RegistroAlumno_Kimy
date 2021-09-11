using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace RegistroAlumno
{
    class Conexion
    {
        public static SqlConnection Connector()
        {
            SqlConnection conn = new SqlConnection("SERVER = localhost\\SQLEXPRESS; DATABASE = REGISTRO; INTEGRATED SECURITY = TRUE;");
            conn.Open();

            return conn;
        }
    }
}
