using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Student_REG_FORM
{
    public partial class ShowData : System.Web.UI.Page
    {
        SqlConnection myconn = new SqlConnection(@"Data Source=MANISH\MANISH;Initial Catalog=Employee;Integrated Security=true;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindStudentData();
            }
        }
        public void BindStudentData()
        {
            SqlDataAdapter adap = new SqlDataAdapter("SELECT * FROM STUDENT_FORM", myconn);
            DataTable dt = new DataTable();
            adap.Fill(dt);   
            grvstudent.DataSource = dt; 
            grvstudent.DataBind();
        }
    }
}