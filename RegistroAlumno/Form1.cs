using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace RegistroAlumno
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            Conexion.Connector();
            MessageBox.Show("Conexión Exitosa");

            dataGridView1.DataSource = completar_grid();
        }

        public DataTable completar_grid()
        {
            Conexion.Connector();
            DataTable dt = new DataTable();
            string consulta = "SELECT * FROM ALUMNO";
            SqlCommand cmd = new SqlCommand(consulta, Conexion.Connector());

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            da.Fill(dt);
            return dt;
        } 

        
        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            try {
                textCodigo.Text = dataGridView1.CurrentRow.Cells[0].Value.ToString();
                textNombre.Text = dataGridView1.CurrentRow.Cells[1].Value.ToString();
                textApellido.Text = dataGridView1.CurrentRow.Cells[2].Value.ToString();
                textDireccion.Text = dataGridView1.CurrentRow.Cells[3].Value.ToString();

            }

            catch { }
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            Conexion.Connector();
            string Buscar = "SELECT * FROM ALUMNO WHERE CODIGO=@CODIGO";
            SqlCommand cmd1 = new SqlCommand(Buscar, Conexion.Connector());
            SqlDataAdapter adapter = new SqlDataAdapter();
            cmd1.Parameters.AddWithValue("@CODIGO", textCodigo.Text);


            cmd1.ExecuteNonQuery();
            adapter.SelectCommand = cmd1;
            DataTable mytable = new DataTable();
            adapter.Fill(mytable);

            dataGridView1.DataSource = mytable;
            

        }

        private void btnConsultar_Click(object sender, EventArgs e)
        {
            dataGridView1.DataSource = completar_grid();
            textCodigo.Text = "";
        }

        private void btnInsertar_Click(object sender, EventArgs e)
        {
            Conexion.Connector();
            string Insertar = "INSERT INTO ALUMNO (CODIGO, NOMBRES, APELLIDOS, DIRECCION)VALUES(@CODIGO, @NOMBRES, @APELLIDOS, @DIRECCION)";
            SqlCommand cmd2 = new SqlCommand(Insertar, Conexion.Connector());
            cmd2.Parameters.AddWithValue("@CODIGO", textCodigo.Text);
            cmd2.Parameters.AddWithValue("@NOMBRES", textNombre.Text);
            cmd2.Parameters.AddWithValue("@APELLIDOS", textApellido.Text);
            cmd2.Parameters.AddWithValue("@DIRECCION", textDireccion.Text);

            cmd2.ExecuteNonQuery();

            MessageBox.Show("Datos agregados correctamente");

            dataGridView1.DataSource = completar_grid();
            textCodigo.Text = "";
            textNombre.Text = "";
            textApellido.Text = "";
            textDireccion.Text = "";

        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            Conexion.Connector();
            string Actualizar = "UPDATE ALUMNO SET CODIGO=@CODIGO, NOMBRES=@NOMBRES, APELLIDOS=@APELLIDOS, DIRECCION=@DIRECCION WHERE CODIGO=@CODIGO";
            SqlCommand cmd3 = new SqlCommand(Actualizar, Conexion.Connector());

            cmd3.Parameters.AddWithValue("@CODIGO", textCodigo.Text);
            cmd3.Parameters.AddWithValue("@NOMBRES", textNombre.Text);
            cmd3.Parameters.AddWithValue("@APELLIDOS", textApellido.Text);
            cmd3.Parameters.AddWithValue("@DIRECCION", textDireccion.Text);

            cmd3.ExecuteNonQuery();

            MessageBox.Show("Los datos han sido modificados correctamente");
            dataGridView1.DataSource = completar_grid();
            textCodigo.Text = "";
            textNombre.Text = "";
            textApellido.Text = "";
            textDireccion.Text = "";
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            Conexion.Connector();
            string Eliminar = "DELETE FROM ALUMNO WHERE CODIGO = @CODIGO";
            SqlCommand cmd4 = new SqlCommand(Eliminar, Conexion.Connector());
            cmd4.Parameters.AddWithValue("@CODIGO", textCodigo.Text);

            cmd4.ExecuteNonQuery();

            MessageBox.Show("Los datos han sido eliminados correctamente");

            dataGridView1.DataSource = completar_grid();
            textCodigo.Text = "";
            textNombre.Text = "";
            textApellido.Text = "";
            textDireccion.Text = "";
        }

        
    }
}
