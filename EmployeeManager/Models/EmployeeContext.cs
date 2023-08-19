using System.Data.Entity;

namespace EmployeeManager.Models {
    public class EmployeeContext : DbContext {
        public EmployeeContext() : base("name=EmployeeContext") {
            Database.SetInitializer(new CreateDatabaseIfNotExists<EmployeeContext>());
        }

        public DbSet<EmployeeModel> Employees { get; set; }
    }
}