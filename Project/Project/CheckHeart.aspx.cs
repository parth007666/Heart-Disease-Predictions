using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class CheckHeart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Heart"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string Uid = Session["Uid"].ToString();
        string str = "select age,gender from register where id='" + Uid + "'";
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        string age = ds.Tables[0].Rows[0][0].ToString();
        lblAge.Text = age;
        string sex = ds.Tables[0].Rows[0][1].ToString();
        if(sex=="Male")
        {
            lblSex.Text = "1";
        }
        else
        {
            lblSex.Text = "0";
        }
        Panel1.Visible = false;
    }

    protected void btnAnalyse_Click(object sender, EventArgs e)
    {
        DataTable table = new DataTable();
        table.Columns.Add("Dname");
        table.Columns.Add("Age", typeof(double));
        table.Columns.Add("Gender", typeof(double));
        table.Columns.Add("ChestPain", typeof(double));
        table.Columns.Add("BloodSugar", typeof(double));
        table.Columns.Add("Restecg", typeof(double));
        table.Columns.Add("Exang", typeof(double));
        table.Columns.Add("Slope", typeof(double));
        table.Columns.Add("CA", typeof(double));
        table.Columns.Add("Thal", typeof(double));
        table.Columns.Add("BloodPressure", typeof(double));
        table.Columns.Add("Cholesterol", typeof(double));
        table.Columns.Add("Thalach", typeof(double));
        table.Columns.Add("Oldpeak", typeof(double));

        string str = "select * from TrainingData";
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds);

        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            table.Rows.Add(ds.Tables[0].Rows[i][0].ToString(),
                Convert.ToDouble(ds.Tables[0].Rows[i][1].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][2].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][3].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][4].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][5].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][6].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][7].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][8].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][9].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][10].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][11].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][12].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][13].ToString()));
        }

        Classifier classifier = new Classifier();
        classifier.TrainClassifier(table);
        string ans = "";
        try
        {
            ans = classifier.Classify
                (new double[] 
                {
                    Convert.ToDouble(lblAge.Text),
                    Convert.ToDouble(lblSex.Text),
                    Convert.ToDouble(TextBox14.Text),
                    Convert.ToDouble(TextBox4.Text),
                    Convert.ToDouble(TextBox5.Text),
                    Convert.ToDouble(TextBox6.Text),
                    Convert.ToDouble(TextBox7.Text),
                    Convert.ToDouble(TextBox8.Text),
                    Convert.ToDouble(TextBox9.Text),
                    Convert.ToDouble(TextBox10.Text),
                    Convert.ToDouble(TextBox11.Text),
                    Convert.ToDouble(TextBox12.Text),
                    Convert.ToDouble(TextBox13.Text)
                });
            Label2.Text = ans.ToString();
            Panel1.Visible = true;
        }
        catch (Exception ep)
        {
            ans = ep.ToString();
            Label2.Text = ans.ToString();
            Panel1.Visible = true;
        }
    }
}