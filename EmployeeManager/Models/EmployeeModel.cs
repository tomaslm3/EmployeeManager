using System.ComponentModel.DataAnnotations;

public class EmployeeModel {
    [Key]
    public int Id { get; set; }

    [Required]
    public string Firstname { get; set; }

    [Required]
    public int Lastname { get; set; }

    [Required]
    public int Email { get; set; }

    [Required]
    public string Salary { get; set; }
}