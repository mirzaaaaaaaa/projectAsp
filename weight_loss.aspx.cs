using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace weight_loss
{
    public partial class weight_loss : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();

                double weightbfr = Convert.ToDouble(TextBox3.Text);
                double weightafr = Convert.ToDouble(TextBox4.Text);

                double weightdiff = weightafr - weightbfr;

                string checkDuplicateQuery = "SELECT COUNT(*) FROM weight_loss WHERE user_id = @userId";
                using (SqlCommand checkDuplicateCmd = new SqlCommand(checkDuplicateQuery, conn))
                {
                    checkDuplicateCmd.Parameters.AddWithValue("@userId", TextBox2.Text);
                    int existingCount = Convert.ToInt32(checkDuplicateCmd.ExecuteScalar());

                    if (existingCount > 0)
                    {
                        Response.Write("<span style='color:red;'>DUPLICATE ! This user is ALREADY EXISTS in the database</span>");
                        return;
                    }
                }

                string insertQuery = "INSERT INTO weight_loss(name, user_id, previous_weight, current_weight, loss_or_gain) VALUES (@name, @userId, @before, @after, @weightgain)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);

                cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@userId", TextBox2.Text);
                cmd.Parameters.AddWithValue("@before", weightbfr);
                cmd.Parameters.AddWithValue("@after", weightafr);
                cmd.Parameters.AddWithValue("@weightgain", weightdiff);


                cmd.ExecuteNonQuery();

                Response.Write("<span style='color:blue;'>Thank you " + TextBox1.Text + "! Your details are STORED in the database</span>");
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }
    }
}
