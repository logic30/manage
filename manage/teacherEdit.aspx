﻿<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="teacherEdit.aspx.cs" Inherits="manage.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
    <div id="page">
				<div class="row">
					
						<div class="12u">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item active">
    <a class="nav-link " id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">瀏覽</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">新增</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">查尋</a>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade active in" id="home" role="tabpanel" aria-labelledby="home-tab">
      <h2>管理者介面（教師）</h2>
      
      <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="f老師編號" DataSourceID="SqlDataSource1" class="table table-striped" CellPadding="4" ForeColor="#333333" GridLines="None">
          <AlternatingRowStyle BackColor="White" />
          <Columns>
              <asp:TemplateField HeaderText="老師編號" InsertVisible="False" SortExpression="f老師編號">
                  <EditItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%# Eval("f老師編號") %>'></asp:Label>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label5" runat="server" Text='<%# Bind("f老師編號") %>'></asp:Label>
                  </ItemTemplate>
                  <ControlStyle Font-Size="Larger" />
              </asp:TemplateField>
              <asp:TemplateField HeaderText="姓名" SortExpression="f姓名">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("f姓名") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label4" runat="server" Text='<%# Bind("f姓名") %>'></asp:Label>
                  </ItemTemplate>
                  <ControlStyle Font-Size="Larger" />
              </asp:TemplateField>
              <asp:TemplateField HeaderText="生日" SortExpression="f生日">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("f生日") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label3" runat="server" Text='<%# Bind("f生日") %>'></asp:Label>
                  </ItemTemplate>
                  <ControlStyle Font-Size="Larger" />
              </asp:TemplateField>
              <asp:TemplateField HeaderText="密碼" SortExpression="f密碼">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("f密碼") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label2" runat="server" Text='<%# Bind("f密碼") %>'></asp:Label>
                  </ItemTemplate>
                  <ControlStyle Font-Size="Larger" />
              </asp:TemplateField>
              <asp:TemplateField HeaderText="性別" SortExpression="f性別">
                  <EditItemTemplate>
                      <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("f性別") %>' />
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("f性別") %>' Enabled="false" />
                  </ItemTemplate>
                  <ControlStyle Font-Size="Larger" />
              </asp:TemplateField>
              <asp:TemplateField HeaderText="身份區分" SortExpression="f身份區分">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("f身份區分") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%# Bind("f身份區分") %>'></asp:Label>
                  </ItemTemplate>
                  <ControlStyle Font-Size="Larger" />
              </asp:TemplateField>
              <asp:TemplateField ShowHeader="False">
                  <EditItemTemplate>
                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                      &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯"></asp:LinkButton>
                      &nbsp;<asp:LinkButton ID="LinkButton2"
                          onClientClick="return confirm('確定要刪除嗎?')"
                          runat="server" CausesValidation="False" CommandName="Delete" Text="刪除"></asp:LinkButton>
                  </ItemTemplate>
                  <ControlStyle Font-Size="Larger" />
              </asp:TemplateField>
          </Columns>
          <EditRowStyle BackColor="#2461BF" />
          <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
          <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
          <RowStyle BackColor="#EFF3FB" />
          <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
          <SortedAscendingCellStyle BackColor="#F5F7FB" />
          <SortedAscendingHeaderStyle BackColor="#6D95E1" />
          <SortedDescendingCellStyle BackColor="#E9EBEF" />
          <SortedDescendingHeaderStyle BackColor="#4870BE" />
      </asp:GridView>
      <br />
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:letnobookDBConnectionString %>" DeleteCommand="DELETE FROM [tTeacher] WHERE [f老師編號] = @original_f老師編號 AND (([f姓名] = @original_f姓名) OR ([f姓名] IS NULL AND @original_f姓名 IS NULL)) AND (([f生日] = @original_f生日) OR ([f生日] IS NULL AND @original_f生日 IS NULL)) AND (([f密碼] = @original_f密碼) OR ([f密碼] IS NULL AND @original_f密碼 IS NULL)) AND (([f性別] = @original_f性別) OR ([f性別] IS NULL AND @original_f性別 IS NULL)) AND (([f身份區分] = @original_f身份區分) OR ([f身份區分] IS NULL AND @original_f身份區分 IS NULL))" InsertCommand="INSERT INTO [tTeacher] ([f姓名], [f生日], [f密碼], [f性別], [f身份區分]) VALUES (@f姓名, @f生日, @f密碼, @f性別, @f身份區分)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tTeacher]" UpdateCommand="UPDATE [tTeacher] SET [f姓名] = @f姓名, [f生日] = @f生日, [f密碼] = @f密碼, [f性別] = @f性別, [f身份區分] = @f身份區分 WHERE [f老師編號] = @original_f老師編號 AND (([f姓名] = @original_f姓名) OR ([f姓名] IS NULL AND @original_f姓名 IS NULL)) AND (([f生日] = @original_f生日) OR ([f生日] IS NULL AND @original_f生日 IS NULL)) AND (([f密碼] = @original_f密碼) OR ([f密碼] IS NULL AND @original_f密碼 IS NULL)) AND (([f性別] = @original_f性別) OR ([f性別] IS NULL AND @original_f性別 IS NULL)) AND (([f身份區分] = @original_f身份區分) OR ([f身份區分] IS NULL AND @original_f身份區分 IS NULL))">
          <DeleteParameters>
              <asp:Parameter Name="original_f老師編號" Type="Int32" />
              <asp:Parameter Name="original_f姓名" Type="String" />
              <asp:Parameter DbType="Date" Name="original_f生日" />
              <asp:Parameter Name="original_f密碼" Type="String" />
              <asp:Parameter Name="original_f性別" Type="Boolean" />
              <asp:Parameter Name="original_f身份區分" Type="String" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="f姓名" Type="String" />
              <asp:Parameter DbType="Date" Name="f生日" />
              <asp:Parameter Name="f密碼" Type="String" />
              <asp:Parameter Name="f性別" Type="Boolean" />
              <asp:Parameter Name="f身份區分" Type="String" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="f姓名" Type="String" />
              <asp:Parameter DbType="Date" Name="f生日" />
              <asp:Parameter Name="f密碼" Type="String" />
              <asp:Parameter Name="f性別" Type="Boolean" />
              <asp:Parameter Name="f身份區分" Type="String" />
              <asp:Parameter Name="original_f老師編號" Type="Int32" />
              <asp:Parameter Name="original_f姓名" Type="String" />
              <asp:Parameter DbType="Date" Name="original_f生日" />
              <asp:Parameter Name="original_f密碼" Type="String" />
              <asp:Parameter Name="original_f性別" Type="Boolean" />
              <asp:Parameter Name="original_f身份區分" Type="String" />
          </UpdateParameters>
      </asp:SqlDataSource>
      
  </div>
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
      <h2>管理者介面（教師）</h2>
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
															<asp:ListItem>男生</asp:ListItem>
															<asp:ListItem>女生</asp:ListItem>
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
  <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
      <h2>管理者介面（教師）</h2>
      <div class="alert alert-info" role="alert">
													<div class="container">
														<div class="row">
															
															
																	
																
																	<div class="input-group-prepend">
																	<span class="input-group-text">教師編號</span>
																	<asp:Textbox runat="server" type="text" class="form-control" placeholder="請輸入編號" aria-label="degree" id="txtId" ></asp:TextBox>
                                                                    </div>
																	<div class="col">
                                                                    
                                                                    </div>
																  
																	
																
																		<div class="input-group-prepend">
                                                                            <br />
																		  <span class="input-group-text">教師姓名</span>
																		</div>
																		<asp:Textbox runat="server" type="text" class="form-control" placeholder="請輸入姓名" aria-label="degree" id="txtName2" ></asp:TextBox>
																		<br />
                                                                    <asp:Button type="submit" runat="server" class="btn btn-primary" aria-pressed="undefined" aria-readonly="False" aria-required="False" id="btnSearch" Text="搜尋" />
																
															<div class="col">
																
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
																	<div class="tab-pane active" id="home1" role="tabpanel">...</div>
																	<div class="tab-pane" id="profile1" role="tabpanel">...</div>
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
												
                    </div>
								</div>
					</div>	
</asp:Content>
