using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineAssessmentSet.LecturerFolder
{
    public partial class CreateAssessment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void fvCreateAssessment_InsertItem()
        {
            //Book item = new Book();
            //TryUpdateModel(item);

            //if (ModelState.IsValid)
            //{
            //    // Save changes here
            //    BooksInventoryEntities _db = new BooksInventoryEntities();
            //    _db.Books.Add(item);
            //    _db.SaveChanges();
            //    Response.Redirect("~/ViewData.aspx");
            //}
            AssessmentSet assessment = new AssessmentSet();
            TryUpdateModel(assessment);
            if (ModelState.IsValid)
            {
                OnlineAssessmentEntities _db = new OnlineAssessmentEntities();
                _db.AssessmentSets.Add(assessment);
                _db.SaveChanges();
                Response.Redirect("~/LecturerFolder/ViewAssessment.aspx");
            }
        }

        protected void fvCreateAssessment_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName == "Cancel")
            {
                Response.Redirect("~/LecturerFolder/ViewAssessment.aspx");
            }
        }
    }
}