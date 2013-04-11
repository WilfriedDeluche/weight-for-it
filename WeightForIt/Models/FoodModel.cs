using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Globalization;
using System.Web.Security;

namespace WeightForIt.Models
{
    public class FoodContext : DbContext
    {
        public FoodContext()
            : base("weightforitDB")
        { 
        }

        public DbSet<Food> Foods { get; set; }
    }

    [Table("Food")]
    public class FoodDB
    {
        [Key]
        [DatabaseGeneratedAttribute(DatabaseGeneratedOption.Identity)]
        public int IdFood { get; set; }
        public string Label { get; set; }

    }

    public class Food
    {
        [Required(ErrorMessage = "Le libellé du produit est obligatoire")]
        [Display(Name = "Libellé")]
        public string Label { get; set; }

        [Display(Name = "Quantité")]
        [Range(0, 400, ErrorMessage = "La quantité doit être comprise entre 1 et 400")]
        public string Unit { get; set; }

        [Display(Name = "Calorie")]
        [Range(0.01, 400.00, ErrorMessage = "La quantité de calorie doit être comprise entre 0.01 et 400.00")]
        public string Calories { get; set; }

        [Display(Name = "Protéine")]
        [Range(0.01, 400.00, ErrorMessage = "La quantité de protéine doit être comprise entre 0.01 et 400.00")]
        public string Proteins { get; set; }

        [Display(Name = "Glucide")]
        [Range(0.01, 400.00, ErrorMessage = "La quantité de glucide doit être comprise entre 0.01 et 400.00")]
        public string Glucides { get; set; }

        [Display(Name = "Lipide")]
        [Range(0.01, 400.00, ErrorMessage = "La quantité de lipide doit être comprise entre 0.01 et 400.00")]
        public string Lipid { get; set; }
    }
}