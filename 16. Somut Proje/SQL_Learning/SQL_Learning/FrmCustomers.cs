using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SQL_Learning
{
    public partial class FrmCustomers : Form
    {
        public FrmCustomers()
        {
            InitializeComponent();
        }

        SqlConnection connection = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=krsDbSatis;Integrated Security=True");

        void Listele()
        {
            string command = "select * from tbl_customers";
            SqlCommand cmd = new SqlCommand(command, connection);
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
        }

        private void FrmCustomers_Load(object sender, EventArgs e)
        {
            Listele();
        }

        private void FrmCustomers_FormClosed(object sender, FormClosedEventArgs e)
        {
            FrmMain main = new FrmMain();
            main.Show();
            this.Hide();
        }
    }
}
