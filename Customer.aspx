<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="UsersForm.Customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <link href="/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
    <link href="/css/customer.css" rel="stylesheet" type="text/css" />
    <link href="/css/floading.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Header" runat="server">
    <div id="floading" class="floading active">
	    <div class="floading-item">
		    <div class="floading-mobile"></div>
		    <img class="floading-logo" src="/images/logo-ibco-tech-circle.png" alt="IBCO.TECH" >
	    </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Container" runat="server">
    <div class="container-fluid">
        <div class="card">
            <div class="card-header">
                <i class="icon icon-grid"></i>Customer List
            </div>
            <div class="card-body">
                <table id="customer" class="customer tables tables-striped mt-4 mb-4" style="width: 100%"  rel="js-content">
                </table>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Js" runat="server">
    <script src="/js/jquery-3.5.1.js"></script>
    <script src="/js/jquery.dataTables.min.js"></script>
    <script>
        const templateCustomer = (objdata) => `<tr>
            <td>${objdata.Account_No}</td>
            <td>${objdata.Contact_No}</td>
            <td>${objdata.Club_Code}</td>
            <td>${objdata.Scheme_Code}</td>
            <td>${objdata.Main_Contact}</td>
            <td>${objdata.Name}</td>
            <td>
                <i class="icon icon-note customer-icon" onclick="handleEditCustomer(${objdata.id})"></i>
                <i class="icon icon-trash customer-icon" onclick="handleDeleteCustomer(${objdata.id}, '${objdata.Account_No}')"></i>
            </td>
        </tr>`;

        const renderCustomer = (objdata) => {
            const content = document.querySelector('[rel="js-content"]');
            let str = `<thead>
            <tr>
                <th>Account No</th>
                <th>Contact No</th>
                <th>Club Code</th>
                <th>Scheme Code</th>
                <th>Main Contact</th>
                <th>Name</th>
                <th>Action</th>
            </tr>
        </thead><tbody>`;
            objdata.forEach(obj => {
            //for (let i = 0; i < 100; i ++)
                str += templateCustomer(obj);
            })
            str += `</tbody>`;
            content.innerHTML = str;
        }

        const CustomerInit = async () => {
            const endPoint = "/Customer.aspx/GetCustomerListJson";
            const para = {};
            await fetchData(endPoint, 'POST', para)
            .then(data => {
                const objdata = JSON.parse(data.d);
                console.log(objdata);
                renderCustomer(objdata);
            });
        }

        const CustomerDeleteInit = async (id) => {
            const endPoint = "/Customer.aspx/DeteleCustomerJson";
            const para = { id: parseInt(id) };
            let del = 0;
            await fetchData(endPoint, 'POST', para)
            .then(data => {
                const objdata = JSON.parse(data.d);
                del = objdata;
                CustomerInit();
                return objdata;
            });
            return del;
        }

        const handleEditCustomer = (id) => {
            
        }

        const handleDeleteCustomer = async (id, name) => {
            if (confirm(`Do you want delete Account No ${name}?`)) {
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
        }

        CustomerInit();


        $(document).ready(function () {
            setTimeout(() => {
                $('#customer').DataTable({
                });
                $('#customer').addClass('active');
                $('#floading').removeClass('active');
            }, 1000);
        });
    </script>
</asp:Content>
