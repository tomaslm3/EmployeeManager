using System.ComponentModel.DataAnnotations;

public class EmployeeModel {
    [Key]
    public int Id { get; set; }

    [Required]
    public string Firstname { get; set; }

    [Required]
    public string Lastname { get; set; }

    [Required]
    public string Email { get; set; }

    [Required]
    public decimal Salary { get; set; }
}