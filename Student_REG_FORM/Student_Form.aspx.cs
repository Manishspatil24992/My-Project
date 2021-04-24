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
    public partial class Student_Form : System.Web.UI.Page
    {
        SqlConnection myconn = new SqlConnection(@"Data Source=MANISH\MANISH;Initial Catalog=Employee;Integrated Security=true;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string gender = string.Empty;

            if(rbtnMale.Checked)
            {
                gender = "M";
            }
            else
            {
                gender = "F";
            }

            string chk1 = string.Empty;
            if(chkArt.Checked==true)
            {
                chk1 = "ART";
            }
            if (chkComm.Checked == true)
            {
                chk1 = "COMMERCE";
            }
            if (chkSci.Checked == true)
            {
                chk1 = "SCIENCE";
            }

            fFile.SaveAs(Server.MapPath(@"\UploadFiles\") + fFile.FileName);
            string qury = "insert into STUDENT_FORM values('"+ txtfname.Value + "','"+ txtlname.Value + "','"+ txtEmail.Text + "','"+ txtDOB.Value + "','"+ txtpass.Text + "','"+ gender +"','"+ chk1 +"','"+ drpcity.SelectedValue +"','"+ txtmsg.Text + "','"+ fFile.FileName + "')";
            SqlCommand comm1 = new SqlCommand(qury, myconn);
            myconn.Open();
            comm1.ExecuteNonQuery();
            myconn.Close();
            // Response.Write("Data Save Succefully");
            Response.Redirect("ShowData.aspx");
        }

       
        
    }
}