using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace Examen3_MichaelBrenes__Sistema_de_Encuestas_.Clases
{
    public class CrearFormulario
    {
        public static int id { get; set; }
        public static string nombre { get; set; }
        public static string fecha_nacimiento { get; set; }
        public static string correo { get; set; }
        public static string partido_político { get; set; }

        public CrearFormulario(int Id, string Nombre, string Fecha_Nacimiento, string Correo, string Partido_Político)
        {
            id = Id;
            nombre = Nombre;
            fecha_nacimiento = fecha_nacimiento;
            correo = Correo;
            partido_político = partido_político;
        }
        public CrearFormulario(string Nombre, string FechaNacimiento, string Correo, string Partido_Político)
        {
            nombre = Nombre;
            fecha_nacimiento = fecha_nacimiento;
            correo = Correo;
        }
        public CrearFormulario() { }

        public static int Agregar(string nombre, string FechaNacimiento, string correo, string Partido_Político)
        {
            int retorno = 0;

            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DBConn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("AgregarEncuesta", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@NombreParticipante", nombre));
                    cmd.Parameters.Add(new SqlParameter("@CorreoElectronico", correo));
                    cmd.Parameters.Add(new SqlParameter("@FechaNacimiento", fecha_nacimiento));
                    cmd.Parameters.Add(new SqlParameter("@PartidoPolítico", partido_político));


                    retorno = cmd.ExecuteNonQuery();
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
            }

            return retorno;

        }
    }
}