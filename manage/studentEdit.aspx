<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="studentEdit.aspx.cs" Inherits="manage.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <div class="jumbotron">
    <div id="page">
				<div class="container">
					<div class="row">
						<div class="12u">
							<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">瀏覽</a>
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
      <h2>&&nbsp;管理者介面（學生）</h2>
      <p>
          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="f學生編號" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" class="table table-striped">
              <AlternatingRowStyle BackColor="White" />
              <Columns>
                  <asp:TemplateField HeaderText="學生編號" InsertVisible="False" SortExpression="f學生編號">
                      <EditItemTemplate>
                          <asp:Label ID="Label1" runat="server" Text='<%# Eval("f學生編號") %>'></asp:Label>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label6" runat="server" Text='<%# Bind("f學生編號") %>'></asp:Label>
                      </ItemTemplate>
                      <ControlStyle Font-Size="Larger" />
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="姓名" SortExpression="f姓名">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("f姓名") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label5" runat="server" Text='<%# Bind("f姓名") %>'></asp:Label>
                      </ItemTemplate>
                      <ControlStyle Font-Size="Larger" />
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="生日" SortExpression="f生日">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("f生日") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label4" runat="server" Text='<%# Bind("f生日") %>'></asp:Label>
                      </ItemTemplate>
                      <ControlStyle Font-Size="Larger" />
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="密碼" SortExpression="f密碼">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("f密碼") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label3" runat="server" Text='<%# Bind("f密碼") %>'></asp:Label>
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
                          <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("f身份區分") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("f身份區分") %>'></asp:Label>
                      </ItemTemplate>
                      <ControlStyle Font-Size="Larger" />
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="家庭編號" SortExpression="f家庭編號">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("f家庭編號") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label1" runat="server" Text='<%# Bind("f家庭編號") %>'></asp:Label>
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
                      <ControlStyle Font-Size="Large" />
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
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:letnobookDBConnectionString %>" DeleteCommand="DELETE FROM [tStudent] WHERE [f學生編號] = @original_f學生編號 AND (([f姓名] = @original_f姓名) OR ([f姓名] IS NULL AND @original_f姓名 IS NULL)) AND (([f生日] = @original_f生日) OR ([f生日] IS NULL AND @original_f生日 IS NULL)) AND (([f密碼] = @original_f密碼) OR ([f密碼] IS NULL AND @original_f密碼 IS NULL)) AND (([f性別] = @original_f性別) OR ([f性別] IS NULL AND @original_f性別 IS NULL)) AND (([fClassId] = @original_fClassId) OR ([fClassId] IS NULL AND @original_fClassId IS NULL)) AND (([f身份區分] = @original_f身份區分) OR ([f身份區分] IS NULL AND @original_f身份區分 IS NULL)) AND (([f家庭編號] = @original_f家庭編號) OR ([f家庭編號] IS NULL AND @original_f家庭編號 IS NULL))" InsertCommand="INSERT INTO [tStudent] ([f姓名], [f生日], [f密碼], [f性別], [fClassId], [f身份區分], [f家庭編號]) VALUES (@f姓名, @f生日, @f密碼, @f性別, @fClassId, @f身份區分, @f家庭編號)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tStudent]" UpdateCommand="UPDATE [tStudent] SET [f姓名] = @f姓名, [f生日] = @f生日, [f密碼] = @f密碼, [f性別] = @f性別, [fClassId] = @fClassId, [f身份區分] = @f身份區分, [f家庭編號] = @f家庭編號 WHERE [f學生編號] = @original_f學生編號 AND (([f姓名] = @original_f姓名) OR ([f姓名] IS NULL AND @original_f姓名 IS NULL)) AND (([f生日] = @original_f生日) OR ([f生日] IS NULL AND @original_f生日 IS NULL)) AND (([f密碼] = @original_f密碼) OR ([f密碼] IS NULL AND @original_f密碼 IS NULL)) AND (([f性別] = @original_f性別) OR ([f性別] IS NULL AND @original_f性別 IS NULL)) AND (([fClassId] = @original_fClassId) OR ([fClassId] IS NULL AND @original_fClassId IS NULL)) AND (([f身份區分] = @original_f身份區分) OR ([f身份區分] IS NULL AND @original_f身份區分 IS NULL)) AND (([f家庭編號] = @original_f家庭編號) OR ([f家庭編號] IS NULL AND @original_f家庭編號 IS NULL))">
              <DeleteParameters>
                  <asp:Parameter Name="original_f學生編號" Type="Int32" />
                  <asp:Parameter Name="original_f姓名" Type="String" />
                  <asp:Parameter DbType="Date" Name="original_f生日" />
                  <asp:Parameter Name="original_f密碼" Type="String" />
                  <asp:Parameter Name="original_f性別" Type="Boolean" />
                  <asp:Parameter Name="original_fClassId" Type="Int32" />
                  <asp:Parameter Name="original_f身份區分" Type="String" />
                  <asp:Parameter Name="original_f家庭編號" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="f姓名" Type="String" />
                  <asp:Parameter DbType="Date" Name="f生日" />
                  <asp:Parameter Name="f密碼" Type="String" />
                  <asp:Parameter Name="f性別" Type="Boolean" />
                  <asp:Parameter Name="fClassId" Type="Int32" />
                  <asp:Parameter Name="f身份區分" Type="String" />
                  <asp:Parameter Name="f家庭編號" Type="Int32" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="f姓名" Type="String" />
                  <asp:Parameter DbType="Date" Name="f生日" />
                  <asp:Parameter Name="f密碼" Type="String" />
                  <asp:Parameter Name="f性別" Type="Boolean" />
                  <asp:Parameter Name="fClassId" Type="Int32" />
                  <asp:Parameter Name="f身份區分" Type="String" />
                  <asp:Parameter Name="f家庭編號" Type="Int32" />
                  <asp:Parameter Name="original_f學生編號" Type="Int32" />
                  <asp:Parameter Name="original_f姓名" Type="String" />
                  <asp:Parameter DbType="Date" Name="original_f生日" />
                  <asp:Parameter Name="original_f密碼" Type="String" />
                  <asp:Parameter Name="original_f性別" Type="Boolean" />
                  <asp:Parameter Name="original_fClassId" Type="Int32" />
                  <asp:Parameter Name="original_f身份區分" Type="String" />
                  <asp:Parameter Name="original_f家庭編號" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:letnobookDBConnectionString %>" DeleteCommand="DELETE FROM [tParents] WHERE [f家庭編號] = @original_f家庭編號 AND (([f身份區分] = @original_f身份區分) OR ([f身份區分] IS NULL AND @original_f身份區分 IS NULL)) AND (([f家長密碼] = @original_f家長密碼) OR ([f家長密碼] IS NULL AND @original_f家長密碼 IS NULL)) AND (([f家長生日] = @original_f家長生日) OR ([f家長生日] IS NULL AND @original_f家長生日 IS NULL)) AND (([f家長姓名] = @original_f家長姓名) OR ([f家長姓名] IS NULL AND @original_f家長姓名 IS NULL))" InsertCommand="INSERT INTO [tParents] ([f身份區分], [f家長密碼], [f家長生日], [f家長姓名]) VALUES (@f身份區分, @f家長密碼, @f家長生日, @f家長姓名)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tParents]" UpdateCommand="UPDATE [tParents] SET [f身份區分] = @f身份區分, [f家長密碼] = @f家長密碼, [f家長生日] = @f家長生日, [f家長姓名] = @f家長姓名 WHERE [f家庭編號] = @original_f家庭編號 AND (([f身份區分] = @original_f身份區分) OR ([f身份區分] IS NULL AND @original_f身份區分 IS NULL)) AND (([f家長密碼] = @original_f家長密碼) OR ([f家長密碼] IS NULL AND @original_f家長密碼 IS NULL)) AND (([f家長生日] = @original_f家長生日) OR ([f家長生日] IS NULL AND @original_f家長生日 IS NULL)) AND (([f家長姓名] = @original_f家長姓名) OR ([f家長姓名] IS NULL AND @original_f家長姓名 IS NULL))">
              <DeleteParameters>
                  <asp:Parameter Name="original_f家庭編號" Type="Int32" />
                  <asp:Parameter Name="original_f身份區分" Type="String" />
                  <asp:Parameter Name="original_f家長密碼" Type="String" />
                  <asp:Parameter DbType="Date" Name="original_f家長生日" />
                  <asp:Parameter Name="original_f家長姓名" Type="String" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="f身份區分" Type="String" />
                  <asp:Parameter Name="f家長密碼" Type="String" />
                  <asp:Parameter DbType="Date" Name="f家長生日" />
                  <asp:Parameter Name="f家長姓名" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="f身份區分" Type="String" />
                  <asp:Parameter Name="f家長密碼" Type="String" />
                  <asp:Parameter DbType="Date" Name="f家長生日" />
                  <asp:Parameter Name="f家長姓名" Type="String" />
                  <asp:Parameter Name="original_f家庭編號" Type="Int32" />
                  <asp:Parameter Name="original_f身份區分" Type="String" />
                  <asp:Parameter Name="original_f家長密碼" Type="String" />
                  <asp:Parameter DbType="Date" Name="original_f家長生日" />
                  <asp:Parameter Name="original_f家長姓名" Type="String" />
              </UpdateParameters>
          </asp:SqlDataSource>
      </p>
      <h2>管理者介面（家長）</h2>
      <p>
          <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="f家庭編號" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" class="table table-striped">
              <AlternatingRowStyle BackColor="White" />
              <Columns>
                  <asp:TemplateField HeaderText="家庭編號" InsertVisible="False" SortExpression="f家庭編號">
                      <EditItemTemplate>
                          <asp:Label ID="Label1" runat="server" Text='<%# Eval("f家庭編號") %>'></asp:Label>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label5" runat="server" Text='<%# Bind("f家庭編號") %>'></asp:Label>
                      </ItemTemplate>
                      <ControlStyle Font-Size="Larger" />
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="家長姓名" SortExpression="f家長姓名">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("f家長姓名") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label4" runat="server" Text='<%# Bind("f家長姓名") %>'></asp:Label>
                      </ItemTemplate>
                      <ControlStyle Font-Size="Larger" />
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="家長生日" SortExpression="f家長生日">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("f家長生日") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label3" runat="server" Text='<%# Bind("f家長生日") %>'></asp:Label>
                      </ItemTemplate>
                      <ControlStyle Font-Size="Larger" />
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="家長密碼" SortExpression="f家長密碼">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("f家長密碼") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("f家長密碼") %>'></asp:Label>
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
      </p>
      <p>&nbsp;</p>
  </div>
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
      <h2>管理者介面（學生及家長）
									<div class="alert alert-success" role="alert">
										<div class="container">
											<div class="row">
												<div class="col-3.5">
													<div class="input-group mb-3">
														<div class="input-group-prepend">
														  <span class="input-group-text" >學生姓名</span>
														</div>
													<asp:Textbox runat="server" type="text" class="form-control" placeholder="請輸入姓名" aria-label="degree" id="txtName" ></asp:TextBox>
														
													  </div>
												</div>
												<div class="col-3.5">
													<div class="input-group mb-3">
														<div class="input-group-prepend">
														  <br /><span class="input-group-text" >學生生日</span>
														</div>
													<asp:Textbox runat="server" type="text" class="form-control" placeholder="請輸入生日" aria-label="degree" id="txtBirthday" ></asp:TextBox>
														
													  </div>
												</div>
												
																						
												
											</div>

											<div class="row">
												<div class="col-3.5">
													<div class="input-group mb-3">
														<div class="input-group-prepend">
														  <br /><span class="input-group-text" >學生密碼</span>
														</div>
													<asp:Textbox runat="server" type="text" class="form-control" placeholder="請輸入密碼" aria-label="degree" id="txtPassword" ></asp:TextBox>

													  </div>
												</div>
												<div class="col-3.5">
														<br /><span class="input-group-text" >學生性別</span>			  
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
															  <asp:DropDownList class="form-control" runat="server" >
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
												<div class="alert alert-danger" role="alert">
                                                    <div class="container">
												<div class="row">
													<div class="col-3">
														<div class="input-group mb-3">
															<div class="input-group-prepend">
															  <span class="input-group-text" >家長姓名</span>
															</div>
													   <asp:Textbox runat="server" type="text" class="form-control" placeholder="請輸入姓名" aria-label="degree" id="txtName2" ></asp:TextBox>

														  </div>
													</div>
													<div class="col-3">
															<div class="input-group mb-3">
																<div class="input-group-prepend">
																  <br /><span class="input-group-text" >家長生日</span>
																</div>
														        <asp:Textbox runat="server" type="text" class="form-control" placeholder="請輸入姓名" aria-label="degree" id="txtBirthday2" ></asp:TextBox>

															  </div>
														</div>
														<div class="col-3">
															<div class="input-group mb-3">
																<div class="input-group-prepend">
																	<br /><span class="input-group-text" >家長密碼</span>
																</div>
															   <asp:Textbox runat="server" type="text" class="form-control" placeholder="請輸入密碼" aria-label="degree" id="txtPassword2" ></asp:TextBox>
																</div>
														</div>
														<div class="col-2">
														
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
														<asp:button type="button" class="btn btn-primary" id="btnAdd2" runat="server" Text="新增" />
											            <asp:button type="button" class="btn btn-primary" id="btnFix2" runat="server" Text="修改" />
												        <asp:button type="button" class="btn btn-primary" id="btnDel2" runat="server" Text="刪除" />
                                                        <asp:Label ID="lblMsg2" runat="server" Text="Label"></asp:Label>
														</div>						
													   </div>
                                                    </div>
  </div>
  <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
      <h2>管理者介面（學生及家長）</h2>
      <div class="alert alert-info" role="alert">
													<div class="container">
														<div class="row">
															
															
																	
																
																	<div class="input-group-prepend">
																	  <span class="input-group-text" >學生編號</span>
                                                                   <asp:Textbox runat="server" type="text" class="form-control" placeholder="請輸入編號" aria-label="degree" id="txtId" ></asp:TextBox>
																	</div>
																	
																	
																  
																	
																
																		<div class="input-group-prepend">
                                                                            
											               			  <br /><span class="input-group-text" >學生姓名</span>
                                                                      	<asp:Textbox runat="server" type="text" class="form-control" placeholder="請輸入姓名" aria-label="degree" id="txtName3" ></asp:TextBox>
																		</div>
																		
																		<br /><asp:Button type="submit" runat="server" class="btn btn-primary" aria-pressed="undefined" aria-readonly="False" aria-required="False" id="btnSearch" Text="搜尋" />
																
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
       </div>
</asp:Content>
