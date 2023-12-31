﻿using System.Data;
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
            cmd.ExecuteNonQuery(); //Sorguyu Çalıştırır
            connection.Close();
            MessageBox.Show("Kaydetme İşlemi Başarıyla Gerçekleştirildi");
        }

        private void btnSil_Click(object sender, System.EventArgs e)
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("delete from tbl_categories where category_id=@p1", connection);
            cmd.Parameters.AddWithValue("@p1", txtCategoryID.Text);
            cmd.ExecuteNonQuery(); //Sorguyu Çalıştırır
            connection.Close();
            MessageBox.Show("Silme İşlemi Başarıyla Gerçekleştirildi");
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            //Datagridview'in satırları içerisinde tıklanılan satırın 0.indeksindeki değeri alıp txtCatogoryID'ye atar
            txtCategoryID.Text = dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString();
            //Datagridview'in satırları içerisinde tıklanılan satırın 1.indeksindeki değeri alıp txtCatogoryName'e atar
            txtCategoryName.Text = dataGridView1.Rows[e.RowIndex].Cells[1].Value.ToString();
        }

        private void btnGuncelle_Click(object sender, System.EventArgs e)
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("Update tbl_categories set category_name=@p1 where category_id=@p2", connection);
            cmd.Parameters.AddWithValue("@p1", txtCategoryName.Text);
            cmd.Parameters.AddWithValue("@p2", txtCategoryID.Text);
            cmd.ExecuteNonQuery(); //Sorguyu Çalıştırır
            connection.Close();
            MessageBox.Show("Güncelleme İşlemi Başarıyla Gerçekleştirildi");
        }
    }
}
