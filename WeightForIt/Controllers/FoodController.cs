using System;
using System.Collections.Generic;
using System.Linq;
using System.Transactions;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using DotNetOpenAuth.AspNet;
using Microsoft.Web.WebPages.OAuth;
using WebMatrix.WebData;
using WeightForIt.Filters;
using WeightForIt.Models;
using WebMatrix.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WeightForIt.Controllers
{
    public class FoodController : Controller
    {
        //
        // GET: /Food/

        public ActionResult InsertFood()
        {
            return View();
        }

        //
        // POST: /Clients/
        [HttpPost]
        public ActionResult InsertFood(Food model)
        {
            using (SqlConnection connexion = new SqlConnection(ConfigurationManager.ConnectionStrings["weightforitDB"].ConnectionString))
            {
                connexion.Open();
                string requete = "INSERT INTO Food(Label, Unit, Calories, Proteins, Glucides, Lipid) VALUES (@Label, @Unit, @Calories, @Proteins, @Glucides, @Lipid)";
                if (ModelState.IsValid)
                    try
                    {
                        SqlCommand cmdIns = new SqlCommand(requete, connexion);
                        cmdIns.Parameters.AddWithValue("@Label", model.Label);
                        cmdIns.Parameters.AddWithValue("@Unit", model.Unit);
                        cmdIns.Parameters.AddWithValue("@Calories", model.Calories);
                        cmdIns.Parameters.AddWithValue("@Proteins", model.Proteins);
                        cmdIns.Parameters.AddWithValue("@Glucides", model.Glucides);
                        cmdIns.Parameters.AddWithValue("@Lipid", model.Lipid);
                        cmdIns.ExecuteScalar();

                        return RedirectToAction("Index", "Home");
                    }
                    catch (Exception ex)
                    {
                        throw new Exception(ex.ToString(), ex);
                    }
                    finally
                    {
                        connexion.Close();
                    }
            }

            /*
                    cmdIns.Parameters.Clear();
                    cmdIns.CommandText = "SELECT @@IDENTITY";
 
                    // Get the last inserted id.
                    int insertID = Convert.ToInt32( cmdIns.ExecuteScalar() );
 
                    cmdIns.Dispose();
                    cmdIns = null;
               */

            //If we got this far, something failed, redisplay form
            return View(model);
        }

            

    }
}
