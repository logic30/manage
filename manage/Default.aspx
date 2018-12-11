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
													<input type="text" class="form-control" placeholder="請輸入年級"  >
												  </div>
											</div>
											<div class="col-3.5">
												<div class="input-group mb-3">
													<div class="input-group-prepend">
													  <span class="input-group-text" >班號</span>
													</div>
													<input type="text" class="form-control" placeholder="請輸入班號"  aria-describedby="basic-addon1">
												  </div>
											</div>
											<div class="col-3.5">
												<div class="input-group mb-3">
													<div class="input-group-prepend">
													  <span class="input-group-text" id="basic-addon1">導師</span>
													</div>
													<input type="text" class="form-control" placeholder="請輸入導師姓名" aria-label="degree" aria-describedby="basic-addon1">
												  </div>
											</div>										
											
										</div>
										<div class="row">
                                            <br />
												<button type="button" class="btn btn-primary">新增</button>
											    <button type="button" class="btn btn-primary">修改</button>
												<button type="button" class="btn btn-primary">刪除</button>
										</div>
									</div>
								</div>
								<div class="alert alert-info" role="alert">
									<div class="container">
										<div class="row">
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
												<button type="button" class="btn btn-primary">搜尋</button>
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
