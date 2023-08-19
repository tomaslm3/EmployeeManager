using EmployeeManager.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeManager {
    public partial class Employees : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }
        protected void BtnOpenModalAddEmployee_Click(object sender, EventArgs e) {
            string script = @"$(document).ready(function () {
                $('#modalAddEmployee').modal('show');
            });";

            ScriptManager.RegisterStartupScript(this, this.GetType(), "popupAddEmployee", script, true);
        }

        protected void btnCreateEmployee_Click(object sender, EventArgs e) {
            if (IsValid) {
                using (var db = new EmployeeContext()) {
                    var newEmployee = new EmployeeModel {
                        Firstname = txtFirstname.Text,
                        Lastname = txtLastname.Text,
                        Email = txtEmail.Text,
                        Salary = Convert.ToDecimal(txtSalary.Text)
                    };

                    db.Employees.Add(newEmployee);
                    db.SaveChanges();
                }

                ScriptManager.RegisterStartupScript(this, this.GetType(), "closeModalScript", "$('#modalAddEmployee').modal('hide');", true);

                // Update employee list
                //LoadEmployees();
            }
        }
    }
}