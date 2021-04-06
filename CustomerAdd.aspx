<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="CustomerAdd.aspx.cs" Inherits="UsersForm.CustomerAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Container" runat="server">
    <div class="container-fluid">
        <div class="card">
            <div class="card-header">
                <i class="icon icon-grid"></i>New Customer Information
            </div>
            <div class="card-body">
                <form id="customer" name="customer">
                    <div class="row">
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Account_No">Account No:</label>
                            <input type="text" class="form-control mt-2" id="Account_No" placeholder="Account No">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Contact_No">Contact No:</label>
                            <input type="text" class="form-control mt-2" id="Contact_No" placeholder="Contact No">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Club_Code">Club Code:</label>
                            <input type="text" class="form-control mt-2" id="Club_Code" placeholder="Club Code">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="fnScheme_Codeame">Scheme Code:</label>
                            <input type="text" class="form-control mt-2" id="Scheme_Code" placeholder="Scheme Code">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Main_Contact">Main Contact:</label>
                            <input type="text" class="form-control mt-2" id="Main_Contact" placeholder="Main Contact">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Name">Name:</label>
                            <input type="text" class="form-control mt-2" id="Name" placeholder="Name">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Search_Name">Search Name:</label>
                            <input type="text" class="form-control mt-2" id="Search_Name" placeholder="Search Name">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Name_2">Name 2:</label>
                            <input type="text" class="form-control mt-2" id="Name_2" placeholder="Name 2">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Address">Address:</label>
                            <input type="text" class="form-control mt-2" id="Address" placeholder="Address">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Address_2">Address 2:</label>
                            <input type="text" class="form-control mt-2" id="Address_2" placeholder="Address 2">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="City">City:</label>
                            <input type="text" class="form-control mt-2" id="City" placeholder="City">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Post_Code">Post Code:</label>
                            <input type="text" class="form-control mt-2" id="Post_Code" placeholder="Post Code">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Email">Email:</label>
                            <input type="text" class="form-control mt-2" id="Email" placeholder="Email">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Honepage">Honepage:</label>
                            <input type="text" class="form-control mt-2" id="Honepage" placeholder="Honepage">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Phone_No">Phone No:</label>
                            <input type="text" class="form-control mt-2" id="Phone_No" placeholder="Phone No">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Mobile_Phone_No">Mobile Phone No:</label>
                            <input type="text" class="form-control mt-2" id="Mobile_Phone_No" placeholder="Mobile Phone No">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Territory_Code">Territory Code:</label>
                            <input type="text" class="form-control mt-2" id="Territory_Code" placeholder="Territory Code">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="County">County:</label>
                            <input type="text" class="form-control mt-2" id="County" placeholder="County">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Country">Country:</label>
                            <input type="text" class="form-control mt-2" id="Country" placeholder="Country">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Gender">Gender:</label>
                            <input type="text" class="form-control mt-2" id="Gender" placeholder="Gender">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Date_of_Birth">Date of Birth:</label>
                            <input type="text" class="form-control mt-2" id="Date_of_Birth" placeholder="Date of Birth">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Birthday">Birthday:</label>
                            <input type="text" class="form-control mt-2" id="Birthday" placeholder="Birthday">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Marital_Status">Marital Status:</label>
                            <input type="text" class="form-control mt-2" id="Marital_Status" placeholder="Marital Status">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Expiration_Period_Type">Expiration Period Type:</label>
                            <input type="text" class="form-control mt-2" id="Expiration_Period_Type" placeholder="Expiration Period Type">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Blocked">Blocked:</label>
                            <input type="text" class="form-control mt-2" id="Blocked" placeholder="Blocked">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Reason_Blocked">Reason Blocked:</label>
                            <input type="text" class="form-control mt-2" id="Reason_Blocked" placeholder="Reason Blocked">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Date_Blocked">Date Blocked:</label>
                            <input type="text" class="form-control mt-2" id="Date_Blocked" placeholder="Date_Blocked">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Blocked_by">Blocked by:</label>
                            <input type="text" class="form-control mt-2" id="Blocked_by" placeholder="Blocked by">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Created_Date">Created Date:</label>
                            <input type="text" class="form-control mt-2" id="Created_Date" placeholder="Created Date">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Created_by">Created by:</label>
                            <input type="text" class="form-control mt-2" id="Created_by" placeholder="Created by">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="No_Series">No Series:</label>
                            <input type="text" class="form-control mt-2" id="No_Series" placeholder="No Series">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="External_ID">External ID:</label>
                            <input type="text" class="form-control mt-2" id="External_ID" placeholder="External ID">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="External_System">External System:</label>
                            <input type="text" class="form-control mt-2" id="External_System" placeholder="External System">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="First_Name">First Name:</label>
                            <input type="text" class="form-control mt-2" id="First_Name" placeholder="First Name">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Middle_Name">Middle Name:</label>
                            <input type="text" class="form-control mt-2" id="Middle_Name" placeholder="Middle Name">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Surname">Surname:</label>
                            <input type="text" class="form-control mt-2" id="Surname" placeholder="Surname">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Salutation_Code">Salutation Code:</label>
                            <input type="text" class="form-control mt-2" id="Salutation_Code" placeholder="Salutation Code">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Search_email">Search email:</label>
                            <input type="text" class="form-control mt-2" id="Search_email" placeholder="Search email">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="District">District:</label>
                            <input type="text" class="form-control mt-2" id="District" placeholder="District">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Ward">Ward:</label>
                            <input type="text" class="form-control mt-2" id="Ward" placeholder="Ward">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Occupation">Occupation:</label>
                            <input type="text" class="form-control mt-2" id="Occupation" placeholder="Occupation">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Channel_To_Get_Information">Channel To Get Information:</label>
                            <input type="text" class="form-control mt-2" id="Channel_To_Get_Information" placeholder="Channel To Get Information">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="No_Of_Family_Members">No Of Family Members:</label>
                            <input type="text" class="form-control mt-2" id="No_Of_Family_Members" placeholder="No Of Family Members">
                        </div>
                        <div class="form-group col-md-6 col-lg-4 col-xl-3 mb-3">
                            <label for="Pics">Pics:</label>
                            <input type="text" class="form-control mt-2" id="Pics" placeholder="Pics">
                        </div>
                    </div>

                    <div onclick="handleForm()">Click</div>
                    <%--<input type="submit" value="submit" />--%>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Js" runat="server">
    <script>


        const CustomerInsertInit = async (id) => {
            const endPoint = "/CustomerAdd.aspx/InsertCustomerJson";
            const para = { id: parseInt(id) };
            let del = 0;
            await fetchData(endPoint, 'POST', para)
                .then(data => {
                    const objdata = JSON.parse(data.d);
                    del = objdata;
                    return objdata;
                });
            return del;
        }
        const handleForm = () => {
            const formInput = document.querySelectorAll('#customer input');
            let str = ``;
            let i = 0;
            // check convert string to double, to datetime
            formInput.forEach(el => {
                if (formInput.length === i)
                    str += `${el.value}`;
                else str += `${el.value}, `;
                i++;
                //formData.append(el.getAttribute('id'), el.value);
            });
            console.log(str);

            const del = await CustomerDeleteInit(id);
            if (del == "1") {
                alert(`Delete success! ${name}`);
                $('#floading').addClass('active');
                setTimeout(() => {
                    $('#floading').removeClass('active');
                }, 300);
            }
            else {
                alert(`Has some error when delete ${name}`);
            }
        }
    </script>
</asp:Content>
