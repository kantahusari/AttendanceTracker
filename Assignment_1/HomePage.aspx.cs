using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using System.IO;
using System.Data;
using System.Text;


namespace Assignment_1
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            
            if (Session["username"] == null || Session["password"] == null)
            {
                Label1.Text = "";
                Response.Redirect("LoginPage.aspx");
            }
            else 
            {
                Label1.Text = Session["username"].ToString();
                if (Session["username"].ToString() == "admin@isp.net")
                {
                    Atracker.Visible = true;
                }
                else 
                {
                    Atracker.Visible = false;
                }
            }
            
            if (!IsPostBack)
            {
                Tab1.CssClass = "Clicked";
                Mainview.ActiveViewIndex = 0;
                DataTable dt = new DataTable();
                dt.Columns.Add("sessionid");
                dt.Columns.Add("sessionname");
                dt.Columns.Add("sessionsesc");
                dt.Columns.Add("order");
                dt.Rows.Add(1, "Week 1 Lecture", "Lecture 1", 1);
                dt.Rows.Add(2, "Week 2 Lecture", "Lecture 2", 2);
                dt.Rows.Add(3, "Week 3 Lecture", "Lecture 3", 3);
                ViewState["dt"] = dt;
                BindGrid();
                //----------------------
                //Scheme Grid
                DataTable sdt = new DataTable();
                sdt.Columns.Add("statid");
                sdt.Columns.Add("symbol");
                sdt.Columns.Add("sname");
                sdt.Columns.Add("assigned");
                sdt.Columns.Add("sorder");
                sdt.Rows.Add(1, "P", "Present",100,1);
                sdt.Rows.Add(2, "A", "Absent",0,2);
                sdt.Rows.Add(3, "L", "Late",50,2);
                ViewState["sdt"] = sdt;
                SBindGrid();

            }
        }

        protected void Tab1_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Clicked";
            Tab2.CssClass = "Initial";
            NewRegister.CssClass = "Initial";
            Save.CssClass = "Initial";
            Cancel.CssClass = "Initial";
            close.CssClass = "Initial";
            LinkButton1.CssClass = "Initial";
            NewScheme.CssClass = "Initial";
            whatare.CssClass = "Initial";
            closeattscinfo.CssClass = "Initial";
            newScancel.CssClass = "Initial";
            newSsave.CssClass = "Initial";
            Atracker.CssClass = "Initial";
            adminSave.CssClass = "Initial";
            adminCancel.CssClass = "Initial";
            Mainview.ActiveViewIndex = 0;
        }
        protected void Tab2_Click1(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Clicked";
            NewRegister.CssClass = "Initial";
            Save.CssClass = "Initial";
            Cancel.CssClass = "Initial";
            close.CssClass = "Initial";
            LinkButton1.CssClass = "Initial";
            NewScheme.CssClass = "Initial";
            whatare.CssClass = "Initial";
            closeattscinfo.CssClass = "Initial";
            newScancel.CssClass = "Initial";
            newSsave.CssClass = "Initial";
            Atracker.CssClass = "Initial";
            adminSave.CssClass = "Initial";
            adminCancel.CssClass = "Initial";
            Mainview.ActiveViewIndex = 1;
        }
        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session["password"] = null;
            Session.Clear();
            Session.Abandon();
            Response.Redirect("LoginPage.aspx");
        }
        protected void NewRegister_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            NewRegister.CssClass = "Clicked";
            Save.CssClass = "Initial";
            Cancel.CssClass = "Initial";
            close.CssClass = "Initial";
            LinkButton1.CssClass = "Initial";
            NewScheme.CssClass = "Initial";
            whatare.CssClass = "Initial";
            closeattscinfo.CssClass = "Initial";
            newScancel.CssClass = "Initial";
            newSsave.CssClass = "Initial";
            Atracker.CssClass = "Initial";
            adminSave.CssClass = "Initial";
            adminCancel.CssClass = "Initial";
            Mainview.ActiveViewIndex = 2;
        }
        protected void Save_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            NewRegister.CssClass = "Initial";
            Save.CssClass = "Clicked";
            Cancel.CssClass = "Initial";
            close.CssClass = "Initial";
            LinkButton1.CssClass = "Initial";
            NewScheme.CssClass = "Initial";
            whatare.CssClass = "Initial";
            closeattscinfo.CssClass = "Initial";
            newScancel.CssClass = "Initial";
            newSsave.CssClass = "Initial";
            Atracker.CssClass = "Initial";
            adminSave.CssClass = "Initial";
            adminCancel.CssClass = "Initial";
            Mainview.ActiveViewIndex = 0;
            name.Text = "";
            description.Text = "";
            drop.SelectedValue = "";
        }
        protected void Cancel_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            NewRegister.CssClass = "Initial";
            Save.CssClass = "Initial";
            Cancel.CssClass = "Clicked";
            close.CssClass = "Initial";
            LinkButton1.CssClass = "Initial";
            NewScheme.CssClass = "Initial";
            whatare.CssClass = "Initial";
            closeattscinfo.CssClass = "Initial";
            newScancel.CssClass = "Initial";
            newSsave.CssClass = "Initial";
            Atracker.CssClass = "Initial";
            adminSave.CssClass = "Initial";
            adminCancel.CssClass = "Initial";
            Mainview.ActiveViewIndex = 0;
        }
        protected void close_Click(object sender, EventArgs e)
        {
            close.CssClass = "Initial";
            LinkButton1.CssClass = "Initial";
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            NewRegister.CssClass = "Initial";
            Save.CssClass = "Initial";
            Cancel.CssClass = "Initial";
            close.CssClass = "Clicked";
            LinkButton1.CssClass = "Initial";
            NewScheme.CssClass = "Initial";
            whatare.CssClass = "Initial";
            closeattscinfo.CssClass = "Initial";
            newScancel.CssClass = "Initial";
            newSsave.CssClass = "Initial";
            Atracker.CssClass = "Initial";
            adminSave.CssClass = "Initial";
            adminCancel.CssClass = "Initial";
            Mainview.ActiveViewIndex = 0;
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            close.CssClass = "Initial";
            LinkButton1.CssClass = "Initial";
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            NewRegister.CssClass = "Initial";
            Save.CssClass = "Initial";
            Cancel.CssClass = "Initial";
            close.CssClass = "Initial";
            LinkButton1.CssClass = "Clicked";
            closeattscinfo.CssClass = "Initial";
            NewScheme.CssClass = "Initial";
            whatare.CssClass = "Initial";
            newScancel.CssClass = "Initial";
            newSsave.CssClass = "Initial";
            Atracker.CssClass = "Initial";
            adminSave.CssClass = "Initial";
            adminCancel.CssClass = "Initial";
            Mainview.ActiveViewIndex = 3;
        }
        protected void NewScheme_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            NewRegister.CssClass = "Initial";
            Save.CssClass = "Initial";
            Cancel.CssClass = "Initial";
            close.CssClass = "Initial";
            LinkButton1.CssClass = "Initial";
            NewScheme.CssClass = "Clicked";
            whatare.CssClass = "Initial";
            closeattscinfo.CssClass = "Initial";
            newScancel.CssClass = "Initial";
            newSsave.CssClass = "Initial";
            newScancel.CssClass = "Initial";
            newSsave.CssClass = "Initial";
            Atracker.CssClass = "Initial";
            adminSave.CssClass = "Initial";
            adminCancel.CssClass = "Initial";
            Mainview.ActiveViewIndex = 5;
        }
        protected void whatare_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            NewRegister.CssClass = "Initial";
            Save.CssClass = "Initial";
            Cancel.CssClass = "Initial";
            close.CssClass = "Initial";
            LinkButton1.CssClass = "Initial";
            NewScheme.CssClass = "Initial";
            whatare.CssClass = "Clicked";
            closeattscinfo.CssClass = "Initial";
            newScancel.CssClass = "Initial";
            newSsave.CssClass = "Initial";
            Atracker.CssClass = "Initial";
            adminSave.CssClass = "Initial";
            adminCancel.CssClass = "Initial";
            Mainview.ActiveViewIndex = 4;
        }
        protected void closeattscinfo_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            NewRegister.CssClass = "Initial";
            Save.CssClass = "Initial";
            Cancel.CssClass = "Initial";
            close.CssClass = "Initial";
            LinkButton1.CssClass = "Initial";
            NewScheme.CssClass = "Initial";
            whatare.CssClass = "Initial";
            closeattscinfo.CssClass = "Clicked";
            newScancel.CssClass = "Initial";
            newSsave.CssClass = "Initial";
            Atracker.CssClass = "Initial";
            adminSave.CssClass = "Initial";
            adminCancel.CssClass = "Initial";
            Mainview.ActiveViewIndex = 1;
        }
        protected void newScancel_Click1(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            NewRegister.CssClass = "Initial";
            Save.CssClass = "Initial";
            Cancel.CssClass = "Initial";
            close.CssClass = "Initial";
            LinkButton1.CssClass = "Initial";
            NewScheme.CssClass = "Initial";
            whatare.CssClass = "Initial";
            closeattscinfo.CssClass = "Initial";
            newScancel.CssClass = "Clicked";
            newSsave.CssClass = "Initial";
            Atracker.CssClass = "Initial";
            adminSave.CssClass = "Initial";
            adminCancel.CssClass = "Initial";
            Mainview.ActiveViewIndex = 1;
        }
        protected void newSsave_Click1(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            NewRegister.CssClass = "Initial";
            Save.CssClass = "Initial";
            Cancel.CssClass = "Initial";
            close.CssClass = "Initial";
            LinkButton1.CssClass = "Initial";
            NewScheme.CssClass = "Initial";
            whatare.CssClass = "Initial";
            closeattscinfo.CssClass = "Initial";
            newScancel.CssClass = "Initial";
            newSsave.CssClass = "Clicked";
            Atracker.CssClass = "Initial";
            adminSave.CssClass = "Initial";
            adminCancel.CssClass = "Initial";
            Mainview.ActiveViewIndex = 1;
            neSchemeName.Text = "";
        }
        //--------------------------
        protected void BindGrid()
        {
            Grid.DataSource = ViewState["dt"] as DataTable;
            Grid.DataBind();
        }
        protected void Grid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Grid.EditIndex = e.NewEditIndex;
            BindGrid();
        }
        protected void OnUpdate(object sender, EventArgs e)
        {
            GridViewRow row = (sender as LinkButton).NamingContainer as GridViewRow;
            string sname = ((TextBox)row.Cells[1].Controls[0]).Text;
            string sdesc = ((TextBox)row.Cells[2].Controls[0]).Text;
            int order = Convert.ToInt32(((TextBox)row.Cells[3].Controls[0]).Text);

            DataTable dt = ViewState["dt"] as DataTable;
            dt.Rows[row.RowIndex]["sessionname"] = sname;
            dt.Rows[row.RowIndex]["sessionsesc"] = sdesc;
            dt.Rows[row.RowIndex]["order"] = order;
            ViewState["dt"] = dt;
            Grid.EditIndex = -1;
            BindGrid();
        }
        protected void OnCancel(object sender, EventArgs e)
        {
            Grid.EditIndex = -1;
            BindGrid();
        }
        protected void OnDelete(object sender, EventArgs e)
        {
            GridViewRow row = (sender as LinkButton).NamingContainer as GridViewRow;
            DataTable dt = ViewState["dt"] as DataTable;
            dt.Rows.RemoveAt(row.RowIndex);
            ViewState["dt"] = dt;
            BindGrid();
        }
        protected void edit_Click(object sender, EventArgs e)
        {

        }
        protected void delete_Click(object sender, EventArgs e)
        {

        }
        protected void insert_Click(object sender, EventArgs e)
        {
            int counter = Convert.ToInt32(add.Text);
            if (counter <= 20)
            {
                for (int i = 1; i <= counter; i++)
                {
                    DataTable dt = ViewState["dt"] as DataTable;
                    dt.Rows.Add();
                    ViewState["dt"] = dt;
                    BindGrid();
                }
            }


        }
        //--------------------------
        //Scheme Data Table
        protected void SBindGrid()
        {
            SGrid.DataSource = ViewState["sdt"] as DataTable;
            SGrid.DataBind();
        }
        protected void SGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            SGrid.EditIndex = e.NewEditIndex;
            SBindGrid();
        }
        protected void SOnUpdate(object sender, EventArgs e)
        {
            GridViewRow srow = (sender as LinkButton).NamingContainer as GridViewRow;
            string symbol = ((TextBox)srow.Cells[1].Controls[0]).Text;
            string status = ((TextBox)srow.Cells[2].Controls[0]).Text;
            int sassigned = Convert.ToInt32(((TextBox)srow.Cells[3].Controls[0]).Text);
            int sorder = Convert.ToInt32(((TextBox)srow.Cells[4].Controls[0]).Text);

            DataTable sdt = ViewState["sdt"] as DataTable;
            sdt.Rows[srow.RowIndex]["symbol"] = symbol;
            sdt.Rows[srow.RowIndex]["sname"] = status;
            sdt.Rows[srow.RowIndex]["assigned"] = sassigned;
            sdt.Rows[srow.RowIndex]["sorder"] = sorder;
            ViewState["sdt"] = sdt;
            SGrid.EditIndex = -1;
            SBindGrid();
        }
        protected void SOnCancel(object sender, EventArgs e)
        {
            SGrid.EditIndex = -1;
            SBindGrid();
        }
        protected void SOnDelete(object sender, EventArgs e)
        {
            GridViewRow srow = (sender as LinkButton).NamingContainer as GridViewRow;
            DataTable sdt = ViewState["sdt"] as DataTable;
            sdt.Rows.RemoveAt(srow.RowIndex);
            ViewState["sdt"] = sdt;
            SBindGrid();
        }
        protected void Sdelete_Click(object sender, EventArgs e)
        {

        }
        protected void Sedit_Click1(object sender, EventArgs e)
        {

        }
        protected void inserts_Click(object sender, EventArgs e)
        {
            int counter = Convert.ToInt32(addstatues.Text);
            if (counter <= 6)
            {
                for (int i = 1; i <= counter; i++)
                {
                    DataTable sdt = ViewState["sdt"] as DataTable;
                    sdt.Rows.Add();
                    ViewState["sdt"] = sdt;
                    SBindGrid();
                }
            }
        }

        protected void Atracker_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            NewRegister.CssClass = "Initial";
            Save.CssClass = "Initial";
            Cancel.CssClass = "Initial";
            close.CssClass = "Initial";
            LinkButton1.CssClass = "Initial";
            NewScheme.CssClass = "Initial";
            whatare.CssClass = "Initial";
            closeattscinfo.CssClass = "Initial";
            newScancel.CssClass = "Initial";
            newSsave.CssClass = "Initial";
            Atracker.CssClass = "Clicked";
            adminSave.CssClass = "Initial";
            adminCancel.CssClass = "Initial";
            Mainview.ActiveViewIndex = 6;
        }
        protected void adminSave_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            NewRegister.CssClass = "Initial";
            Save.CssClass = "Initial";
            Cancel.CssClass = "Initial";
            close.CssClass = "Initial";
            LinkButton1.CssClass = "Initial";
            NewScheme.CssClass = "Initial";
            whatare.CssClass = "Initial";
            closeattscinfo.CssClass = "Initial";
            newScancel.CssClass = "Initial";
            newSsave.CssClass = "Initial";
            Atracker.CssClass = "Initial";
            adminSave.CssClass = "Clicked";
            adminCancel.CssClass = "Initial";
            Mainview.ActiveViewIndex = 0;
        }
        protected void adminCancel_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            NewRegister.CssClass = "Initial";
            Save.CssClass = "Initial";
            Cancel.CssClass = "Initial";
            close.CssClass = "Initial";
            LinkButton1.CssClass = "Initial";
            NewScheme.CssClass = "Initial";
            whatare.CssClass = "Initial";
            closeattscinfo.CssClass = "Initial";
            newScancel.CssClass = "Initial";
            newSsave.CssClass = "Initial";
            Atracker.CssClass = "Initial";
            adminSave.CssClass = "Initial";
            adminCancel.CssClass = "Clicked";
            Mainview.ActiveViewIndex = 0;
        }






        //--------------------------
    }
}