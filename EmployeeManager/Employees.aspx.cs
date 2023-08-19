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
            if (!IsPostBack) {
                BindEmployees();
            }
        }

        protected void BindEmployees() {
            using (EmployeeContext context = new EmployeeContext()) {
                var employees = context.Employees.ToList();
                string searchTerm = txtSearch.Text.Trim();

                if (!string.IsNullOrEmpty(searchTerm)) {
                    employees = employees.Where(emp =>
                        emp.Firstname.Contains(searchTerm) || emp.Lastname.Contains(searchTerm) ||
                        $"{emp.Firstname} {emp.Lastname}".Contains(searchTerm)
                    ).ToList();
                }

                rptEmployees.DataSource = employees;
                rptEmployees.DataBind();
            }
        }

        protected void txtSearch_TextChanged(object sender, EventArgs e) {
            
                BindEmployees();
            
        }

        protected void btnDeleteSelected_Click(object sender, EventArgs e) {
            using (EmployeeContext context = new EmployeeContext()) {
                foreach (RepeaterItem item in rptEmployees.Items) {
                    CheckBox chkSelect = (CheckBox)item.FindControl("chkSelect");
                    HiddenField hfEmployeeId = (HiddenField)item.FindControl("hfEmployeeId");

                    if (chkSelect.Checked) {
                        int employeeId = Convert.ToInt32(hfEmployeeId.Value);
                        var employee = context.Employees.Find(employeeId);
                        if (employee != null) {
                            context.Employees.Remove(employee);
                        }
                    }
                }
                context.SaveChanges();
                BindEmployees();
            }
        }



        protected void BtnOpenModalAddEmployee_Click(object sender, EventArgs e) {
            txtFirstname.Text = string.Empty;
            txtLastname.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtSalary.Text = string.Empty;
            string script = @"$(document).ready(function () {
                $('#modalAddEmployee').modal('show');
            });";

            ScriptManager.RegisterStartupScript(this, this.GetType(), "popupAddEmployee", script, true);
        }

        protected void BtnCloseModalAddEmployee_Click(object sender, EventArgs e) {
            string script = @"$(document).ready(function () {
                $('#modalAddEmployee').modal('hide');
            });";

            ScriptManager.RegisterStartupScript(this, this.GetType(), "cerrarModal", script, true);
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


                string script = @"$(document).ready(function () {
                $('#modalAddEmployee').modal('hide');
            });";

                ScriptManager.RegisterStartupScript(this, this.GetType(), "cerrarModal", script, true);

                BindEmployees();
            }
        }

        protected void btnEditEmployee_Click(object sender, EventArgs e) {
            string script = @"$(document).ready(function () {
                $('#modalEditEmployee').modal('show');
            });";

            ScriptManager.RegisterStartupScript(this, this.GetType(), "popupEditEmployee", script, true);
        }

        protected void btnCloseEditModal_Click(object sender, EventArgs e) {
            string script = @"$(document).ready(function () {
                $('#modalAddEmployee').modal('hide');
            });";

            ScriptManager.RegisterStartupScript(this, this.GetType(), "cerrarModal", script, true);
        }

        protected void rptEmployees_ItemCommand(object source, RepeaterCommandEventArgs e) {
            if (e.CommandName == "EditEmployee") {
                int employeeId = Convert.ToInt32(e.CommandArgument);
                hfEditEmployeeId.Value = employeeId.ToString();

                LoadEmployeeDataForEdit(employeeId);

                string script = @"$(document).ready(function () {
                $('#modalEditEmployee').modal('show');
            });";

                ScriptManager.RegisterStartupScript(this, this.GetType(), "popupEditEmployee", script, true);
            }
        }

        private void LoadEmployeeDataForEdit(int employeeId) {
            using (EmployeeContext context = new EmployeeContext()) {
                EmployeeModel employee = context.Employees.Find(employeeId);
                if (employee != null) {
                    txtEditFirstname.Text = employee.Firstname;
                    txtEditLastname.Text = employee.Lastname;
                    txtEditEmail.Text = employee.Email;
                    txtEditSalary.Text = employee.Salary.ToString("0.##");
                }
            }
        }

        protected void btnUpdateEmployee_Click(object sender, EventArgs e) {
            int employeeId = Convert.ToInt32(hfEditEmployeeId.Value);

            using (EmployeeContext context = new EmployeeContext()) {
                EmployeeModel employeeToUpdate = context.Employees.Find(employeeId);

                if (employeeToUpdate != null) {
                    employeeToUpdate.Firstname = txtEditFirstname.Text;
                    employeeToUpdate.Lastname = txtEditLastname.Text;
                    employeeToUpdate.Email = txtEditEmail.Text;
                    employeeToUpdate.Salary = Convert.ToDecimal(txtEditSalary.Text);

                    context.SaveChanges();

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "closeEditModalScript", "$('#modalEditEmployee').modal('hide');", true);

                    BindEmployees();
                }
            }
        }
    }
}