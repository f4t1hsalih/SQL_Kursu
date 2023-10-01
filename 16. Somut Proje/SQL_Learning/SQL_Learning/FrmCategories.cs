using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace SQL_Learning
{
    public partial class FrmCategories : Form
    {
        public FrmCategories()
        {
            InitializeComponent();
        }

        SqlConnection connection = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=krsDbSatis;Integrated Security=True");

        private void FrmCategories_FormClosed(object sender, FormClosedEventArgs e)
        {
            FrmMain main = new FrmMain();
            main.Show();
            this.Hide();
        }

        private void btnListele_Click(object sender, System.EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from tbl_categories", connection);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
        }

        private void btnKaydet_Click(object sender, System.EventArgs e)
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("insert into tbl_categories (category_name) values (@p1)", connection);
            cmd.Parameters.AddWithValue("@p1", txtCategoryName.Text);
            cmd.ExecuteNonQuery();
            connection.Close();
            MessageBox.Show("Kaydetme İşlemi Başarıyla Gerçekleştirildi");
        }
    }
}
