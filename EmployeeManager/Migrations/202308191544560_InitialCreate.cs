namespace EmployeeManager.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialCreate : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.EmployeeModels", "Lastname", c => c.String(nullable: false));
            AlterColumn("dbo.EmployeeModels", "Email", c => c.String(nullable: false));
            AlterColumn("dbo.EmployeeModels", "Salary", c => c.Decimal(nullable: false, precision: 18, scale: 2));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.EmployeeModels", "Salary", c => c.String(nullable: false));
            AlterColumn("dbo.EmployeeModels", "Email", c => c.Int(nullable: false));
            AlterColumn("dbo.EmployeeModels", "Lastname", c => c.Int(nullable: false));
        }
    }
}
