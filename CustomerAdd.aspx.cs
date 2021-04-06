using Library;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsersForm
{
    public partial class CustomerAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [System.Web.Services.WebMethod()]
        public static string InsertCustomerJson(string str)
        {
            try
            {
                int delete = Cls_Master_customer.doInsert(str);
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