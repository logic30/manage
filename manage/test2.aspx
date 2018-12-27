<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test2.aspx.cs" Inherits="manage.test2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Profile</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Contact</a>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
      <div class="alert alert-success" role="alert">
										<div class="container">
											<div class="row">
												<div class="col-4">
													<div class="input-group mb-3">
														<div class="input-group-prepend">
														  <br /><span class="input-group-text" >教師姓名</span>
														</div>
														<asp:Textbox runat="server" type="text" class="form-control" placeholder="請輸入姓名" aria-label="degree" id="txtName" ></asp:TextBox>
													  </div>
												</div>
												<div class="col-4">
													<div class="input-group mb-3">
														<div class="input-group-prepend">
														  <br /><span class="input-group-text" >教師生日</span>
														</div>
														<asp:Textbox runat="server" type="text" class="form-control" placeholder="請輸入生日" aria-label="degree" id="txtBirthday" ></asp:TextBox>
													  </div>
												</div>
												
																						
												
											</div>

											<div class="row">
												<div class="col-4">
													<div class="input-group mb-3">
														<div class="input-group-prepend">
														 <br /> <span class="input-group-text" >教師密碼</span>
														</div>
														<asp:Textbox runat="server" type="text" class="form-control" placeholder="請輸入密碼" aria-label="degree" id="txtPassword" ></asp:TextBox>
													  </div>
												</div>
                                                <div class="col-3.5">
													
														
													
														<br /><span class="input-group-text" >教師性別</span>
													  
													  
													  <div class="form-group">
														  <asp:DropDownList class="form-control" runat="server" >
															<asp:ListItem Value="true">男生</asp:ListItem>
															<asp:ListItem Value="false">女生</asp:ListItem>
														  </asp:DropDownList>
													  </div>
													  
													  
													  
												  </div>
												
												<div class="col-3.5">
													
														
													
														<br /><span class="input-group-text" >身份區分</span>
													  
													  
													  <div class="form-group">
														  <asp:DropDownList class="form-control" id="exampleFormControlSelect1" runat="server">
															<asp:ListItem>管理員</asp:ListItem>
															<asp:ListItem>教師</asp:ListItem>
															<asp:ListItem>家長</asp:ListItem>
															<asp:ListItem>學生</asp:ListItem>
														  </asp:DropDownList>
													  </div>
													  
													  
													  
												  </div>
																						
												
											</div>	
													<div class="row1">
													<asp:button type="button" class="btn btn-primary" id="btnAdd" runat="server" Text="新增"  />
											        <asp:button type="button" class="btn btn-primary" id="btnFix" runat="server" Text="修改" />
												    <asp:button type="button" class="btn btn-primary" id="btnDel" runat="server" Text="刪除" />
                                                    <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
													</div>						
												   </div>
												</div>
  </div>
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">...</div>
  <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">...</div>
</div>
        </div>
    </form>
</body>
</html>
