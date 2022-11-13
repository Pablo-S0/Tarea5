using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EncuestaUH
{
    public partial class r3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LlenarGrid();
        }

        protected void brincar_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicio.aspx");
        }

        protected void Salvar_Click(object sender, EventArgs e)
        {
            Persona.r3 = DropDownList1.SelectedValue;
            Label1.Text = " Cedula: " + Persona.cedula + " Nombre: " + Persona.nombre 
                + " Genero: " + Persona.Genero + " R1: " + Persona.r1 + " R2: " + Persona.r2
                + " R3: " + Persona.r3;
            int suma = 0;
            String mensaje = "";

            if (Persona.r1.Equals("f"))
            {
                mensaje = "r1 correcta, ";
                suma++;
            }
            else
            {
                mensaje = "r1 incorrecta era f, ";
            }

            if (Persona.r2.Equals("b"))
            {
                mensaje += "r2 correcta, ";
                suma++;
            }
            else
            {
                mensaje += "r2 incorrecta era b, ";
            }

            if (Persona.r3.Equals("a"))
            {
                mensaje += "r3 correcta, ";
                suma++;
            }
            else
            {
                mensaje += "r3 incorrecta era a, ";
            }

            Label2.Text = mensaje;

            Label3.Text = "Puntuacion total: " + suma + $" respuestas correctas: {suma}, respuestas incorrectas {3-suma}";

            salvar();
        }


        protected void salvar ()
        {
            
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["EncuestasUHConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand(" INSERT INTO Persona (cedulaP, nombre, genero ) VALUES('" + Persona.cedula + "', '" + Persona.nombre + "', '" + Persona.Genero + "')", conexion);
            comando.ExecuteNonQuery();
            conexion.Close();

            conexion.Open();
            comando = new SqlCommand(" INSERT INTO Respuestas VALUES('" + Persona.cedula + "','" +  Persona.r1 + "', '" + Persona.r2 + "', '" + Persona.r3 + "')", conexion);
            comando.ExecuteNonQuery();
            conexion.Close();

            LlenarGrid();
        }


        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["EncuestasUHConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("select Respuestas.id, Persona.nombre, Respuestas.cedulaR, respuestas.r1,respuestas.r2,respuestas.r3 " +
                                                       "from Respuestas " +
                                                       "inner join Persona on Respuestas.cedulaR = Persona.cedulaP"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }

    }
}