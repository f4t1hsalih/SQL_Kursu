using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace SQL_Learning
{
    public partial class FrmMain : Form
    {
        public FrmMain()
        {
            InitializeComponent();
        }

        SqlConnection connection = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=krsDbSatis;Integrated Security=True");

        private void btnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnCategories_Click(object sender, EventArgs e)
        {
            FrmCategories categories = new FrmCategories();
            categories.Show();
            this.Hide();
        }

        private void btnCustomers_Click(object sender, EventArgs e)
        {
            FrmCustomers customers = new FrmCustomers();
            customers.Show();
            this.Hide();
        }

        private void FrmMain_Load(object sender, EventArgs e)
        {
            string command = "Exec test4";
            SqlCommand cmd = new SqlCommand(command, connection);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
        }
    }
}
