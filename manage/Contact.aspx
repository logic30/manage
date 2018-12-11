<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="manage.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="page">
				<div class="row">
					
						<div class="12u">
							
									<h2>管理者介面（教師）</h2>
									<div class="alert alert-success" role="alert">
										<div class="container">
											<div class="row">
												<div class="col-4">
													<div class="input-group mb-3">
														<div class="input-group-prepend">
														  <span class="input-group-text" id="basic-addon1">教師編號</span>
														</div>
														<input type="text" class="form-control" placeholder="請輸入編號"  >
													  </div>
												</div>
												<div class="col-4">
													<div class="input-group mb-3">
														<div class="input-group-prepend">
														  <span class="input-group-text" id="basic-addon1">教師姓名</span>
														</div>
														<input type="text" class="form-control" placeholder="請輸入姓名"  aria-describedby="basic-addon1">
													  </div>
												</div>
												<div class="col-3.5">
													
														
													
														<span class="input-group-text" >教師性別</span>
													  
													  
													  <div class="form-group">
														  <select class="form-control" id="exampleFormControlSelect1">
															<option>男生</option>
															<option>女生</option>
														  </select>
													  </div>
													  
													  
													  
												  </div>
																						
												
											</div>

											<div class="row">
												<div class="col-4">
													<div class="input-group mb-3">
														<div class="input-group-prepend">
														  <span class="input-group-text" id="basic-addon1">教師密碼</span>
														</div>
														<input type="text" class="form-control" placeholder="請輸入密碼"  >
													  </div>
												</div>
												<div class="col-4">
													<div class="input-group mb-3">
														<div class="input-group-prepend">
														  <span class="input-group-text" id="basic-addon1">教師生日</span>
														</div>
														<input type="text" class="form-control" placeholder="請輸入生日"  aria-describedby="basic-addon1">
													  </div>
												</div>
												<div class="col-3.5">
													
														
													
														<span class="input-group-text" >身份區分</span>
													  
													  
													  <div class="form-group">
														  <select class="form-control" id="exampleFormControlSelect1">
															<option>管理員</option>
															<option>教師</option>
															<option>家長</option>
															<option>學生</option>
														  </select>
													  </div>
													  
													  
													  
												  </div>
																						
												
											</div>	
													<div class="row1">
													<button type="button" class="btn btn-primary">新增</button>
													<button type="button" class="btn btn-primary">修改</button>
													<button type="button" class="btn btn-primary">刪除</button>
													</div>						
												   </div>
												</div>
												
													
												<div class="alert alert-info" role="alert">
													<div class="container">
														<div class="row">
															
															<div class="col-4">
																	
																<div class="input-group mb-3">
																	<div class="input-group-prepend">
																	  <span class="input-group-text" id="basic-addon1">教師編號</span>
																	</div>
																	<input type="text" class="form-control" placeholder="請輸入編號" aria-describedby="basic-addon1">
																	
                                                                    <button type="button" class="btn btn-primary">搜尋</button>
                                                                     
																  </div>
																	
																<div class="input-group mb-3">
																		<div class="input-group-prepend">
                                                                            <br />
																		  <span class="input-group-text" id="basic-addon1">教師姓名</span>
																		</div>
																		<input type="text" class="form-control" placeholder="請輸入姓名" aria-describedby="basic-addon1" aria-label="Username" >
																		<br />
                                                                    <button type="button" class="btn btn-primary">搜尋</button>
																</div>
															<div class="col">
																
															</div>	
															</div>
														</div>
														<div class="row1">
															<div class="col-9">
															<!-- List group -->
															<div class="list-group" id="myList" role="tablist">
                                                                <br />
																	<a class="list-group-item list-group-item-action active" data-toggle="list" href="#" role="tab">李ＸＸ</a>
																	<a class="list-group-item list-group-item-action" data-toggle="list" href="#" role="tab">陳ＸＸ</a>
																	<a class="list-group-item list-group-item-action" data-toggle="list" href="#" role="tab">張ＸＸ</a>
																	<a class="list-group-item list-group-item-action" data-toggle="list" href="#" role="tab">吳ＸＸ</a>
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
                                
                                                    </div>
												

								
						</div>
					</div>
</asp:Content>
