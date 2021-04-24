<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_Form.aspx.cs" Inherits="Student_REG_FORM.Student_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Student Form</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script>
function validateForm() {
    var x = document.forms["stuForm"]["txtfname"].value;
    var y = document.forms["stuForm"]["txtlname"].value;
  if (x == "") {
    alert("first Name must be filled out");
    return false;
    }
    if (y == "") {
        alert(" last Name must be filled out");
        return false;
    }
}
       
    </script>
</head>
<body>
    <form id="stuForm" runat="server">
         <div class="container">
        <div class="row">

            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <div style="padding-left: 180px;">
                                    <img src="image\user.png" style="width: 90px;" runat="server" />
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div style="padding-left: 150px;">
                                    <h3>Student Form</h3>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div>
                                    <hr/>
                                </div>
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="firstname" class="col-sm-3 col-form-label">First Name</label>
                            <div class="col-sm-9">
                                <input type="text" placeholder="first name" class="form-control" id="txtfname"  runat="server"/>
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="lastname" class="col-sm-3 col-form-label">Last Name</label>
                            <div class="col-sm-9">
                                <input type="text" placeholder="last name" class="form-control"  runat="server" id="txtlname"/>
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="email" class="col-sm-3 col-form-label">Email ID</label>
                            <div class="col-sm-9">
                              
                         <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="email Id" BorderStyle="Double" runat="server" BackColor="Transparent" />
                        <asp:RequiredFieldValidator ID="rvEmail" BackColor="Yellow" ForeColor="Green" 
                         ControlToValidate="txtEmail" ErrorMessage="Email is Mandatory" runat="server" />
                        <asp:RegularExpressionValidator ID="revEmail" BackColor="Yellow" ForeColor="Green" ControlToValidate="txtEmail" runat="server"
                          ErrorMessage="Email id not Proper" ValidationExpression="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" />
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="DOB" class="col-sm-3 col-form-label">Date Of Birth</label>
                            <div class="col-sm-9">
                                <input type="date" placeholder="date of birth" runat="server" class="form-control" id="txtDOB"/>
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="pass" class="col-sm-3 col-form-label">Password</label>
                            <div class="col-sm-9">
                             <asp:TextBox ID="txtpass" CssClass="form-control" placeholder="password" TextMode="Password" BorderStyle="Double" runat="server" BackColor="Transparent" />           
                            <asp:RequiredFieldValidator ID="rpass" BackColor="Yellow" ForeColor="Green" 
                             ControlToValidate="txtpass" ErrorMessage="Password is Mandatory" runat="server" />
                             <asp:RegularExpressionValidator ID="repass" BackColor="Yellow" ForeColor="Green" ControlToValidate="txtpass" runat="server"
                            ErrorMessage="Please enter only uppercase and lowercase up to 40" ValidationExpression="^[a-zA-Z''-'\s{1,40}$]" />
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="cpass" class="col-sm-3 col-form-label">Conform Pass</label>
                            <div class="col-sm-9">
                             
                         <asp:TextBox ID="txtcpass" CssClass="form-control" placeholder="confirm password" TextMode="Password" BorderStyle="Double" runat="server" BackColor="Transparent" />
                        <asp:RequiredFieldValidator ID="rcpass" BackColor="Yellow" ForeColor="Green" 
                               ControlToValidate="txtpass" ErrorMessage="Confirm Password is Mandatory" runat="server" />
                        <asp:CompareValidator ID="rc1pass" BackColor="Yellow" ForeColor="Green" ControlToValidate="txtcpass" runat="server"
                            ErrorMessage="Password does not Match" />
                            </div>
                        </div>

                        <div class="mb-3 row">

                            <div>
                                <label for="gender" class="col-sm-3 col-form-label">Gender</label>
                                <div class="form-check form-check-inline">
                                    <asp:RadioButton ID="rbtnMale" Text="MALE" runat="server" GroupName="gender" />
                                </div>
                                <div class="form-check form-check-inline">
                                    <asp:RadioButton ID="rbtnFemale" Text="FEMALE" runat="server" GroupName="gender" />
                                </div>
                            </div>
                        </div>

                        <div class="mb-3 row">
                             <label for="course" class="col-sm-3 col-form-label">Select one COURSE</label>
                            <div class="col-sm-9"> 
                               <asp:CheckBox ID="chkArt" runat="server" Text="ART" /><br />
                                <asp:CheckBox ID="chkComm" runat="server" Text="COMMERCE" /><br />
                                <asp:CheckBox ID="chkSci" runat="server" Text="SCIENCE" /><br />
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <div>
                               <label for="city" class="col-sm-3 col-form-label">CITY</label>
                               
                                 <asp:DropDownList ID="drpcity" runat="server">  
                                    <asp:ListItem Value="">Please Select</asp:ListItem>  
                                    <asp:ListItem>Pune </asp:ListItem>  
                                    <asp:ListItem>Nashik</asp:ListItem>  
                                     <asp:ListItem>Mumbai</asp:ListItem>  
                                      <asp:ListItem>Nagpur</asp:ListItem>  
                                     <asp:ListItem>Jalgaon</asp:ListItem>  
                                  </asp:DropDownList>                  
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <div>
                                <label for="txtmsg" class="col-sm-6 col-form-label">Enter Your msg</label>
                                <div class=" form-group">
                                    <asp:TextBox ID="txtmsg" runat="server" placeholder="write here..." TextMode="MultiLine" />                                 
                                </div>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <div class="form-group">
                                <label for="fFile" class="col-sm-3 col-form-label">Upload File </label>
                                <asp:FileUpload ID="fFile" runat="server" />                           
                            </div>
                        </div>
                        <div>
                            <hr/>
                          </div>
                        
                        <div style="padding-left: 180px;">
                            <asp:Button  ID="btnsubmit"  Text="SUBMIT" OnClientClick="return validateForm()" class="btn btn-primary" OnClick="btnsubmit_Click" runat="server"/>
                        </div>
                        
                    </div>

                </div>
            </div>
        </div>

    </div>

    <script src="js/jquery-3.6.0.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>

    </form>
</body>
</html>
