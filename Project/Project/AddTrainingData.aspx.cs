using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class AddTrainingData : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Heart"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Add"] == "Data")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('Training Data Added...')", true);
            Session["Add"] = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            RadioButtonList1.ClearSelection();
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        using (con)
        {
            con.Open();
            string ins = "insert into TrainingData values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + RadioButtonList1.SelectedItem.Value + "','"+TextBox14.Text+"','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','"+TextBox7.Text+ "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();

            Session["Add"] = "Data";
            Response.Redirect("AddTrainingData.aspx");
        }
    }
}