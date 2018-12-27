﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     這段程式碼是由工具產生的。
//     執行階段版本:4.0.30319.42000
//
//     對這個檔案所做的變更可能會造成錯誤的行為，而且如果重新產生程式碼，
//     變更將會遺失。
// </auto-generated>
//------------------------------------------------------------------------------

namespace manage
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="letnobookDB")]
	public partial class dbDemoDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region 擴充性方法定義
    partial void OnCreated();
    partial void InserttClass(tClass instance);
    partial void UpdatetClass(tClass instance);
    partial void DeletetClass(tClass instance);
    partial void InserttParents(tParents instance);
    partial void UpdatetParents(tParents instance);
    partial void DeletetParents(tParents instance);
    partial void InserttStudent(tStudent instance);
    partial void UpdatetStudent(tStudent instance);
    partial void DeletetStudent(tStudent instance);
    partial void InserttTeacher(tTeacher instance);
    partial void UpdatetTeacher(tTeacher instance);
    partial void DeletetTeacher(tTeacher instance);
    #endregion
		
		public dbDemoDataContext() : 
				base(global::manage.Properties.Settings.Default.letnobookDBConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public dbDemoDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public dbDemoDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public dbDemoDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public dbDemoDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<tClass> tClass
		{
			get
			{
				return this.GetTable<tClass>();
			}
		}
		
		public System.Data.Linq.Table<tParents> tParents
		{
			get
			{
				return this.GetTable<tParents>();
			}
		}
		
		public System.Data.Linq.Table<tStudent> tStudent
		{
			get
			{
				return this.GetTable<tStudent>();
			}
		}
		
		public System.Data.Linq.Table<tTeacher> tTeacher
		{
			get
			{
				return this.GetTable<tTeacher>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.tClass")]
	public partial class tClass : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _fClassId;
		
		private string _f年級;
		
		private string _f班號;
		
		private string _f學級年度;
		
		private string _f導師姓名;
		
    #region 擴充性方法定義
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnfClassIdChanging(int value);
    partial void OnfClassIdChanged();
    partial void Onf年級Changing(string value);
    partial void Onf年級Changed();
    partial void Onf班號Changing(string value);
    partial void Onf班號Changed();
    partial void Onf學級年度Changing(string value);
    partial void Onf學級年度Changed();
    partial void Onf導師姓名Changing(string value);
    partial void Onf導師姓名Changed();
    #endregion
		
		public tClass()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_fClassId", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int fClassId
		{
			get
			{
				return this._fClassId;
			}
			set
			{
				if ((this._fClassId != value))
				{
					this.OnfClassIdChanging(value);
					this.SendPropertyChanging();
					this._fClassId = value;
					this.SendPropertyChanged("fClassId");
					this.OnfClassIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_f年級", DbType="NVarChar(50)")]
		public string f年級
		{
			get
			{
				return this._f年級;
			}
			set
			{
				if ((this._f年級 != value))
				{
					this.Onf年級Changing(value);
					this.SendPropertyChanging();
					this._f年級 = value;
					this.SendPropertyChanged("f年級");
					this.Onf年級Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_f班號", DbType="NVarChar(50)")]
		public string f班號
		{
			get
			{
				return this._f班號;
			}
			set
			{
				if ((this._f班號 != value))
				{
					this.Onf班號Changing(value);
					this.SendPropertyChanging();
					this._f班號 = value;
					this.SendPropertyChanged("f班號");
					this.Onf班號Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_f學級年度", DbType="NVarChar(50)")]
		public string f學級年度
		{
			get
			{
				return this._f學級年度;
			}
			set
			{
				if ((this._f學級年度 != value))
				{
					this.Onf學級年度Changing(value);
					this.SendPropertyChanging();
					this._f學級年度 = value;
					this.SendPropertyChanged("f學級年度");
					this.Onf學級年度Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_f導師姓名", DbType="NVarChar(50)")]
		public string f導師姓名
		{
			get
			{
				return this._f導師姓名;
			}
			set
			{
				if ((this._f導師姓名 != value))
				{
					this.Onf導師姓名Changing(value);
					this.SendPropertyChanging();
					this._f導師姓名 = value;
					this.SendPropertyChanged("f導師姓名");
					this.Onf導師姓名Changed();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.tParents")]
	public partial class tParents : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _f家庭編號;
		
		private string _f身份區分;
		
		private string _f家長密碼;
		
		private string _f家長生日;
		
		private string _f家長姓名;
		
    #region 擴充性方法定義
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void Onf家庭編號Changing(int value);
    partial void Onf家庭編號Changed();
    partial void Onf身份區分Changing(string value);
    partial void Onf身份區分Changed();
    partial void Onf家長密碼Changing(string value);
    partial void Onf家長密碼Changed();
    partial void Onf家長生日Changing(string value);
    partial void Onf家長生日Changed();
    partial void Onf家長姓名Changing(string value);
    partial void Onf家長姓名Changed();
    #endregion
		
		public tParents()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_f家庭編號", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int f家庭編號
		{
			get
			{
				return this._f家庭編號;
			}
			set
			{
				if ((this._f家庭編號 != value))
				{
					this.Onf家庭編號Changing(value);
					this.SendPropertyChanging();
					this._f家庭編號 = value;
					this.SendPropertyChanged("f家庭編號");
					this.Onf家庭編號Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_f身份區分", DbType="NVarChar(50)")]
		public string f身份區分
		{
			get
			{
				return this._f身份區分;
			}
			set
			{
				if ((this._f身份區分 != value))
				{
					this.Onf身份區分Changing(value);
					this.SendPropertyChanging();
					this._f身份區分 = value;
					this.SendPropertyChanged("f身份區分");
					this.Onf身份區分Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_f家長密碼", DbType="NVarChar(50)")]
		public string f家長密碼
		{
			get
			{
				return this._f家長密碼;
			}
			set
			{
				if ((this._f家長密碼 != value))
				{
					this.Onf家長密碼Changing(value);
					this.SendPropertyChanging();
					this._f家長密碼 = value;
					this.SendPropertyChanged("f家長密碼");
					this.Onf家長密碼Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_f家長生日", DbType="NVarChar(50)")]
		public string f家長生日
		{
			get
			{
				return this._f家長生日;
			}
			set
			{
				if ((this._f家長生日 != value))
				{
					this.Onf家長生日Changing(value);
					this.SendPropertyChanging();
					this._f家長生日 = value;
					this.SendPropertyChanged("f家長生日");
					this.Onf家長生日Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_f家長姓名", DbType="NVarChar(50)")]
		public string f家長姓名
		{
			get
			{
				return this._f家長姓名;
			}
			set
			{
				if ((this._f家長姓名 != value))
				{
					this.Onf家長姓名Changing(value);
					this.SendPropertyChanging();
					this._f家長姓名 = value;
					this.SendPropertyChanged("f家長姓名");
					this.Onf家長姓名Changed();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.tStudent")]
	public partial class tStudent : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _f學生編號;
		
		private string _f學生姓名;
		
		private string _f學生生日;
		
		private string _f學生密碼;
		
		private string _f學生性別;
		
		private System.Nullable<int> _fClassId;
		
		private string _f身份區分;
		
		private System.Nullable<int> _f家庭編號;
		
    #region 擴充性方法定義
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void Onf學生編號Changing(int value);
    partial void Onf學生編號Changed();
    partial void Onf學生姓名Changing(string value);
    partial void Onf學生姓名Changed();
    partial void Onf學生生日Changing(string value);
    partial void Onf學生生日Changed();
    partial void Onf學生密碼Changing(string value);
    partial void Onf學生密碼Changed();
    partial void Onf學生性別Changing(string value);
    partial void Onf學生性別Changed();
    partial void OnfClassIdChanging(System.Nullable<int> value);
    partial void OnfClassIdChanged();
    partial void Onf身份區分Changing(string value);
    partial void Onf身份區分Changed();
    partial void Onf家庭編號Changing(System.Nullable<int> value);
    partial void Onf家庭編號Changed();
    #endregion
		
		public tStudent()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_f學生編號", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int f學生編號
		{
			get
			{
				return this._f學生編號;
			}
			set
			{
				if ((this._f學生編號 != value))
				{
					this.Onf學生編號Changing(value);
					this.SendPropertyChanging();
					this._f學生編號 = value;
					this.SendPropertyChanged("f學生編號");
					this.Onf學生編號Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_f學生姓名", DbType="NVarChar(50)")]
		public string f學生姓名
		{
			get
			{
				return this._f學生姓名;
			}
			set
			{
				if ((this._f學生姓名 != value))
				{
					this.Onf學生姓名Changing(value);
					this.SendPropertyChanging();
					this._f學生姓名 = value;
					this.SendPropertyChanged("f學生姓名");
					this.Onf學生姓名Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_f學生生日", DbType="NVarChar(50)")]
		public string f學生生日
		{
			get
			{
				return this._f學生生日;
			}
			set
			{
				if ((this._f學生生日 != value))
				{
					this.Onf學生生日Changing(value);
					this.SendPropertyChanging();
					this._f學生生日 = value;
					this.SendPropertyChanged("f學生生日");
					this.Onf學生生日Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_f學生密碼", DbType="NVarChar(50)")]
		public string f學生密碼
		{
			get
			{
				return this._f學生密碼;
			}
			set
			{
				if ((this._f學生密碼 != value))
				{
					this.Onf學生密碼Changing(value);
					this.SendPropertyChanging();
					this._f學生密碼 = value;
					this.SendPropertyChanged("f學生密碼");
					this.Onf學生密碼Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_f學生性別", DbType="NVarChar(50)")]
		public string f學生性別
		{
			get
			{
				return this._f學生性別;
			}
			set
			{
				if ((this._f學生性別 != value))
				{
					this.Onf學生性別Changing(value);
					this.SendPropertyChanging();
					this._f學生性別 = value;
					this.SendPropertyChanged("f學生性別");
					this.Onf學生性別Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_fClassId", DbType="Int")]
		public System.Nullable<int> fClassId
		{
			get
			{
				return this._fClassId;
			}
			set
			{
				if ((this._fClassId != value))
				{
					this.OnfClassIdChanging(value);
					this.SendPropertyChanging();
					this._fClassId = value;
					this.SendPropertyChanged("fClassId");
					this.OnfClassIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_f身份區分", DbType="NVarChar(50)")]
		public string f身份區分
		{
			get
			{
				return this._f身份區分;
			}
			set
			{
				if ((this._f身份區分 != value))
				{
					this.Onf身份區分Changing(value);
					this.SendPropertyChanging();
					this._f身份區分 = value;
					this.SendPropertyChanged("f身份區分");
					this.Onf身份區分Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_f家庭編號", DbType="Int")]
		public System.Nullable<int> f家庭編號
		{
			get
			{
				return this._f家庭編號;
			}
			set
			{
				if ((this._f家庭編號 != value))
				{
					this.Onf家庭編號Changing(value);
					this.SendPropertyChanging();
					this._f家庭編號 = value;
					this.SendPropertyChanged("f家庭編號");
					this.Onf家庭編號Changed();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.tTeacher")]
	public partial class tTeacher : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _f老師編號;
		
		private string _f老師姓名;
		
		private string _f老師生日;
		
		private string _f老師密碼;
		
		private string _f老師性別;
		
		private string _f身份區分;
		
    #region 擴充性方法定義
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void Onf老師編號Changing(int value);
    partial void Onf老師編號Changed();
    partial void Onf老師姓名Changing(string value);
    partial void Onf老師姓名Changed();
    partial void Onf老師生日Changing(string value);
    partial void Onf老師生日Changed();
    partial void Onf老師密碼Changing(string value);
    partial void Onf老師密碼Changed();
    partial void Onf老師性別Changing(string value);
    partial void Onf老師性別Changed();
    partial void Onf身份區分Changing(string value);
    partial void Onf身份區分Changed();
    #endregion
		
		public tTeacher()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_f老師編號", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int f老師編號
		{
			get
			{
				return this._f老師編號;
			}
			set
			{
				if ((this._f老師編號 != value))
				{
					this.Onf老師編號Changing(value);
					this.SendPropertyChanging();
					this._f老師編號 = value;
					this.SendPropertyChanged("f老師編號");
					this.Onf老師編號Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_f老師姓名", DbType="NVarChar(50)")]
		public string f老師姓名
		{
			get
			{
				return this._f老師姓名;
			}
			set
			{
				if ((this._f老師姓名 != value))
				{
					this.Onf老師姓名Changing(value);
					this.SendPropertyChanging();
					this._f老師姓名 = value;
					this.SendPropertyChanged("f老師姓名");
					this.Onf老師姓名Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_f老師生日", DbType="NVarChar(50)")]
		public string f老師生日
		{
			get
			{
				return this._f老師生日;
			}
			set
			{
				if ((this._f老師生日 != value))
				{
					this.Onf老師生日Changing(value);
					this.SendPropertyChanging();
					this._f老師生日 = value;
					this.SendPropertyChanged("f老師生日");
					this.Onf老師生日Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_f老師密碼", DbType="NVarChar(50)")]
		public string f老師密碼
		{
			get
			{
				return this._f老師密碼;
			}
			set
			{
				if ((this._f老師密碼 != value))
				{
					this.Onf老師密碼Changing(value);
					this.SendPropertyChanging();
					this._f老師密碼 = value;
					this.SendPropertyChanged("f老師密碼");
					this.Onf老師密碼Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_f老師性別", DbType="NVarChar(50)")]
		public string f老師性別
		{
			get
			{
				return this._f老師性別;
			}
			set
			{
				if ((this._f老師性別 != value))
				{
					this.Onf老師性別Changing(value);
					this.SendPropertyChanging();
					this._f老師性別 = value;
					this.SendPropertyChanged("f老師性別");
					this.Onf老師性別Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_f身份區分", DbType="NVarChar(50)")]
		public string f身份區分
		{
			get
			{
				return this._f身份區分;
			}
			set
			{
				if ((this._f身份區分 != value))
				{
					this.Onf身份區分Changing(value);
					this.SendPropertyChanging();
					this._f身份區分 = value;
					this.SendPropertyChanged("f身份區分");
					this.Onf身份區分Changed();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591
