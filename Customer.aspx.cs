using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library;

namespace UsersForm
{
    public partial class Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public class Model_Customer
        {
            public int id;
            public string Account_No;
            public string Contact_No;
            public string Club_Code;
            public string Scheme_Code;
            public double Main_Contact;
            public string Name;
            public string Search_Name;
            public string Name_2;
            public string Address;
            public string Address_2;
            public string City;
            public string Post_Code;
            public string Email;
            public string Honepage;
            public string Phone_No;
            public string Mobile_Phone_No;
            public string Territory_Code;
            public string County;
            public string Country;
            public double Gender;
            public string Date_of_Birth;
            public string Birthday;
            public double Marital_Status;
            public double Expiration_Period_Type;
            public double Blocked;
            public string Reason_Blocked;
            public string Date_Blocked;
            public string Blocked_by;
            public DateTime Created_Date;
            public string Created_by;
            public string No_Series;
            public string External_ID;
            public string External_System;
            public string First_Name;
            public string Middle_Name;
            public string Surname;
            public string Salutation_Code;
            public string Search_email;
            public string District;
            public string Ward;
            public string Occupation;
            public double Channel_To_Get_Information;
            public double No_Of_Family_Members;
            public string Pics;
        }

        [System.Web.Services.WebMethod()]
        public static string GetCustomerListJson()
        {
            string sql = @"select * from Master_customer";
            DataTable dt = Cls_Master_customer.getDataTable_SQL_pro(sql);
            List<Model_Customer> List = new List<Model_Customer>();
            try
            {
                foreach (DataRow dr in dt.Rows)
                {
                    Model_Customer model = new Model_Customer();
                    model.id = Convert.ToInt32(dr["id"].ToString());
                    model.Account_No = dr["Account_No"].ToString();
                    model.Contact_No = dr["Contact_No"].ToString();
                    model.Club_Code = dr["Club_Code"].ToString();
                    model.Scheme_Code = dr["Scheme_Code"].ToString();
                    model.Main_Contact = Convert.ToDouble(dr["Main_Contact"].ToString());
                    model.Name = dr["Name"].ToString();
                    model.Search_Name = dr["Search_Name"].ToString();
                    model.Name_2 = dr["Name_2"].ToString();
                    model.Address = dr["Address"].ToString();
                    model.Address_2 = dr["Address_2"].ToString();
                    model.City = dr["City"].ToString();
                    model.Post_Code = dr["Post_Code"].ToString();
                    model.Email = dr["Email"].ToString();
                    model.Honepage = dr["Honepage"].ToString();
                    model.Phone_No = dr["Phone_No"].ToString();
                    model.Mobile_Phone_No = dr["Mobile_Phone_No"].ToString();
                    model.Territory_Code = dr["Territory_Code"].ToString();
                    model.County = dr["County"].ToString();
                    model.Country = dr["Country"].ToString();
                    model.Gender = Convert.ToDouble(dr["Gender"].ToString());
                    model.Date_of_Birth = dr["Date_of_Birth"].ToString();
                    model.Birthday = dr["Birthday"].ToString();
                    model.Marital_Status = Convert.ToDouble(dr["Marital_Status"].ToString());
                    model.Expiration_Period_Type = Convert.ToDouble(dr["Expiration_Period_Type"].ToString());
                    model.Blocked = Convert.ToDouble(dr["Blocked"].ToString());
                    model.Reason_Blocked = dr["Reason_Blocked"].ToString();
                    model.Date_Blocked = dr["Date_Blocked"].ToString();
                    model.Blocked_by = dr["Blocked_by"].ToString();
                    model.Created_Date = Convert.ToDateTime(dr["Created_Date"].ToString());
                    model.Created_by = dr["Created_by"].ToString();
                    model.No_Series = dr["No_Series"].ToString();
                    model.External_ID = dr["External_ID"].ToString();
                    model.External_System = dr["External_System"].ToString();
                    model.First_Name = dr["First_Name"].ToString();
                    model.Middle_Name = dr["Middle_Name"].ToString();
                    model.Surname = dr["Surname"].ToString();
                    model.Salutation_Code = dr["Salutation_Code"].ToString();
                    model.Search_email = dr["Search_email"].ToString();
                    model.District = dr["District"].ToString();
                    model.Ward = dr["Ward"].ToString();
                    model.Occupation = dr["Occupation"].ToString();
                    model.Channel_To_Get_Information = Convert.ToDouble(dr["Channel_To_Get_Information"].ToString());
                    model.No_Of_Family_Members = Convert.ToDouble(dr["No_Of_Family_Members"].ToString());
                    model.Pics = dr["Pics"].ToString();
                    List.Add(model);
                }
                return new JavaScriptSerializer().Serialize(List).ToString();
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        [System.Web.Services.WebMethod()]
        public static string DeteleCustomerJson(int id)
        {
            try
            {
                int delete = Cls_Master_customer.doDelete(id);
                if (delete == 1) return new JavaScriptSerializer().Serialize("1").ToString();
                else return null;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}