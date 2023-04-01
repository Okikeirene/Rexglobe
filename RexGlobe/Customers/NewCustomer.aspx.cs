using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RexGlobe;
using DevExpress.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace RexGlobe.Customers
{
    public partial class NewCustomer : System.Web.UI.Page
    {
        RexGlobeEntities context = new RexGlobeEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ASPxComboBoxLga_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e)
        {
            //if (string.IsNullOrEmpty(e.Parameter)) return;

            //edsLgas.WhereParameters[0].DefaultValue = e.Parameter;
            //ASPxComboBoxLga.DataBind();
        }

        protected void ASPxButtonSubmit_Click(object sender, EventArgs e)
        {
            UserAccount _user = (UserAccount)Session["LoggedInUser"];

            int _roleId = Convert.ToInt32(_user.RoleId);
            this.Session["UserName"] = _user.UserName.ToString();
            this.Session["UserRoleId"] = _user.Role.RoleID;

            Customer _request = new Customer()
            {
                CompanyName = (string)ASPxFormLayout1.GetNestedControlValueByFieldName("CompanyName"),
                REXID = (string)ASPxFormLayout1.GetNestedControlValueByFieldName("REXID"),
                BVN = (string)ASPxFormLayout1.GetNestedControlValueByFieldName("BVN"),
                DateOfIncorporation = (DateTime)ASPxFormLayout1.GetNestedControlValueByFieldName("DateOfIncorporation"),
                DateOfCommencement = (DateTime)ASPxFormLayout1.GetNestedControlValueByFieldName("DateOfCommencement"),
                ContractDate = (DateTime)ASPxFormLayout1.GetNestedControlValueByFieldName("ContractDate"),
                AssignedTo = (string)ASPxFormLayout1.GetNestedControlValueByFieldName("AssignedTo"),
                BusinessLineID = Convert.ToInt32(ASPxFormLayout1.GetNestedControlValueByFieldName("BusinessLineId")),
                Address = (string)ASPxFormLayout1.GetNestedControlValueByFieldName("BusinessAddress"),
                StateID = (string)ASPxFormLayout1.GetNestedControlValueByFieldName("BusinessStateId"),
                LGAID = Convert.ToInt32(ASPxFormLayout1.GetNestedControlValueByFieldName("BusinessLgaId")),
                Phone1 = (string)ASPxFormLayout1.GetNestedControlValueByFieldName("Phone1"),
                Phone2 = (string)ASPxFormLayout1.GetNestedControlValueByFieldName("Phone2"),
                Email = (string)ASPxFormLayout1.GetNestedControlValueByFieldName("Email"),
                MarketedByWhom = (string)ASPxFormLayout1.GetNestedControlValueByFieldName("MarketedByWhom"),
                AcceptTermsandConditions = (bool)ASPxFormLayout1.GetNestedControlValueByFieldName("AcceptTermsandConditions"),
                Status = "New",
                CreatedDate = DateTime.Now
            };

            context.Customers.Add(_request);
            context.SaveChanges();


            if (FileUpload1.HasFile)
            {
                string RexGlobeCS = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;

                SqlConnection con = new SqlConnection(RexGlobeCS);
                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.Parameters.Add("@Name", SqlDbType.VarChar).Value = FileName1.Text;
                com.Parameters.Add("@Description", SqlDbType.VarChar).Value = FileDescription1.Text;
                SqlParameter p3 = new SqlParameter("@Filecontent", SqlDbType.VarBinary);
                p3.Value = ConvertImage(FileUpload1);
                com.Parameters.Add(p3);
                com.CommandText = "DECLARE @UNIQUEX UNIQUEIDENTIFIER,  @REGID INT; SELECT top 1 @REGID = RequestId  FROM [RexGlobe].[dbo].[Customer] order by RequestId desc;SET @UNIQUEX = NEWID(); Insert into [RexGlobe].[dbo].[CustomerFiles] ([FileId],[RequestId],[FileName],[FileDescription],[FileType],[FileContent]) VALUES (@UNIQUEX,@REGID,'" + FileName1.Text + "',' " + FileDescription1.Text + "','png',@Filecontent)";
                con.Open();
                //insert the file into database
                com.ExecuteNonQuery();
                con.Close();
            }
            if (FileUpload2.HasFile)
            {
                string RexGlobeCS = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;

                SqlConnection con = new SqlConnection(RexGlobeCS);
                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.Parameters.Add("@Name", SqlDbType.VarChar).Value = FileName2.Text;
                com.Parameters.Add("@Description", SqlDbType.VarChar).Value = FileDescription2.Text;
                SqlParameter p3 = new SqlParameter("@Filecontent", SqlDbType.VarBinary);
                p3.Value = ConvertImage(FileUpload2);
                com.Parameters.Add(p3);
                com.CommandText = "DECLARE @UNIQUEX UNIQUEIDENTIFIER,  @REGID INT; SELECT top 1 @REGID = RequestId  FROM [RexGlobe].[dbo].[Customer] order by RequestId desc;SET @UNIQUEX = NEWID();Insert into [RexGlobe].[dbo].[CustomerFiles] ([FileId],[RequestId],[FileName],[FileDescription],[FileType],[FileContent]) VALUES (@UNIQUEX,@REGID,'" + FileName2.Text + "', '" + FileDescription2.Text + "','png',@Filecontent)";
                con.Open();
                //insert the file into database
                com.ExecuteNonQuery();
                con.Close();
            }

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Customer Registration Submitted Successfully')", true);

            ASPxFormLayout1.ForEach(ClearItem);
            ASPxFormLayout2.ForEach(ClearItem);

        }

        private byte[] ConvertImage(FileUpload file)
        {

            byte[] bytes = null;

            try
            {


                HttpPostedFile postedFile = file.PostedFile;

                int imageLength = postedFile.ContentLength;
                string imageType = postedFile.ContentType;

                string filename = Path.GetFileName(postedFile.FileName);
                string fileExtension = Path.GetExtension(filename);
                int filesize = postedFile.ContentLength;
                Session["filename"] = filename;
                Session["fileExtension"] = fileExtension;
                Session["filesize"] = filesize;
                Session["imageLength"] = imageLength;
                Session["imageType"] = imageType;

                Stream stream = postedFile.InputStream;
                BinaryReader binaryreader = new BinaryReader(stream);

                bytes = binaryreader.ReadBytes((int)stream.Length);
                return bytes;
            }

            catch (Exception ex)
            {
                return null;
            }

        }

        private void ClearItem(LayoutItemBase item)
        {
            var layoutItem = item as LayoutItem;
            if (layoutItem != null)
            {
                var editBase = layoutItem.GetNestedControl() as ASPxEditBase;
                if (editBase != null)
                {
                    editBase.Value = string.Empty;
                }
            }
        }

        protected void ASPxFormLayout1_DataBound(object sender, EventArgs e)
        {
            ASPxFormLayout1.ForEach(ClearItem);
        }


        protected void ASPxCompanyNext_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewCustomer.aspx#Assets_data");
        }

        protected void AttachbtnNext_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewCustomer.aspx#legal");
        }

        protected void AttachbtnPrevious_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customers/NewCustomer.aspx#Other");
        }

        protected void ASPxAssetsPrev_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customers/NewCustomer.aspx#Company_data");
        }

        protected void ASPxAssetNext_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customers/NewCustomer.aspx#Introduction");
        }

        protected void ASPxRemitMoneyForSanctionedCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            string YRemitMoneyForSanctionedCountry_ = Session["ASPxRemitMoneyForSanctionedCountry"].ToString();
            string YRemitMoneyForSanctionedCountryFinal = this.ASPxRemitMoneyForSanctionedCountry.SelectedItem.ToString();
            decideNinspectionAction(YRemitMoneyForSanctionedCountryFinal);
            Response.Redirect("~/Customers/NewCustomer.aspx?YRemitMoneyForSanctionedCountry_=" + YRemitMoneyForSanctionedCountryFinal + "#Introduction");
        }

        protected void decideNinspectionAction(string action)
        {
            if (action == "True")
            {
                
                CommentRemitMoneyForSanctionedCountry.Visible = true;
                MemoCommentRemitMoneyForSanctionedCountry.Visible = true;
              
            }
            else
            {
                CommentRemitMoneyForSanctionedCountry.Visible = false;
                MemoCommentRemitMoneyForSanctionedCountry.EnableViewState = false;
            }
        }

        protected void BtnInforPrev_Click(object sender, EventArgs e)
        {

        }

        protected void BtnInformatonNext_Click(object sender, EventArgs e)
        {

        }

        protected void BtnOtherNext_Click(object sender, EventArgs e)
        {

        }

        protected void BtnOtherPrev_Click(object sender, EventArgs e)
        {

        }

        protected void BtnLegalAgreement_Click(object sender, EventArgs e)
        {

        }

        //protected void ASPxComIntroducedByWhom_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    string YIntdByWhom_ = Session["ASPxComIntroducedByWhom"].ToString();
        //    string YIntdByWhomFinal = this.ASPxComIntroducedByWhom.SelectedItem.ToString();
        //    decideIntdByWhom(YIntdByWhomFinal);
        //    Response.Redirect("~/Customers/NewCustomer.aspx?YIntdByWhom_=" + YIntdByWhomFinal + "#Introduction");

        //}

        //protected void decideIntdByWhom(string action)
        //{
        //    if (action == "True")
        //    {
        //        ASPxIntdByWhom.Visible = true;
        //    }
        //    else
        //    {
        //        ASPxIntdByWhom.Visible = false;
        //    }
        //}

        protected void ASPxComAnySubsidiaryCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            string YASPxComAnySubsidiaryCountry_ = Session["MarketedByWhom"].ToString();
            string YASPxComAnySubsidiaryCountryFinal = this.MarketedByWhom.SelectedItem.ToString();
            decideASPxComAnySubsidiaryCountry(YASPxComAnySubsidiaryCountryFinal);
            Response.Redirect("~/Customers/NewCustomer.aspx?YASPxComAnySubsidiaryCountry_=" + YASPxComAnySubsidiaryCountryFinal + "#Introduction");
            
        }

        protected void decideASPxComAnySubsidiaryCountry(string action)
        {
            if (action == "True")
            {
                ASPxComAnySubsidiaryCountry.Visible = true;
            }
            else
            {
                ASPxComAnySubsidiaryCountry.Visible = false;
            }
        }
    }
}