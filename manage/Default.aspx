<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="manage._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        
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
      <h2>管理者介面（班級）</h2>
       
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="fClassId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" class="table table-striped" AllowPaging="True">
          <AlternatingRowStyle BackColor="White" />
          <Columns>
              <asp:TemplateField HeaderText="班級編號" InsertVisible="False" SortExpression="fClassId">
                  <EditItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%# Eval("fClassId") %>'></asp:Label>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label2" runat="server" Text='<%# Bind("fClassId") %>'></asp:Label>
                  </ItemTemplate>
                  <ControlStyle Font-Size="Larger" />
              </asp:TemplateField>
              <asp:TemplateField HeaderText="年級" SortExpression="f年級">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("f年級") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label3" runat="server" Text='<%# Bind("f年級") %>'></asp:Label>
                  </ItemTemplate>
                  <ControlStyle Font-Size="Larger" />
              </asp:TemplateField>
              <asp:TemplateField HeaderText="班號" SortExpression="f班號">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("f班號") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label4" runat="server" Text='<%# Bind("f班號") %>'></asp:Label>
                  </ItemTemplate>
                  <ControlStyle Font-Size="Larger" />
              </asp:TemplateField>
              <asp:TemplateField HeaderText="學級年度" SortExpression="f學級年度">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("f學級年度") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label5" runat="server" Text='<%# Bind("f學級年度") %>'></asp:Label>
                  </ItemTemplate>
                  <ControlStyle Font-Size="Larger" />
              </asp:TemplateField>
              <asp:TemplateField HeaderText="導師姓名" SortExpression="f導師姓名">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("f導師姓名") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%# Bind("f導師姓名") %>'></asp:Label>
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
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:letnobookDBConnectionString %>" DeleteCommand="DELETE FROM [tClass] WHERE [fClassId] = @original_fClassId AND (([f年級] = @original_f年級) OR ([f年級] IS NULL AND @original_f年級 IS NULL)) AND (([f班號] = @original_f班號) OR ([f班號] IS NULL AND @original_f班號 IS NULL)) AND (([f學級年度] = @original_f學級年度) OR ([f學級年度] IS NULL AND @original_f學級年度 IS NULL)) AND (([f導師姓名] = @original_f導師姓名) OR ([f導師姓名] IS NULL AND @original_f導師姓名 IS NULL))" InsertCommand="INSERT INTO [tClass] ([f年級], [f班號], [f學級年度], [f導師姓名]) VALUES (@f年級, @f班號, @f學級年度, @f導師姓名)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tClass]" UpdateCommand="UPDATE [tClass] SET [f年級] = @f年級, [f班號] = @f班號, [f學級年度] = @f學級年度, [f導師姓名] = @f導師姓名 WHERE [fClassId] = @original_fClassId AND (([f年級] = @original_f年級) OR ([f年級] IS NULL AND @original_f年級 IS NULL)) AND (([f班號] = @original_f班號) OR ([f班號] IS NULL AND @original_f班號 IS NULL)) AND (([f學級年度] = @original_f學級年度) OR ([f學級年度] IS NULL AND @original_f學級年度 IS NULL)) AND (([f導師姓名] = @original_f導師姓名) OR ([f導師姓名] IS NULL AND @original_f導師姓名 IS NULL))">
          <DeleteParameters>
              <asp:Parameter Name="original_fClassId" Type="Int32" />
              <asp:Parameter Name="original_f年級" Type="String" />
              <asp:Parameter Name="original_f班號" Type="String" />
              <asp:Parameter Name="original_f學級年度" Type="String" />
              <asp:Parameter Name="original_f導師姓名" Type="String" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="f年級" Type="String" />
              <asp:Parameter Name="f班號" Type="String" />
              <asp:Parameter Name="f學級年度" Type="String" />
              <asp:Parameter Name="f導師姓名" Type="String" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="f年級" Type="String" />
              <asp:Parameter Name="f班號" Type="String" />
              <asp:Parameter Name="f學級年度" Type="String" />
              <asp:Parameter Name="f導師姓名" Type="String" />
              <asp:Parameter Name="original_fClassId" Type="Int32" />
              <asp:Parameter Name="original_f年級" Type="String" />
              <asp:Parameter Name="original_f班號" Type="String" />
              <asp:Parameter Name="original_f學級年度" Type="String" />
              <asp:Parameter Name="original_f導師姓名" Type="String" />
          </UpdateParameters>
      </asp:SqlDataSource>
       
  </div>
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
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
  </div>
  <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
      <h2>管理者介面（班級）</h2>
      <div class="alert alert-info" role="alert">
									<div class="container">
										<div class="row" id="btnSearch1">
											<div class="col-2">
												<span class="input-group-text">進階搜尋</span>
													</div>
													  
													  <div class="form-group">
															<asp:DropDownList class="form-control" id="exampleFormControlSelect1" runat="server">
															  <asp:ListItem>一年級</asp:ListItem>
															  <asp:ListItem>二年級</asp:ListItem>
															  <asp:ListItem>三年級</asp:ListItem>
															  <asp:ListItem>四年級</asp:ListItem>
															  <asp:ListItem>五年級</asp:ListItem>
															  <asp:ListItem>六年級</asp:ListItem>
															</asp:DropDownList>
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

</asp:Content>
