﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="ProdoctReport.aspx.cs" Inherits="SBMS.Report.ProdoctReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
                   <link rel="stylesheet" href="css/foundation.css">
    <link rel="stylesheet" href="css/app.css">
    <style>.error_txt{margin-bottom: 10px; display: block; color: #f00; font-size: 13px;}
.inactive{display:none;}

/*foundation-example*/
#foundation-example{}
.foundation-example__ex-wrapper{
	background-color: lightblue;
}
.foundation-example__in-wrapper{  
	margin: auto;
    max-width: 400px;
    background: white;
    padding: 30px;
}

.foundation-example__title{  
	text-align: center;
    font-size: 40px;
    margin-bottom: 32px;
}

.foundation-example__form-wrapper{  

}
</style>

     <body>

  	<section id="foundation-example">
  		<div style="height: 30px;background: lightblue;"></div>
  		<div class="foundation-example__ex-wrapper">
  			<div class="foundation-example__in-wrapper">
	  			<div class="foundation-example__title"> Product Report</div>
	  			<div class="foundation-example__form-wrapper">
                 <asp:ScriptManager ID="ScriptManager1" runat="server" />

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
   <ContentTemplate>
               
	             
                      
						<div class="row" >
                           <div class="large-12 columns" style="text-align: left">
								<label> Start Date
							        <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
								</label>
							</div>
                      </div>
                   <div class="row">
                            <div class="large-12 columns" style="text-align: left">
								<label> End Date
							        <asp:TextBox ID="txtEndDate" runat="server" TextMode="Date"></asp:TextBox>
								</label>
							</div>

                   </div>
                
                <div class="row">
                            <div class="large-12 columns" style="text-align: left">
								<label>Status
							     <asp:DropDownList ID="drpStatus" runat="server">
                                     <asp:ListItem>--Select Please--</asp:ListItem>
                                     <asp:ListItem>HomeAppliane</asp:ListItem>
                                     <asp:ListItem>Others</asp:ListItem>
                                </asp:DropDownList>
								</label>
							</div>

                   </div>
                   
                        
						<div class="row" >
                          <div class="large-8 columns">  
  
							
					    <asp:Button ID="btnReport" class="success button" runat="server" Text="Report" Font-Size="Medium" Width="180px" OnClick="btnReport_Click"  />
  
                               <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                               <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
                               </div>
	
                               
						</div>

                  
            
			   </ContentTemplate>
     <Triggers>
 </Triggers>
          </asp:UpdatePanel>
	  			</div>
  			</div>
  		</div>
  		<div style="height: 50px;background: lightblue;"></div>
  	</section>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/vendor/jquery.js"></script>
    <script src="js/vendor/what-input.js"></script>
    <script src="js/vendor/foundation.js"></script>
    <script src="js/app.js"></script>

  </body>
    <link href="//cdnjs.cloudflare.com/ajax/libs/foundation/6.3.1/css/foundation.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//cdnjs.cloudflare.com/ajax/libs/foundation/6.3.1/js/foundation.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</asp:Content>
