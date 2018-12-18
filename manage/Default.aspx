<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="manage._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <div class="row">
						<div class="12u">
							<section id="content" >
								<header>
									<h2>管理者介面（班級）</h2>
									<div class="alert alert-success" role="alert">
									<div class="container">
										<div class="row">
											<div class="col-3.5">
												<div class="input-group mb-3">
													<div class="input-group-prepend">
													  <span class="input-group-text" >年級</span>
													</div>
													<asp:Textbox runat="server" type="text" class="form-control" placeholder="請輸入年級" id="txtGrade"  ></asp:TextBox>
												  </div>
											</div>
											<div class="col-3.5">
												<div class="input-group mb-3">
													<div class="input-group-prepend">
													  <br /><span class="input-group-text" >班號</span>
													</div>
													<asp:Textbox runat="server" type="text" class="form-control" placeholder="請輸入班號" id="txtClass" ></asp:TextBox>
												  </div>
											</div>
											<div class="col-3.5">
												<div class="input-group mb-3">
													<div class="input-group-prepend">
													  <br /><span class="input-group-text" >導師</span>
													</div>
													<asp:Textbox runat="server" type="text" class="form-control" placeholder="請輸入導師姓名" aria-label="degree" id="txtName" ></asp:TextBox>
												  </div>
											</div>
                                            <div class="col-3.5">
												<div class="input-group mb-3">
													<div class="input-group-prepend">
													  <br /><span class="input-group-text" >學級年度</span>
													</div>
													<asp:Textbox runat="server" type="text" class="form-control" placeholder="請輸入學級年度" aria-label="degree" id="txtYear" ></asp:TextBox>
												  </div>
											</div>		
											
										</div>
										<div class="row">
                                            <br />
												<asp:button type="button" class="btn btn-primary" id="btnAdd" runat="server" Text="新增" OnClick="btnAdd_Click" />
											    <asp:button type="button" class="btn btn-primary" id="btnFix" runat="server" Text="修改" />
												<asp:button type="button" class="btn btn-primary" id="btnDel" runat="server" Text="刪除" />
                                                <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
										</div>
									</div>
								</div>
								<div class="alert alert-info" role="alert">
									<div class="container">
										<div class="row" id="btnSearch1">
											<div class="col-2">
												<span class="input-group-text">進階搜尋</span>
													</div>
													  
													  <div class="form-group">
															<select class="form-control" id="exampleFormControlSelect1">
															  <option>一年級</option>
															  <option>二年級</option>
															  <option>三年級</option>
															  <option>四年級</option>
															  <option>五年級</option>
															  <option>六年級</option>
															</select>
														</div>  
													  
													
											<div class="col">
												<asp:Button type="submit" runat="server" class="btn btn-primary" aria-pressed="undefined" aria-readonly="False" aria-required="False" id="btnSearch" Text="搜尋" />
                                                
                                                <br />
											</div>	
										       </div>
                                        
										<div class="row1">
											<div class="col-9">
											<!-- List group -->
                                            <div class="list-group" id="myList" role="tablist">
                                                <br />
													<a class="list-group-item list-group-item-action active" data-toggle="list" href="#" role="tab">一年一班</a>
													<a class="list-group-item list-group-item-action" data-toggle="list" href="#" role="tab">一年二班</a>
													<a class="list-group-item list-group-item-action" data-toggle="list" href="#" role="tab">一年三班</a>
													<a class="list-group-item list-group-item-action" data-toggle="list" href="#" role="tab">一年四班</a>
											</div>
												  
											<!-- Tab panes -->
											<div class="tab-content">
													<div class="tab-pane active" id="home" role="tabpanel">...</div>
													<div class="tab-pane" id="profile" role="tabpanel">...</div>
													<div class="tab-pane" id="messages" role="tabpanel">...</div>
													<div class="tab-pane" id="settings" role="tabpanel">...</div>
											</div>
										</div>
										</div>
                                        </div>
										</div>
								</header>
							</section>
						</div>
            </div>
    </div>

</asp:Content>
