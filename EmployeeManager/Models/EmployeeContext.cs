using System.Data.Entity;

namespace EmployeeManager.Models {
    public class EmployeeContext : DbContext {

        public DbSet<EmployeeModel> Employees { get; set; }
    }
}