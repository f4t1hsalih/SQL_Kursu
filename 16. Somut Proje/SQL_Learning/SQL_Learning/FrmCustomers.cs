using System;
using System.Data;
using System.Data.SqlClient;
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
            string command = "select * from tbl_customer";
            SqlCommand cmd = new SqlCommand(command, connection);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
        }

        private void FrmCustomers_Load(object sender, EventArgs e)
        {
            Listele();

            connection.Open();
            string command = "select * from tbl_cities";
            SqlCommand cmd = new SqlCommand(command, connection);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                cmbCity.Items.Add(dr["city_name"]);
            }
            connection.Close();
        }

        private void FrmCustomers_FormClosed(object sender, FormClosedEventArgs e)
        {
            FrmMain main = new FrmMain();
            main.Show();
            this.Hide();
        }

        private void btnListele_Click(object sender, EventArgs e)
        {
            Listele();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtCustomerID.Text = dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString();
            txtCustomerName.Text = dataGridView1.Rows[e.RowIndex].Cells[1].Value.ToString();
            txtCustomerSurname.Text = dataGridView1.Rows[e.RowIndex].Cells[2].Value.ToString();
            cmbCity.Text = dataGridView1.Rows[e.RowIndex].Cells[3].Value.ToString();
            txtBalance.Text = dataGridView1.Rows[e.RowIndex].Cells[4].Value.ToString();
        }

        private void btnKaydet_Click(object sender, EventArgs e)
        {
            connection.Open();
            string command = "insert into tbl_customer(customer_name,customer_surname, customer_city, customer_balance) values (@p1, @p2, @p3, @p4)";
            SqlCommand cmd = new SqlCommand(command, connection);
            cmd.Parameters.AddWithValue("@p1", txtCustomerName.Text);
            cmd.Parameters.AddWithValue("@p2", txtCustomerSurname.Text);
            cmd.Parameters.AddWithValue("@p3", cmbCity.Text);
            cmd.Parameters.AddWithValue("@p4", decimal.Parse(txtBalance.Text));
            cmd.ExecuteNonQuery();
            connection.Close();
            MessageBox.Show("Kayıt Başarıyla Yapıldı");
            Listele();
        }

        private void btnSil_Click(object sender, EventArgs e)
        {
            connection.Open();
            string command = "delete from tbl_customer where customer_id = @p1";
            SqlCommand cmd = new SqlCommand(command, connection);
            cmd.Parameters.AddWithValue("@p1", txtCustomerID.Text);
            cmd.ExecuteNonQuery();
            connection.Close();
            MessageBox.Show("Kayıt Başarıyla Silindi");
            Listele();
        }

        private void btnGuncelle_Click(object sender, EventArgs e)
        {
            connection.Open();
            string command = "update tbl_customer set customer_name = @p1, customer_surname = @p2, customer_city = @p3, customer_balance = @p4 where customer_id = @p5";
            SqlCommand cmd = new SqlCommand(command, connection);
            cmd.Parameters.AddWithValue("@p1", txtCustomerName.Text);
            cmd.Parameters.AddWithValue("@p2", txtCustomerSurname.Text);
            cmd.Parameters.AddWithValue("@p3", cmbCity.Text.ToUpper());
            cmd.Parameters.AddWithValue("@p4", decimal.Parse(txtBalance.Text));
            cmd.Parameters.AddWithValue("@p5", txtCustomerID.Text);
            cmd.ExecuteNonQuery();
            connection.Close();
            MessageBox.Show("Kayıt Başarıyla Güncellendi");
            Listele();
        }

        private void btnAra_Click(object sender, EventArgs e)
        {
            {
                string command = "select * from tbl_customer where customer_name=@p1";
                SqlCommand cmd = new SqlCommand(command, connection);
                cmd.Parameters.AddWithValue("@p1", txtCustomerName.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                dataGridView1.DataSource = dt;
            }
        }
    }
}
