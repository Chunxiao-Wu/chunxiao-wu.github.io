/****** Object:  Table [dbo].[article]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[article](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[columnId] [int] NULL,
	[state] [smallint] NULL,
	[isGood] [tinyint] NULL,
	[isHot] [tinyint] NULL,
	[isTop] [tinyint] NULL,
	[publishFrom] [tinyint] NULL,
	[isOnline] [tinyint] NULL,
	[isExpire] [tinyint] NULL,
	[hasThumbnail] [tinyint] NULL,
	[uid] [int] NULL,
	[username] [nvarchar](50) NULL,
	[replyState] [tinyint] NULL,
	[clicks] [int] NULL,
	[comments] [int] NULL,
	[title] [nvarchar](150) NULL,
	[thumbnail] [varchar](250) NULL,
	[content] [nvarchar](max) NULL,
	[thedate] [datetime] NULL,
	[introduction] [nvarchar](300) NULL,
	[author] [nvarchar](50) NULL,
	[relativeIds] [nvarchar](200) NULL,
 CONSTRAINT [PK_news_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[article_seo_set]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[article_seo_set](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[detailId] [int] NULL,
	[title] [nvarchar](150) NULL,
	[keywords] [nvarchar](150) NULL,
	[description] [nvarchar](250) NULL,
 CONSTRAINT [PK_news_seo_set_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[article_template_set]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[article_template_set](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[detailId] [int] NULL,
	[templateDetail] [nvarchar](100) NULL,
	[wapTemplateDetail] [nvarchar](100) NULL,
 CONSTRAINT [PK_news_template_set_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[article_url_set]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[article_url_set](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[detailId] [int] NULL,
	[columnId] [int] NULL,
	[zdyPath] [varchar](50) NULL,
	[zdyUrl] [nvarchar](150) NULL,
 CONSTRAINT [PK_news_url_set_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[columnId] [int] NULL,
	[state] [smallint] NULL,
	[isGood] [tinyint] NULL,
	[isHot] [tinyint] NULL,
	[isTop] [tinyint] NULL,
	[publishFrom] [tinyint] NULL,
	[isOnline] [tinyint] NULL,
	[isExpire] [tinyint] NULL,
	[hasThumbnail] [tinyint] NULL,
	[uid] [int] NULL,
	[username] [nvarchar](50) NULL,
	[clicks] [int] NULL,
	[title] [nvarchar](150) NULL,
	[thumbnail] [varchar](50) NULL,
	[content] [nvarchar](2000) NULL,
	[thedate] [datetime] NULL,
 CONSTRAINT [PK_feedback_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[feedback_seo_set]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback_seo_set](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[detailId] [int] NULL,
	[title] [nvarchar](150) NULL,
	[keywords] [nvarchar](150) NULL,
	[description] [nvarchar](250) NULL,
 CONSTRAINT [PK_feedback_seo_set_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[feedback_template_set]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback_template_set](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[detailId] [int] NULL,
	[templateDetail] [nvarchar](100) NULL,
	[wapTemplateDetail] [nvarchar](100) NULL,
 CONSTRAINT [PK_feedback_template_set_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[feedback_url_set]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[feedback_url_set](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[detailId] [int] NULL,
	[columnId] [int] NULL,
	[zdyPath] [varchar](50) NULL,
	[zdyUrl] [nvarchar](150) NULL,
 CONSTRAINT [PK_feedback_url_set_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_accessKey]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_accessKey](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[accessKeyId] [varchar](18) NULL,
	[accessKeySecret] [varchar](32) NULL,
	[remark] [nvarchar](50) NULL,
	[authorizations] [varchar](1000) NULL,
 CONSTRAINT [PK_accessKey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_admin]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roleId] [int] NULL,
	[uid] [int] NULL,
	[username] [nvarchar](50) NULL,
	[remark] [nvarchar](100) NULL,
	[siteIds] [varchar](500) NULL,
	[defaultSiteId] [int] NULL,
	[memberGroupIds] [varchar](500) NULL,
 CONSTRAINT [PK_pa_admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_admin_info_permissions]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_admin_info_permissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[open] [tinyint] NULL,
	[uid] [int] NULL,
	[tableId] [int] NULL,
	[listOnlyMyself] [tinyint] NULL,
	[listCanChangeState] [tinyint] NULL,
	[listCanPset] [tinyint] NULL,
	[listCanPush] [tinyint] NULL,
	[canAdd] [tinyint] NULL,
	[canEdit] [tinyint] NULL,
	[canDelete] [tinyint] NULL,
	[canSetState] [tinyint] NULL,
	[addDefaultState] [tinyint] NULL,
	[editDefaultState] [tinyint] NULL,
	[columnIds] [varchar](max) NULL,
	[canResubmitCheck] [tinyint] NULL,
	[canDraft] [tinyint] NULL,
 CONSTRAINT [PK_pa_admin_info_permissions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_admin_menu]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_admin_menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NULL,
	[name] [nvarchar](50) NULL,
	[icon] [nvarchar](50) NULL,
	[level] [int] NULL,
	[nameSpace] [varchar](100) NULL,
	[area] [varchar](50) NULL,
	[controller] [varchar](50) NULL,
	[action] [varchar](50) NULL,
	[isFinal] [tinyint] NULL,
	[isExpand] [tinyint] NULL,
	[state] [tinyint] NULL,
	[isSys] [tinyint] NULL,
	[target] [varchar](20) NULL,
	[pluginName] [varchar](50) NULL,
	[zdyUrl] [nvarchar](150) NULL,
	[sysNode] [varchar](50) NULL,
	[xuhao] [int] NULL,
	[viewType] [tinyint] NULL,
 CONSTRAINT [PK_pa_admin_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_admin_menu_item]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_admin_menu_item](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[menuId] [int] NULL,
	[name] [nvarchar](50) NULL,
	[namespace] [varchar](200) NULL,
	[controller] [varchar](50) NULL,
	[action] [varchar](50) NULL,
	[method] [varchar](50) NULL,
	[isDefault] [tinyint] NULL,
 CONSTRAINT [PK_pa_admin_menu_item] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_admin_permissions]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_admin_permissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NULL,
	[siteIds] [ntext] NULL,
	[defaultSiteId] [int] NULL,
	[memberGroupIds] [varchar](max) NULL,
 CONSTRAINT [PK_pa_admin_permissions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_attachment_1]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_attachment_1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentField] [varchar](50) NULL,
	[parentId] [int] NULL,
	[name] [nvarchar](50) NULL,
	[path] [nvarchar](150) NULL,
	[thumbnail] [nvarchar](150) NULL,
	[username] [nvarchar](50) NULL,
	[uid] [int] NULL,
	[state] [smallint] NULL,
	[xuhao] [int] NULL,
	[size] [decimal](12, 2) NULL,
	[thedate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_attachment_14]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_attachment_14](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentField] [varchar](50) NULL,
	[parentId] [int] NULL,
	[name] [nvarchar](50) NULL,
	[path] [nvarchar](150) NULL,
	[thumbnail] [nvarchar](150) NULL,
	[username] [nvarchar](50) NULL,
	[uid] [int] NULL,
	[state] [smallint] NULL,
	[xuhao] [int] NULL,
	[size] [decimal](12, 2) NULL,
	[thedate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_attachment_18]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_attachment_18](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentField] [varchar](50) NULL,
	[parentId] [int] NULL,
	[name] [nvarchar](50) NULL,
	[path] [nvarchar](150) NULL,
	[thumbnail] [nvarchar](150) NULL,
	[username] [nvarchar](50) NULL,
	[uid] [int] NULL,
	[state] [smallint] NULL,
	[xuhao] [int] NULL,
	[size] [decimal](12, 2) NULL,
	[thedate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_attachment_7]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_attachment_7](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentField] [varchar](50) NULL,
	[parentId] [int] NULL,
	[name] [nvarchar](50) NULL,
	[path] [nvarchar](150) NULL,
	[thumbnail] [nvarchar](150) NULL,
	[username] [nvarchar](50) NULL,
	[uid] [int] NULL,
	[state] [smallint] NULL,
	[xuhao] [int] NULL,
	[size] [decimal](12, 2) NULL,
	[thedate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_attachment_table]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_attachment_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[parentTable] [varchar](50) NULL,
	[remark] [nvarchar](50) NULL,
	[uid] [int] NULL,
	[state] [tinyint] NULL,
	[thedate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_category_table]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_category_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[remark] [nvarchar](50) NULL,
	[uid] [int] NULL,
	[deleteProtect] [int] NULL,
	[thedate] [datetime] NULL,
 CONSTRAINT [PK_pa_category_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_column]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_column](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NULL,
	[siteId] [int] NULL,
	[name] [nvarchar](50) NULL,
	[columnType] [tinyint] NULL,
	[showName] [nvarchar](50) NULL,
	[level] [int] NULL,
	[path] [nvarchar](255) NULL,
	[isFinal] [tinyint] NULL,
	[tableId] [int] NULL,
	[httpcacheSolutionId] [int] NULL,
	[target] [varchar](50) NULL,
	[show] [tinyint] NULL,
	[zdyUrl] [nvarchar](150) NULL,
	[xuhao] [int] NULL,
 CONSTRAINT [PK_pa_column] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_column_content_set]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pa_column_content_set](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[columnId] [int] NULL,
	[content] [nvarchar](max) NULL,
	[shareColumnIds] [nvarchar](100) NULL,
 CONSTRAINT [PK_pa_column_content_set] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pa_column_seo_set]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pa_column_seo_set](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[columnId] [int] NULL,
	[title] [nvarchar](150) NULL,
	[keywords] [nvarchar](150) NULL,
	[description] [nvarchar](250) NULL,
 CONSTRAINT [PK_pa_column_seo_set] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pa_column_template_set]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pa_column_template_set](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[columnId] [int] NULL,
	[template] [nvarchar](100) NULL,
	[templateDetail] [nvarchar](100) NULL,
 CONSTRAINT [PK_pa_column_template_set] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pa_department]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pa_department](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NULL,
	[name] [nvarchar](50) NULL,
	[level] [int] NULL,
	[isFinal] [tinyint] NULL,
	[xuhao] [int] NULL,
 CONSTRAINT [PK_pa_department] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pa_department_info_permissions]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_department_info_permissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[open] [int] NULL,
	[departmentId] [int] NULL,
	[tableId] [int] NULL,
	[canAdd] [tinyint] NULL,
	[canEdit] [tinyint] NULL,
	[canDelete] [tinyint] NULL,
	[canSetTopProperty] [tinyint] NULL,
	[canSetGoodProperty] [tinyint] NULL,
	[canSetHotProperty] [tinyint] NULL,
	[maxNum] [int] NULL,
	[addDefaultState] [tinyint] NULL,
	[editDefaultState] [tinyint] NULL,
	[columnIds] [varchar](max) NULL,
	[canResubmitCheck] [tinyint] NULL,
	[canDraft] [tinyint] NULL,
 CONSTRAINT [PK_pa_department_info_permissions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_department_permissions]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_department_permissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[departmentId] [int] NULL,
	[menuIds] [varchar](4000) NULL,
	[menuItemIds] [varchar](4000) NULL,
 CONSTRAINT [PK_pa_department_permissions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_field]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_field](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tableName] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[sysField] [tinyint] NULL,
	[remark] [nvarchar](50) NULL,
	[fieldType] [varchar](50) NULL,
	[valueType] [varchar](50) NULL,
	[fieldTip] [nvarchar](50) NULL,
	[defaultValue] [nvarchar](100) NULL,
	[valueLength] [int] NULL,
	[decimalAccuracy] [varchar](10) NULL,
	[items] [nvarchar](max) NULL,
	[watermark] [tinyint] NULL,
	[thumbnail] [tinyint] NULL,
	[thumbnailWidth] [smallint] NULL,
	[thumbnailHeight] [smallint] NULL,
	[rename] [tinyint] NULL,
	[uploadExt] [varchar](200) NULL,
	[uploadMaxsize] [int] NULL,
	[isMultipleSelect] [tinyint] NULL,
	[mustItem] [tinyint] NULL,
	[adminListUpdate] [tinyint] NULL,
	[memberListUpdate] [tinyint] NULL,
	[anonymousListUpdate] [tinyint] NULL,
	[adminCanAdd] [tinyint] NULL,
	[memberCanAdd] [tinyint] NULL,
	[anonymousCanAdd] [tinyint] NULL,
	[adminCanEdit] [tinyint] NULL,
	[memberCanEdit] [tinyint] NULL,
	[anonymousCanEdit] [tinyint] NULL,
	[memberGroupIds] [varchar](500) NULL,
	[roleIds] [varchar](500) NULL,
	[noPermissionContent] [nvarchar](max) NULL,
	[onlyItem] [tinyint] NULL,
	[collectionItem] [tinyint] NULL,
	[orderItem] [tinyint] NULL,
	[searchType] [varchar](50) NULL,
	[htmlencode] [tinyint] NULL,
	[zdyContent] [nvarchar](max) NULL,
	[additionalContent] [nvarchar](max) NULL,
	[dataType] [varchar](50) NULL,
	[maxNum] [smallint] NULL,
	[editorStyle] [varchar](50) NULL,
	[editorWidth] [varchar](50) NULL,
	[editorHeight] [varchar](50) NULL,
	[inputParams] [nvarchar](max) NULL,
	[beforeSubmitJs] [nvarchar](max) NULL,
	[tips] [nvarchar](100) NULL,
	[adminListItem] [tinyint] NULL,
	[memberListItem] [tinyint] NULL,
	[listWords] [int] NULL,
	[listWidth] [varchar](50) NULL,
	[datasourceOpen] [tinyint] NULL,
	[datasourceTable] [varchar](50) NULL,
	[btText] [nvarchar](50) NULL,
	[winWidth] [varchar](50) NULL,
	[winHeight] [varchar](50) NULL,
	[orderby] [varchar](100) NULL,
	[pagesize] [smallint] NULL,
	[show] [tinyint] NULL,
	[deleteProtect] [tinyint] NULL,
	[xuhao] [int] NULL,
	[ListItem] [tinyint] NULL,
	[DetailItem] [tinyint] NULL,
	[subTableType] [varchar](50) NULL,
	[zdyCondition] [nvarchar](100) NULL,
	[valueField] [varchar](50) NULL,
	[textField] [varchar](50) NULL,
	[textFieldName] [varchar](50) NULL,
	[selectDataType] [tinyint] NULL,
	[isMultiLevelTable] [tinyint] NULL,
	[onlySelectFinal] [tinyint] NULL,
 CONSTRAINT [PK_pa_field] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_httpcache_solution]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pa_httpcache_solution](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[columnCacheMinutes] [int] NULL,
	[detailCacheMinutes] [int] NULL,
	[cacheMaxPage] [int] NULL,
	[nocacheUrlParams] [nvarchar](100) NULL,
	[nocacheUrlKeywords] [nvarchar](100) NULL,
 CONSTRAINT [PK_pa_httpcache_solution] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pa_info_table]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_info_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[siteId] [int] NULL,
	[name] [varchar](50) NULL,
	[remark] [nvarchar](50) NULL,
	[pagesize] [smallint] NULL,
	[orderby] [varchar](50) NULL,
	[uid] [int] NULL,
	[deleteProtect] [int] NULL,
	[xuhao] [int] NULL,
	[thedate] [datetime] NULL,
	[showMenu] [tinyint] NULL,
	[templateDetail] [nvarchar](50) NULL,
	[guestSubmit] [tinyint] NULL,
	[verificationCode] [tinyint] NULL,
	[SubmitDefaultState] [int] NULL,
 CONSTRAINT [PK_pa_info_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_logining_user]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_logining_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[guid] [nvarchar](32) NULL,
	[uid] [int] NULL,
	[username] [nvarchar](50) NULL,
	[departmentId] [int] NULL,
	[memberGroupId] [int] NULL,
	[roleId] [int] NULL,
	[isSuperAdmin] [int] NULL,
	[email] [nvarchar](50) NULL,
	[mobile] [nvarchar](50) NULL,
	[thedate] [datetime] NULL,
	[updateDate] [datetime] NULL,
	[expireDate] [datetime] NULL,
	[entryUrl] [nvarchar](200) NULL,
	[ip] [varchar](50) NULL,
	[browser] [varchar](100) NULL,
	[state] [tinyint] NULL,
 CONSTRAINT [PK_pa_logining_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_logining_user_event_log]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pa_logining_user_event_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NULL,
	[fillInformation] [tinyint] NULL,
	[modifyUsernameTimes] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pa_member]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_member](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [varchar](50) NULL,
	[memberGroupId] [int] NULL,
	[departmentId] [int] NULL,
	[regDate] [datetime] NULL,
	[lastDate] [datetime] NULL,
	[regIp] [varchar](50) NULL,
	[lastIp] [varchar](50) NULL,
	[logins] [int] NULL,
	[state] [smallint] NULL,
	[avatar] [varchar](100) NULL,
	[mobile] [varchar](50) NULL,
	[mobileState] [tinyint] NULL,
	[email] [nvarchar](50) NULL,
	[emailState] [tinyint] NULL,
	[name] [nvarchar](50) NULL,
	[gender] [bigint] NULL,
	[birthday] [datetime] NULL,
	[tel] [nvarchar](15) NULL,
	[fax] [nvarchar](15) NULL,
	[address] [nvarchar](50) NULL,
	[district] [nvarchar](150) NULL,
 CONSTRAINT [PK_pa_member] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_member_group]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pa_member_group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[remark] [nvarchar](100) NULL,
	[canReg] [tinyint] NULL,
	[rank] [int] NULL,
	[isDefault] [tinyint] NULL,
 CONSTRAINT [PK_pa_member_group] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pa_member_group_info_permissions]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_member_group_info_permissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[open] [int] NULL,
	[memberGroupId] [int] NULL,
	[tableId] [int] NULL,
	[canAdd] [tinyint] NULL,
	[canEdit] [tinyint] NULL,
	[canDelete] [tinyint] NULL,
	[canSetTopProperty] [tinyint] NULL,
	[canSetGoodProperty] [tinyint] NULL,
	[canSetHotProperty] [tinyint] NULL,
	[maxNum] [int] NULL,
	[addDefaultState] [tinyint] NULL,
	[editDefaultState] [tinyint] NULL,
	[columnIds] [varchar](max) NULL,
	[canResubmitCheck] [tinyint] NULL,
	[canDraft] [tinyint] NULL,
 CONSTRAINT [PK_pa_member_group_info_permissions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_member_group_permissions]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_member_group_permissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[memberGroupId] [int] NULL,
	[menuIds] [varchar](4000) NULL,
	[menuItemIds] [varchar](4000) NULL,
 CONSTRAINT [PK_pa_member_group_permissions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_member_lock]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_member_lock](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[ip] [varchar](50) NULL,
	[lockType] [varchar](50) NULL,
	[thedate] [datetime] NULL,
	[expireDate] [datetime] NULL,
 CONSTRAINT [PK_pa_member_lock] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_member_login_error_log]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_member_login_error_log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[ip] [varchar](50) NULL,
	[brower] [nvarchar](50) NULL,
	[thedate] [nchar](10) NULL,
 CONSTRAINT [PK_pa_member_login_error_log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_member_menu]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_member_menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NULL,
	[name] [nvarchar](50) NULL,
	[icon] [varchar](50) NULL,
	[level] [int] NULL,
	[nameSpace] [varchar](100) NULL,
	[area] [varchar](50) NULL,
	[controller] [varchar](50) NULL,
	[action] [varchar](50) NULL,
	[isFinal] [tinyint] NULL,
	[isExpand] [tinyint] NULL,
	[state] [tinyint] NULL,
	[isSys] [tinyint] NULL,
	[sysNode] [varchar](255) NULL,
	[target] [varchar](20) NULL,
	[pluginName] [varchar](50) NULL,
	[zdyUrl] [nvarchar](150) NULL,
	[xuhao] [int] NULL,
	[viewType] [tinyint] NULL,
 CONSTRAINT [PK_pa_member_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_member_menu_item]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_member_menu_item](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[menuId] [int] NULL,
	[name] [nvarchar](50) NULL,
	[namespace] [varchar](255) NULL,
	[controller] [varchar](50) NULL,
	[action] [varchar](50) NULL,
	[method] [varchar](50) NULL,
	[isDefault] [tinyint] NULL,
 CONSTRAINT [PK_pa_member_menu_item] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_role]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pa_role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[remark] [nvarchar](100) NULL,
	[isSuperadmin] [tinyint] NULL,
 CONSTRAINT [PK_pa_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pa_role_permissions]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_role_permissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roleId] [int] NULL,
	[menuIds] [varchar](4000) NULL,
	[menuItemIds] [varchar](4000) NULL,
 CONSTRAINT [PK_pa_role_permissions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_site]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_site](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[remark] [nvarchar](50) NULL,
	[directory] [varchar](50) NULL,
	[domain] [varchar](50) NULL,
	[templateDirectory] [varchar](50) NULL,
	[isDefault] [tinyint] NULL,
	[compression] [tinyint] NULL,
	[logo] [nvarchar](50) NULL,
 CONSTRAINT [PK_pa_site_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_sub_table]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_sub_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[parentTable] [varchar](50) NULL,
	[parentField] [varchar](50) NULL,
	[fieldType] [varchar](50) NULL,
	[maxNum] [smallint] NULL,
	[remark] [nvarchar](50) NULL,
	[uid] [int] NULL,
	[thedate] [datetime] NULL,
	[state] [tinyint] NULL,
	[subTableType] [varchar](20) NULL,
 CONSTRAINT [PK_pa_sub_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_tag]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pa_tag](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[tableId] [int] NULL,
	[count] [int] NULL,
 CONSTRAINT [PK_pa_tag] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pa_tag_data]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pa_tag_data](
	[tagId] [int] NULL,
	[tableId] [int] NULL,
	[tableDataId] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pa_wait_expire_data]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_wait_expire_data](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tableName] [varchar](50) NULL,
	[detailId] [int] NULL,
	[thedate] [datetime] NULL,
	[hasOperated] [tinyint] NULL,
 CONSTRAINT [PK_pa_wait_expire_data] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_wait_online_data]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_wait_online_data](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tableName] [varchar](50) NULL,
	[detailId] [int] NULL,
	[thedate] [datetime] NULL,
	[hasOperated] [tinyint] NULL,
 CONSTRAINT [PK_pa_wait_online_data] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pa_web_log]    Script Date: 2020-07-09 17:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pa_web_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[logType] [int] NULL,
	[uid] [int] NULL,
	[username] [nvarchar](50) NULL,
	[message] [nvarchar](500) NULL,
	[url] [nvarchar](200) NULL,
	[ip] [varchar](50) NULL,
	[thedate] [datetime] NULL,
 CONSTRAINT [PK_pa_web_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[article] ON 

INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, N'admin', 0, 0, 0, N'简单≠简陋,从吃面体会到成功产品重大特征', N'/e/upload/s1/fck/image/2014/12/t_c-lz-niurou-lamian.png', N'<div class="content-text">
<p>牛肉面，是家乡的味道。一碗牛肉面要讲究&ldquo;一清二白，三红四绿&rdquo;，清汤、白萝卜、红辣椒油、绿蒜苗，再加几粒小牛肉，这就是除拉面外的全部辅料了&mdash;&mdash;多么纯粹！当这碗热气腾腾的家伙送到你嘴边，让你大快朵颐之时，感触唯有：汤，好喝！面，劲道！</p>
<p>牛肉面</p>
<p>是的，千百年来，牛肉面永远坚持着这份朴素。</p>
<p><a href="/e/upload/s1/fck/image/2014/12/c-lz-niurou-lamian.png"><img height="612" width="1000" alt="lz-niurou-lamian" src="/e/upload/s1/fck/image/2014/12/c-lz-niurou-lamian.png" class="aligncenter size-full wp-image-749" /></a></p>
<p>来到四川，最大的幸福莫过于这是一座吃货之城。虽然川菜名誉宇宙，我也沉醉其中，但好在四川吃货太多，面条在这里依然占据重要的位置。于是，在离开家乡后，我发现了牛肉面的备胎&mdash;&mdash;杂酱面。</p>
<p>按理说大家都叫&ldquo;炸酱面&rdquo;，但不知是因为四川话&ldquo;炸&rdquo;读&ldquo;杂&rdquo;，还是本来为了区别于炸酱面，这里大大小小面馆都写作&ldquo;杂酱面&rdquo;。杂酱面有几种主流口 味，其中最吸引我的，是豇豆杂酱面。这种干拌面条，其碗底是由自制酱料、肉末制成的&ldquo;杂酱&rdquo;，面条捞进碗里，头部再撒一些碎豇豆，就算是完成了。别看它朴 素得似乎连几片白菜，或是一勺面汤都不加，当你搅拌均匀，挑起沾满肉酱的面条送到嘴里后，口感则更加单纯：香浓！</p>
<p>牛肉面：汤，好喝；面，劲道。</p>
<p>杂酱面：香浓。</p>
<p>前戏做完了，回到正题：我是一只产品汪。</p>
<blockquote>
<p>当我们讨论一款成功的产品时，往往不是因为它的功能有多么大而全，恰恰相反，大多是因为有着最为简单而命中要害的核心功 能。例如微信的好友聊天，陌陌的附近交友，知乎的知识分享&hellip;&hellip;简单并不等于简陋，一个核心功能，围绕着其服务的人群、解决的痛点，可以不断往深层次挖掘， 最终达到一个极致&mdash;&mdash;这时候，它就像兰州牛肉面一样有口皆碑、家喻户晓。</p>
</blockquote>
<p>就算人人都知道牛肉面从头到尾制作流程，可谁又能做出比你更正宗的呢？</p>
<p>就算人人都了解你产品成功的核心功能，可谁敢说做个一模一样的下个月就把你打败呢？</p>
<p>没有，也不会这么容易就超越。</p>
<p>这两三年，我不断地在家里尝试做各种各样的面条。与其说是&ldquo;尝试&rdquo;，倒不如叫&ldquo;发明&rdquo;：我一直设想通过各种食材的组合烹饪，能做出比牛肉面、杂酱面 更加可口的美味佳肴。于是，面条分别试过鲜面、拉面、挂面、刀削面甚至方便面，烹饪方法有煮、炒、烩、焖、拌，而菜的选择就无所不用了：番茄、韭菜、土 豆、香菇、白菜、莲花白、海带、西兰花、青椒、豇豆、四季豆&hellip;&hellip;每次尝试一种新做法时，我都充分准备，重装上阵。而做的时候更是像模像样，厨房中弥漫着非 常诱人的香气，更加让人充满期待。</p>
<p>可每次这样准备的结果，都让我大失所望&mdash;&mdash;口味真的太一般了，一口送进嘴里，尝到的并不是如葡萄酒一般层层的醇香，而是五味杂陈毫无特色的大杂烩！食材之间从没有产生所谓&ldquo;奇妙的化学反应&rdquo;，你只想尽快吃完这碗东西不要浪费。</p>
<p>我甚至压根不知道给它起个什么名字？</p>
<p>对啊，即使我这碗面很好吃，明天就要拿去卖，我该叫它什么呢？牛氏极品面？正宗香菇豇豆肉末番茄烩面？</p>
<p>我们做产品，初级阶段最爱走的弯路就是&ldquo;研发最好吃的面条&rdquo;了。你喜欢牛肉，他喜欢香菇，我喜欢土豆，领导喜欢番茄&hellip;&hellip;那把这一堆菜都放进锅里呗，肯定大家都特别喜欢吃吧！</p>
<p>于是，一个地图App，里面可以装进去订餐、订酒店、天气、电影、团购、门票、应用推荐、游戏下载&hellip;&hellip;你想着，我们辛辛苦苦，终于把大家想要的功能都加进去了。</p>
<p>你想要的地图？</p>
<p>大家拿到手一看：&ldquo;我去你妈的，一个地图应用你是要日天了？&rdquo;</p>
<p>这让我又想到了自己曾经做过的炸酱面、青椒番茄炒面，它们都是用冰箱里非常少的菜，甚至没肉的情况下做出来的。结果是，这些面的口味非常纯粹，一入口马上就能尝到主菜配菜的味道。若里面的菜恰好是我最喜欢吃的，那么对我来说，这碗面就是完美。<br />
我的首席体验官 &mdash;&mdash; 野蛮女友说，以后别在给面条里加乱七八糟的菜进去了，不好吃。</p>
<blockquote>
<p>让产品保持如一碗面的简单与纯粹。</p>
</blockquote></div>', CAST(0x0000A4050173E8FC AS DateTime), N'当我们讨论一款成功的产品时，往往不是因为它的功能有多么大而全，恰恰相反，大多是因为有着最为简单而命中要害的核心功能。例如微信的好友聊天，陌陌的附近交友，知乎的知识分享……简单并不等于简陋，一个核心功能，围绕着其服务的人群、解决的痛点，可以不断往深层次挖掘．．', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (2, 203, 1, 0, 0, 0, 0, 1, 0, 0, 0, N'admin', 0, 5, 0, N'交互设计体验思维分享(iUED）', N'', N'<p>对于一个初入交互设计行业或者即将和我们一起在交互行业并肩作战的你是不是有种不知所措的感觉呢？其实这是一个很正常的现象，造成 这个现象的原因一方面是交互设计师在实际工作中的产出物一般是线框图、流程图、信息架构图、交互文档等可视性并没有那么强的产物，另一个方面是交互设计本 身是一个跨学科的专业，需要涉猎的知识比较多，大量的信息就导致你产生了迷失感。说实话我也曾经跟大家一样迷茫过，甚至怀疑自己适不适合做交互，所以每当 有人QQ咨询我，我都会很耐心的给他们解答。而今，伴随&amp;ldquo;微交互&amp;rdquo;的成长，更希望能够分享一些我自己的交互设计经验给大家，让更多的同学少走一些弯路，国 内的交互能够有更多新鲜的血液涌入。在《iUED》系列中，我将竭尽所能和大家一起探讨交互设计的里里外外，也希望更多的小伙伴加入我们的行列，一起学习 交互，一起探讨交互。</p><h2>1.什么是交互设计？</h2><p>在谈交互设计之前首先需要明白&amp;rdquo;用户体验&amp;rdquo;这个概念，用户体验（User &nbsp;Experience，简称UE/UX）是指用户在使用产品过程中建立起来的纯主观感受，通俗的讲就是&amp;ldquo;这个东西用起来怎么样，方不方便，好用不好用&amp;rdquo;， 在这个过程中，会受到行为、形式和内容三个方面的影响，交互设计就是通过改变行为和形式来提升用户体验一种行为。</p><p><a href="http://www.bananacafe.cn/wp-content/uploads/2014/12/e7cd7b899e510fb3baaa727bd833c895d0430cae.png"><img alt="e7cd7b899e510fb3baaa727bd833c895d0430cae" src="http://www.bananacafe.cn/wp-content/uploads/2014/12/e7cd7b899e510fb3baaa727bd833c895d0430cae.png" class="aligncenter size-full wp-image-743" width="1000" height="625"/></a></p><p>举个典型的例子，iOS和Android系统上对卸载A应用的设计。在Android原生系统上，要卸载应用程序需进入设置&amp;rarr;应用程序&amp;rarr;在一堆类表 中找到你要卸载的A应用&amp;rarr;在新打开展示应用程序信息的列表中你终于找到了你苦苦追寻的&amp;ldquo;卸载&amp;rdquo;按钮；我们再来看看iOS系统上怎么卸载应用程序的：长按桌 面上任意图标至图标开始抖动&amp;rarr;应用图标左上角出现叉&amp;rarr;点击欲卸载A应用图标上的叉确认删除即可，A程序图标被删除意味着A应用的对应程序也被卸载了。 iOS上卸载应用程序就像生活中丢垃圾一样，简单方便，贴近生活从而更加无障碍的使用。</p><p>另外，交互设计师需要根据用户的目标和使用场景，结合产品战略目标，用发展的眼光去规划产品的功能布局和功能的实现逻辑，遵循&amp;ldquo;以人为本&amp;rdquo;的原则从而达到实现用户目标的过程。</p><h2>2.交互设计师需要做什么</h2><p>交互设计师作为整个项目的推动者，可以保证项目进行的更加流畅、更有效率的开展。</p><p>在交互设计师的日常工作中的工作任务可以简单的归纳为以下五个方面：</p><p>~~了解项目背景，从中发现用户的需求，建立明确用户目标</p><p>~~提出具体解决方案（设计方案），满足用户需求</p><p>~~制作原型，输出交互文档，协调项目进行</p><p>~~进行后续用户测试和产品功能评估</p><p>~~上线后及时收集用户反馈</p><p>在实际的工作中，交互设计师需要做什么并没有很统一的界线，这就要求设计师本身能够结项目的需求和工作环境做适当的调整，下图是我结合上诉五点及实 际工作中思考问题的脑图，针对上述五点在实际工作中的应用也将在后续针对每个点做详细的介绍，当然这五点并不一定适合每个人，欢迎大家一起探讨如果更有效 的开展交互设计，做最卓越的产品。</p><h2>3.交互设计师的&amp;ldquo;交互&amp;rdquo;之道</h2><p>交互设计师要接触的人形形色色，各式各样，这就要求交互设计师需要有良好的沟通能力和人际关系。交互设计师在实际工作中会接触到除自身团队内成员 （产品经理、用户体验师、视觉设计师、前端工程师、后台工程师、测试工程师）之外，还会接触到客户（需求方）和用户，这就潜在的要求交互设计师需要具备一 些各方面的基础的知识，很多人会说交互设计师可以不懂程序、不懂视觉，但是就个人而已，我的观点是，要想成为一名出色的交互设计师，就必须涉猎程序和视觉 方面的知识，这样才会在项目进行中进行无障碍交流，保证项目的顺利进行。</p><h2>4.交互设计常用工具</h2><p>工欲善其事，必先利其器，如今在市场上的交互设计工具可谓层出不穷，在很多互联网公司追求敏捷开发，快速迭代的今天，交互设计师需要掌握哪些基本工具才能如鱼得水的应对工作需求呢？</p><p>软件只是我们表达的一种工具而已，下面这张图展现了交互设计师在日常工作中常用的工具，但不代表在你的工作中每一个都会用到，当然也不排除还会有其他的工具应用到设计中，这就要求交互设计师根据自己的情况和公司的要求选择最有利于设计的工具。</p><p><a href="http://www.bananacafe.cn/wp-content/uploads/2014/12/640.png"><img alt="640" src="http://www.bananacafe.cn/wp-content/uploads/2014/12/640.png" class="aligncenter size-full wp-image-744" width="640" height="452"/></a></p><p>工具永远不是设计，很多时候最好的设计是大脑加手中的纸笔，比如我就喜欢在需求研讨会会上采用纸笔手绘的方式向与会同事快速表达自己的而设计方向的 可行性和用户体验，展示功能模块的布局和交互逻辑，这种方式也有助于我快速理解产品和产品经理的意图，会后续的工作打下良好的基础。当然你也可以购买相应 的作图工具去绘制通用控件，但个人比更倾向与手绘，过度的依靠尺规反而会限制自己设计思维的快速表达。</p><p>至于上描几个工具在实际工作中的具体应用我同样会在后续文字中做具体讲解。</p><h2>5.我想对你说</h2><p>交互设计师没有很多眼中想象的那么光鲜，也不一定每个公司都有交互设计这个岗位，更不是所有人都理解交互设计这个行业，如果你真心热爱交互设计这个行业，我诚挚的邀请您和我，和&amp;ldquo;微交互&amp;rdquo;一起成长。</p><p>我亲爱的伙伴，如果你爱上交互，我希望在你入门之前给你为您提供一点交互设计这个职业的要求和心态，希望对新入门的您有所帮助。</p><p>1.交互设计是一个繁琐而理智的工作，需要你保持高度的热情，给你提供源源不断的设计动力，想象设计出来的产品在用户手中玩转，是不是再苦再累都值得了呢？</p><p>2.主动思考，拒绝让自己沦为伸手党。无论遇到多大难度的需求，都要保持独立思考的习惯，挖掘用户的潜在需求，用最好的方式为用户解决燃眉之急。在思考的基础上再和别人多交流，这样你会有更深的体会。</p><p>3.养成多积累，多总结，多探索，多分享的习惯，这样可以在你做产品的时候更加得心应手，要记住，想要进步，靠工作上的积累远远不够。</p><p>4.最后一点我希望你能受得了委屈和挫折，这一方面是交互在中国目前定位不明确引起的，另一方面来自于你的工作环境引起的，比如方案被打回，原型重 做，同事沟通不顺等诸多原因。但是你一定要明白，交互设计是一种设计行为，本身一种设计方案就不能满足所以人的需求，而交互设计在国内都处于发展阶段，工 作三四年的交互设计师都需要不断学习，更不用说刚入门的你，所以保持一颗向上的心，多虚心学习，为自己成为一名出色的设计师而努力。</p>', CAST(0x0000A405017653BC AS DateTime), N'在谈交互设计之前首先需要明白”用户体验”这个概念，用户体验是指用户在使用产品过程中建立起来的纯主观感受，通俗的讲就是“这个东西用起来怎么样，方不方便，好用不好用”，在这个过程中，会受到行为、形式和内容三个方面的影响，交互设计就是通过改变行为和形式来提', N'', N'')
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (3, 202, 1, 0, 0, 0, 0, 1, 0, 1, 0, N'admin', 0, 0, 0, N'拉勾网疯长内幕：聪明的猪更容易飞起来', N'/e/upload/s1/fck/image/2014/12/t_c-vfvffffv.png', N'<p>上，而是在继续向上攀升，最近其砸500万重金发力招聘周的活动&mdash;&mdash;这大概就是一个证明吧？</p>
<p><img class="aligncenter size-full wp-image-660" height="610" alt="vfvffffv" width="1000" src="http://www.bananacafe.cn/wp-content/uploads/2014/12/vfvffffv.png" /></p>
<p>对于拉勾，我曾详细了解它的成长经历，发现在广为人知的几个基本因素之外，它还有着大多创业产品所不具备的因素，比如用创新方法做公司、用服务心态做产品。而之后许单单在财经天下举办的&ldquo;异想大会&rdquo;上的分享，正应证了我的猜想。这些经验与创新的试错虽然只是一个网站的成长，但它对于其他创业项目，或许有着一定程度的启发作用。</p>
<h2>1、拉勾的故事</h2>
<p>每一个成功的产品功成名就之后，几乎都会被包装出一个精彩绝伦的故事，但是拉勾在这方面就比较简单，甚至可以说是一种白描。关于它的故事，如今在业界以及耳熟能详，简单的来说就：出身于3W咖啡馆的孵化项目、许单单领航马德龙执掌，定位互联网的&ldquo;快速招聘&rdquo;方式。这种近乎线条勾勒和白描的产品方式，是拉勾的个性，也是拉勾有别于同行的最大特点。</p>
<p>拉勾的不同源于这种简单，即网站功能简单（招聘）、公司结构简单（一群互联网行业出身的人）、网站模式简单(服务互联网招聘）的这种简单原则，造就了单一而又击痛了互联网行业刚性需求的特点。此前诸多大佬阐述互联网产品的原则就是简单，拉勾从这样的方式起步，也寓意了它是一个简单的专业网站。</p>
<p>拉勾的崛起和它的这种产品风格有着极为贴切的关系。群雄林立的招聘求职网站网站中，拉勾摒弃大平台理念，而是用单一的桥梁连接的身份作用，为求职者与用人单位构建了一个沟通的桥梁，让求职者与用人单位实现快速配对。这种简单、高效和精准的招聘方式，不能说是前无古人后无来者的创新，但一定是目前互联网行业所需要的高效。</p>
<h2>2、拉勾的秘诀</h2>
<p>作为一个观察者，笔者无法体会到拉勾从零到壮大的心路历程，因此在对于拉勾成长的窥探与了解中，或许许单单在&ldquo;异想大会&rdquo;上的分享更能给人启示。这些总结虽然在其他分享内容中也能常见，但结合拉勾的案例，或许也能应用于其他产品身上：</p>
<p><strong>（1）垂直是趋势</strong></p>
<p>拉勾的网站非常简单，整个网站没有平台、生态等高大上词语，新人或老人都能一眼上手。在网站设计和风格方面，也与时下流行的扁平风格保持一致。当然，和其他招聘求职网站不同的地方还在于拉勾上并没有太多的牛皮藓广告。总的来说，简单、操作便捷。</p>
<p>这便是许单单口中的&ldquo;垂直是趋势&rdquo;论调。因为庞大的求职用户基数与刚性的市场招聘需求，所以拉勾的&ldquo;快速入职&rdquo;掐准了这个当前格局的命脉，这一精准定位解决了求职者与招聘单位的需求，因此一年多时间估值的拉勾成长方式，算是证明了垂直需求是市场的方向。</p>
<p>拉勾并没有走太过细微的垂直定位，许单单说这是市场决定因素。太小会被饿死，太粗则会不精准从而变得更加粗糙。拉勾是猪，刚好撞上了互联网潮流的风口，所以它不粗也不细，这正是当前互联网所需要的产品以及创新的形式。</p>
<p>如果再加一句，就是拉勾没有盲目走大众化招聘求职网站，这便是一种别具一格。</p>
<p><strong>（2）体验与服务极致</strong></p>
<p>这一点是我自己总结出来的感受。</p>
<p>马德龙常常在朋友圈分享各种拉勾的成绩，时间久了之后会让人感到烦。但是，如果在他分享这些拉勾数据的过程中，普通用户有疑问或需求的时候，这个 CEO会立刻回应。此前他们曾经做过一个电影票的朋友圈营销活动，我指出了问题所在，之后他们内部迅速开了个会调整了规则，这起前后不过数个小时的时间以及处理效率，这在其他互联网公司身上似乎并不会多见。</p>
<p>在这个话题上，我与其他人交流得知的情况是，拉勾非常重视用户的反馈需求。</p>
<p>事实上，拉勾网站从诞生之初到现在在UI、结构和交互等方面都进行过大幅度的调整，甚至于在一些线下交流过程中，马德龙对于别人的吐槽记录也会悉心记录。这些细则虽然都很普通，但能将每一点都汇聚一个产品身上，则是不易之为。</p>
<p>这样的方式带来的结果，便是拉勾的招聘效果比传统招聘网站好N倍。最重要的是，拉勾的高效对于企业HR而言，意味着时间、精力、人力等成本的节约。</p>
<p><strong>（3）生存法则</strong></p>
<p>每个公司因为基因属性、市场环境，以及自身的发展方式不同，在生存法则上也都会有不同程度的展现和起落。做软件的微软颠覆做硬件的IBM、做互联网的Google颠覆做软件的微软，这种前后颠覆的方式就是生存法则。今天的拉勾或许不会颠覆传统招聘求职网站，但它确实对现有的招聘模式以及产生冲击。</p>
<blockquote>
<p>许单单说拉勾的生存法则是：认真审视自己所谓的垂直，是否粗细合适；然后迅速做大自己。然后看着尾随者去死，就可以啦。</p>
</blockquote>
<p>深以为然。</p>
<h2>3、拉勾的启示</h2>
<p>虽然很多人至今都并没将诞生于咖啡馆的拉勾当回事，但不得不让人承认的是，拉勾的存在不仅让资本瞩目，而且也让大多HR有了更多的选择。另外，今天的拉勾在规模、影响力方面等也确实具有了相应的知名度。在口碑传承和业界影响方面，拉勾的现状较之刚成立时也有了巨大改观。</p>
<blockquote>
<p>少即是多，离开原地就是一种进步。</p>
</blockquote>
<p>剥开市场传播的外衣，拉勾的产品及商业模式启示也并没有惊天动地的不一样，它只是将这个时代需求的招聘求职功能做到简洁但不简单、强大且靠谱，所以它成功了。对于一个新成长的招聘求职网站而言，拉勾比肩其他专业招聘求职网站，在时间上已经是合格了&mdash;&mdash;要知道很多传统专业招聘网站要么已经成立多年，要么庞大为上市公司。但拉勾还是一个创业小公司。</p>
<p>总的来说，互联网的机遇随时都在，拉勾打破了传统模式下招聘求职的固化思维，其以精准切入的方式击打了招聘求职的痛点，并通过产品和模式贯彻简单、有效的方式，完成了它的市场成长之旅。这种方式带给用户的好处就是：不麻烦，方便。</p>
<p>这大概也是互联网产品的发展方式吧？</p>', CAST(0x0000A4060156D9EC AS DateTime), N'拉勾成立时间仅仅年余，目前却已经估值数亿。按照时下流行的一句话来说，那就是拉勾是猪，刚好赶上了最后一轮互联网的风暴，于是飞起来了。只不过和其他创新的产品不一样，拉勾这头猪分起来后，并没有摔落在地上，而是在继续向上攀升，最近其砸500万重金发力招聘周的活动——这大概就是一个证明吧？', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (4, 202, 1, 0, 0, 0, 0, 1, 0, 1, 0, N'admin', 0, 0, 0, N'警惕老板的三种穷人思维', N'/Upload/Images/2019/03/12/t_c-cecveve_3.png', N'<p>穷人有穷人思维我们一点都不奇怪，但我见过很多老板也有穷人思维，这种思维说明一个什么问题？说明不是因为你富有，你的思维就是富人思维；也不是因为你现在贫穷，你的思维就是穷人思维。那么，哪些思维是老板的穷人思维？</p>
<p><a href="/Upload/Images/2019/03/12/c-cecveve.png"><img width="1000" height="610" class="aligncenter size-full wp-image-541" alt="cecveve" src="/Upload/Images/2019/03/12/c-cecveve.png" /></a></p>
<h2>老板的穷人思维之一：你为我做多少事我给你多少钱</h2>
<p>你给我干多少事，我就给你多少钱，这是一种最常见的穷人思维。富人为什么富？</p>
<p>无非就是有投资思维、投资眼光，把握机会，敢于投资。这是先舍后得还是先得后舍的逻辑思维问题；先投资后获取还是先获取后投资的投资逻辑。但大部分老板都有这样一种逻辑思维就是员工要先付出劳动才能给你工资，但他们绝对没有先投资员工然后我再获取的投资逻辑。除非是大企业，首先要培训员工，然后希望员工熟练掌握技术或技能，员工熟练掌握技能和技术后才能不出差错地为公司工作，这是投资逻辑。</p>
<p>在中国城市化进程中，如果一个人敢于投资房地产，哪怕是借来的钱也在地产上搏一搏，我相信这些人都会成为富人。关键一点就是你有没有这样的眼光、这样的思维和这样的勇气。</p>
<p>就像现在很多企业一样，老板总想利用低价钱去多请几个廉价的人，但他不会愿意和敢出双倍的价钱去请一个能力很强和忠诚度很高的能人，这就是老板的穷人思维。</p>
<h2>老板的穷人思维之二：计较下属得到多少</h2>
<p>计较下属得到多少，这是老板们存在的第二种穷人思维。</p>
<p>一位老板年初给销售部定好任务，如果年底能超出行业增长10%以上的，公司将每人奖励销售人员5万元，奖励销售经理10万元，奖励营销副总30万元。在这样的奖金激励下，整个销售部像疯狂了一样，个个奋勇向前，到了年中的时候，销售业绩已经完成全年任务的70%。老板看看数据，寻思这样下去他们不是很轻易就拿到一大笔销售奖金？</p>
<p>于是，找来人力资源部经理商讨一番，认为考核方案要重新来定，于是公司出台新的考核方案，改考核销量为考核利润。当然，改动后的考核方案当然只对老板有利，整个销售队伍看完老板的方案后都像泄了气的皮球，蔫了！这样言而无信的老板问题在哪里？也是因为存在计算下属得益多少这种穷人思维作怪。一位成功的老板跟我说一句话，他说他的成功秘诀就是从来不眼红别人得到多少，只要自己有钱赚就行。一语中的啊！</p>
<p>聪明的老板一般都是计较自己得到多少，别人得到多少这是别人的事情，你如果整天计较别人得到多少，那你就肯定没有合作思维。合作思维是现代人，特别是现代老板必备的一种特征；没有合作，就没有人才，就没有资本，就没有资源，就无法完成任何一项事业。</p>
<h2>老板的穷人思维之三：跟下属抢功</h2>
<p>很多老板问我：为什么找不到人才？我反问：老板，如果有人才给你，你能留得住吗？为什么留不住人才？原因当然很多，但有一点是老板们很少考虑过的，那就是老板喜欢跟下属抢功。</p>
<p>跟下属抢功的老板共同特点是他们都是属于事必躬亲型的老板，什么事都要自己过问，什么权力也不愿意下放，害怕别人吃掉他的公司一样。当然，他们对待工作的敬业精神都是很可嘉的，他们对待事情的专注程度也是值得学习的。但有一样不好之处就是这样做下去，老板很累，企业很难留住人才，企业发展可忧！</p>
<p>一位生产生活用纸原纸的老板，他总是埋怨下属没有能力，说下属不如他能力强。原因何在？原来卖原纸并不需要很多销售技巧，一是看原纸质量，二是看价格，三是你能给客户多少账期。在同质化年代，卖原纸的手段只剩下两项：价格和账期。但这两项权利都掌握在老板手中，这位老板之所以能每到客户那里都能把原纸卖出去，原因无他&mdash;老板可以降价或者给客户账期，而其他业务员没有这样的权力。</p>
<p>开会时，老板总是对这些业务员进行批评，说他们没有能力，说自己一出马就能把原纸卖掉。面对这样境况，业务员又不敢反驳。这样一来二往，业务人员在这家公司里觉得发挥不了自己的能力，功劳都给老板抢去了，留下来也没有啥意思，都很快就离开了，当然，老板也就没有人才可用啰。</p>
<p>如果老板有以上几种穷人思维，则这位老板还没有真正具备投资思维，只是在偶然机会下发达而已，这样的老板很难还有大的作为，很难能凝聚人才为企业所用，很难在新时代下与行业的其他企业竞争胜出。所以，与其说企业是老板决定的还不如说企业是老板的思维模式决定的！</p>
<!--content_text-->', CAST(0x0000A406018AC554 AS DateTime), N'穷人有穷人思维我们一点都不奇怪，但我见过很多老板也有穷人思维，这种思维说明一个什么问题？说明不是因为你富有，你的思维就是富人思维；也不是因为你现在贫穷，你的思维就是穷人思维。那么，哪些思维是老板的穷人思维？', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (5, 202, 1, 0, 0, 0, 0, 1, 0, 0, 0, N'admin', 0, 0, 0, N'如何提高执行力？把沟通漏斗倒过来！', N'', N'<p>漏斗理论说，我们100%的表达，到了执行只剩下20%。那么该如何提高团队的执行力？也许可以试试把沟通漏斗倒过来！</p>
<p>团队中该死的沟通问题，通常和大家所熟知的&ldquo;沟通漏斗&rdquo;有关。这个&ldquo;臭名昭著&rdquo;的理论告诉我们：如果我们所设想希望表达的是100%，与团队成员沟通的时候却只能讲出80%，因为场所干扰、分神等原因，对方听到的最多只是60%，能听懂的部分只有40%，真到执行时就只剩下20%了。</p>
<p>把沟通漏斗倒过来</p>
<p>当我们的指令就像手中所握的沙子般漏出的时候，最后的执行能好吗？当然不能！可是怎样才能解决这个问题呢？把沟通漏斗倒过来！</p>
<h2>一、站在团队成员的角度，着重沟通对方能听懂的40%和能执行的20%。</h2>
<p>能听懂的部分不是只有40%吗？到执行的时候不是只剩下20%吗？行，现在我们就只沟通你能听懂和执行的那部分内容。</p>
<p>这似乎是有点无奈的选择，但其实不是。俗话有云&ldquo;对牛弹琴&rdquo;，许多的管理者总热衷于把有关某项指令或计划的所有事项一股脑地传达给自己的下属，殊不知自己的下属因为资历、理解能力、知识面及技能的局限性，根本就没有办法承受如此之重。现在，我们化繁为简，从他们的角度，去和他们沟通其能听懂和执行的，其实是个明智而有效率的选择。</p>
<p>可是，一项指令不仅是40%和20%，而是100%的，那剩下的又如何办是好？</p>
<h2>二、了解自己的团队，区别沟通。</h2>
<p>要想让一个100%的指令或计划尽量得到100%的执行，就必须在让一些人听懂及执行一个40%和20%的时候，有另一些人去听懂和执行另一些40%和20%。</p>
<p>这需要我们&ldquo;因材施教&rdquo;。而这却是建立在我们对自身团队的成员充分了解的基础上的。现实的问题是，许多的管理者都不了解自己的团队，甚至是没有欲望去了解自己的团队。因为他们更功利的热衷于向上了解&mdash;&mdash;搞定老板，向下指派&mdash;&mdash;发号施令。</p>
<p>现在，让我们为自己的团队成员建立一个档案：谁具备什么技能？他的工作经历是什么样的？在过去的执行中，他执行的好坏之处分别出在什么地方？他对执行指令的具体内容表现出怎样的选择性倾向？他需要什么样的搭档才能弥补其执行弱项上的缺陷？他及其搭档的执行意愿和态度又是怎样的？除了理解能力和执行技能上的互补之外，在执行意愿和态度上能够互补嘛？</p>
<h2>三、合理搭配执行团队，互补执行。</h2>
<p>上述提到的合理搭档的问题对许多企业来讲，在现实中存在不少的难度，我们甚至需要在营销团队的招募及其管理流程上进行很大的改变。根据联纵智达营销执行力研究中心的跟踪研究来看，我们中间的许多企业，无论是人力资源部门，还是营销总监、总经理等都缺乏在团队成员招募中加入一条&ldquo;性格及技能互补&rdquo;的意识，在具体的营销工作中所存在的&ldquo;黄金搭档&rdquo;总是凤毛麟角。</p>
<p>现实中的困扰因素要比以上所说多得多。比如，我们在一个城市甚至是一个更大的区域，是只有一个销售人员的编制的，搭配搭档之说更是无从谈起。但是，现在这样并不代表我们一直这样，也并不代表我们就没有其他一些办法去形成一些弥补和改善。如在执行重大的宣传、促销计划及其他相关指令时，总部派遣可以在沟通理解、执行技能、执行意愿等方面形成互补的团队成员助战。</p>
<h2>四、让团队了解自己，并辅以一定的管理。</h2>
<p>作为一个管理者，既要去了解自己的团队，也要努力的让团队了解自己。如果一个管理者，能够让团队成员清楚的了解到自己的行事风格、执行要求、效果检验标准等信息，团队成员们就会努力的向自己所要求的方向上去靠。</p>
<p>当然，这对管理者自身提出了高标准、严要求。事实上，也只有高执行领导力的管理者才会带出高执行力的营销铁军。显然，管理者不仅需要向上管理、向下管理，还需要管理好自己，并且还需要为自己团队的执行绩效辅以相应的管理措施。</p>
<p>堵上漏斗中的筛子眼</p>
<p>现在，就让我们尝试堵住这些筛子眼。</p>
<p>清楚要点。每一个计划与指令都是有其要点的，我们要在与团队成员的沟通前，清楚这些要点，并在沟通中把要点讲清楚。比如终端包装就是怎么谈终端包装、终端怎么包装，以及终端包装达成率、终端包装费率等相应的执行要点和配套考评。这些要点显然需要成形在前，沟通清楚。</p>
<p>选择性沟通。时间、地点、人物、事项是其中的四个重点。既然要如我们在前面所讨论的一样，让一些人听懂和执行他们能听懂的40%、能执行的20%，事前就要明白这需要听懂和执行的是哪些事项和哪些人。在此基础上，再选择合适的时间和环境进行沟通，以让执行者听了就执行而不是慢慢遗忘，以让执行者在一个较少干扰的环境下能更好的听懂及理解我们的指令。</p>
<p>多种形式沟通，反复强调。集体沟通、分众沟通、会议沟通、语言沟通、邮件沟通、书面沟通、文件沟通&hellip;&hellip;都是可以选择和组合运用的沟通形式。现实中的多数管理者往往会犯如后几个错误：</p>
<p><strong><span style="color: #ff6600;">1.</span> </strong>认为某事已经讲过了，就没有更多沟通的必要了，孰不知多种形式的反复沟通，更利于统一认识，将指令及计划的相关重点深入团队成员内心</p>
<p><strong><span style="color: #ff6600;">2.</span> </strong>认为嘴上讲过了，就没有必要再以书面文件及邮件等形式沟通，孰不知口头的沟通会更多的&ldquo;左耳进右耳出&rdquo;，并缺乏书面文件及邮件沟通形式的严肃性、法效感；</p>
<p><strong><span style="color: #ff6600;">3.</span> </strong>认为大会上已经讲过了，区别及单独沟通就没有必要了，孰不知每位团队成员的理解力、知识面、技能、问题敏感意识，甚至是所面临的执行环境、执行条件都存在极大的差异，而这些差异正是造成执行力高低不同的重要原因。</p>
<p>给下属们一定讨论的机会。最近，我也遭遇到了团队沟通的问题。在一个6人的咨询项目小组中，来了一位具备十余年实战经验的，刚一加入公司就进入这个项目小组的同仁。可问题是，一风暴创意、沟通作业，他表现得很理解；一安排分工作业，他的执行问题就来了&mdash;&mdash;将你安排的作业板块，理解得支离破碎，呈现得不伦不类，完全没有抓准当初讨论的重心及其所要解决问题的关键所在。</p>
<p>问题都出现在什么地方呢？每一个有着太多经验的人，心里面都会装着太多的&ldquo;成见&rdquo;，你跟他沟通的，和他具体执行的就会因此存在偏差。面对这个问题的时候，我们可以给予适当讨论的机会，明确要点、阐明要求，以让他们以我们指明的方向、要求的速度、规定的交规，行进在正确的执行道路上。</p>
<p>节点及关键点沟通。每一项执行计划及指令，都存在它的关键时间节点，以及影响执行成效及成败的关键绩效点，这是管理者们需要强化管控的，其中非常重要的一点就是强化在这些节点及关键点上的沟通。比如，在一个时间节点快来临时，向团队成员强调重点，沟通进度、梳理困扰，给予一定的答疑解惑及其相关支持；在关键点上，沟通执行过程及问题，掌握进度，强调标准与要求。</p>
<p>当然，面对一个规模性的团队，以及自己团队中的每一位成员，这些事并不一定需要管理者自己来完成，并有一系列的辅助性管控措施可以帮助跟进。</p>
<!--content_text-->', CAST(0x0000A406018ADCC4 AS DateTime), N'漏斗理论说，我们100%的表达，到了执行只剩下20%。那么该如何提高团队的执行力？也许可以试试把沟通漏斗倒过来！', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (6, 202, 1, 0, 0, 0, 0, 1, 0, 1, 0, N'admin', 0, 0, 0, N'企业管理之道－让问题员工认同', N'/Upload/Images/2019/03/12/t_c-s.jpg', N'<p>任何公司都会有问题员工的出现，很多人在处理员工关系时或多或少地都会碰到难处。然而，问题员工不是天生的，管理者平时的不注意为问题员工的形成制造了温床，所以，对一个优秀的管理者来说，必须明白问题员工是管理者造成的，和员工无关。或许，员工在进公司前，有可能已经是问题员工了，这样的员工我们在招聘时尽量会排除掉，不过，环境造就人，问题员工绝非不能改变。同时，我们必须要明白问题员工不一定是工作能力不行的员工，很多情况下，问题员工往往是对未来有追求的或者敢做、敢当、敢言的人，改变并用好这类人群或避免这类人群的出现，对公司大大有利。</p>
<p><a href="/Upload/Images/2019/03/12/c-s.jpg"><img width="1000" height="610" class="aligncenter size-full wp-image-456" alt="s" src="/Upload/Images/2019/03/12/c-s.jpg" /></a></p>
<p>问题员工之所以成为问题员工的核心因素，是员工不认同公司的管理或管理者，只要公司切实开展认同管理，逐步解决员工不认同公司管理或管理者的因素，问题员工便几乎不再出现，认同管理涵盖很多内容，笔者只能阐述其中的部分。</p>
<h2>一、最大限度地保证公正</h2>
<p><strong><span style="color: #ff6600;">1、</span></strong>在保证公司和管理者利益的同时，尽量也为员工考虑考虑，可以以换位思考的方式来操作。</p>
<p><strong><span style="color: #ff6600;">2、</span></strong>公司岗位的重要性通过薪酬来体现，薪酬以外，任何人都平等，员工同样需要尊重，任何不尊重员工的行为，均会导致冲突的发生。</p>
<p><strong><span style="color: #ff6600;">3、</span></strong>先礼而后兵原则，要员工注意的事项或开展的工作，有书面规定的，一定要事先告知，没有书面规定的，及时拟定书面规定。有条件的，可以事先让员工签字确认，避免因为没有事先说明而在事后处理时，员工因为不满出现冲突。</p>
<p><strong><span style="color: #ff6600;">4、</span></strong>管理员工的标准是一样的，在公司内部，绝对不能有长时间特殊对待的人群，否则，在员工中必然会有不公平的声音而导致冲突的发生。</p>
<blockquote>
<p><strong><span style="color: #ff6600;">5、</span></strong>千万要注意杜绝越级管理，越级管理给冲突埋下了隐患，越级管理情况如果多了，会让相关当事人慢慢形成优越感，我上级的上级（甚至隔了好几级）器重我。这种优越感可能会导致该员工的认知扭曲，慢慢地，可能不把自己的直接主管放在眼里。</p>
</blockquote>
<h2>二、推行&ldquo;德治&rdquo;以理服人</h2>
<p><strong><span style="color: #ff6600;">1、</span></strong>有理、有节、有据，我们处理员工的违纪或工作不力时，对员工进行考核或者处理时：</p>
<p>（1）一定要有书面的规定，没有书面的规定不处理，但应即时修改书面的规定。</p>
<p>（2）处理前要与员工沟通，得到员工的认可，并让员工留下书面的保证书、检讨书等。</p>
<p>（3）如果不是很严重的问题，不要把员工一棒子打死，给员工一次机会。</p>
<p><strong><span style="color: #ff6600;">2、</span></strong>给有较大困难的特殊群体一个缓冲期，考虑他们的实际困难和内心的苦恼，缓冲期是指给他们改变内心中深刻的想法或者度过困难期的时间，但缓冲期一过，必须和所有人一样。</p>
<blockquote>
<p><strong><span style="color: #ff6600;">3、</span></strong>管理者的威望和声誉不是靠权利所得，不要以为自己拥有了职务和权利就一定会有威望和声誉，员工就一定会尊重你、服从你，让员工感觉到你的价值和重要性，他们才会从内心中尊重，否则，尊重仅仅是在表面，仅仅是表面的尊重是微妙的，所以，我们不要简单地使用权利。</p>
</blockquote>
<p><strong><span style="color: #ff6600;">4、</span></strong>在员工面前，注意谦让，有时候谦让会有意想不到的作用：</p>
<p>（1）一同出门时，可以让下属先走。</p>
<p>（2）吃饭排队时，可以让员工先拿。</p>
<p>（3）上班打卡时，可以让员工先打。</p>
<p>（4）公司发放福利时，可以让员工先拿，有好处时，先想到员工。</p>
<p>（5）当我们赢得了员工的心，无形中扩大了员工忍受不公的能力，从某种意义上，减少了冲突发生的可能性。</p>
<p>（6）如果员工从内心中尊重你，有时候你错了他也会认为是对的。</p>
<p>（7）管理员工，攻心为上。</p>
<p><strong><span style="color: #ff6600;">5、</span></strong>善待每次员工反映的问题、意见、建议，能解决的一定要解决，无论处理结果如何，一定要给员工回复。</p>
<h2>三、公开与透明</h2>
<p><strong><span style="color: #ff6600;">1、</span></strong>让员工知道你在做什么（但不能刻意告知，等有工作事例时，再告知），管理者有时候是悲哀的，员工不知道你们在干什么，在员工的心里面，他们会觉得管理者是在监督我们工作的，是监工，监督和被监督者之间会存在隐性的冲突。所以要通过工作事例的方式告诉员工你在干什么：</p>
<p>（1）你在思考改进员工工作的办法。</p>
<p>（2）你在为员工解决他们解决不了的难题。</p>
<p>（3）你在对你所管辖的范围进行统一规划、安排。</p>
<p>（4）不要让员工觉得你仅仅是拥有了权利，要告诉他们你拥有的是技能、方法、经验。</p>
<p>（5）让员工知道你肩负的责任、承担的压力。</p>
<p>（6）要让员工明白，我们是合作的关系，而不是监督和被监督者的关系。</p>
<p><strong><span style="color: #ff6600;">2、</span></strong>员工会犯错误，管理者同样会犯错误，不要把所有的错误推向员工，敢于向员工道歉，属于自己的责任、过错要敢于在员工面前承认，在下属面前承认错误，不但不会有负面影响，反而，会让员工更加尊重管理者，而且，这种尊重一般来说都是从内心当中的尊重。</p>
<h2>四、不断创新，争做强者</h2>
<p><strong><span style="color: #ff6600;">1、</span></strong>尝试让认为有不公平因素存在的员工来制定规则，但告知规则必须要具备下列前提条件：</p>
<p>（1）规则要有充足的理由。</p>
<p>（2）规则要严密。</p>
<p>（3）规则要公平，并兼顾公司与员工的利益。</p>
<p>（4）规则必须要让绝大部分人员能够接受。</p>
<p><strong><span style="color: #ff6600;">2、</span></strong>管理制度肯定会有缺陷的地方，当员工反映管理制度中下列问题时，我们应考虑修改管理制度：</p>
<p>（1）管理制度明显违背法律规定，而我们又没有切实的理由说服员工（讲出理由时必须遵循真实性原则）。</p>
<p>（2）管理制度存在明显的不公，而且这种不公是无理的。</p>
<p>（3）管理制度完全从公司的利益出发的。</p>
<p><strong><span style="color: #ff6600;">3、</span></strong>这是一个信奉强者的时代：</p>
<p>（1）尽量不要在你的员工面前诉苦、抱怨，不要以为员工会同情你，他们很有可能会你，久而久之，加大的冲突的可能。</p>
<p>（2）作为管理者，有压力，自己想办法扛着，扛完后再告诉员工，能够不寻求员工帮助的，尽量不要寻求员工的帮助，更不能抱怨。</p>
<p>（3）在员工面前你是积极的、乐观的，切记不要在员工面前表现出消极的情绪。</p>
<p><strong><span style="color: #ff6600;">4、</span></strong>管理者切记不要记仇，大度是一个灵丹妙药。</p>
<p><strong><span style="color: #ff6600;">5、</span></strong>不管什么原因，任何时候都不要去欺骗员工.</p>
<p><strong><span style="color: #ff6600;">6、</span></strong>考虑员工的承受能力，不同类型的员工，承受能力是不一样的，所以，员工出现违纪现象的，处理员工前，要去判断员工的承受能力（从表情和话语中应该能够判断），如果发现员工暂时不能承受，不凡先将事情放一放，过1、2天等员工的承受能力恢复一点以后再去处理，员工都会有自我修复的能力。</p>
<p><strong><span style="color: #ff6600;">7、</span></strong>对事不对人：处理员工时，切记不要揭短，就事论事，不要议论员工本人。</p>
<p><strong><span style="color: #ff6600;">8、</span></strong>切记不要去遮掩问题：</p>
<p>（1）瞒天过海是不可能的，所以，管理当中有问题出现时，及时解决或者修改管理规定，千万不要为了不承担管理责任而去遮掩，纸不可能包得住火。</p>
<p>（2）管理的本质：管理是持续改进的过程，所以任何管理方式、管理制度不可能一成不变，该改的就要改。</p>
<p>（3）人的本能使然，在问题出现时，都会找不是自己的理由甚至去遮掩问题，从而去逃避责任，但这样的行为会断送了我们的职场前景，所以一定要约束自己不正当的想法、理念和行为。</p>
<!--content_text-->', CAST(0x0000A406018AE87C AS DateTime), N'任何公司都会有问题员工的出现，很多人在处理员工关系时或多或少地都会碰到难处。然而，问题员工不是天生的，管理者平时的不注意为问题员工的形成制造了温床', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (7, 202, 1, 0, 0, 0, 0, 1, 0, 1, 0, N'admin', 0, 0, 0, N'谋杀团队积极性的十宗罪，有没有？', N'/Upload/Images/2019/03/12/t_c-1716-1112141pp661.jpg', N'<p>和谐融洽愉悦无疑是确保团队高效能输出的基石，更是成功团队必不可少的基因血脉。所以，一旦团队成员之间出现隔阂或矛盾，必然会成为团队的不稳定因素，并迅速恶化对团队整体性能和生产效率产生严重影响，作为团队领导必须时刻对这种信号保持敏锐的警觉，否则必将迎来惨痛教训。那么如何才能避免最终难以力挽狂澜的困局，使团队成员拧成一股绳，让工作如行云流水般顺畅，构建领导员工之间的双向桥梁是摆在每个团队领导面前的难题，本文整合了多项研究，以信息图的方式展示了 10 项制约和扼杀团队高效运转的错误示范，并提供了简要的应对方法来帮助团队迎接未来的挑战。哪 10 项是团队领导经常会犯的错误，而这些错误会直接扼杀掉团队的性能和积极性?</p>
<p><a href="/Upload/Images/2019/03/12/c-1716-1112141pp661.jpg"><img width="1000" height="451" class="aligncenter size-full wp-image-625" alt="1716-1112141PP661" src="/Upload/Images/2019/03/12/c-1716-1112141pp661.jpg" /></a></p>
<h2>1. 团队成员付出与所得不平衡，未获得应有价值</h2>
<p>显然，驱动高效团队的动力不仅仅只是体现在薪水奖金收入方面，但长期处于付出大于回报的负面情绪中，对于团队效率会有很大的影响。根据商业连线在 2013 年公布的调查报告显示 26% 的高忠诚度员工在面临每年 5% 的加薪时候往往会选择离开。合理公平的薪酬待遇不仅关系到你的成员，更直接影响你，此时你更应该做的是降低营业成本，而不是榨取成员的应得报酬，有竞争性的薪酬待遇能够让团队成员感到愉悦，而这正是本文开头第一句话所要传达的意思。</p>
<p><strong>应对方法：</strong>此时作为领导应该制定合理且能够让成员信服的奖励机制，借鉴成功团队经验并结合团队自身实际情况，细化奖励内容。在确保和谐融洽氛围的基础前提下强调合理可 控的竞争，让成员知道「付出必然有回报」，充分调动员工的积极性，甚至这种公平的方案可能会对很多人事问题提供有用帮助。</p>
<h2>2. 不提供培养高效的枯燥单一环境</h2>
<p>开放性办公最早可以追溯到 20 世纪 50 年代，最初的构想来自德国，最大的优点就是便于员工之间的交流和沟通，能够及时的分享创意和想法。自此之后开放性办公受到了各行各业的青睐，固然这是对办公环境的伟大构想，但其中牺牲了员工宣扬自我，将其桎梏在狭窄的空间内。最近多项问卷调查表示传统的开放性办公布局会分散员工的注意力，降低效率，并阻止 创新思考和达到愉悦的心情，62% 的受采访者都表示对目前工作的开放式办公环境感到不满意。</p>
<p><strong>应对方法：</strong>作为团队领导可以根据资金预算适当的对开放性办公环境进行重新规划部署，在此过程中可以听取团队成员的意见和建议，共同来打造舒适的办公环境。</p>
<h2>3. 不提供学习机会</h2>
<p>Google 的「20% 时间」政策，代表了谷歌开放、自由的企业文化。允许所有工程师将 20% 的工作时间用于自己感兴趣的项目，其中不乏 Gmail 和 Google Now 这样的核心服务。尽管团队做不到谷歌这样的水平，但团队必须保持对自由的态度，也许团队发展的最重要因素就是为每位成员提供机会实现自我增长，而这种个体的增长必然会带动团队向前高速前进。尤其当你身处快节奏频率中，一旦你所率领的团队失去学习的动力，必然会被其他团队赶超。</p>
<p><strong>应对方法：</strong>给与团队成员尽可能的自由空间，定期或不时举办具有启发性或前瞻性的教育培训课程，这对团队在应对复杂压力方面有着非常显著的功效。</p>
<h2>4. 不让团队成员有发言权利</h2>
<p>如果团队成员感觉他们所提出的意见和建议并不被赏识或认同，下次就不会发出声音。每个人都希望自己的想法能够获得认同和支持，对于领导来说希望自己的想法能够得到所有成员的支持，这就意味着高效的执行效率，至少员工不会对你的决定产生抗拒；对于成员来说自然同样，总是期待能够得到上级的赏识，这种心理在职场普遍存在，不要让你的话语伤害了这微弱的火苗。</p>
<p><strong>应对方法：</strong>能够让你的团队理解和贯彻你的想法，其中最有效的方式就是尽可能的同成员之间进行接触，清楚和了解并听取成员给出的意见和建议，甚至在很多时候将这些想法和建议转换成实际行动。</p>
<h2>5. 不关心团队成员是否开心</h2>
<p>非常不幸的是消极情绪往往要比积极信号传递散播的更快。根据调查在团队中只需要有 24% 的负面情绪，就能迅速对整个团队成员造成影响，尤其是在开放性办公环境下散播速度将会更快。</p>
<p><strong>应对方法：</strong>借 助 Weekdone 此类的团队管理应用迅速掌握团队幸福指数，任务完成率，逾期项目计数或问题，并能针对团队个体的心情、所遇到问题进行针对性的调整。将这些因素作为团队的 重要指标进行考量，想象将其当作团队的脉搏或者血压，当你在填写周报的时候，你会看到「本周你有多快乐?」这样的问题，并根据愉悦程度选择 1 到 5 星范围。</p>
<h2>6. 不培养开放的团队文化</h2>
<p>人天生具备害怕恐惧的心理，团队亦然。事实上，真正扼杀你团队效率输出并非恐惧情绪，而是害怕失败。对失败的恐惧越大，人的天性就会暴露的更加明显，会自然而然的将自己留在安全舒适的位置上，也必然意味着离成功越来越远。</p>
<p><strong>应对方法：</strong>首先在团队中坦然承认和接受错误的氛围，对于成员的错误采取包容和理解的态度，并帮助其分析导致错误的原因，避免下次再犯。鼓励开放的沟通文化，要做到其中这一点就是使用一项伟大的管理技术&ndash;PPP（进度、计划和问题），定期围绕着这三个主题召开会议，检讨遇到的问题。</p>
<h2>7. 没有树立明确的目标</h2>
<p>如果将团队比喻成努力尝试到达彼岸的船，那么机遇对于团队来说就像是灯塔为其照亮前进的方向，而团队成员无疑是水手，朝着共同的目标努力前进。但是如果目标经常更换，就仿佛让船一会往东一会往西，团队成员很容易不能集中注意力，积极性受到打击。</p>
<p><strong>应对方法:</strong>在 这里需要使用到目标和关键结果（Objectives and Key Results，简称 OKR）技术，目前已经被大量机构所使用，帮助团队树立和沟通目标和结果。该项技术的主要目的实在公司、团队、私人目标之间搭建沟通的桥梁，对结果进行合 理测量，并凝聚团队力量朝着正确的方向前进。</p>
<h2>8. 没有提供足够的自由</h2>
<p>没有人喜欢事事亲力亲为的老板。在针对诸多办公环境不文明情况的调查中有 38% 的职工表示宁愿坐在吃零食很大声的人身边也不愿意坐在老板边上工作。事实上工作指导和微监督管理之间的界线并非十分明确，作为团队领导，一旦过度很容易让 员工产生反感，产生工作无时无刻不被监督管理的错觉。</p>
<p><strong>应对方法：</strong>要修复这个问题，使用多种方式和工具同员工之间建立信任，并确保你不会干扰到成员工作的所有时间。作为领导，要很好的拿捏这些时间，使用 Weekdone 就能很好的做到。</p>
<h2>9. 没有为团队会议准备充分</h2>
<p>毋庸置疑团队会议是非常重要的，但是每周浪费 3.8 个小时在毫无效率的会议上显然并不可取，如果你没有充足的进行前期准备，那么必然会被准备失败。</p>
<p><strong>应对方法：</strong>在召集团队成员进行会议的时候，你必须要告诫自己这是高效团队的会议。你必须在前期制定完善的资料，或者对于未来的部署和安排已经了然于胸。</p>
<h2>10. 浪费团队时间</h2>
<p>如果团队成员感觉并没有浪费时间，团队必然处于高速运转状态，97% 的受调查者都表示每天都会在工作时间收到非必须的邮件。此时不仅你自己感到非常繁忙，你的团队同样会产生这样的感觉。</p>
<p><strong>应对方法：</strong>首先你必须明确团队的工作方向和目标。在开启新的项目之前，向团队成员发送的邮件必须资料详实，工作明确，如果有不明确的必须提前做好沟通。</p>
<!--content_text-->', CAST(0x0000A406018AF434 AS DateTime), N'和谐融洽愉悦无疑是确保团队高效能输出的基石，更是成功团队必不可少的基因血脉。所以，一旦团队成员之间出现隔阂或矛盾，必然会成为团队的不稳定因素，并迅速恶化对团队整体性能和生产效率产生严重影响，作为团队领导必须时刻对这种信号保持敏锐的警觉，否则必将迎来惨痛教训。', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (8, 202, 1, 0, 0, 0, 0, 1, 0, 1, 0, N'admin', 0, 0, 0, N'周鸿祎：创始人团队不要一开始就平分股份', N'/Upload/Images/2019/03/12/t_c-20121024094237365.png', N'<p>在前一讲的&ldquo;老周开讲&rdquo;里，我讲了创始人最好是&ldquo;双雄会&rdquo;或者&ldquo;三个火枪手&rdquo;，那意思是一个好的创始人团队最好是两到三个人的组合。刚发表不久，一个叫做@都市羚羊 的朋友评论说：&ldquo;双雄会也不能是&lsquo;平分秋色&rsquo;，最好一强一弱；三剑客最好是&lsquo;一个好汉两个帮&rsquo;，不能是三足鼎立。创业需要担当和决断，太平衡容易失去战斗力。&rdquo;</p>
<p><a href="/Upload/Images/2019/03/12/c-20121024094237365.png"><img width="1000" height="657" alt="20121024094237365" src="/Upload/Images/2019/03/12/c-20121024094237365.png" class="aligncenter size-full wp-image-628" /></a></p>
<p>这位朋友说得非常对，这也是今天&ldquo;老周开讲&rdquo;要谈的内容。一个好的创始人团队最好是两到三人，但他们在分工上应该要有一个错位，而且必须要有一个人来充当整个创始人团队的leader。</p>
<blockquote>
<p>创始人团队的这个Leader是主导公司发展方向的人，是最终决策者。如果决策失误了，那他也是最大的承担责任的人。这个Leader如同率领以色列人走出古埃及前往上帝应许之地的摩西。乔布斯就是摩西一样的领导者。他回归苹果后，带领苹果走出低谷，走向今天的辉煌。这个Leader可能并不挂着CEO或者董事长的头衔，但无论他的职位是什么，他是这个企业无可争议的领导者，是整个公司的灵魂。</p>
<p>创始人团队中一定要有一个人来承担一把手的压力。这个压力和第二号人物承担的压力，是非常不一样的。既然有人承担这个责任，领导这个企业，也得到大家的认可，那么肯定要说清楚，明确他是公司的&ldquo;leader&rdquo;。</p>
</blockquote>
<p>我认为这个领导者确认得越快越好，越早越好。在确认了领导者之后，在股份的划分上，对这个&ldquo;leader&rdquo;要有一个侧重，他的股份要比别人多一些。</p>
<p>硅谷很多公司都是这样。苹果最早是两个创始人，沃兹尼亚克和乔布斯。沃兹尼亚克是一个技术大牛，但乔布斯说我就是比你能干，我的股权就要比你多。从我们中国人的角度来看，我们会觉得乔布斯是欺负沃兹尼亚克这个老实人。还有，当年一起做微软的是比尔&middot;盖茨和保罗&middot;艾伦。比尔&middot;盖茨告诉保罗&middot;艾伦：&ldquo;我在这个企业做的贡献，一定比你大。所以我的股份是你的两倍。&rdquo;保罗&middot;艾伦也同意了。事实证明，最后苹果和微软能做大，真正靠的是乔布斯和比尔&middot;盖茨。</p>
<p>按照我们中国人的性格特点，每个人都在乎利益，但是大家又羞于言利。虽然不好意思说，但脑子里会想，于是心理就会越来越不平衡了。所以，从公司创始开始，&ldquo;丑话&rdquo;应该说在前面。在中国，我见过很多创始团队，大家都不好意思说出来，但每个人心里都想。如果是五个好兄弟的话，股份就平分，每个人20%。看起来好像很公平，但因为每个人的能力不同，其实并不公平。这种平分股份的方法从一开始就种下了分歧的种子。有能力的人会想：我比他们都能干，但为什么股份和大家一样？没能力的人可能会想：我可以混日子，吃这份股权。如果处理不好，这种矛盾会爆发出来，会导致公司崩盘。</p>
<p>所以，给&ldquo;leader&rdquo;相对多的股份，刚开始的时候可能会被别人误以为&ldquo;自私，不仗义&rdquo;，但从长远来看，对公司是有极大好处的。</p>
<p>但话说回来了，人不是一成不变的。早期合格的Leader，到了以后可能就不合格了，可能就跟不上形势拖了公司的后腿了。大家不要把初创时期的状态，看作是企业最终的状态。有的企业发展到后来，如果leader起不到领导的作用，人心思变，那怎么办？有两种方法，第一种是由董事会来决定。第二可以让VC来做参谋。</p>
<p>最后再强调一遍：第一，创始人团队，千万不要从一开始就把股份平分了。第二，要达成共识，公司得留出一部分股份给未来，分给以后加入的骨干人员，这样给企业留出一个未来的发展空间。</p>
<!--content_text-->', CAST(0x0000A406018AFFEC AS DateTime), N'在前一讲的“老周开讲”里，我讲了创始人最好是“双雄会”或者“三个火枪手”，那意思是一个好的创始人团队最好是两到三个人的组合', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (9, 202, 1, 0, 0, 0, 0, 1, 0, 1, 0, N'admin', 0, 0, 0, N'马云:员工的离职原因', N'/Upload/Images/2019/03/12/t_c-sf.jpg', N'<p>马云说：员工的离职原因林林总总，只有两点最真实：</p>
<blockquote>
<p>1．钱，没给到位；</p>
<p>2．心，委屈了。</p>
<p>这些归根到底就一条：干得不爽。</p>
</blockquote>
<p>员工临走还费尽心思找靠谱的理由，就是为给你留面子，不想说穿你的管理有多烂、他对你已失望透顶。 仔细想想，真是人性本善。作为管理者，定要乐于反省。</p>
<p><a href="/Upload/Images/2019/03/12/c-sf.jpg"><img width="1000" height="610" alt="SF" src="/Upload/Images/2019/03/12/c-sf.jpg" class="aligncenter size-full wp-image-419" /></a></p>
<p>带团队，你得问自己，人为什么要跟着你混？</p>
<h2>带团队做好这8条</h2>
<p>（1）授人以鱼：给员工养家糊口的钱。</p>
<p>（2）授人以渔：教会员工做事情的方法和思路；</p>
<p>（3）授人以欲：激发员工上进的欲望，让员工树立自己的目标；</p>
<p>（4）授人以娱：把快乐带到工作中，让员工获得幸福 ；</p>
<p>（5）授人以愚：告诉团队做事情扎实、稳重，大智若愚，不可走捷径和投机取巧。</p>
<p>（6）授人以遇：给予创造团队成长，学习，发展的机遇，成就人生。</p>
<p>（7）授人以誉：帮助团队成员获得精神层面的赞誉，为成为更有价值的人而战，光宗耀祖</p>
<p>（8）授人以宇：上升到灵魂层次，顿悟宇宙运行智慧，乐享不惑人生 。</p>
<blockquote>
<p>一流管理者：自己不干，下属快乐的干；</p>
<p>二流管理者：自己不干，下属拼命的干；</p>
<p>三流管理者：自己不干，下属主动的干；</p>
<p>四流管理者：自己干，下属跟着干；</p>
<p>五流管理者：自己干，下属没事干；</p>
<p>末流管理者：自己干，下属对着干。</p>
</blockquote>
<h2>九段管理者修炼</h2>
<p>一段：以身作则，堪为榜样。</p>
<p>二段：帮助下属，无私奉献。</p>
<p>三段：教化下属，为人师表。</p>
<p>四段：建立规则，打造团队。</p>
<p>五段：高效激励，领导思维。</p>
<p>六段：全面统筹，科学管理。</p>
<p>七段：运筹帷幄，决胜千里。</p>
<p>八段：机制励人，文化凝人。</p>
<p>九段：组织制胜，天长地久。</p>
<h2>怎么样留住人才？</h2>
<p>必须给员工4个机会：做事的机会，赚钱的机会，成长的机会，发展的机会！</p>
<p>必须经营员工4个感觉：目标感，安全感，归属感，成就感！</p>
<h2>什么是培养人才？</h2>
<p>敢于给员工做事的机会，也能给员工犯错的机会，这才是培养人才！</p>
<p>1、什么是人才？做得了事，吃得了亏，负得了责就是人才！</p>
<p>2、什么是领导？指引得了方向，给得了方法，凝聚得了人心就是领导！</p>
<p>3、什么是使命？活下来是为了事业，能把命都使上去就是使命！</p>
<!--content_text-->', CAST(0x0000A406018B0BA4 AS DateTime), N'马云说：员工的离职原因林林总总，只有两点最真实：1．钱，没给到位；2．心，委屈了。这些归根到底就一条：干得不爽。', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (10, 202, 1, 0, 0, 0, 0, 1, 0, 0, 0, N'admin', 0, 0, 0, N'汽车之家李想：我是懒人，我这么做管理', N'', N'<p>我叫李想，平常喜欢在微博上扮演初级业余段子手和小愤青，生活中喜欢和几个固定的朋友聊聊车，吹吹牛逼，从来不谈任何工作和业务。这样难免会让别人把我想成一个不学无术，走了狗屎运的家伙。狗屎运是肯定的，不学无术真是过奖了，自认为挺爱学习的，什么热门就一头钻进去，通过大量收集信息和拜访创业团队，把热门的东西研究个明白，还经常悟出点方法论用在汽车之家和自己投资的创业团队上，小有收获。</p>
<p>作为一个创业者，我对自己准确的定位是：一个走了狗屎运的懒人。</p>
<p>最近看到很多新创业者，自我营销水平都相当了不起，产品还八字没一撇的时候，就已经像大师一样给所有人传授经验了，我确实没这本事。既然没这本事，也不能倚老卖老，咱就像个朋友聊天一样，和你讲讲汽车之家这些年我是怎么想的，又是怎么做的。后面的内容有60%是做之前就这么想的，有40%是歪打正着马后炮总结出来的。</p>
<h2>一、赢的理念，赢的团队</h2>
<p>我最在乎的就是输赢（所以肯定认真），这是我创办汽车之家最根本的理念。</p>
<p>作为一个创业者，我的使命就是带着团队去赢（而不是刷存在感和情怀），没有什么比这个更重要。赢，要赢的客观，绝不能自欺欺人，什么我文章写得好就是赢，这是我上高中做个人网站时候的SB想法，没有最多的人看，我写的再好也是自欺欺人，自娱自乐。大到收入要赢，利润要赢，用户量要赢，效率要赢，小到一篇文章、一个论坛要赢，从上至下，从下至上，建立一个赢的理念。团队里的每个人都是赢的心态，就不用天天谈心了，因为每个人都会用赢来激励自己，不需要哄，自我驱动是必然的。</p>
<p>建立团队也是一样的，我们不需要一个梦幻团队，我们需要一个可以赢的团队，谁能帮我们赢，我就去找谁。</p>
<p>我自己擅长用户和内容的经营，所以我的第一个合伙人樊铮就是做技术的，CEO秦致是做管理的，财务副总裁李铁是普华永道的，销售副总裁韩松是经营广告公司的，所以从2005年到2007年，再加上我带起来的做用户和内容的团队，毕安带领的HR团队，一个不错的团队就这样建立了起来。我找到的这些核心管理团队所擅长的，都是我完全不擅长的，甚至不会的，他们就是来独当一面的。其实，早在2007年，汽车之家就已经有了一支在汽车网站领域数一数二的充分互补的团队，只不过这个团队的能力变成结果，还需要很长时间的考验。</p>
<h2>二、企业价值观的建立</h2>
<p>汽车之家的企业文化是在2007年建立的，也就是上述那个不错的团队建立起来后所建立的。赶上了汽车行业的高速发展，汽车之家发展速度远超过我们自己的想象，高速发展的同时，每个人也都充满了危机感。秦致当时拉着大家读两本书：《从优秀到卓越》和《基业长青》。我们就按照那里面的方式去打造企业文化。</p>
<p>说简单点，就是我们能够快速的发展到今天（2007年），到底是因为什么？把外在原因减掉，内在原因就是我们的价值观。这个价值观从2007年一直坚持到了今天。</p>
<p>原则：把消费者的利益放在第一位。选择：做成正确的事情而不是容易的事情。行动：先做好60分，再去做100分。这三条都是大白话。</p>
<p>我还记得当时的一个片段，有同事把一个原因写在了黑板上：可以和喜欢的人一起共事。我的观点是：不需要喜欢，只要和我共事的人不讨厌即可。秦致的观点是：只要他能力强，我可以和我不喜欢的人一起共事。这一条就没出现在价值观里面。</p>
<h2>三、谁决策，谁负责</h2>
<p>谁决策谁负责，这是我作为一个懒人认为的最好的管理模式。</p>
<p>比如掌管整个媒体业务的韩路，每年的第四季度，我和韩路（还有韩路直接管理的总监们）需要针对未来一年的重要方向和目标达成一个共识（并以任何人都能听懂和理解的方式表达出来，从而大幅减少沟通的成本），然后大到年度的财务预算、人员预算，小到一个帖子、一篇文章，他和团队都拥有100%的决策权和责任。至于我自己，我也成功的保留了两个权力：建议权（大多数都被团队无情的驳回）和否决权（一年只能行使三次）。</p>
<p>我轻易不使用否决权，使用的时候他们也不郁闷，因为这是提前说好的（所以，很多客户朋友就别再找我了，不是我不给您面子，而是我真没这权力）。</p>
<p>谁决策谁负责，结果是难以想象的好。韩路自己会加价买车，但是他和团队做业务预算的时候，花的每一笔钱都研究的非常细，比花自己的钱省多了。所以无论是费用的预算，还是人员的预算，以及设备的预算，我说的最多的是，这些钱够吗？需要不需要再加点？得到的答案往往是：我们深思熟虑过了，够了！&mdash;&mdash;说良心话，和这样一群人公（共，原文如此）事，真他妈的幸运。</p>
<p>至于业绩，年年超目标，团队的努力程度和执行力已经到了让同行恶心的地步。这个恶心，我认为绝对是褒义词。</p>
<h2>四、做减法，选方向</h2>
<p>除了触及原则和道德的问题，我很少给团队找事。因为我是一个懒人，所以我做的最多的并不是给团队做加法，而是和团队一起做减法。正因为团队非常努力，所以他们希望在每一个领域，每一个环节去赢，所以经常会压给自己很多事情，单独看每个事情都很有价值，但是精力有限，实际执行下去往往事与愿为，越努力，越背道而驰。这时候，懒人李就出现了。</p>
<p>我有三种角度看团队：一是团队内，二是团队外，三是用户。我会带着团队梳理所有在做的事情（或者是方法），先让他们以团队内的角度把自己在做的事情列出来，再带着他们以团队外和用户的角度来把这些事情按照优先级排列，最后留下小于等于三个最重要的事情。</p>
<blockquote>
<p>选方向也是类似的方法，问自己几个问题：</p>
<p>1、这个市场和需求大不大？</p>
<p>2、到底是不是刚需？</p>
<p>3、到底是不是刚需？</p>
<p>4、到底是不是刚需？</p>
<p>5、我们能不能做到第一？</p>
<p>如果五个问题的答案都是YES，那就立即行动。</p>
</blockquote>
<p>团队越来越多的人掌握了做减法的能力（做加法傻子都会）和选方向（选择比努力更重要）的能力，至于改变后的结果，讨论的就不再是目标有没有达成了，而是每个月都说：我这个月的目标又定低了。至于方向性的问题，无论是车主口碑、车主价格、论坛PC技术全员转移动等，这样成绩非常NB的方向性选择，都是团队成员自己做出来的。</p>
<h2>五、好好学习，天天访问</h2>
<p>由于团队给力，我这个懒人每天就只给自己安排很少的事情，我还是砍会议的高手，可有可无的例会一律砍掉。这样，我自己就有了大量的时间，到底干点什么呢？</p>
<p>我确实不爱上学，不过，我是一个信息控。</p>
<p>每天，我如果没有四五个小时用于浏览和阅读，就会非常不自在。我浏览和阅读的范围比较广，国内外的汽车、科技、互联网、创业、财经、房地产、娱乐八卦、游戏机、社会新闻、人物事件等，我基本上都会看。</p>
<p>如果发现非常有价值的信息，我就会深入的钻研下去。比如过去半年，我对三个领域都非常感兴趣：电动车、互联网金融、O2O。我除了使用这类产品，大量收集各类报道的信息以外，我还会和这些创业者沟通交流，今年（2014年）第三季度见过的三类创业团队不下30个，沟通频次不下60次，学到无数的新东西，真是站在巨人的肩膀上呀。所以，你问我不同类型的P2P贷款公司的坏账率，铅酸电池和三元锂电池最近的成本，我都能准确告诉你。不是因为这么做多NB，而是我真的很喜欢，因为我是信息控。</p>
<p>每过一段时间，时机成熟的时候，我就会把这类的信息总结成我的理解，以简单易懂的方式和团队进行沟通，让团队在努力工作的同时，还能与外界的大趋势同步，也方便对自己的业务进行优化，甚至是革命。</p>
<p>我还有一个爱好，就是访问汽车之家，在公司用PC访问，在外面用手机App和M访问，在厕所和床上用iPad访问，看文章、看视频、看图片、查价格、泡论坛，看媳妇当车模&hellip;&hellip;</p>
<p>以上，就是我在汽车之家管理和工作的主线。写这个就是为了吹吹牛逼，做做个人营销，让你了解一下李想一直在干什么。</p>
<p>看着有趣即可，不值得学习。</p>
<!--content_text-->', CAST(0x0000A406018B1888 AS DateTime), N'我叫李想，平常喜欢在微博上扮演初级业余段子手和小愤青，生活中喜欢和几个固定的朋友聊聊车，吹吹牛逼，从来不谈任何工作和业务。这样难免会让别人把我想成一个不学无术，走了狗屎运的家伙。', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (11, 202, 1, 0, 0, 0, 0, 1, 0, 0, 0, N'admin', 0, 0, 0, N'处理企业危机的六大法则', N'', N'<p>危机处理是一项并不简单的工作，稍不留神，就有可能陷入泥坑之中。在和危机的&ldquo;斗争&rdquo;过程之中，管理者的全部注意力都集中在此，所以难免会出现顾此失彼的状态。一旦顾此失彼，新的问题就会层出不穷，毕竟顾得了这头，那头就顾不了了。而且危机处理是一项艰巨的任务，管理者的意志和体力都面临这巨大的考验。掌握了如此多资源和权力的管理者尚且如此，那些普通员工的状况可想而知。他们不仅仅对于企业是否能够度过危机十分担心，也在考虑对自己的影响究竟有多大，自己应该怎么做。危机处理很容易将组织拖入无序的状态，因为所有的人都要停下手头的工作，尽快齐心协力将危机消除，不得有丝毫的懈怠，那么平时的正常工作时间肯定要受到挤占，工作的效率和质量也会降低不少。因此管理者要避免陷入泥坑之中，贻误危机处理，给组织带来更大的损失。</p>
<p>掌握一定的法则，让管理者跳出危机处理的坑。</p>
<p>现代管理学派经过大量案的例进行分析，基本确立了六大危机处理原则，具有纲领性指导意义的，对于危机处理之中容易暴露的问题，进行了十分有效的规避。管理者如果能够掌握好这六个原则，一定能在危机处理之中游刃有余。</p>
<h2>第一：要有坚定的立场，坚持的态度</h2>
<p>在危机来临之际，管理者应该综合自身情况以及公司的状况，做多角度多层次的客观考量。管理者一定要和企业处在统一战线，才有能力对抗危机，一旦管理者的立场和企业发生了冲突，就会导致新的问题出现。危机处理是一项新的挑战，不能够坚持下去，别的都是妄谈，管理者具有表率作用，这种态度也将影响其他人。管理者能坚持，其他人不一定能坚持，但是管理者不能坚持，其他人一定不能坚持。</p>
<h2>第二：当机立断</h2>
<p>危机处理过程之中，组织必然是一派乱象。不仅是正常的运转秩序被打破，还有可能引发一轮轮小冲突。危机让人人自危，每个人就都会为自己考虑更多，也就会出现资源的争夺，权力的追逐，对于已经处于危机中的组织是不小的影响。这时，管理者虽然无暇顾及组织这些小情况，但是不意味着放任不管，应当及时将这些问题迅速处理，古语有云，&ldquo;攘外必先安内&rdquo;，小组织稳定有助于管理者处理整个公司的大事务。</p>
<h2>第三：控制信息</h2>
<p>控制信息有两方面，对正面信息和负面信息的控制。正面信息可以向员工透露，但是不宜过多。过多的正面信息，容易让危机交困当中的组织成员过于乐观，影响了对危机的准确认识，使得危机处理能力大打折扣。而负面信息则要选择性地透露，一部分负面信息必须透露，因为员工也具有一定的知情权，对于危机处理的及时情况也要有所了解，但是有的负面信息一定不能透露，否则容易造成企业内部动荡，人心涣散，因为一条信息而葬送了整个公司的努力。</p>
<h2>第四：做本职工作</h2>
<p>的确，在危机处理的大潮之中，每个人都会寻求让自己利益受损最小的方法。然而，一个管理者，在这紧急的局势之下，不能够有丝毫的分心，去顾全自己的利益，更不应当做有悖于公司理念的事情。对于企业来说，这个时候，忠诚将是最宝贵的，这也是此时判断一个管理者好与坏的最高标准。管理者必须做好自己的本职工作，与企业共进退。</p>
<h2>第五：理解利益顺序</h2>
<p>企业之中，有企业的利益，有部门的利益，还有个人的利益，哪种利益的更重要，管理者心中一定要有个概念。为危机处理过程之中，时常要舍弃一部分利益来保全另一部分利益，舍弃哪一部分，就全依赖于利益的顺序了。有句很有名的话是&ldquo;祖国利益，高于一切&rdquo;。在公司内部，企业利益，高于一切，而企业利益当中，企业的核心价值又高于其他。究其根本，危机处理也是为了保护公司核心价值不受侵犯，一旦核心价值受到了威胁，那么依附于此的其他价值也就无从谈起，失去了根基。</p>
<h2>第六：做好备案</h2>
<p>危机处理这么艰难，当然可能继续失败。失败已经是最坏的打算了。对此，管理者一定要有足够的准备。首先做好心理准备，如果危机还在不断恶化，自己一定要扛住，毕竟管理者是很多员工的&ldquo;主心骨&rdquo;，管理者率先倒下，那么后面的就都是&ldquo;散兵游勇&rdquo;了。其次则是做好公司的准备。危机继续恶化，公司可能就要采取进一步的措施，比如裁员、减薪等，同时也要为应对损失做好一定的资源储备。注意，管理者在为公司做准备的时候，考虑角度应该从公司出发，很多管理者自身不愿意裁员，但是从公司的大角度来看，裁员是最好的止损方法。</p>
<!--content_text-->', CAST(0x0000A406018B2314 AS DateTime), N'危机处理是一项并不简单的工作，稍不留神，就有可能陷入泥坑之中。在和危机的“斗争”过程之中，管理者的全部注意力都集中在此，所以难免会出现顾此失彼的状态。', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (12, 202, 1, 0, 0, 0, 0, 1, 0, 1, 0, N'admin', 0, 0, 0, N'电商的6种差异化创新思想', N'/Upload/Images/2019/03/12/t_c-fr3.jpg', N'<p>我们常常看到很多企业把自己品牌的成功总结成一个关键词，令追随者趋之若骛。铆足了劲往上靠的时候，却未必能靠上谱。实际上任何一个品牌乃至单品的成功，都是多方面因素的集合，有因力，有外力，始稷在上一篇已经反复的絮叨了这个问题。值得注意的是：各方面因素的集合，而各种因素不可能均衡。任何企业，任何品牌、任何产品都有短板，譬如对于苹果来讲，iTunes就是短板。</p>
<p><a href="/Upload/Images/2019/03/12/c-fr3.jpg"><img width="900" height="549" alt="fr" src="/Upload/Images/2019/03/12/c-fr3.jpg" class="aligncenter size-full wp-image-369" /></a></p>
<p>有些短板是无法弥补的，有些短板是没有必要弥补的，所以，把有限的人力、物力、财力、智力用在找补短板上，不如用在增强长项上。补短板的思维是受木桶定律这种譬喻式的心灵鸡汤的影响，其譬喻本身就存在过大的漏洞，由竖条木板做的桶要多么平整的边缘才能不漏水？这种鸡汤式的定律认真就不好玩儿了。</p>
<blockquote>
<p>在信息化的商业时代，一个成熟的产品市场，你有再丰厚的资源也难以避免同质化的竞争。在同质化的产品中做出选择，最重要的是差异，消费者或是用户首先看到的是产品的差异。如何打造差异化，是在构想阶段就需要考虑的问题。</p>
</blockquote>
<p>差异有很多维度，但大多数人的思维都是二维，只有角度没有维度。始稷本文以卖水果为譬喻，絮叨6个常见维度的差异化创新。</p>
<h2>第一个差异化维度：你卖大苹果，我卖红苹果</h2>
<p>苹果是最普通的东西，同样是卖苹果，任何产品首先的都是视觉感知上的差异。</p>
<p>大小就是视觉感知，同样品种的苹果，通常是越大的越贵，因为大众的逻辑就是贪大，认为大苹果肉多核少。而有人以&ldquo;大&rdquo;为优势卖苹果的时候，一股脑的会出现一批&ldquo;更大&rdquo;的苹果，这就是&ldquo;羊群效应&rdquo;。当&ldquo;大苹果&rdquo;已经成为普遍诉求的时候，大就不是差异了。消费者就会在&ldquo;大&rdquo;的基础上比便宜。</p>
<p>当别人都卖&ldquo;大苹果&rdquo;的时候，我卖&ldquo;红苹果&rdquo;，就是差异了。由大小诉求切换了一个维度转为颜色诉求。</p>
<p>随意切换一个维度就成吗？当然不是。大小与颜色都是视觉上的诉求，是两个相邻的维度，转化起来不难。如果两个维度相差太多，就很难引导消费者认可你的差异。譬如别人都在KTV里唱流行歌曲，你来一首民歌就是差异，但你要是上去演个小品就不搭调了。</p>
<p>在我们还习惯从报摊上买报获取信息的时候，报纸几乎都是同样颜色纸用不同的开本而已，也就是&ldquo;大报&rdquo;和&ldquo;小报&rdquo;，直到有一种叫&ldquo;经济观察报&rdquo;的粉红色报纸出现，大报小报不再是差异，颜色才是差异。你能在3秒内从众多的报纸中一眼看到&ldquo;经济观察报&rdquo;。现在看来，这是一个再简单不过的差异化创意手段，但是在当时却做了&ldquo;领头羊&rdquo;，引导了报纸&ldquo;羊群效应&rdquo;的发生。随后粉红的报纸越来越多，但是&ldquo;经济观察报&rdquo;所宣扬的&ldquo;理性 建设性&rdquo;内容标准已经被牢记。</p>
<p>这个维度的差异化创新，不是特指大小和颜色，而是视觉感知下的不同层面。</p>
<h2>第二个差异化维度：你卖红苹果，我卖甜苹果</h2>
<p>根据&ldquo;羊群效应&rdquo;，当红苹果好卖的时候，追随者就会开始卖绿苹果、黄苹果&hellip;&hellip;满世界都是各种颜色的苹果，当颜色称为普遍诉求，以后再有以颜色为诉求的，任何颜色都没有差异性可言了。</p>
<p>所以，当别人卖红苹果的时候，我卖甜苹果，就是差异。无论大苹果还是红苹果都只是视觉上的感知。而水果最终是要吃的，所以第一眼是视觉，但是最重要的是味觉。好吃、营养才是水果最重要的特征。而好吃显然更容易被接受，因为好吃有直接的体验，而营养是抽象的，需要长期的市场教育过程。</p>
<p>矿泉水、纯净水、矿物质水、蒸馏水等等瓶装饮用水的实质性差异，大众消费者其实并不关心，在同等的价格和渠道下，他们首先关心的是包装好不好看，然后是好不好喝。&ldquo;娃哈哈&rdquo;的死忠能喝出一点点甜味，而&ldquo;农夫山泉&rdquo;更是依靠&ldquo;有点甜&rdquo;的广告语和体验打开了市场，成为了饮用水品牌的翘楚。</p>
<p>视觉对于绝大多数品类，都只是一块打开消费者心扉的敲门砖，当使用频率增加产生黏性的时候，体验的感知就会弱化视觉的感知。这就好像每一个娶到女神的男人，时间久了就会放大性格上的劣势而渐渐忽略容颜上的优势。</p>
<p>这一个维度的差异化创新，当然也不是特指从视觉到味觉，而是从视觉到体验的创新。</p>
<h2>第三个差异化维度：你卖甜苹果，我卖栖霞苹果</h2>
<p>根据&ldquo;羊群效应&rdquo;，当甜苹果好卖的时候，追随者就会开始卖酸苹果、酸甜苹果&hellip;&hellip;市场上全都是各种酸的甜的苹果。当口感成为普遍诉求，市场只能容纳少数口感最突出的品牌，后来再若再以口感为诉求，无法形成差异。也就无法被注意到。</p>
<p>所以，当别人都卖甜苹果的时候，我卖栖霞苹果。以产地为背书来概括性的诉求又大又甜的过往维度卖点。</p>
<p>依旧以饮用水为例的话。打破饮用水价格低于饮料魔咒的5100西藏冰川水、昆仑山雪山矿泉水、大冰泉长白山天然矿泉水等等品牌统统从水源背书上下功夫，以得天独厚的资源，分别以铁路渠道、加多宝（原王老吉）经销渠道、恒大球队夺冠节点为优势，各自占领一个山头。抬高了饮用水的平均价格，让依云之类的进口瓶装饮用水削弱了竞争力。甚至忽略了口感上的细微差别。因为到了这个阶段，经历了这么多维度的转变，这个品类市场已经成熟了，越是成熟的品类，消费者就越趋向于规划化企业的品牌。背书的力量就越大。</p>
<p>这个维度的差异，就是从物理体验以精神体验的差异。</p>
<h2>第四个差异化维度：你卖栖霞苹果，我卖烟台梨</h2>
<p>根据&ldquo;羊群效应&rdquo;， 当甜苹果好卖的时候，追随者就会开始卖蓬莱苹果、牟平苹果&hellip;&hellip;市场上全都是各种带有产地标签的苹果。市场无法容纳更多的产地标签，即便你的产地气候、土壤等环境比栖霞还好，也需要时当长的时候来改变已经形成的&ldquo;栖霞&rdquo;最佳产地意识。有了三个被消费者认可的维度，在苹果上的创新就很难再有突破了，可以制造出各种概念，但再难被接受了。在这种情况下，再卖苹果就不容易了。</p>
<p>所以，你卖栖霞苹果，我卖烟台梨。同属核果类的水果，同是产地标签，但是种类不一样，这就是更高维度的差异。</p>
<p>当一个品类的主流消费者已经趋向于规模化的品牌背书，新产品就很难直接去竞争了。在同样的产品上创新的维度是无止境的，但是符合消费者诉求轴心的维度是有限的。不是所有具有明显差异化的创新都能被认可和接受，诸如方苹果、吉祥街图案苹果。</p>
<p>百度做为搜索引擎成为核心的入口，hao123、2345之类的网址导航与搜索的竞争就如同梨子和苹果的竞争。处于不同的品类但都是带流量的通道。</p>
<p>去烟渍的牙膏是一种功能差异化的牙膏产品，但是牙粉对于烟渍更为有效。这个维度的竞争，就是同样功能下的形态创新。如牙粉对牙膏，网址导航对搜索引擎。</p>
<p>这个维度的差异就是同样功能下的形态差异。</p>
<h2>第五个差异化维度：你卖烟台梨，我卖石榴汁</h2>
<p>根据&ldquo;羊群效应&rdquo;，当烟台梨和栖霞苹果一样好卖的时候，追随者就会开始卖平谷桃、新疆哈密瓜&hellip;&hellip;市场上全都是各种带有产地标签的苹果。当各种维度跨越很大的水果产地标签被占满，后来者再从鲜果上做差异化创意都很难。就会陷入降低价格提升服务的被动竞争。</p>
<p>所以，你卖烟台梨，我卖石榴汁。同样是水果，吃了苹果就吃不下去梨，而吃了鲜果还可以再喝果汁。</p>
<p>&ldquo;贴肚脐治痔疮&rdquo;就是这个维度的创新，从剂型上改变了传统内服、外用痔疮药的形态。作用机理完全不同，可以同时使用内服痔疮药，功能一致，但是可以避免二选一的直接竞争。即壁纸相对于油漆式的竞争，譬如电视对于投影仪，越来越多的企业用大尺寸电视替代投影仪，也有很多家庭开始把投影仪当电视用，商用显示器企业已经有所成就，以电视的名义做投影仪也开始了行动。</p>
<p>这个维度的差异，就是间接竞争下的形态差异。</p>
<h2>第六个差异化维度：我卖石榴汁，我卖葡萄酒</h2>
<p>根据&ldquo;羊群效应&rdquo;，当石榴汁好卖的时候，追随者就会开始卖橙汁、芒果汁&hellip;&hellip;市场上各种纯果汁都出现了。这个时候果汁再陷入新一轮的比产地、比口感、比营养、比纯度的周旋。</p>
<p>所以，你卖石榴汁，我卖葡萄酒。同样是水果酿造的饮品，站在消费者角度，两者的差价悬殊，没有在意成本，他们只在乎自己的体验。两者给人带来的是不同的饮用体验。</p>
<p>任何厂商都知道比屏幕大少、比参数强弱、比外壳材质已经比不出核心价值了，但是又没有更好的维度去打造差异化的创新，也不愿意去冒这个险。所以在手机积累下的品牌光环下，开始了智能手表的产品竞争。</p>
<p>Go Pro相对于单反、单电、数码相机就是这样的差异化，特斯拉相对于燃油汽车就是这样的差异。</p>
<p>这个维度的差异，就是回归到相似形态下的差异化创新。</p>
<p>《易经》里否极泰来、损极生益、井下革致，经历了多维差异创新之后，不妨反过来从头再寻找差异化创新的切入点。</p>
<p>而维度的跨越如何把控？当别人卖大苹果的时候，我卖甜苹果，这也是合理的跨越范围，只是从视觉一下子跨越到了味觉。但是别人卖大苹果的时候，我卖烟台梨，这个跨度就已经处在竞争边缘了，因为&ldquo;大&rdquo;和&ldquo;烟台&rdquo;不在同一维度，&ldquo;苹果&rdquo;与&ldquo;梨&rdquo;还不在同一维度。当别人卖大苹果的时候，我卖石榴汁或者葡萄酒，就完全不是一回事了，不在一个竞争序列当中。吃苹果不影响喝饮料或者是酒。</p>
<p>差异化的本质是避免消费者去与竞争对手比较，凌驾于品类通行的标准之上，以消费者需求为轴心，用自己的强势建立起一套选择标准。离开通行标准和消费需求，差异化就不成立。相对于苹果，最佳的差异化创新方案就是卖又大又红的栖霞苹果。</p>
<!--content_text-->', CAST(0x0000A406018B3A84 AS DateTime), N'我们常常看到很多企业把自己品牌的成功总结成一个关键词，令追随者趋之若骛。铆足了劲往上靠的时候，却未必能靠上谱。实际上任何一个品牌乃至单品的成功，都是多方面因素的集合，有因力，有外力，始稷在上一篇已经反复的絮叨了这个问题', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (13, 202, 1, 0, 0, 0, 0, 1, 0, 0, 0, N'admin', 0, 0, 0, N'电商运营的10条基本策略，你懂不懂！', N'', N'<h2>策略一：定位</h2>
<p>定位很重要。这就相当于在要先确定好你是什么?你的特色和优势是什么?你的主要竞争区域是什么?选择一个主打类目并进行相关辅助，选择好自己的定位，对于营销来讲，有时候会起到事半功倍的效果。</p>
<h2>策略二：积累</h2>
<p>电商营销或创业初期一般都比较困难，因此以低毛利产品和服务进行跑量营销来积累客户是有一定必要的。</p>
<h2>策略三：质量</h2>
<p>无论任何时候，好的质量才是品质的保证，更是一切营销工作成功的前提。因为人们的口碑传播是一种持续的动力，一旦质量出现问题，整个传播链都将散掉，此前的营销工作也可能面临着前功尽弃。</p>
<h2>策略四：评价</h2>
<p>电商营销，就不得不提高&ldquo;评价营销&rdquo;，因为人们往往更相信&ldquo;事实胜于雄辩&rdquo;。因此，经常晒单，给用户提供评价截图最好是评价专栏，正是增加营销转化率的制胜法宝。</p>
<h2>策略五：体验</h2>
<p>做好用户体验，这是新电商时代互联网思维的精髓，更是古往今来的商业主调。企业要进行换位思考，将用户体验做到位，以争取为用户提供更多的便利、价值和帮助，让目标用户信任、放心、满意才是硬道理。</p>
<h2>策略六：特色</h2>
<p>在同质化严重的今天，没有特色的事物更容易让人们忽视和遗忘。注意力时代，人们习惯了碎片化的生活，他们的时间和精力有限，如果你没有特色，没有创新，就不值得被关注。</p>
<h2>策略七：稳定</h2>
<p>创新很重要，但是稳定发展更重要，尤其是在企业一定发展阶段以后。乐人互联网认为，商业是持久的，一锤子买卖并不适用于一个想长久发展的企业，一刀切的生意更是无法维持企业的良性运营，因此维护好客户关系至关重要。</p>
<h2>策略八：准备</h2>
<p>谁也不知道下一步是什么，多一个准备总没有错的。切勿把所有鸡蛋都放在同一个篮子里。开展多项主流社交媒体及平台营销，可以在全方位进行企业宣传的同时，还能降低营销风险。</p>
<h2>策略九：资源</h2>
<p>没有资源就没有助力。因此，寻求好的货源、媒体源、内容源等资源，对于企业发展来说至关重要。</p>
<h2>策略十：心态</h2>
<p>一个良好的心态，对于电商营销来说也是一个极为关键的致胜因素。急功近利、好高骛远、投机取巧等心态只会造成营销不足或营销过度，只有采取正当手段踏踏实实提高自我价值、服务好客户才是重要的。</p>
<!--content_text-->', CAST(0x0000A406018B463C AS DateTime), N'策略一：定位很重要。这就相当于在要先确定好你是什么?你的特色和优势是什么?你的主要竞争区域是什么?选择一个主打类目并进行相关辅助，选择好自己的定位，对于营销来讲，有时候会起到事半功倍的效果。', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (14, 202, 1, 0, 0, 0, 0, 1, 0, 1, 0, N'admin', 0, 0, 0, N'电子商务运营核心(思想理念)', N'/Upload/Images/2019/03/12/t_c-fewwe.jpg', N'<p>当然，如果你真的想在电商上获得独挡一面的能力，你还是要先去学习内功心法。再强的招式都需要内功心法来推动。光练招式小心走火入魔精尽人亡，这很不好，很不科学。</p>
<p>09年我进电商这一圈的时候，运营还是很基础的工作，今天上个架，明天优化一下关键词。这不是说现在运营不做基础工作了，事实上我希望现在你做运营，偶尔还是要上手做一下这些工作，优化一下关键词，甚至抽点时间到一线当客服去，挺好。这是运营最基础的能力，没有这个，不要来谈接下来的事情。</p>
<p><a href="/Upload/Images/2019/03/12/c-fewwe.jpg"><img width="1000" height="610" class="aligncenter size-full wp-image-486" alt="fewwe" src="/Upload/Images/2019/03/12/c-fewwe.jpg" /></a></p>
<p>很多人说你做品牌运营这么久，你主要做什么?我说我谈不上，有时候我一整天不做任何事情，绝大多数时间，我在东看西看，在想事情。</p>
<h2>运营的第一个核心在于竞争分析</h2>
<p>一个运营如果不善于思考，喜欢折腾，会做对比。你就不是一个好运营。想想看你已经有多长时间没有从店铺的后台操作中抽身出来，想想市场的东西了。不要以为一家小店就没有市场分析可做。11年年底的时候我遇到一个在淘宝卖李维斯正品的朋友，生意很惨淡，一个月仅3万块养活自己渡日。我们帮他做了一个市场分析，我说，你要知道在淘宝上买李维斯的人图的是什么，不可避免的是便宜，但是这是相对于线下。在你线上市场份额还没有达到一定规模的时候，你不要去考虑区域外增量。你要思考的是相对于线上其它竞争对手，你要怎么做。08年我看过一次期《头脑风暴》，芳草集CEO吕长城说得很有启发：你现在做网店，不要去考虑你比线下便宜的问题，因为大家都便宜。你要考虑除了便宜之外，消费者还在乎什么。</p>
<p>对于一个在淘宝上买李维斯的人，他在乎什么?除了便宜，当然就是正品。正品就是你的根，你努力的方向。做为运营，你要围绕这个根来构建你的购物体验，你要把这个体验做得比你的竞争对手好。你的技巧有了目的性，才会形成合力，照着这样去做。12年年底的时候，他告诉我现在一个月销售额50W，养了一个小团队，打算明年再把销售额翻一翻。</p>
<h2>运营的第二个核心在于产品的商品化</h2>
<p>这个概念有点拗口，我劝你还是努力吞下。梁冬有一次谈到说小时候背古诗词的意义在哪里，我觉得很有意义：无论这个东西你理不理解，先吞下去，在脑海里留个印象，化为潜意识，哪一天你实操的时候遇到这个东西，你就能拿出来，举一反三。</p>
<p>很多运营有一个很糟的习惯，一个东西运作不好，就把问题归结为产品问题，这是错误的思想，会让你举步不前。绝大多数的产品都有它存在的价值，一点价值都没有的产品和完美的产品一样稀少。去年7月份的时候，我们分析一款卖得很差的产品，这个产品从功能上有七到八个功能，我说太多，你们分析分析，有哪几个功能是比较明显的，一分析下来，有三个功能比较明显，我说还是太多，你们对比对比，哪个功能现在市面上最需要但是又没有其它产品占领这个概念。最后，我们选中了其中一款功能，深入挖掘，1个半月的时间打造成月销两万的爆款。一定要找到你的产品在市场上的立足点，不用太多，一个就够了。</p>
<p>一个杯子做为产品有什么功能，你肯定能想到很多，它可以装水，可以保温，可以砸人。你要怎么卖?你可以卖成装饰品。现在很多人都在把杯子卖成装饰品，你还可以继续往其它方向挖掘。把产品变成商品，把物理特征变成功能好处，然后卖出去。顾客要的不是直径5毫米的冲击钻，而是直径5毫米的钻孔，这是很有用的话，不要以为经常听到，就不在乎，把这句话印在脑袋里，时刻去想。市场的竞争是理念的竞争，不是产品。</p>
<h2>运营的第三个核心是体验构建</h2>
<p>这个东西包含得很广泛，但是有脉络，把你和消费者的每个接触点都串联起来，分析整个链条，你做得够好吗?能给消费者留下深刻的印象吗?一个月前，我在一家小店买一条牛仔裤，和旺旺主聊了两个小时，感觉很好，后来又在那家店买了一件大衣和一条围巾。不要以为小店就没有什么购物体验可以做。有一份数据，C2C的买家平均的浏览页面数量为10，B2C这个数据是一半不到，这是一个问题，很多消费者很在乎细节，购成他们购买的因素远比你想的要多得多。10年我在一家店里面买一个手机壳，客服从聊天中知道我买来送人，所以在包裹里面附送了一张贺卡，我觉得很贴心，挺好。</p>
<p>运营的主要工作是思考，每天至少要有三分之一的时间抽出来思考这三个方面的问题，再有三分之一的时间思考怎么解决这三个方面的问题。最后三分之一的时间检查这三个问题的解决方案执行，如果还有时间，你可以上派代发发贴。</p>
<p>很多人都说自己现在运营像打杂，或者无头苍蝇，很对。我看过很多派友群在聊天，都在谈这个问题。今天产品销不出去，不是在思考产品的市场竞争情况和产品的商品化过程是否错误，而是在想，我怎么通过聚划算，通过淘金币销点出去，这是本末倒置。为什么你像无头苍蝇，什么是头?那三个核心是头，没有那三个头，你往哪飞都是瞎折腾，赌运气。</p>
<!--content_text-->', CAST(0x0000A406018B51F4 AS DateTime), N'如果你真的想在电商上获得独挡一面的能力，你还是要先去学习内功心法。再强的招式都需要内功心法来推动。光练招式小心走火入魔精尽人亡，这很不好，很不科学。', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (15, 202, 1, 0, 0, 0, 0, 1, 0, 0, 0, N'admin', 0, 0, 0, N'马云？几位坏老板的执行力理念？', N'', N'<p>更有点评称，历史往往是由&ldquo;坏人&rdquo;创造的，比如：半个&ldquo;流氓&rdquo;出身的刘邦、从小调皮捣蛋的曹操、逼父造反的李世民、没皮没脸的朱元璋等，因为只有&ldquo;坏人&rdquo;才敢起来造反和变革。创造好公司或许也是如此，因为&ldquo;坏老板&rdquo;有更坚强的神经，更与众不同的思维模式，敢于打破常规的圈囿，突破习惯的桎梏和传统的束缚。商业竞争毕竟是一场&ldquo;打硬球&rdquo;的游戏，狭路相逢&ldquo;坏&rdquo;者胜，归根结底是&ldquo;坏人&rdquo;(硬汉)和&ldquo;坏人&rdquo;(硬汉)之间的竞争。</p>
<p>以下盘点那些成功的&ldquo;坏老板&rdquo;，并分析如何做好一个&ldquo;坏老板&rdquo;。</p>
<h2>一、史玉柱：&ldquo;只问功劳，不问苦劳&rdquo;</h2>
<p>为何&ldquo;坏老板&rdquo;团队执行力远远胜过&ldquo;好老板&rdquo;？</p>
<p>中国有句老话叫&ldquo;没有功劳，也有苦劳&rdquo;。一般情况下，若是什么事情没有做好，当事人多半会给自己找这样一个&ldquo;冠冕堂皇&rdquo;的理由，人们多半也是会用这句话来安慰当事人。</p>
<p>但是，在史玉柱的脑海里，却不是这样的。史玉柱奉行的是：在公司只认功劳，不认苦劳。这句话也是巨人企业文化中的第一条。</p>
<p>这听起来有些无情，不过，史玉柱是这么做的。史玉柱说，在巨人第一线的销售人员做不好连300元的底薪也难保，如果做好了就可以拿到高得惊人的销售提成。</p>
<p>史玉柱还制定出十分特别的激励政策：对于完成销售任务最好的前5位，史玉柱给予金光灿灿的奖杯以示表扬，而对于末尾的5个市场开拓团队，则交以黑色锦旗一面，上书烫金的&ldquo;倒数第X名&rdquo;字样，令人无地自容。史玉柱的激将法果然奏效，得到&ldquo;倒数第X名&rdquo;黑旗的团队，羞耻感更有助于发愤图强、迎头赶上。</p>
<p>在新书中，史玉柱提到其做产品、做营销都会做详尽、真是的消费者访谈，但是访谈会有作假。为了保证访谈报告的真实有效，史玉柱出台了访谈作假惩罚法。开全国大会时，拎出来作假的人让他在台上连讲一百遍，假如他叫张三，就讲100遍&ldquo;张三没有信誉，张三没有信誉&rdquo;。下次就不敢了。</p>
<p>这些做法听起来都有些&ldquo;变态&rdquo;，不过，史玉柱确实打造了一支在全中国竞争力都数一数二的营销队伍。</p>
<h2>二、马云：刚来公司不到一年的人，谁提战略谁离开!</h2>
<p>为何&ldquo;坏老板&rdquo;团队执行力远远胜过&ldquo;好老板&rdquo;？</p>
<p>2011年08月29日，阿里巴巴集团董事长马云发内部邮件，非常直接地批判了部分新员工的浮躁和态度。他警告来公司不到1年的人，千万不要给他写战略报告，谁提战略谁离开!</p>
<p>他直接了当地说：</p>
<p>1)我们永远不会承诺你发财，升官，在阿里我们一定承诺你会很倒霉，很郁闷，很委屈，很痛苦&hellip;&hellip;很沮丧&hellip;&hellip;</p>
<blockquote>
<p>2)刚来公司不到一年的人，千万别给我写战略报告，千万别瞎提阿里发展大计&hellip;&hellip;谁提，谁离开!但你成了三年阿里人后，你讲的话我一定洗耳恭听。我们喜欢小建议小完善&hellip;&hellip;我们感恩你的每一个小小的完善行动。</p>
</blockquote>
<p>3)公司不是请我们发展我们的,公司花钱请我们是来发展我们客户成长的。我们是通过发展客户来发展自己。</p>
<p>马云的基本意思是：花钱来是请你做事的，不是请你提想法的。说得非常直接，听起来也很刺耳。</p>
<p>这封给新员工的信，看起来无情，但确实是马云管理思想的体现。马云在不同场合反复强调执行力的作用。据称，马云与孙正义曾经探讨过一个问题：一流的点子加上三流的执行水平，与三流的点子加上一流的执行水平，哪一个更重要?结果两人得出一致答案：三流的点子加一流的执行水平。马云就曾将阿里巴巴称之为&ldquo;一支执行队伍而非想法队伍&rdquo;。</p>
<h2>三、&ldquo;毒舌&rdquo;任正非：你最近进步很大，从很差进步到了比较差</h2>
<p>为何&ldquo;坏老板&rdquo;团队执行力远远胜过&ldquo;好老板&rdquo;？</p>
<p>任正非这位老板有多&ldquo;坏&rdquo;，从下面几句话便知：</p>
<p>1)&ldquo;进了华为就是进了坟墓。&rdquo;</p>
<p>&mdash;&mdash;任正非对刚进华为的新员工说。</p>
<p>2)&ldquo;华为没有院士，只有院土。要想成为院士，就不要来华为。小改进，大奖劢：大建议，只鼓励。&rdquo;</p>
<p>&mdash;&mdash;任正菲批评部分研发人不顾市场，只顾埋头钻研时</p>
<p>3)&ldquo;你最近进步很大，从很差进步到了比较差。&rdquo;</p>
<p>&mdash;&mdash;任正菲评价某财务总监的&ldquo;进步&rdquo;。</p>
<p>4)&ldquo;此人如果有精神病，建议送医院治疗：如果没病，建议辞退。&rdquo;</p>
<p>&mdash;&mdash;任正菲批评一位刚进华为就给自己写&ldquo;万言书的&rdquo;北大学生</p>
<p>5)5年之内不允许你们进行幼稚创新，顾问们说什么，用什么方法，即使认为不合理，也不允许你们动。5年以后，把系统用好了，我可以授权你们进行局部的改动。至于结构性改动，那是10年之后的事。</p>
<p>&mdash;&mdash;任正非对华为干部说</p>
<p>从任正非的这些犀利语录中可以体会到华为的企业文化：持续的危机感、打死仗的劲头、对制度的始终如一。不过，正是这样的企业文化，锻炼出了一只让业内羡慕的&rdquo;狼性&ldquo;队伍。</p>
<h2>四、张瑞敏：通过当&ldquo;恶人&rdquo;改造人</h2>
<p>为何&ldquo;坏老板&rdquo;团队执行力远远胜过&ldquo;好老板&rdquo;？</p>
<p>以&ldquo;砸冰箱&rdquo;和&ldquo;不允许员工随地大小便&rdquo;管理起家、被誉为中国企业现代企业管理教父的海尔张瑞敏说过&ldquo;伟人首先是恶人&rdquo;。如今广为流传的关于海尔的管理经验往往是由一个个&ldquo;恶人&rdquo;管理的小故事串联成的。</p>
<p>胡泳说：&ldquo;每个人在开完会以后必须把自己坐的椅子推回到原位。&rdquo;</p>
<p>谢艾琳说：&ldquo;某某某下班以后椅子没归位，要进行罚款多少多少。&rdquo;</p>
<blockquote>
<p>张瑞敏如此做的原因是要&ldquo;改造人&rdquo;。他提出了&ldquo;日事日毕，日清日高的管理理念。&rdquo;它的内涵是要求每一个工人和管理者学会管理自己的时间和目标。海尔的研究者们称之为&ldquo;OEC管理法&rdquo;，意为全方位地对每天、每人、每事进行清理控制。</p>
</blockquote>
<p>通过当&ldquo;恶人&rdquo;，张瑞敏完成了对海尔人的改造。</p>
<p>事实上，企业家里的坏老板还有很多，据称微软的比尔&middot;盖茨和鲍尔默对着完不成任务的员工骂粗话、对着不能迅速领会他们意图的员工讽刺挖苦是常有的事;戴尔电脑的迈克&middot;戴尔更是IT业的著名&ldquo;恶人&rdquo;，拉里&middot;埃里森甚至在企业员工的T桖衫上直接印上&ldquo;杀死对手&rdquo;的挑战性宣言。</p>
<!--content_text-->', CAST(0x0000A406018B5DAC AS DateTime), N'历史往往是由“坏人”创造的，比如：半个“流氓”出身的刘邦、从小调皮捣蛋的曹操、逼父造反的李世民、没皮没脸的朱元璋等，因为只有“坏人”才敢起来造反和变革。创造好公司或许也是如此，因为“坏老板”有更坚强的神经，更与众不同的思维模式，敢于打破常规的圈囿，突破习惯的桎梏和传统的束缚', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (16, 202, 1, 0, 0, 0, 0, 1, 0, 1, 0, N'admin', 0, 0, 0, N'管理心理学：如何运用期望理论调动员工积极性', N'/Upload/Images/2019/03/12/t_c-gvw.jpg', N'<p>期望是一种心理活动。当人们有了需要并看到可以满足的目标时，就会受需要的驱使，在心中产生一种欲望。期望本身就是一种激励力量。期望的概念就是指一个人根据以往的能力和经验，在一定的时间里希望达到目标或满足需要的一种心理活动。</p>
<p><a href="/Upload/Images/2019/03/12/c-gvw.jpg"><img width="1000" height="610" class="aligncenter size-full wp-image-489" alt="gvw" src="/Upload/Images/2019/03/12/c-gvw.jpg" /></a></p>
<p>期望理论认为，人的积极性既与目标价值密切相关，也与实现目标的可能性密切相关。一般地讲，人需要有六个条件才能产生被激励的行为：1.努力工作导致良好的绩效；2.好的绩效导致报酬；3.报酬满足一项重要需要；4.满足需要的强度足够使人认为努力是值得的；5.主观上认为获得成功的可能性很高，足以获得报酬；6.如果获得报酬的可能性很低，那么报酬应很高。这一理论详细分析了影响动机强弱的具体条件。实现目标对满足需要的可能性大小，影响着动机的强弱；实现目标对满足需要的意义、价值的大小，也影响动机的强弱。弗鲁姆提出一个公式，即：</p>
<h2>激发的力量=期望值&times;效价</h2>
<p>期望值个人对目标实现可能性大小的估计、判断效价个人对实现目标重视程度，以及目标实现对个人意义的大小。该理论还指出，效价受个人价值取向、主观态度、优势需要及个性特征的影响。有人认为有价格的事物，另外的人可能认为全无价格。如1000元奖金对生活困难者可能很有价值，而对百万富翁来说意义不大。从公式可以看出，期望值与效价越大，激发的动机越强烈，激发的力量也越大。期望值与效价其中一个小，激发的力量也相应减弱；一者为零，激发力量也为零。例如：完成某项任务可得到一大笔奖金，当不存在完成任务的可能性时，奖金再多，人也不会去积极争取。另外，做一件事对个人与社会都没有意义，即无效价，这种事情，再容易，人也不会去做。对于目标的期望值怎样才算适合？有人把它形容为摘苹果。只有跳起来能摘到苹果时，人才最用力去摘。倘若跳起来也摘不到，人就不跳了。如果坐着能摘到，无需去跳，便不会使人努力去做。由此可见，领导者给员工制订工作定额时，要让员工经过努力就能完成，再努力就能超额，这才有利于调动员工的积极性。定额太高使员工失去完成的信心，他就不努力去做；太低，唾手可得，员工也不会努力去做。因为期望概率太高、太容易的工作会影响员工的成就感，失去目标的内在价值。所以领导者制订工作、生产定额，以及使员工获得奖励的可能性都有个适度问题，只有适度才能保持员工恰当的期望值。</p>
<blockquote>
<p>另外，期望值不仅受个人主客观条件的影响，不同的事件也影响期望概率的大小。有些特殊事件，如升职、加薪等与个人利益直接相关联的事情，就容易使人产生较高的期望值。因为受工资、奖励总额与比例的限制，人们的高期望值是不可能都实现的。对于未能实现者，就会期望越高，失望越大，挫折感也会越强烈。领导者应早做工作，使大家的期望值保持在适当水平上。适当降温，有利于使员工减轻挫折的打击，保护其身心健康。</p>
</blockquote>
<p>效价受人的价值取向、主导需要和个性特征等的影响，所以同一件事情对不同的人带来的效价会不同。就一般情况而言，任何人都存在着物质需要与精神需要。所以要想使奖励对人产生更大的效价，即产生更大的意义，最好是奖励既能满足人的物质需要，同时也能满足人的精神需要，把两者有机地结合起来，这样就会使奖励起到更大的激励作用。如有的工厂开展生产竞赛，优胜者可免费旅游。这种奖励形式，使员工不仅感到光荣，满足了荣誉需要，又为实现了旅游愿望，且节省一笔开支而高兴，从而对员工产生了较大的吸引力，这可能比只发给一笔奖金的效价要大得多。</p>
<p>宋朝时期，某位将军被派驻边地镇守。他到了边地之后发现守城的尽是些老弱残兵，虽然人人都会武艺，但全都是些花拳绣腿，根本无法打仗。用这样的军卒来防守，根本抵挡不了如狼似虎的金兵，怎么办？这位将军计上心头。他颁布了一条命令，就是用一块银子作靶，凡是射中者，银子便归他所有。自此后，边地军民争以习箭为任，箭术均有提高，个个精于箭术。不久，金兵入侵，边地军民同仇敌忾，把金兵打得抱头鼠窜，成功地守住了边城。</p>
<p>正是这位将军把军民期望得到银子的心理运用到训练中，便得军民人人习箭，最终达到了守城的目的。作为领导者，也可以将这种心理应用于激励下属的措施中，定会取得良好的效果。</p>
<!--content_text-->', CAST(0x0000A406018B6964 AS DateTime), N'期望是一种心理活动。当人们有了需要并看到可以满足的目标时，就会受需要的驱使，在心中产生一种欲望。期望本身就是一种激励力量。期望的概念就是指一个人根据以往的能力和经验，在一定的时间里希望达到目标或满足需要的一种心理活动。', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (17, 202, 1, 0, 0, 0, 0, 1, 0, 1, 0, N'admin', 0, 3, 0, N'组建核心团队，不要只考虑能力！', N'/Upload/Images/2019/03/12/t_c-20136921656749.jpg', N'<p>很多人都在讲要打造一个具备战斗力的团队，也有很多企业家说做企业最重要就是建团队。那到底我们建团队是建什么东西，我们需要团队有些什么东西，团队的战斗力是什么意思?</p>
<p><a href="/Upload/Images/2019/03/12/c-20136921656749.jpg"><img width="1000" height="522" class="aligncenter size-full wp-image-493" alt="20136921656749" src="/Upload/Images/2019/03/12/c-20136921656749.jpg" /></a></p>
<p>首先我们要知道一件事：企业的执行力不是靠一个人，企业的执行力是靠一个团队的协作。协作得越好，执行力越好，战斗力就越强，我们可以说团队的战斗力完全取决于这个团队的协作的能力有多强。</p>
<h2>要真正学会团队作战</h2>
<p>我举个例子，美国有一个很出名的海豹特工队，最近也有很多关于他们的报道。海豹特工队都是由六个人的小组组成的，跟我们的管理团队有点相似，都是六七个人左右，他们每个人除了要具备一些基本功之外，一个很重要的东西就是，在一个很成熟的六人小组里，他们大部分时间的培训是将这些组员放在完全不同的环境里面，比如沙漠里面，森林里面，都是他们没有遇见过的环境，把他们扔进去，给出很清晰的目标任务，在过程中不断去锻炼他们。那主要锻炼的是什么东西呢?当然，他们每个人的个人能力在每次锻炼里也在不断的成熟，但是我认为更重要一点就是锻炼他们6个人之间的默契、协作的能力。他们的协作能力就是用这种特别培训的方法，不断的培养，不断的提高。</p>
<p>好，我们将这个例子放在一旁，再来看看我们企业的管理团队。在一个企业里面，每一个层面的管理团队也需要有高度的默契，才能够互相协作去执行好一件事情。但是在我们的企业里面，我们做了哪些事情去准备，去培养这些团队呢?事实上，大部分的时间，我们所做的培训都是单独的能力培训。你去上沟通课，你去上什么技术课，我们很少很少将整个团队放在一起，让他们通过一个解决问题的流程来提高他们的协作的能力。</p>
<p>也是因为这个原因，我设计课程的时候，我要求整个管理团队都一起来上，我当时的出发点很简单，就是说因为要做一件事情，策略上的事，执行的事，计划的事，是需要团队一起来决策的，那么我就是要他们一起做这件事情，但从来没想过，在过程里面我观察到，原来很多很多的管理团队平时基本上没有合作过的，他们简直好像才刚刚认识一样。我当时看了就大吃一惊，后来才想到，实在这种做法，其中很一个重要的结果实在就是让这个团队有机会真正学会团队作战的模式，提高他们的默契，这也是这种培训方法希望到达的一个很重要效果。</p>
<h2>怎样组建核心团队?价值观比能力更重要</h2>
<p>那么，怎么组建一个核心团队?回答这个问题之前要退后几步，首先要问清楚我们到底要做什么，我们的企业到底是要做什么东西。之后，我们再来考虑需要些什么样的人才在一起才能够将这件事做好，然后再考虑最核心的人才应该是什么样的，怎样组建核心团队。</p>
<p>事实上，我所看到的大部分企业在考虑核心团队的时候，他们的考虑是相对短期的，什么意思呢，就是他们通常多从人员能力方面来考虑，很少有价值观上面的考虑。能力对我来讲是一个短期的东西，价值观才是长线的。所以有很多所谓的核心团队成立之后，经过一段时间，大家的能力都发挥得差不多了，在过程里不同的价值观开始浮现出来，发生很多矛盾，这就是今天很多核心团队存在的问题。这些问题往往会让一家很好的企业最后四分五裂，真是很可惜的事。</p>
<p>所以我建议在组建管理团队的时候，你同时需要有两方面的考虑：长线的和短线的。当然你要考虑能力，你需要这些人，否则你做不了这些事情，但另外一点，你必须同时要考虑团队成员的价值观，除非你这个企业基本上是准备6个月之后就拆开，如果你真是创业，准备将事业长久的做下去，这个核心团队将来会是你的核心管理者的话，那你必须要同时考虑他们的价值观跟你的价值观是否能达到一致，如果不能完全一致，那么是否能够互相妥协包容，在同一个价值观的框里面来一起工作，这个我认为比团队成员的能力更重要。因为很多时候我看见，只要这个人不是白痴，你如果给他机会，给他资源，他的能力往往都能够跟上去，问题通常是出在价值观上，这个东西很难改。管理团队开始扯皮，最后慢慢分开都是因为价值观的问题，而很少是因为能力的问题。所以我在这里建议，要组建一个真正的核心团队，我们需要同时考虑他的能力和他的价值观，这样的话，你这个核心团队就能够相对长时间的合作下去。</p>
<!--content_text-->', CAST(0x0000A406018B80D4 AS DateTime), N'很多人都在讲要打造一个具备战斗力的团队，也有很多企业家说做企业最重要就是建团队。那到底我们建团队是建什么东西，我们需要团队有些什么东西，团队的战斗力是什么意思?', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (18, 202, 1, 0, 0, 0, 0, 1, 0, 1, 0, N'admin', 0, 22, 0, N'识别好公司还是烂公司的三张图', N'/upload/Images/2019/03/12/1746227870.jpg', N'<p><a href="/Upload/Images/2019/03/12/c-51.png"><img alt="5" src="/Upload/Images/2019/03/12/c-51.png" class="aligncenter size-full wp-image-328" width="592" height="1464"/></a></p><p><a href="/Upload/Images/2019/03/12/c-61.png"><img alt="6" src="/Upload/Images/2019/03/12/c-61.png" class="aligncenter size-full wp-image-329" width="593" height="1152"/></a></p><p><a href="/Upload/Images/2019/03/12/c-71.png"><img alt="7" src="/Upload/Images/2019/03/12/c-71.png" class="aligncenter size-full wp-image-330" width="587" height="1933"/></a></p><p>一家好公司的20条铁规</p><p><strong>第1条铁规：公司利益高于一切</strong></p><p>公司是全体员工的生存平台，个人利益不能亦不得与之发生冲突。一旦祸起萧墙，轻则申斥处罚，重则革职走人。砸了老板或大伙儿的饭碗，谁也别想有好日子过。</p><p><strong>第2条铁规：团队至高无上</strong></p><p>团队是各部门的生命线，在团队力量支撑产业实体的市场经济时代，除非你是来自异域的月球空心人。</p><p><strong>第3条铁规：用老板的标准要求自己</strong></p><p>个人薪水、抽成、奖金的分配虽然与工作业绩相关，但它们最终是在老板所获取的企业利益的源头基础上实现。所以为谋求自身利益的兑现和扩大，就有必要以老板的标准来要求自己。在团队中，你的主管、你的客户，都是你的老板，你的工作态度必须要超越他们，否则你将永远是他们的指责对象。</p><p><strong>第4条铁规：把事情做在前面</strong></p><p>什么算是敬业的标准？只有一个标准，这就是你所做的事情是在别人之前，还是之后。</p><p>如果是老板想到的事情，让你去做的，你做完了，但这算不上是在前面，前面还有老板。如果老板还没想到的事情，你做完了，很棒！</p><p>同样地，比较对象还有主管、同事，看看自己的努力是在前面还是后面。面对一大摊子管理及后勤机关人员，让人挑刺是很委屈很难受的，但要知道，做在前面就可以去挑别人的刺，如果你想改变局面的话。</p><p><strong>第5条铁规：响应是个人价值的最佳体现</strong></p><p>个人价值的体现建立在团队对你的需要程度上！所以，每当上司发出倡议或团队中有人寻求工作支援的时候，在第一时间做出积极响应就是必须的事情，因为这关系到你的价值体现。</p><p><strong>第6条铁规：沿着原则方向前进</strong></p><p>对于原则方向只能接受它，不能抗拒它。如果你打算坚持下来并期望有所作为。</p><p>那么，如何才能做好事情？很简单，沿着公司明文规定的原则方向前进，不要偏离，不要为人所左右，包括你的主管的某些指令在内。</p><p><strong>第7条铁规：先有专业精神，后有人才</strong></p><p>各个部门中有各种各样的人，但其中总有些人的存在是可有可无的，因为他们没有专业精神，他们无法被人所倚重，他们只是部门中的一些省略号，注定将要在只寻求结果的模式和程序中消失。</p><p>因为专业精神，就是服务本身，服务既是指为客户服务，又是指为自己周围的同事服务。</p><p><strong>第8条铁规：规范就是权威，规范是一种精神</strong></p><p>有的人做事永远不能规范，因为他们从来没有把它视为是必须的，所以他们永远受到打压，成绩总是被人否定。</p><p>规范是一种精神，一种可贵的习惯，这是它不容易养成的原因。但是，没有规范，就没有权威，规范意味着你不但懂得做人和做事，而且懂得如何做好它们。</p><p><strong>第9条铁规：主动就是效率，主动、主动、再主动</strong></p><p>主动的人是最聪明的人，是团队中最好的伙伴，是人人都想要有的朋友。永远要记住，主动精神是你最好的老师。在困难的时候能够帮助我们的，是主动而不是运气。</p><p><strong>第10条铁规：任何人都可成为老师</strong></p><p>因为担心犯错误或是为了寻找心理上的安全感，人们希望有个人能依靠，能给予指点，这是对的，问题是有人总是错将领导当成唯一的老师。姑且不说身为领导的老师往往不喜欢笨小孩这一惨痛的教训，事实上团队中任何人都可成为你的老师，只要你虚心求教，而不是为了达成曲线救国的其它目的。因为你需要的只是知识，而不是老师。</p><p><strong>第11条铁规：做事三要素，计划、目标和时间</strong></p><p>永远要有计划，永远要知道目标，永远不要忘了看时间。</p><p><strong>第12条铁规：不要解释，要结果</strong></p><p>竞争社会中，许多时候，解释是没有意义的，这意味着你想推卸或要别人来承担责任。</p><p>如果你不希望看到最后的结果，那么首先要做的是尽可能去改变过程。永远记住：业绩会说话，成就会说话。</p><p><strong>第13条铁规：不要编造结果，要卷起袖子干活</strong></p><p>不要用可怕的结果吓唬自己或是吓唬别人，首先卷起袖子去干活。只有这样才知道结果是否真的很可怕，经验表明，95%以上的可怕猜测会因为卷起袖子干活而自然消失。</p><p><strong>第14条铁规：推诿无效</strong></p><p>在失败面前，在错误面前，每个人都知道最不好的做法就是推诿，而推诿在团队中是无效的。</p><p>团队好比一根链条，总是推诿的人犹如链条中的沙子，会让其他人感觉特别别扭，并且会让人加深对你所犯错误的印象。</p><p><strong>第15条铁规：简单、简单、再简单</strong></p><p>不要太夸张，不要虚张声势，更不要节外生枝。寻找捷径是提高工作效率的首要方法。同样的一件事情，如果你能完成得比别人更简单，就是好样的。</p><p><strong>第16条铁规：做足一百分是本分</strong></p><p>一百分是完美的表现，追求顾客满意，追求完美服务。不要以为这是高要求，如果你能实现一百分，不过是刚刚完成了任务而已。</p><p><strong>第17条铁规：做人要低调，做事要高调，不要颠倒过来</strong></p><p>低调做人，可以在你周围保持健康的空气，而高调做事，则可以赢得支持和声誉。</p><p><strong>第18条铁规：沟通能消除一切障碍</strong></p><p>沟通能力是从业人员的起码素质。不要怕沟通中的小麻烦，如果你不想面对更大的麻烦，就要沟通，就要协调周围的一切。顺畅不会从天而降，它是沟通的结果。</p><p><strong>第19条铁规：从业人员首先是架宣传机器</strong></p><p>作为企业流动的广告窗口，不论穿行于大街小巷还是深入到城镇乡村，你必须一路口水一路歌，不遗余力地做公司以及产品的吹鼓手，这是你最基本的工作任务。</p><p>当然，鼓动别人之前，先要鼓动自己！</p><p><strong>第20条铁规：永远保持进取，保持开放心态</strong></p><p>谦虚是拥有开放心态的表现。</p><p>在任何一个销售部门中，最赚便宜的是两种人，一种人勇于开拓进取，收获是自己的，失败是上司或老板的，更重要的是，这种人把自己的退路留给了老板或上司去照顾。另一种人是有开放心态的人，他们谦虚，他们可以有效接受别人的看法，所以他们的成功比别人快得多，自然收获也大。</p><!--content_text-->', CAST(0x0000AA0E0124F224 AS DateTime), N'在任何一个销售部门中，最赚便宜的是两种人，一种人勇于开拓进取，收获是自己的，失败是上司或老板的，更重要的是，这种人把自己的退路留给了老板或上司去照顾。另一种人是有开放心态的人，他们谦虚，他们可以有效接受别人的看法，所以他们的成功比别人快得多，自然收获也大', N'', N'')
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (19, 201, 1, 0, 0, 0, 0, 1, 0, 1, 0, N'admin', 0, 0, 0, N'牛人是如何借力成功的', N'/Upload/Images/2019/03/12/t_c-nhnbgfd.png', N'<p>中国有句古话，叫无师自通，是说一个人很聪明，不需别人教他，自己就搞明白某件事。还有一句话也是非常相关的，叫自学成才，我不知道你是怎么理解这句话，但我觉得这些话害人不浅，这让很多人就在自摸中痛苦的挣扎。浪费了无数个美好的夜晚。</p>
<p><a href="/Upload/Images/2019/03/12/c-nhnbgfd.png"><img width="1000" height="610" alt="nhnbgfd" src="/Upload/Images/2019/03/12/c-nhnbgfd.png" class="aligncenter size-full wp-image-768" /></a></p>
<p>不是人人都能自学成才，也不是人人都可以无师自通，这种人太少了，至少你我的身边还没有这样的成功人士出现。很多成功的人你去采访或了解下，你就明白，他花了多少时间在专研在学习，更重要的是，跟过很多牛X的人学习过。而你，目前还没有。</p>
<blockquote>
<p>香蕉咖啡&rdquo;韵&rdquo;补充一点：我是读计算机专业出来的一枚同学，到现在工作了五年．曾任职网易等大型网络公司，在这个过程中，个人总结认为，这个行业发展比较快，特别是在技术与互联网产物经济方面，这个年代如果单靠个人能力去摸索或者是&rdquo;&rdquo;个人认为&rdquo;&rdquo;这些观点去发展，只会累而最终什么都没有把握好，失去只会更多，特别是在时间上．学历比不上能力，能力比不上经历，经历更比不上态度．所以有时我们必须放下身子，多问，多了解．</p>
</blockquote>
<p>我今天要聊的是：</p>
<p>1&nbsp;．跟老师的好处</p>
<p>2&nbsp;．自摸的痛苦</p>
<p>3&nbsp;．找老师的方法</p>
<h2>一丶跟老师有什么好处呢？</h2>
<p><strong>1&nbsp;．现成的方法，马上见效</strong></p>
<p>找个实战高手当老师，一定进步神速，直接就可学会最实用已成功验证的方法，这些方法经过测试已经能产生效果，</p>
<p><strong>2&nbsp;．省时省力，这就是捷径</strong></p>
<p>老师把路都走通了，自己不用苦逼的天天花时间摸索，少则几年，多则上十年，把很多过程再走一遍。绝对省时省力，这就是捷径。青春不等人，早成功早受益，自摸最苦逼。</p>
<p><strong>3&nbsp;．轻松进入牛人圈子</strong></p>
<p>老师已成功或有一定成就，老师的圈子就是你的圈子，跟着老师可以轻松的进入各种成功牛人圈，天天跟着各种牛人学习交流，想不进步都很难。牛人圈有N多合作机会或发展可能性，只要敢于付出，回报一定超出你想像。</p>
<h2>二丶自摸的痛苦</h2>
<p>不管是互联网创业还是线下创业，很多人喜欢闭门造车，这个做法是不可取的，自以为是的人超多，觉得网上一搜什么免费教程方法都有，海量资讯，自己都看得懂学的会。实际是不系统的信息就是垃圾。</p>
<p>自己什么都学，什么都看，结果什么都不精，什么都不会。虽然表面上说什么你都听的懂，实际上让你干，你却干不好。</p>
<p><strong>1&nbsp;．选择不对，全都白费</strong></p>
<p>N多人创业时，都是什么火做什么，结果跟风倒。总是看到别人轻松做起来，动不动就有7天300万，1天3万3这种成功案例出现，自己有心无力。</p>
<p>什么情况，产品不对，方法不对，方向不对，全是浪费时间。折腾半年一年，没结果，放弃，重新开始。累不累？</p>
<p><strong>2&nbsp;．技术就是信息差</strong></p>
<p>网站方法是很多，可没有系统或从头到尾教你成功，都是杂乱零碎的信息，成功与不成功就是信息差，一个不懂方法瞎摸，一个懂方法，马上有感觉。</p>
<p>任何商业模式，都是信息差。比如，你不懂百度知道推广，总是发一个链接就被删一条，懂的人一天发几百条上万条没事。自己瞎研究，不如直接懂的人，交学费，当天学会，马上有结果。</p>
<p><strong>3&nbsp;．无人指点，时间成本高</strong></p>
<p>网站没流量，淘宝店没成交，微信加不到粉，很郁闷！天天在网上看文章，看别人是如何成功如何营销，结果是东一榔头西一斧，还是没找到好方法。揣着那点小钱，看着网上N多培训班，也不知道哪个更靠谱，犹豫来，犹豫去，还是不舍得投钱去学习，直到现在，还在门外苦苦感叹，成功真的好难呀！一年又一年，快要奔几了自己数。</p>
<h2>三丶找老师的方法</h2>
<p>找老师也是借力的过程，毕竟大部份人是没有背景没有实力没有人脉的屌丝，都想逆袭，那就一定要还会借力。比如：找一个实战有名的高手，跟他学习，这就是非常好的借力之道。</p>
<p>有人想，老师凭什么收我，很简单，先想办法和老师产生关系，进入老师的圈子，或和老师有合作的项目，去学习，去交流。只要老师开课，不管线上线下都参与，慢慢就有机会和面对面交流。</p>
<p>有了老师的指导，马上就可理清思路，找到方向学会方法，接下来就只需要去执行，一切就变得非常简单了。</p>
<p>关于实战高手，看你要学习哪方面的，百度一下，你懂的。</p>
<!--content_text-->', CAST(0x0000A407012350F4 AS DateTime), N'中国有句古话，叫无师自通，是说一个人很聪明，不需别人教他，自己就搞明白某件事。还有一句话也是非常相关的，叫自学成才，我不知道你是怎么理解这句话，但我觉得这些话害人不浅，这让很多人就在自摸中痛苦的挣扎。浪费了无数个美好的夜晚。', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (20, 201, 1, 0, 0, 0, 0, 1, 0, 0, 0, N'admin', 0, 2, 0, N'《浪潮之巅》给互联网从业者的启示', N'', N'<p>非常幸运地能够读到吴军的这本《浪潮之巅》，这是本关于美国IT和互联网发展史的巨作，也是无数IT从业者极力推荐的一本好书。</p>
<p>我本身也是一个科技迷，所以这类题材的书我是非常喜欢的。《浪潮之巅》再次点燃了我心中的科技和创业热情，即使我现在的能力离科技创业还那么的遥远。书中讲述了IT产业以及互联网从无到有的发展历程以及蕴含在其中的发展规律和商业规则，这些对于我们的工作和创业有非常大的帮助，也会让你的思维能力和商业视觉有一定层次的提高。比如，如果不读此书，或许你永远也不会知道微软windows操作系统每发布一个新的版本，会对整个IT产业有多么大的影响？</p>
<p>在这里，我将分享一些我读完此书后的感受和收获。</p>
<h2>1、一个人若无远见，注定只会昙花一现或者终生平庸。</h2>
<p>或许你早已经明白了眼光长远的重要性，但是在生活中你有没有真正这样去思考过？太多的人看到的往往还是表面，或者眼前的利益。</p>
<p>今天我们能够记住微软、苹果、惠普、Google、思科这些巨头，是因为他们在这个市场中活到了最后。其实还有更多曾经的IT&ldquo;巨头&rdquo;，比如SUN公司、网景浏览器，完全有机会取代今天的微软，却因为商业上的长远战略问题，迅速的衰落了，慢慢的被我们遗忘。</p>
<p>一个企业尚且如此，那么我们个人呢？我们做的很多重要的决定，是否想到5年后甚至10年后会带来什么影响？比如我们应聘一家公司，首先考虑的是它的名气、待遇、福利、规模，当你某天收到腾讯的录用通知，你或许会兴奋得几天睡不着觉，而没有去想在这儿我能发展得怎样，我真正追求的是什么。事实上，大公司表面上确实很风光，却不适合每一个人，有的人充满着创业激情，更适合去小公司，虽然短期内工资会低一些，但在这种公司会得到很快的发展，几年后工资回报非常高，而待在大公司，大公司个人的能力比较次要，主要靠团队，压力比较小，几年后你的激情会慢慢被消磨，个人也不会有很大的提升。（当然大公司并不是就不能待或者学不到东西，大公司也有很多它的优势，这个看个人怎么去权衡）</p>
<blockquote>
<p>一个人看待任何事情，需要有长远的眼光，我们要思考是什么使我们长期活在这个市场上，是什么会让我们笑到最后。当你真正的做到了这点，你所受的一些委屈，所经历的一些挫折，你会看得非常淡，你的心胸会开阔很多，因为你明白你将是那个笑到最后的人。</p>
</blockquote>
<h2>2、谁活得最久，谁武功最高！</h2>
<p>这句话出自金庸武侠小说中的重要人物老顽童周伯通。看似很荒谬的话，却蕴藏着一个深刻的道理。成功往往是时间熬出来的，当你活到最后，所有的和你同一个水平的高手都死了，你就是天下第一的武林高手。真正的高手都是熬出来的！</p>
<p>《三国演义》中的司马懿就是这样一个典型的熬出来的领袖级人物，在曹操时代，司马懿一直被压制，基本没有发挥才能的余地，后来曹操死了，司马懿依然健康的活着，迎来了它的第二任主公曹丕，这时的司马懿已经初露锋芒，但还是被压制着，幸运的是，曹丕也是短命的人，司马懿再次证明了身体好的优势，迎来第三任主公曹睿，司马懿依然谨慎行事，终于熬到了曹睿也死了，甚至他最大的对手诸葛亮也死了，这时司马懿的才华已经无人匹敌，想不统一三国都难了。</p>
<p>历史上有太多这样的案例，可以证明&ldquo;熬&rdquo;字的价值了。比如中国的抗日战争，比如很多名人的成长经历。</p>
<p>在硅谷，我们看到很多像惠普、IBM这样历经大半个世纪后依然能在这个市场上活得很好的公司，这些公司经过了多次大起大落，但是熬到了最后，把大部分的竞争对手都熬死了，成为国际知名的大品牌。</p>
<p>这个道理在职场中显得最为重要。看看每个公司的那些高管，那些经常于各媒体发表惊人言论的各领域行家，他们都是从一个跟我们一样稚嫩的年纪慢慢熬出来的，除非那种老爸是李刚的个别奇葩或者个别天才可以一步登天，其他的人都是历程无数挫折，成长起来的。</p>
<h2>3、能想到别人想不到的东西，才能达到别人达不到的成就！</h2>
<p>书中讲到了这样一个真实的故事：</p>
<p>一百六十年前旧金山是淘金者的天下，一位叫李维&middot;施特劳斯的德国人（LeviStrauss）也从纽约跑到这里来淘金。来了以后他发现淘金的人已经过剩了，于是他捡起了他原来布料商和裁缝的老本行，用做帐篷的帆布为淘金者做结实的工作服，这就是现在世界上最有名的Levis牛仔裤。一百多年过去了，当年淘金者的踪迹已经找不到了，而Levis牛仔裤今天仍然风靡全球。</p>
<p>这个世界总会有这样一批不盲从于主流的开创者，比如有很多很多人开始投入开网店挣钱，就有一批人开始成立自己的淘宝代运营公司；有很多人开始迷恋起刷微博体验这种新鲜感的时候，就有人开始培养各种热门微博账号，从中大赚了一笔&hellip;当然这部分人肯定是极少数的那部分人。</p>
<blockquote>
<p>可能创业真的就需要这样的眼光，需要这种另辟蹊径的勇气。整个互联网的发展史都是这样一个又一个非常独到的创意推动的。今天我们可能会说，互联网发展已经饱含了，什么样的模式都有人去做了，互联网创业已经不太可能了，其实未必，一定还有很多很多能够挣钱的模式，只是你还没有想到，当然我也没有想到。</p>
</blockquote>
<h2>4、一个公司的基因常常决定它今后的命运，一个人的&ldquo;基因&rdquo;也决定了他的发展空间！</h2>
<p>这里的基因不是指遗传学上的基因，而是指一个企业能够适应某个市场的企业文化、做事方式、商业模式、市场定位等等，或者一个人的性格特征，思维方式，成长背景等等。</p>
<p>摩托罗拉这个无线通信的巨头，为什么在近几年的手机市场上会显得无所作为？这是摩托罗拉这个家族企业的基因所决定的。摩托罗拉是一个非常注重技术、品质的公司，他的产品在技术上非常前沿，品质非常高，客户的好评率非常高。</p>
<p>但是近几年的手机市场的需求，更加偏向于功能和时尚，人们更偏爱功能丰富、外表设计时尚的手机，摩托罗拉的基因决定了它不善于这方面的设计，也不愿意在这方面投入更多精力。</p>
<p>这个规律对于我们个人的成长也非常适应。一人人的&ldquo;基因&rdquo;-性格特征，思维方式，成长背景等等，对其以后的事业和生活态度有决定性的作用。这些基因随着年龄的增长，越来改变，这就是某些成年人明明看到了某些有潜力的创业机会却不愿意去做的原因。<br />
所以当我们年轻时，一定要注意培养自己的做事方式，比如事业心，如果年轻时就只愿意天天守在屏幕前，什么都不愿意想，不愿意去做，等到年长了想做某些事情时都会感到力不从心了。</p>
<p>亘古而常青的昨天永远是过去，也永远会再来。</p>
<!--content_text-->', CAST(0x0000A40701235CAC AS DateTime), N'我本身也是一个科技迷，所以这类题材的书我是非常喜欢的。《浪潮之巅》再次点燃了我心中的科技和创业热情，即使我现在的能力离科技创业还那么的遥远。书中讲述了IT产业以及互联网从无到有的发展历程以及蕴含在其中的发展规律和商业规则，这些对于我们的工作和创业有非常大的帮助，也会让你的思维能力和商业视觉有一定层次的提高', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (21, 201, 1, 0, 0, 0, 0, 1, 0, 0, 0, N'admin', 0, 4, 0, N'面试时绝对不能说的11句话', N'', N'<p>每一年，我们都会看到很多调查和投票，列出一些面试的出轨行为，显而易见，这些人尚未意识&ndash;面试中所回答的答案，是极为重要。这是你的面试!国际商业演讲者、《You Can&rsquo;t Be Serious! Putting Humor to Work》的作者 Michael Kerr 说。</p>
<p>人事经理用面试来衡量你是否适合这份工作，他依据你的创造力、随机应变的能力、你的 EQ，以及你的态度等，所以要记住，不是你说了什么才是最重要的，你说话语气和肢体语言，也会备受关注，成为另一指标。</p>
<p>而以下 11句，则是面试时绝对绝对不说的雷区!不过除了参考这些不能回答的句子之外，用心地准备面试，才是被录取的不二法门。</p>
<p><strong>我真的很紧张</strong></p>
<p>即使这是你前所未有的紧张，但也不要说出口，没有一家公司愿意聘用一个缺乏自信的员工，所以，在这种情形下，诚实不是好的策略；你需要假装，直到你做到！</p>
<p><strong>我们谈一下钱的部分</strong></p>
<p>从来没有在面试一开始就谈钱，对老板来说，你只在乎薪水，而没有更深层原因。他解释，越来越多雇主，喜欢寻找和他们价值观，以及使命、目标等一致或类似的。你要谈判，可以!应该等到最后、面试尾端时再提出。</p>
<p><strong>我的缺点是</strong></p>
<p>如果你被问到你最大弱点是什么?时，要避免回答这类答案，你不应该主动谈及自己的弱点，除非面试官问起。每个人都知道他们潜在的优势，你应该花多一点时间思考，你真正的缺点是什么，并承认它们。</p>
<p><strong>我真的很需要这份工作！</strong></p>
<p>不要表现出「绝望」。</p>
<p>绝对不提起，你目前情况下，真的很需要这份工作。雇主可能会认为，这是软弱的表现，他们想要的是那些寻求长期事业，而不仅仅是一份工作。</p>
<p><strong>我现在的老板太可怕了</strong></p>
<p>永远不要批评前任老板或公司，即使面试官故意问起离职原因等，也不要轻易回答！它会塑造你是位偏激、消极和小气的人。这也测试，你会说出什么诋毁的话。</p>
<p>另外，不禁让雇主联想，是否在未来他/她，就成为你口中的坏人、巫婆等。</p>
<p><strong>我需要 &hellip;&hellip;</strong></p>
<p>不要在谈话中一直提到「我需要 &hellip;&hellip;」，这是雇主在谈他们的需求，而你是否能帮到他们。</p>
<p><strong>请问我们什么时候结束？</strong></p>
<p>你不应该留下赶时间、兼差的印象，当 30 分钟的面试延长至 90 分钟，一切进行很顺利，但你却频频看手錶或时钟，一副还有别的重要事情，那么面试官最后肯定不会录用你。</p>
<p><strong>我喜欢贵公司福利津贴</strong></p>
<p>不要带着你有多爱公司的福利津贴，如每个星期三、五会提供免费零食。同样地，这会造成你更在乎这些好处，而不是工作上的贡献。</p>
<p><strong>无可奉告！</strong></p>
<p>除非面试官问你一个涉及个人隐私、非法或让你感到非常不舒服的问题，否则你应该回应他们的疑问。面试，不会一直是无可奉告，这会让你看起来是有所隐瞒或毫无准备。</p>
<p><strong>我在离婚 / 怀孕时，经歷非常艰难的时期</strong></p>
<p>Kerr 建议，不要提起任何私人问题，这可能被看作红灯的理由;它象徵你个人的挑战，雇主会联想，你个人的事情都处理不好了，是否会影响到工作表现。</p>
<p><strong>我没有问题要问</strong></p>
<p>当他们询问你是否有问题有问时，千万别说「NO」，这会显得你对面试毫无准备，或者更糟&ndash;对工作、公司不感兴趣。</p>
<!--content_text-->', CAST(0x0000A40701236864 AS DateTime), N'每一年，我们都会看到很多调查和投票，列出一些面试的出轨行为，显而易见，这些人尚未意识–面试中所回答的答案，是极为重要。这是你的面试!国际商业演讲者、《You Can’t Be Serious! Putting Humor to Work》的作者 Michael Kerr 说。', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (22, 201, 1, 0, 0, 0, 0, 1, 0, 0, 0, N'admin', 0, 6, 0, N'高情商的10个表现，你的情商达标吗？', N'', N'<p><strong><span style="color: #ff6600;">第一：</span></strong>不抱怨、不批评</p>
<p>高情商的人不批评、不指责别人,不抱怨、不埋怨。其实，抱怨和指责都是不良情绪，它们会传染。高情商的人只做有意义的事情，不做没意义的。</p>
<p><strong><span style="color: #ff6600;">第二：</span></strong>热情和激情</p>
<p>高情商的人对生活、工作和感情保持热情，有激情。调动自己的积极情绪，让好的情绪伴随每天。不让不良情绪影响生活和工作。</p>
<p><strong><span style="color: #ff6600;">第三：</span></strong>包容和宽容</p>
<p>高情商的人宽容，心胸宽广，心有多大，眼界有多大，你的舞台就有多大。高情商的人不斤斤计较，有一颗包容和宽容的心。</p>
<p><strong><span style="color: #ff6600;">第四：</span></strong>沟通与交流</p>
<p>高情商的人善于沟通，善于交流，且坦诚对待，真诚有礼貌。沟通与交流是一种技巧，需要学习，在实践中不断地总结摸索。</p>
<p><strong><span style="color: #ff6600;">第五：</span></strong>多赞美别人</p>
<p>高情商的人善于赞美别人，这种赞美是发自内心的真诚的。看到别人优点的人，才会进步得更快，总是挑拣别人缺点的人会固步自封反而退步。</p>
<p><strong><span style="color: #ff6600;">第六：</span></strong>保持好心情</p>
<p>高情商的人每天保持好的心情，每天早上起来，送给自己一个微笑，并且鼓励自己，告诉自己是最棒的，告诉自己是最好的，并且周围的朋友们都很喜欢自己。</p>
<p><strong><span style="color: #ff6600;">第七：</span></strong>聆听的好习惯</p>
<p>高情商的人善于聆听，聆听别人的说话，仔细听别人说什么，多听多看，而不是自己滔滔悬河。聆听是尊重他人的表现，聆听是更好沟通的前提，聆听是人与人之间最好的一种沟通。</p>
<p><strong><span style="color: #ff6600;">第八：</span></strong>有责任心</p>
<p>高情商的人敢做敢承担，不推卸责任，遇到问题，分析问题，解决问题。正视自己的优点或是不足，敢于担当的人。</p>
<p><strong><span style="color: #ff6600;">第九：</span></strong>每天进步一点点</p>
<p>高情商的人每天进步一点点，说到做到，从现在起开始行动。不是光说不做，行动力是成功的保证。每天进步一点点，朋友们也更加愿意帮助这样的人。</p>
<p><strong><span style="color: #ff6600;">第十：</span></strong>记住别人的名字</p>
<p>高情商的人善于记住别人的名字，用心去做，就能记住。记住了别人的名字，别人也会更加愿意亲近你，和你做朋友，你会有越来越多的朋友，有好的朋友圈子。</p>
<!--content_text-->', CAST(0x0000A4070123741C AS DateTime), N'高情商的人不批评、不指责别人,不抱怨、不埋怨。其实，抱怨和指责都是不良情绪，它们会传染。高情商的人只做有意义的事情，不做没意义的。', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (23, 201, 1, 0, 0, 0, 0, 1, 0, 1, 0, N'admin', 0, 3, 0, N'一位老板和员工的对话，震撼无数人', N'/Upload/Images/2019/03/12/t_c-feefwww.png', N'<p><a href="/Upload/Images/2019/03/12/c-feefwww.png"><img width="1000" height="610" alt="feefwww" src="/Upload/Images/2019/03/12/c-feefwww.png" class="aligncenter size-full wp-image-527" /></a></p>
<p>到公司工作快三年了，比我后来的同事陆续得到了升职的机会，我却原地不动，心里颇不是滋味。</p>
<p>终于有一天，冒着被解聘的危险，我找到老板理论。&ldquo;老板、我有过迟到、早退或乱章违纪的现象吗？&rdquo;我问。</p>
<p>老板干脆地回答&ldquo;没有&rdquo;</p>
<p>&ldquo;那是公司对我有偏见吗？&rdquo;</p>
<p>老板先是一怔，继而说&ldquo;当然没有。&rdquo;</p>
<p>那为什么比我资历浅的人都可以得到重用、而我却一直在微不足道的岗位上？&rdquo;</p>
<p>老板一时语塞，然后笑笑说：&ldquo;你的事咱们等会再说，我手头上有个急事，要不你先帮我处理一下？&rdquo;一家客户准备到公司来考察产品状况，老板叫我联系他们，问问何时过来。&ldquo;这真是个重要的任务。&rdquo;</p>
<p>临出门前，我不忘调侃一句。一刻钟后、我回到老板办公室。</p>
<p>&ldquo;联系到了吗？&rdquo;老板问。</p>
<p>&ldquo;联系到了、他们说可能下周过来。&rdquo;</p>
<p>&ldquo;具体是下周几？&rdquo;老板问。</p>
<p>&ldquo;这个我没细问。&rdquo;</p>
<p>&ldquo;他们一行多少人。&rdquo;</p>
<p>&ldquo;啊！您没问我这个啊！&rdquo;</p>
<p>&ldquo;那他们是坐火车还是飞机？&rdquo;</p>
<p>&ldquo;这个您也没叫我问呀！&rdquo;</p>
<p>老板不再说什么了，他打电话叫朱政过来。朱政比我晚到公司一年，现在已是一个部门的负责人了，他接到了与我刚才相同的任务。一会儿工功夫，朱政回来了。</p>
<p>&ldquo;哦，是这样的一一&rdquo;朱政答道：&ldquo;他们是乘下周五下午3点的飞机，大约晚上6点钟到，他们一行5人，由采购部王经理带队，我跟他们说了，我公司会派人到机场迎接。</p>
<p>另外，他们计划考察两天时间，具体行程到了以后双方再商榷。为了方便工作，我建议把他们安置在附近的国际酒店，如果您同意，房间明天我就提前预订。</p>
<p>还有，下周天气预报有雨，我会随时和他们保持联系，一旦情况有变，我将随时向您汇报。&rdquo;朱政出去后，老板拍了我一下说：&ldquo;现在我们来谈谈你提的问题。&rdquo;</p>
<p>&ldquo;不用了，我已经知道原因，打搅您了。＂</p>
<blockquote>
<p>我突然明白，没有谁生来就担当大任，都是从简单、平凡的小事做起，今天你为自己贴上什么样的标签，或许就决定了明天你是否会被委以重任。</p>
<p>能力的差距直接影响到办事的效率，任何一个公司都迫切需要那些工作积极主动负责的员工。优秀的员工往往不是被动地等待别人安排工作，而是主动去了解自己应该做什么，然后全力以赴地去完成。</p>
</blockquote>            <!--content_text-->', CAST(0x0000A40701237FD4 AS DateTime), N'能力的差距直接影响到办事的效率，任何一个公司都迫切需要那些工作积极主动负责的员工。优秀的员工往往不是被动地等待别人安排工作，而是主动去了解自己应该做什么，然后全力以赴地去完成。', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (24, 201, 1, 0, 0, 0, 0, 1, 0, 1, 0, N'admin', 0, 2, 0, N'职业规划：适合自己的才是最好', N'/Upload/Images/2019/03/12/t_c-jiijji_1.png', N'<p>大部分人在工作两三年之后便苦恼职业规划问题，要么后悔当初选择的事业方向不对，要么认为现在从事的工作极其枯燥乏味。为了改变现状，上班族需要做的就是重新制定职业生涯路线，让自己找到事业线上的方向，调整目标重新出发。那么，我们该如何选择出最适合自己的职业生涯路线呢？</p>
<p><a href="/Upload/Images/2019/03/12/c-jiijji.png"><img width="1000" height="610" class="aligncenter size-full wp-image-543" alt="jiijji" src="/Upload/Images/2019/03/12/c-jiijji.png" /></a></p>
<h2>确定志向</h2>
<p>志向是事业成功的基本前提，没有志向，事业的成功也就无从谈起。俗话说：&ldquo;志不立，天下无可成之事。&rdquo;立志是人生的起跑点，反映着一个人的理想、胸怀、情趣和价值观，影响着一个人的奋斗目标及成就的大小。所以，在制定生涯规划时，首先要确立志向，这是制定职业生涯规划的关键，也是你的职业生涯规划中最重要的一点。</p>
<h2>自我评估</h2>
<p>自我评估的目的，是认识自己、了解自己。因为只有认识了自己，才能对自己的职业作出正确的选择，才能选定适合自己发展的职业生涯路线，才能对自己的职业生涯目标作出最佳抉择。自我评估包括自己的兴趣、特长、性格、学识、技能、智商、情商、思维方式、思维方法、道德水准以及社会中的自我等等。</p>
<h2>职业生涯机会的评估</h2>
<p>职业生涯机会的评估，主要是评估各种环境因素对自己职业生涯发展的影响，每一个人都处在一定的环境之中，离开了这个环境，便无法生存与成长。所以，在制定个人的职业生涯规划时，要分析环境条件的特点、环境的发展变化情况、自己与环境的关系、自己在这个环境中的地位、环境对自己提出的要求以及环境对自己有利的条件与不利的条件等等。只有对这些环境因素充分了解，才能做到在复杂的环境中避害趋利，使你的职业生涯规划具有实际意义。</p>
<p>环境因素评估主要包括：</p>
<p><span style="color: #ff6600;">□</span> 组织环境　<span style="color: #ff6600;">□</span> 政治环境　<span style="color: #ff6600;">□</span> 社会环境　<span style="color: #ff6600;">□</span> 经济环境</p>
<h2>职业的选择</h2>
<p>职业选择正确与否，直接关系到人生事业的成功与失败。据统计，在选错职业的人当中，有80%的人在事业上是失败者。正如人们所说的&ldquo;女怕嫁错郎，男怕选错行&rdquo;.由此可见，职业选择对人生事业发展是何等重要。</p>
<p>如何才能选择正确的职业呢？至少应考虑以下几点：</p>
<p><span style="color: #ff6600;">□</span> 性格与职业的匹配</p>
<p><span style="color: #ff6600;">□</span> 兴趣与职业的匹配</p>
<p><span style="color: #ff6600;">□</span> 特长与职业的匹配</p>
<p><span style="color: #ff6600;">□</span> 内外环境与职业相适应</p>
<h2>职业生涯路线的选择</h2>
<p>在职业确定后，向哪一路线发展，此时要作出选择。即，是向行政管理路线发展，还是向专业技术路线发展；是先走技术路线，再转向行政管理路线&hellip;&hellip; 由于发展路线不同，对职业发展的要求也不相同。因此，在职业生涯规划中，须作出抉择，以便使自己的学习、工作以及各种行动措施沿着你的职业生涯路线或预定的方向前进。</p>
<p>通常职业生涯路线的选择须考虑以下三个问题：</p>
<p><span style="color: #ff6600;">□</span> 我想往哪一路线发展？</p>
<p><strong><span style="color: #ff6600;">□</span> </strong>我能往哪一路线发展？</p>
<p><strong><span style="color: #ff6600;">□</span></strong> 我可以往哪一路线发展？</p>
<p>对以上三个问题，进行综合分析，以此确定自己的最佳职业生涯路线。</p>
<h2>设定职业生涯目标</h2>
<p>职业生涯目标的设定，是职业生涯规划的核心。一个人事业的成败，很大程度上取决于有无正确适当的目标。没有目标如同驶入大海的孤舟，四野茫茫，没有方向，不知道自己走向何方。只有树立了目标，才能明确奋斗方向，犹如海洋中的灯塔，引导你避开险礁暗石，走向成功。目标的设定，是在继职业选择、职业生涯路线选择后，对人生目标做出的抉择。其抉择是以自己的最佳才能、最优性格、最大兴趣、最有利的环境等信息为依据。通常目标分短期目标、中期目标、长期目标和人生目标。短期目标一般为一至二年，短期目标又分日目标、周目标、月目标、年目标。中期目标一般为三至五年。长期目标一般为五至十年。</p>
<h2>制定行动计划与措施</h2>
<p>在确定了职业生涯目标后，行动便成了关键的环节。没有达成目标的行动，目标就难以实现，也就谈不上事业的成功。这里所指的行动，是指落实目标的具体措施，主要包括工作、训练、教育、轮岗等方面的措施。例如，为达成目标，在工作方面，你计划采取什么措施，提高你的工作效率？在业务素质方面，你计划学习哪些知识，掌握哪些技能，提高你的业务能力？在潜能开发方面，采取什么措施开发你的潜能等等，都要有具体的计划与明确的措施。并且这些计划要特别具体，以便于定时检查。</p>
<h2>评估与回馈</h2>
<p>俗话说：&ldquo;计划赶不上变化。&rdquo;是的，影响职业生涯规划的因素诸多。有的变化因素是可以预测的，而有的变化因素难以预测。在此状况下，要使职业生涯规划行之有效，就须不断地对职业生涯规划进行评估与修订。其修订的内容包括：职业的重新选择；职业生涯路线的选择；人生目标的修正；实施措施与计划的变更等等。</p>
<p>职场前辈们总说&ldquo;做事情需要计划，有了计划才能按部就班、脚踏实地的干起来&rdquo;,我想这句话足够让所有年轻人思考，我们应当学习前辈们的这种做事方式和精神，让自己逐渐成熟、强大起来。</p>
<!--content_text-->', CAST(0x0000A40701238B8C AS DateTime), N'大部分人在工作两三年之后便苦恼职业规划问题，要么后悔当初选择的事业方向不对，要么认为现在从事的工作极其枯燥乏味。为了改变现状，上班族需要做的就是重新制定职业生涯路线，让自己找到事业线上的方向，调整目标重新出发。', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (25, 201, 1, 0, 0, 0, 0, 1, 0, 0, 0, N'admin', 0, 1, 0, N'有效提升你的决策力', N'', N'<p>每个人每天都必须面对大大小小的决策，每一次的决策总得经历一次心理的煎熬：不知道这样的决定是对还是错？万一错了，该怎么办？因为存在着不确定，所以害怕做决定。我们确实不能百分之百预测未来，也不可能有百分之百正确的决策。我们能做的是找出方法，尽量将风险降至最低，让不确定性因素减至最少。以下我们针对决策的流程、常见的错误、以及团队决策的方法，做详尽的讨论。</p>
<p><strong>成功决策的8大步骤</strong></p>
<p>决策不仅是做出决定而已，在这之前必须进行详尽的资料搜寻和评估工作，事后更要进行检讨，才能真正累积经验，提高日后决策的成功机会。完整的决策过程可分成8个重要的步骤。</p>
<h2>1.明确定义问题</h2>
<p>了解问题真正所在，才能作出正确的决策，否则可能导向错误的决策方向，不仅无法解决问题，又可能产生新的问题。问题的定义不仅是几句话的描述而已，「定义问题是为了设定范围、厘清细节，」远距顾问公司（Distance Consulting）的创办人佛瑞德?尼可斯（Fred Nichols）说道。最好的方式就是将目前的问题切割成数个更小的问题，这样才能看清楚问题的原貌。</p>
<p>美国圣汤玛斯大学（University of St. Thomas）非营利组织管理中心的讲师卡特?麦可拿马拉（Carter McNamara）认为，定义问题主要分成4个面向：</p>
<p>问题是何时发生的？</p>
<p>是如何发生的？</p>
<p>为何会发生？</p>
<p>已经造成哪些影响？</p>
<p>问题的厘清需要花费时间，在决策的过程中，有可能因为新资料的发现而有了不一样的看法，因此问题的定义是一个持续的过程，经过不断的调整、重新的解释，一次比一次更为完整、更为清楚。</p>
<p>另外要注意的一点，彼得?杜拉克（Peter Drucker）在《有效的经营者》（The Effective Executive）书中提到，不同类型的问题有不同的处理方式，因此必须事先区别清楚。属于一般性的问题，像是关于行政方面的问题，通常都有既定的规定或是政策作为依据，不需要花费太多的时间与精力。如果属于突发状况，就必须重新全盘的考量，完成所有决策的步骤再做出决定。然而，有时候突发状况可能代表了未来的趋势或是新商机所在。历史上曾发生一次著名的案例，1960年代新研发的沙利窦迈（thalidomide）原本用作镇静剂以及预防害喜，后来因为发生畸形儿的事件，最后被列为禁药。最近医学界却发现它有抑制癌细胞血管新生的作用，因而再度受到瞩目，目前正处于临床实验阶段。</p>
<p>因此，决策者的重要责任之一便是判断这是单纯的突发事件，还是新的趋势正在形成。例如突然接到一笔大订单，经理人必须思考这是季节性因素而造成的单一事件，或是属于未来长期的趋势。</p>
<h2>2.决定希望的结果</h2>
<p>例如在决定新产品的行销与销售策略之前，你必须先想清楚希望达成什么样的目标。你希望藉由这项产品提升公司的营业额？改善获利？提高市场占有率？打响公司的品牌知名度？或是建立企业形象？</p>
<p>你不可能同时达成所有的目标，就好比说你不可能是全公司表现最杰出的员工，同时也是全世界最伟大的父亲或母亲，你必定要设定优先级，有所取舍。</p>
<h2>3.搜集有意义的信息</h2>
<p>在开始搜集资料之前，必须先评估自己有哪些信息是知道的，有哪些是不知道的或是不清楚的，才能确定自己要找什么样的资料。</p>
<p>《赢家决策》（Winning Decision）作者、康乃尔大学（Cornell University）强生管理学院（Johnson College）教授爱德华?鲁索（J. Edward Russo）特别提醒，信息不是愈多愈好。有时候过多的信息只会造成困扰，并不会提高决策的成功机会。因此必须依据信息对于决策目标之间的关联性以及相对重要性，判断哪些信息是需要的，哪些可以忽略。</p>
<h2>4.考虑各种可能的解决方案</h2>
<p>这个阶段最常听到的抱怨就是：「想不出好的解决方法。」事实上，不是想不出来，只是因为考虑得太多，觉得什么都不可行。但是这个阶段的重点在于大家相互脑力激荡，提出各种想法，不要考虑后续可行性的问题。请记住：</p>
<p>点子愈多愈好</p>
<p>不要做出任何的价值判断</p>
<p>愈是突发奇想的点子愈好</p>
<p>所有的想法都提出来之后，找出比较有可能执行的，然后针对每一个想法再详细讨论使其更为完整，并试着将不同的想法整合成更好、更完整的方案，最后筛选出数个选择方案。「创意来自于选择与整合好的想法，而不是创造想法，」中俄克拉荷马大学（University of Central Oklahoma）企管系教授罗伯特?伊布斯坦（Robert Epstein）说道。</p>
<h2>5.仔细评量筛选出的选择方案</h2>
<p>每一种方案的优缺点是什么？可能造成的正反面结果是什么？这些选择方案是否符合你设定的预期目标？</p>
<p>首先你必须依据先前所搜集到的客观数据作为评量的依据，同时评估自己是否有足够的资源与人力采取这项选择方案。</p>
<p>除了理性的思考外，个人主观的感受也很重要。反复思索每一个选项，想想未来可能的结果，你对这些结果有什么感受。有些你可能觉得是对的，有些可能感觉不太对劲。你可以问问自己：「如果我做了这个决定，最好的结果会是什么？最坏的结果又会是什么？」再仔细想想，有没有什么方法可以改进让自己感觉「不对劲」的方案，或是消除自己负面的情绪感受？也许你需要更多的资料消除自己的疑虑，但也有可能你的直觉是对的，某些负面结果是当初你没有考虑到的。</p>
<h2>6.决定最佳的方案</h2>
<p>某些方案如果确定不可行或是超出本身的能力范围之外，可先行剔除，再开始讨论其余的方案。</p>
<p>美国科学家班哲明．富兰克林（Benjamin Franklin）曾建议一个不错的方法，也就是成本效益分析法。把每项方案的优缺点条列出来，优点的部份给予0到+10的评等，缺点的部份给予0到-10的评等，最后将所有优缺点的分数相加，这样就可以得出每个方案的总分，决定哪一个是最佳方案。</p>
<p>不过，杜拉克特别提到，应该选择「正确的」方案，而不是最能被大家接受的方案。在讨论的过程中必定会有某种程度的妥协，但是必须分清楚正确的与错误的妥协，决策者不应害怕遭到反弹或反对而选择一个大家都可接受的方案。有时候「有不如没有来得好」，像是对于产品品质的要求绝对不能打折扣。</p>
<p>也有某些时候，「有总比没有好」，你不得不选择一个可接受的方案，而不是继续寻找更好的方案。例如紧急时候，你必须立即采取行动、随机调整方向，否则便错失了良机。</p>
<h2>7.拟定行动计划，确实执行</h2>
<p>一旦做出了决定，就要下定决心确实执行，不要再想着先前遭到否决的方案，既然之前都已确实做好评估，就应专注在后续的执行面。</p>
<p>你必须拟定一套详细的行动计划，包括：有哪些人应该知道这项决策？应采取哪些行动？什么人负责哪些行动？还有该如何应付可能遭遇的困难？</p>
<h2>8.执行后不忘检讨成效</h2>
<p>我们通常很少再回过头来重新检视先前决策的成效如何，因此无法累积宝贵的经验。根据心理治疗学家安德拉?夏比洛（Andrea Shapiro）的研究发现，人们无法从经验当中学习主要有两个重要原因。如果结果是成功的，就产生可掌控一切的幻觉，甚至可以控制突发的事件。如果结果是失败的，就会合理化自己的错误，认为是自己无法控制的因素。简单的说，就是将成功归于自己的能力，将失败归于外在。</p>
<p>「事后的评估不应只是书面的报告，」杜拉克说道。报告不能完全呈现出决策执行过程中的实情，就好比说我们不可能借着研究台湾地图，就能看到玉山的面貌。有些细节必须要亲身经历或是聆听参与者的主观意见，才有可能观察得到。</p>
<p>不妨学习美国陆军行之有年的「事后评估」（After Action Reviews, AAR&rsquo;s）的方法，每当训练课程期间或是军事任务结束之后，由专家负责主持座谈会，让每个人说出自己遭遇的亲身经验以及想法。讨论的内容都是非常基本的问题，包括：哪些部份表现良好？哪些部份表现不佳？哪些必须保留？哪些部份必须改进？最后由专家汇整所有人的意见，作为日后训练课程的改进依据。</p>
<p><strong>应避免的4大决策陷阱</strong></p>
<p>即使决策的程序完全符合理性的原则，但是在过程中，我们很难避免落入某些思考陷阱当中。人脑不可能像计算机一般的精准以及百分之百的客观，每一个人都有既定的思考模式、偏见，对于信息的解读也会有所偏差。换句话说，每个人在思考上都有某种程度的限制，只有意识到自己的不足，才能更谨慎的思考，降低错误发生的可能。</p>
<h1>1.过度专注于特定的信息</h1>
<p>通常，我们对于最先接收到的信息印象特别深刻，受到的影响也最大。这就是所谓的参考点偏见（anchoring bias）。我们很容易过度专注于某个特定的数据或资料，而且很难摆脱它的影响。</p>
<p>鲁索教授曾进行过一次小小的实验，他首先问班上的MBA学生：「你们家里电话号码的最后三码是多少？」然后再问：「你们知道匈奴王阿提拉（Attila the Hun）何时逝世的？」正确答案是公元453年，当然不会有学生知道答案。结果可想而知，学生的答案非常接近电话号码后三码的数字，因为学生一定会以自己的电话号码为参考点，作为判断的依据。</p>
<p>就好比我们要预估下个月的营业额，我们直觉的认为必须参考上个月或是前半年的业绩数字。过去的经验固然很重要，然而，在现在快速变迁的世界，历史的信息有可能产生误导。</p>
<p>前哈佛商学院教授、目前担任决策顾问的约翰?汉蒙得（John S. Hammond）建议，在寻求别人的意见或是参考资料之前自己先想清楚问题，以免受影响。同样的，如果你是主管，在属下提出意见之前，尽量少开口，以免影响他们的判断。</p>
<p>更重要的是，不要过度依赖单一的参考标准，以营业额的预估来说，不仅要参照去年的数字，也许还要找出过去5年营业额的变化，并同时做出最乐观与最悲观的预估。</p>
<h1>2.错误使用信息</h1>
<p>有时候我们所参考的信息与决策之间并没有直接的关联，这便是宾州大学（University of Pennsylvania）华顿（Wharton）商学院教授墨里斯?修华兹（Maurice Schweitzer）所称的信息输入偏见（input bias）。<br />
例如，某些公司根据员工待在办公室的时间来评定绩效，然而这两者之间并没有必然的关系。另一种常见的情况是，投资分析师依据企业在研究与发展上的支出判定创新的程度，然而事实上，报表上的数字大多是会计操作的结果，不代表真实的情况，这也是一种信息偏见。或是许多公司依据客服人员通话时间的长短衡量工作效率，然而却有可能因此做出错误的决定，伤害了客户关系。</p>
<p>不过，修华兹也提到，某些情况下很难直接判断结果的好坏。举例来说，我们要如何量化一位员工过去一年的生产力，尤其属于创意型的工作内容。而且有时候输入信息与结果之间没有立即的连结，员工的某些努力不必然会立即产生结果，有可能在下一年才看得到成果。</p>
<p>修华兹认为，决策者很重要的工作之一，便是判断信息与所要评断的结果之间是否有真正的关联。就如同前面提到的，每一次做出决策之后，都必须重新检讨成效，才能看出当初是否有误用信息的情形。唯有信息与结果之间的关系是「直接、一致、而且没有偏见的」，才能正确利用信息，做出明智的决定。</p>
<h1>3.受限于既有的认知</h1>
<p>每个人看待事情都有特定的角度或是思考模式，这就是「认知架构」（frame）。每一个人都是依据不同的特定观点看待这世界，因此每一个人看到的都是部份的事实，不是全部。只是我们很少意识到这点，我们常常忘记自己其实也是限制在某个框架里，误以为自己掌握所有的事实。</p>
<p>做决策时，对于问题所采取的不同认知架构，会产生不同的结果。举例来说，假设现在你接到某位气愤的客户来电抱怨，如果你认为他有可能因为心生不满而去打官司，就会想尽办法安抚客户，避免横生枝节。但如果你将客户的抱怨视为免费的信息提供来源，便希望了解更多、更深入的问题，不仅可以赢得客户的信任，更有可能发现新的商机与市场。</p>
<p>除了时时提醒自己的不足，做决策时尽量倾听不同立场的人的想法，像是不同部门的人或是外部的第三者。同时将新的问题与过去利用相同的思考观点做出成功决策时的情境相互对照。这次的情况和上次有什么不同？是否有必要调整自己的认知架构，不能再用过去的经验来看待这次的问题？</p>
<h1>4.过度的自信</h1>
<p>当决策者满怀信心时，是否就一定能做出准确的决策？或是当他们做出准确的判断时，是否同样满怀信心？</p>
<p>许多老板喜欢问业务经理下一季业绩达成的可能性，多数的人会回答说他们有九成的信心可以达成业绩目标。但是这样的回答便是落入了华顿商学院行销学教授魏斯里?赫金森（J. Wesley Hutchinson）所说的过度自信陷阱。</p>
<p>以下便是常见的过度自信的表现：</p>
<p>当某人做出预测时表示非常有信心，这就是过度自信的表现。如果他的回答有九成的机会成功，真实的情况是可能只有七成。</p>
<p>如果你承认自己纯属猜测，其实准确度可能还比较高。「有时候直觉很重要，会让原本一半的成功机会提升至60％。遵循自己的直觉绝对不是一件坏事，」赫金森说道。</p>
<p>当经理人对于一个决策反复不停的思考，除非发现了新的信息或有了新的想法，否则一直重复思考旧有的信息很容易变得过度自信，而且决策的成功机会也不会因此提高。</p>
<p>另一个可能的情况是事实偏见。人们常以为自己所得到的信息是正确的。「我们会记得许多的事实或是错误的事实，我们早就不记得从何得知，但是总认为自己所记得的事情是正确的，因此夸大了事实的有效性。」</p>
<p>我们要如何避开这些危险地带，不让过度自信妨碍了决策的有效性？赫金森提出了以下的建议：</p>
<p>当我们在面对不确定的环境时，一定要假设自己有20％的机会可能犯错。一方面这样比较接近现实，另一方面，如此一来我们才会意识到自己的不足，更谨慎的评估与思考，而不会做出过度自信的决策。</p>
<p>不要以为自己知道所有的事情，了解自己的专长所在，同时认清自己有许多不擅长的领域。人们常将自己某个特定领域的专长扩大到所有的事情，错误的将自己的经验移植到不熟悉的领域。</p>
<p>过度自信的原因通常是因为我们早已认定某件事情是对的，所以我们只找寻或是只看见支持既有立场的信息。我们应该去寻求与自己的想法相左的意见或是信息，挑战自己的观点，才能避免过度自信的盲点。</p>
<p>赫金森建议每个人都应该建立外部记忆资源，例如，用笔记下重要的事件或是讯息，或是保留演示文稿资料等，可以避免记忆出错的可能。</p>
<p>成功发挥团队决策效益</p>
<p>很多时候决策的形成不是只有个人，而必须采纳团队成员的意见，不过常常发生的情况是花了太多时间，却没有达成任何的结果。团队领导者必须视情况的不同，采取最有效的决策形式，激发最多的创意。</p>
<blockquote>
<p>5种团队决策的方法</p>
<p>团队决策的方式有很多种，然而每一种方式都各有优缺点以及适用的时机，以下是《团队合作》（Joining Together）的作者强森（Johnson D. W）提出的5种常见方式。</p>
<p>1.平均所有人的意见：：由领导人一一询问每一个人的意见，最后找出中庸的解决之道。如果无法立即集合所有人开会，这会是不错的方法。但缺点是，团队成员缺乏互动，而且成员并没有真正参与决策过程，对于决策的承诺度偏低。</p>
<p>2.由负责人或领导人做最后的决定：每一个人分别提出自己的想法，然后针对每一个想法或是提议相互讨论，但是由最高负责人或是领导人做最后的决定。这种方式的好处是经过充分的讨论，可以让决策更为准确。但有可能发生成员彼此之间相互竞争、突显自我意见的情况。而且，团队成员通常会说出领导者想听的意见。</p>
<p>3.少数原则：由团队的少数人，例如不超过团队总人数的一半，做出决定，像是主管级会议就是属于此种方式。不过有时候如果需要决定的事项很多，但是时间不够，也可以考虑采用这种方式。</p>
<p>4.多数原则：这是一般最常见的决策形式。所有人共同参与讨论，当一半以上的成员达成共识，便结束讨论。因此，如果没有足够的时间让所有人达成共识，但是执行决策时又需要多数团队成员的支持，便可以采用这种方式。</p>
<p>5.所有人达成共识：透过有效的沟通过程，达成集体的共识。这是最有效的集体决策方法，所有人都能表达自己的想法与感受，而且每个人的意见都被充分的尊重。但是最大的缺点是非常耗费时间。</p>
</blockquote>
<p>为何想不出好点子？</p>
<p>团队决策最重要的目的之一，就是希望透过彼此的脑力激荡，每个人尽可能丢出最多的点子，这样就可以找出最好的方法。但是相信多数人都同意，很多时候整个过程令人痛苦不堪，而且成效不彰。</p>
<p>德州大学（University of Texas）的心理学教授保罗?波鲁斯（Paul Poulus）针对脑力激荡的成效进行了多年的研究与实验，不断测试各种不同条件之下脑力激荡所产生的结果。他认为，要能成功激发创意，其实是有方法可循的。</p>
<p>1.个人与团体脑力激荡交互运用</p>
<p>波鲁斯最近在德州某家公司的实地研究发现，4人小组脑力激荡所创造的新点子数目大约是个人创意思考所产生总和的一半。</p>
<p>针对这项结果，认知心理学家史蒂芬?史密斯（Steven M. Smith）解释说，处在团队之中，每个人心里会产生压力，总觉得不能和其它人的想法差太远，而且急着要讨好老板，如此一来根本无法专注的思考。</p>
<p>然而，脑力激荡是建立团队非常重要的活动，要如何掌握个人创意思考的效率，同时兼顾团队的合作？有两种方法。第一就是个人创意思考与团队脑力激荡交替使用，例如前半阶段属于个人的创意思考时间，后半阶段再进行集体的脑力激荡。另一种方式就是所谓的「创意书写」（brainwriting），某个人先将自己的想法写在纸上，另一个人再加上一些回馈意见，并写下自己提出的想法，如此继续下去。这样可让每个人有比较多的时间思考。根据波鲁斯的实验发现，创意书写的方式比起个人创意思考的效果又更好。</p>
<p>2.问对的问题</p>
<p>不论是个人或是团队脑力激荡，很重要的一点是如何界定问题。你必须有明确的焦点，但又不能过于狭窄，抹杀了创意。</p>
<p>波鲁斯指出，如果问题定义过于狭窄（例如：大学新开设的计算机课程代表什么意义），要想出10个点子都很困难。但是如果是开放性的问题（我们如何彻底发挥计算机系统的效益），有可能在相同时间内想出10倍之多的点子。</p>
<p>所有研究人员都同意，脑力激荡的目标在于新点子的数量，而非品质。那么，要如何激发最多的创意呢？过程中最好有短暂的休息。波鲁斯曾进行一项研究，两组学生各有36分钟的脑力激荡时间，其中一组中间休息6分钟，另一组不休息。结果发现，第一组想出的点子比第二组多出66％，而且多数是休息之后想出来的。</p>
<p>3.创意总在无意间发生</p>
<p>想必每个人都有过这样的经验，认真思考时，什么都想不出来，却在回家洗澡时，突然灵光乍现。古希腊著名的数学家阿基米德便是在泡澡时，突然想到如何测试纯金的方法。</p>
<p>「当我们处在放松状态，同时保持一定的注意力，最容易想出创意的点子，」临床精神治疗师约书亚?柯曼（Joshua Coleman）说道。像是我们在洗澡时，就相当接近这样的心理状态。</p>
<p>这种相对简单、不需要用脑的活动，不会产生焦虑感，通常能产生比较有创意的点子。当你没有表现的压力时，比较能自由的发想。而且，只有你一个人时，也不必担心有人给予负面的回馈意见或是批评，可以任由自己发挥创意。</p>
<!--content_text-->', CAST(0x0000A40701239744 AS DateTime), N'每个人每天都必须面对大大小小的决策，每一次的决策总得经历一次心理的煎熬：不知道这样的决定是对还是错？万一错了，该怎么办？因为存在着不确定，所以害怕做决定。', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (26, 201, 1, 0, 0, 0, 0, 1, 0, 0, 0, N'admin', 0, 16, 0, N'工作思维定位，PDCA循环', N'', N'<p>今天给你讲个故事。</p>
<p>一个农民种了一地西瓜，买的良种，勤于施肥，西瓜长得很好。根据市场价格，大概可以卖回来一万块钱。但天有不测风云，一夜冰雹，把农民精心种植的希望打为一地西瓜汤，农民号啕大哭一场后，发现还有一只西瓜因为躲在一个石头下幸免于难。于是他精心呵护这只西瓜，终于等到它成熟。农民捧着这只仅存得西瓜来到集市。请问：他这只西瓜卖多少钱合适?</p>
<p>能卖一万块吗?谁说能?要不卖给你?</p>
<p>现实的情况是：人家一只西瓜卖两块钱，他这只西瓜也只能卖两块钱。事实残酷却无法改变。</p>
<p>道理就如此简单，如果你没有结果，老板不会为你的辛苦埋单。</p>
<p>为大家分享一个职业经理人常用的工作方式：PDCA循环，这是职场人都应该学会的工作思维。</p>
<p><strong>Plan&mdash;计划</strong></p>
<p>没有针对目标的周密的计划，想要有好结果只是妄想;</p>
<p><strong>Do&mdash;行动</strong></p>
<p>一个人的命运不会因为你计划了多少而改变，只会因为你做到了多少而改变;</p>
<p><strong>Check&mdash;检查</strong></p>
<p>员工不会做你想要的，只会做你检查的。没有过程监控，你只会等爬到了梯子的顶端，才发现它靠错了墙;</p>
<p><strong>Act&mdash;处理</strong></p>
<p>做好了奖励并保持，没做好处罚并改进。</p>
<p>员工是种瓜的，老板是买瓜的。不见瓜就掏钱的老板，迟早会把企业做死。然后，他和他的员工一起，失业!只有象猎豹一样死死盯住结果的企业，才是有执行力的企业。否则，它的制度和流程都是花架子。</p>
<p>如果你熟练运用，升职加薪指日可待。</p>
<!--content_text-->', CAST(0x0000A4070123A2FC AS DateTime), N'一个农民种了一地西瓜，买的良种，勤于施肥，西瓜长得很好。根据市场价格，大概可以卖回来一万块钱。但天有不测风云，一夜冰雹，把农民精心种植的希望打为一地西瓜汤，农民号啕大哭一场后，发现还有一只西瓜因为躲在一个石头下幸免于难。', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (27, 201, 1, 0, 0, 0, 0, 1, 0, 1, 0, N'admin', 0, 36, 0, N'如何与懒蛋同事相处？', N'/Upload/Images/2019/03/12/t_c-efeefeefef.png', N'<p>常人偶尔打个盹偷个懒无可厚非。但当身边的同事每每工作拖泥带水，态度敷衍了事，甚至下班时间没到就撂挑子走人，估计你也很难注意自己的素质了。是当面谴责他的行为?或是向老板告状?还是干脆少吃咸鱼少口干，做好自己才是真?</p>
<p>专家称，我们几乎都遇到过这种吊儿郎当的同事。比如整天Facebook刷个没完，午休一休休俩小时，从来就没按时完成过任务。尽管如此，如果他的行为并没有严重扰乱我们的正常工作，那我们就不能像他老妈一样追在屁股后面指手画脚。</p>
<p><a href="/Upload/Images/2019/03/12/c-efeefeefef.png"><img width="600" height="366" alt="efeefeefef" src="/Upload/Images/2019/03/12/c-efeefeefef.png" class="aligncenter size-full wp-image-693" /></a></p>
<p>&ldquo;你肯定不想落个庸人自扰的名声。&rdquo;巴伯森大学的管理学教授Allan R. Cohen坦言。</p>
<p>哈佛大学麦克林医院教练学院的创立者并《未授权的影响力》一书的作者&mdash;苏珊大卫也表示同意：&ldquo;如果你的工作和升迁没有受到影响，则大可无视，做好份内事。&rdquo;</p>
<p>但是如果你同事的行为无时无刻不在折磨你，那该出手时则要出手了。</p>
<p>以下是如何处理此种棘手处境的一些建议：</p>
<h2>* 设身处地替他着想</h2>
<p>和一个懒散的同事共事确实非常恼火，但不要对导致其现状的背后根源妄下断言。</p>
<p>懒散不一定等于懒惰。可能他家里有事，或者在开展工作的过程中遇到了困难：比如正纠结于了解一项新任务或学习一种新技能。</p>
<p>&ldquo;了解事情的整个背景很重要，不要随便设定别人做事的动机。&rdquo;科恩建议在做出任何行动之前可以先打听打听探探口风。这也包括一定程度的自我省察。但是不要在此浪费过多时间，因为如果等到你忍到极限了，那你就会很容易傻乎乎地大发脾气。</p>
<h2>* 要沟通不要对峙</h2>
<p>如果你的工作受到了影响，那当然要说出来。但是不要用指责的语气或是让对方难堪。</p>
<p>要带着好奇或是怜悯去沟通。你需要表现出你真心想解决这个问题而不是抱怨或是惩戒。可以问问他工作做得怎么样，像是：&rdquo;我看你好像不如以前有干劲了啊，有什么我能帮忙的吗?&ldquo;</p>
<h2>* 实事求是</h2>
<p>可以在沟通的过程中列举一些事例，清楚地说明究竟哪些行为冒犯到了你和你的同事们。解释究竟什么样的事情导致了什么样的后果。比如，因为他没有在期限内完成工作，造成了客户的损失。或者因为他的早退使你不得不加班到很晚。但一定要保持谈话积极乐观。科恩建议，可以先找其他人演练一下，调整措辞和语气。</p>
<h2>* 要机智</h2>
<p>或许你有最优的解决办法，但是不要拘泥于这一种。开辟更多条路是非常有帮助的。也不要是非黑白非此即彼，认为自己都对别人全错。要知道挑别人的错非常耗费精力，最后什么也解决不了。</p>
<h2>* 再给他一次改过的机会</h2>
<p>如果沟通没有成效，再来一次。也许之前是因为你不够直接或不够具体。你可以对他说：&ldquo;我们之前讨论过这个问题，但是你并没有说到做到。&rdquo;科恩表示这可能会持续几个来回。</p>
<p>如果这样的行为依然存在且扰乱你的工作，那么这时候就该找你的老板解决一下了。当然要事先告知这位同事。总之不管怎样都要谦卑有礼，事情总会慢慢改观。</p>
<h2>* 谨慎地与你的上司交涉</h2>
<p>采取与对待懒散同事相同的方式，摆出实例并以包容和理解的态度与你的老板沟通。倘若在这件事上你能表现的大方得体，这会让你的上司印象深刻。但假如你失掉了淡定，那么打今天开始，你在别人眼里就成了个爱钻牛角尖儿的讨厌鬼。所以要能屈能伸，以解决问题为主要目的。</p>
<p><strong>需要注意的几点</strong></p>
<blockquote>
<p>应该做的：</p>
<p>要包容。因为你的同事做事拖沓很可能有其背后的原因。</p>
<p>跟你的老板提出这件事之前要和你的同事先沟通。</p>
<p>摆出事实举例说明这种懒散的行为是如何影响大家的工作的。</p>
<p>不应该做的：</p>
<p>揪着这件事不放&mdash;&mdash;如果你的工作效率没有受到影响，那么这就不是你该操心的事。</p>
<p>没有给你的同事多次改过的机会就上报你的老板。</p>
<p>控诉你的同事&mdash;&mdash;要用好奇的口吻开始沟通。</p>
<p>案例分析</p>
</blockquote>
<p><strong>1. 友善地处理</strong></p>
<p>凯瑟琳&middot;查尔兹就职于一家中西部的广告公司任广告文案。不久她就发现凯文是个传说中的办公室混混。这位年轻的美术监制活干的比别人慢不说，还用着八百年前的旧版软件，业务能力远远不及其他同事。</p>
<p>凯瑟琳的工作包括管理项目流程。她深知凯文的工作态度危害到了整个创作团队。&ldquo;他拖慢了团队的进度。&ldquo;她说，&rdquo;我每天有一定量的户外工作，但光是处理他的文件就花了三倍的时间。&rdquo;</p>
<p>虽然这样的状况持续了好几个月，但是没有一个人站出来对凯文说&ldquo;你需要提高工作效率&rdquo;。&ldquo;每个人都心照不宣。&rdquo;凯瑟琳说：&ldquo;大家都很愤懑但是就是没人提出来。&rdquo;于是凯瑟琳决定要和凯文谈一谈。</p>
<p>尔后她了解到凯文之所以总是慢半拍并不是因为他懒，而是他工作方式的问题。凯瑟琳表示：&ldquo;他总是想做到尽善尽美。&rdquo;而且由于与前任老板关系不和，所以凯文干脆把自己封闭起来，以忽视周围人对他的不满。</p>
<p>为了让凯文直面挑战，凯瑟琳为他增加了更多工作。同时她暗中安排同事们培养他缺失的业务能力。在与凯文的项目研讨中，凯瑟琳也强调了发奋努力的重要性，凯文也表示赞同。凯瑟琳认为：&ldquo;要以对他人有益的方式来处理这类问题。&rdquo;</p>
<p>不肖时日，凯文不仅能按时完成任务，还能胜任更多工作。他一改往日的懒散，脱胎换骨。凯瑟琳说：&ldquo;只要你肯努力，别人都看在眼里。&rdquo;</p>
<p><strong>2. 必要时规避</strong></p>
<p>某大型保险公司委派马克柏林组建一个新的销售分公司。在这件事上他需要披荆斩棘。而其中最大一个烫手山芋就是他的同事&mdash;丹尼斯。这位电话销售部的主管安于现状，不愿付出更多努力。</p>
<p>马克曾经找丹尼斯谈过这个问题，并指出这正是能同时提高两个部门工作效率的好时机。马克建议：&ldquo;我们互相之间需要对对方的销售管线有更深的了解。&rdquo; 虽苦口婆心，但终无成效。于是马克再次找到丹尼斯，指出他这种态度影响了公司上下的其他工作。</p>
<p>马克说： &ldquo;我制定了几个既可行又易于实现的规划，以求彼此在相互合作中能建立起信任关系。&rdquo;但是丹尼斯和他的团队一如既往地吊车尾。最终，马克不得不重组他的业务流程以弥补丹尼斯低下的效率。</p>
<p>然而，马克所作的这些努力并不是没人了解。副总裁得知他和丹尼斯共事的不易，对他的表现表示赞赏。</p>
<p>由此，马克学到了什么呢?</p>
<blockquote>
<p>不要再跟懒蛋同事较劲，把精力放在做事上。没什么一劳永逸的办法处理游手好闲的同事。你只能无视他，绕开他甚至是开除他。不要让某个人做了你的绊脚石，只要努力向着目标前进。</p>
</blockquote>            <!--content_text-->', CAST(0x0000A4070123AEB4 AS DateTime), N'常人偶尔打个盹偷个懒无可厚非。但当身边的同事每每工作拖泥带水，态度敷衍了事，甚至下班时间没到就撂挑子走人，估计你也很难注意自己的素质了。是当面谴责他的行为?或是向老板告状?还是干脆少吃咸鱼少口干，做好自己才是真?', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (28, 204, 1, 0, 0, 0, 0, 1, 0, 1, 0, N'admin', 0, 9, 0, N'恐吓营销的背后逻辑(人性弱点)', N'/Upload/Images/2019/03/12/t_c-jnnknk.png', N'<p>正如我们一直强调的，消费者心智才是营销的终极战场。把消费者从大街上拉到我们的终端来购买，我们必须对他们有充分的了解。而其中的关键，在于他们怎么想的、他们害怕什么、他们渴望什么。</p>
<p>人是趋向快乐回避痛苦的，但人也通常对让人痛苦的事情记忆最深。恐吓营销其实就是利用了消费者的恐惧心理，以及急于摆脱恐惧的需求而量身定制。</p>
<p><a href="/Upload/Images/2019/03/12/c-jnnknk.png"><img width="1000" height="610" alt="jnnknk" src="/Upload/Images/2019/03/12/c-jnnknk.png" class="aligncenter size-full wp-image-761" /></a></p>
<p>恐吓式营销</p>
<p>舒服佳香皂有一则广告：公交车上手臂和别人接触、公园里小朋友玩滑梯、大人抱小孩时脸贴着脸等，都会&ldquo;染上细菌&rdquo;，尤其是其将人体局部放大了的画面，一条条的像虫子一样的细菌，谁看了都会胆颤心惊。舒肤佳煞费苦心地找到了消费者内心的&ldquo;恐惧点&rdquo;，并未消费者量身定制了一个解决这个&ldquo;大问题&rdquo;的方案，那就是每天洗脸、洗手、洗澡必须得用能杀菌的香皂&mdash;&mdash;舒服佳。</p>
<blockquote>
<p>人的情绪是极其丰富的，人趋向于回避下列各种情绪：</p>
<p>1、自卑 2、嫉妒 3、忧虑 4、愤怒 5、仇恨 6、懒惰 7、虚荣 8、贪婪 9、恐惧 10、悲伤 11、盲从 12、消极 13、后悔 14、自负/自满 15、抱怨 16、欺骗。</p>
<p>同时，人也趋向于渴望获得下列各种情绪：</p>
<p>1、爱 2、幸福/愉悦 3、健康 4、美 5、真诚 6、成就感 7、友好 8、尊重/自尊 9、自信 10、舒适感 11、自豪 12、认同/赞许 13、崇拜 14、激情 15 美好未来 16、善良 17、独特个性 18、怀旧</p>
</blockquote>
<h2>所以与消费者沟通的两个基础步骤就是：</h2>
<p>1、找到目标消费者的情绪弱点，其内在情绪是恐惧（对健康、对安全性、对不确定性的恐惧）、是虚荣（恋爱中人、聚会场合等）、还是自卑情绪（身高、肥胖等）</p>
<p>2、满足消费者的渴望。通过对消费者情绪的剖析，告诉消费者问题的解决之道，从而引出&ldquo;正题&rdquo;&mdash;&mdash;我的产品就是为你解决问题、满足你的渴望而来（让你健康、幸福、美丽）！</p>
<p>所以，针对消费者情绪的营销，我们可以定义它为&ldquo;情绪营销&rdquo;！而很显然的是，恐吓营销就是情绪营销逻辑下的重要产物。</p>
<p>稍微年长的人都应记得一个品牌叫&ldquo;新肤螨灵霜&rdquo;，该品牌广泛运用大众传媒，尤其是电视媒体，极力渲染问题的严重性，尽可能广泛地列举各种症状表现，从舆论上营造氛围，不断刺激顾客的恐惧情绪，强迫他（她）采取解决措施（购买产品或服务）。</p>
<p>他们耸人听闻地提出了螨虫的概念，并广泛列举出螨虫传染的多种途径（如夫妻传染、父母传染、母子传染等），此举果然见效。广告一出，立刻使许多女性恐慌起来，纷纷掏钱抢购。</p>
<p>后来，为进一步增强可信度，在促销现场又增加了仪器检测手段，显示镜下，果然可见让人心悸的蠕动的螨虫。此举也正是巧妙地利用了消费者的恐惧情绪以及渴望健康的需求，实施了恐吓营销，名不见经传的九鑫集团年收入近4亿元，获利颇丰。接着，九鑫又趁势推出了螨婷香皂等系列产品。</p>
<blockquote>
<p>最后，我们需要强调的是，我们不应仅仅将情绪营销或者恐吓营销看成一种讨巧的战术手段，而是应当从战略层面去认识到其重要性。所有的产品都是在为消费者解决某种问题，而所有产品所解决的相对应的问题，却也都能在消费者情绪层面找到相对应的落脚点，这才是营销最深层次的沟通。</p>
</blockquote>            <!--content_text-->', CAST(0x0000A40801618C98 AS DateTime), N'正如我们一直强调的，消费者心智才是营销的终极战场。把消费者从大街上拉到我们的终端来购买，我们必须对他们有充分的了解。而其中的关键，在于他们怎么想的、他们害怕什么、他们渴望什么。', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (29, 204, 1, 0, 0, 0, 0, 1, 0, 1, 0, N'admin', 0, 1, 0, N'小米口碑营销的五大秘诀', N'/Upload/Images/2019/03/12/t_c-lkjhbnjk.png', N'<p>我们做了一个3000万的营销计划，结果当面被雷军&ldquo;拍死了&rdquo;。他说：&ldquo;阿黎，你做MIUI的时候没花一分钱，做手机是不是也能这样?我们能不能继续不花一分钱去打开市场?&rdquo;</p>
<p><a href="/Upload/Images/2019/03/12/c-lkjhbnjk.png"><img width="1000" height="610" class="aligncenter size-full wp-image-704" alt="lkjhbnjk" src="/Upload/Images/2019/03/12/c-lkjhbnjk.png" /></a></p>
<h2>1、互联网思维就是口碑为王</h2>
<p>不少淘品牌的崛起也是依靠口碑传播。比如&ldquo;韩都衣舍&rdquo;凭借快速跟进时尚的设计和选品，在各类购物社区中都是女性用户推荐分享的重点品牌;护肤面膜品类中的&ldquo;御泥坊&rdquo;，以产地的特殊天然原材料矿物泥浆为卖点，吸引了不少女性用户的追捧，成为淘宝系面膜类的领军品牌;又比如坚果品类的淘品牌&ldquo;三只松鼠&rdquo;，在口碑传播之下越卖越火，我和我的不少朋友都亲身体验了 。</p>
<p>传统的商业营销逻辑是因为信息不对称，传播就是砸广告做公关，总之凡事就是比嗓门大。但是，新的社会化媒体推平了一切，传播速度大爆发，信息的扩散半径得以百倍、千倍地增长，频繁出现了&ldquo;一夜成名&rdquo;的案例。</p>
<p>信息对称让用户用脚投票的能力大大增强。一个产品或一个服务好不好，企业自己吹牛不算数了，大家说了算;好消息或坏消息，大家很快就可以通过社交网络分享。信息的公平对等特性，也使网络公共空间具备了极强的舆论自净能力，假的真不了，真的也假不了。</p>
<h2>2、口碑的本质是用户思维，就是让用户有参与感</h2>
<p>消费者选择商品的决策心理在这几十年发生了巨大的转变。用户购买一件商品，从最早的功能式消费，到后来的品牌式消费，到近年流行起来的体验式消费，而小米发现和正参与其中的是全新的&ldquo;参与式消费&rdquo;。</p>
<p>为了让用户有更深入的体验，小米开放做产品做服务的企业运营过程，让用户参与进来。</p>
<h2>3、口碑是信任关系的传递：和用户做朋友</h2>
<blockquote>
<p>用户和企业之间，到底是一种什么关系才是最理想的?千千万万的用户，有千千万万的想法，他们为什么要认可你的产品?认可了你的产品之后，为什么要主动帮你传播?</p>
<p>社交网络的建立是基于人与人之间的信任关系，信息的流动是信任的传递。企业建立的用户关系信任度越高，口碑传播越广。</p>
<p>做企业就像做人一样，朋友才会真心去为你传播、维护你的口碑，朋友是信任度最强的用户关系。小米的用户关系指导思想就是&mdash;&mdash;和用户做朋友!</p>
</blockquote>
<h2>4、好产品是口碑的本源和发动机</h2>
<p>一个企业想拥有好口碑，好产品就是口碑的发动机，是所有基础的基础。产品品质是1，品牌营销都是它身后的0，没有前者全无意义。而如果产品给力，哪怕营销做得差一点，也不会太难看。</p>
<p>小米营销是口碑传播，口碑本源是产品。所以基于产品的卖点和如何表达卖点的基本素材是传播的生命线。</p>
<p>每一次新品发布，把发布会演示文稿做好，把产品站做好就算是完成了一大半。</p>
<p>这与很多大企业是完全相反的逻辑，我们接触过一些4A广告公司，在定义新品发布时往往会把大部分精力用在&ldquo;大概念&rdquo;和形式感上面。有些公司甚至认为不要做产品站，认为用户不会看也看不懂，认为信息太多反而会影响&ldquo;大理念&rdquo;的到达。所以很多创意人员说起产品理念头头是道，但是连自己营销的产品的重要参数都一知半解。</p>
<p>在小米，我们认为我们的用户从来没有像今天这样聪明，因为一句精美的广告词就购买产品的时代一去不复返。在我们小米社区就可以看到，用户购买前会仔细阅读产品特性，搜索对比和评测，甚至连产品拆解都会阅读。每个用户都是专家，甚至比我们还了解竞品特点。</p>
<p>所以，在提炼核心卖点后，我们反而会在PPT和产品站上下足功夫。我对我们营销同事的要求是对产品和技术的了解要不亚于工程师，因为你只有自己明白后，才能将技术语言翻译成&ldquo;人话&rdquo;讲给用户听，也能从这个过程中挖掘到真正对用户有价值的特点。设计师也只有在了解最细节的产品特点时，才能将卖点最好地转化为设计语言。</p>
<h2>5、做口碑可以零成本</h2>
<p>我带队启动小米第一个项目MIUI时，雷总就跟我说，你能不能不花一分钱做到100万用户?方法就是抓口碑。因为你没钱可花，要让大家主动夸你的产品，主动向身边的人推荐，就只得专心把产品和服务做好。</p>
<p>2011年6月，我们开始找小米手机[微博]的营销负责人，我跟雷总见了若干人，来的人总爱跟我们说，&ldquo;你去打广告&rdquo;、&ldquo;你去开实体店&rdquo;&hellip;&hellip;我们很失望，小米要找的并不仅是销售，而是一个真正理解互联网手机理念的人。</p>
<p>两个月过去了，还没有找到合适的人，雷总说：阿黎你上吧。</p>
<p>当时我的第一反应是，做MIUI系统，用户是不花钱就可以使用的，做手机，用户是要花钱购买的。那时候，我心里也会打个问号：手机是2000块的东西，如果你最后不花一点广告费，让用户来买单，是不是真的可行?</p>
<p>小米是全新的品牌，没有钱，没有媒介，没有广告投放。没办法，我们只能死磕新媒体。</p>
<!--content_text-->', CAST(0x0000A40801619850 AS DateTime), N'我们做了一个3000万的营销计划，结果当面被雷军“拍死了”。他说：“阿黎，你做MIUI的时候没花一分钱，做手机是不是也能这样?我们能不能继续不花一分钱去打开市场?”', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (30, 204, 1, 0, 0, 0, 0, 1, 0, 0, 0, N'admin', 0, 1, 0, N'广告投放的逻辑思维', N'', N'<h2>1、你分析过广告失败的原因吗?</h2>
<p>广告失败的原因很复杂，根据美国广告市场调查显示：36%的广告浪费是因为广告主对市场的认识和想法是错误的，31%是因为广告代理公司的创意失败了，83%的原因在于广告媒介的选择可能是错误的。</p>
<p>以上三点，第一点应该由广告公司和客户共同承担责任，第二点纯粹在广告公司，第三点广告公司应该负主要责任。</p>
<p>在广告公司里，如果你是策划人员，你应该着重在第一点，如果你是设计人员，应该着重第二点，如果你是媒体开发人员，你应该重视第三点。你应该知道什么东西才能吸引人，或者说你应该知道优秀广告的特质是什么。</p>
<h2>2、一流广告标题如何设置?</h2>
<p>看广告标题的人数是看正文人数的5倍，也就是说标题比内文多5倍的阅读力!</p>
<p>标题和内文的阅读效力是5:1。显然，你的广告应该有一个标题或者是口号类的东西。从另外一个角度来讲，你是设计人员的话，应该给予广告标题更大的篇幅和分量。</p>
<h2>3、一流广告标题内容选材</h2>
<p>这里只是说你的标题应该是什么内容，应该包括什么。按照以往的广告经验，他们建议将品牌名称或主题内容的名称嵌入到标题中去，比如：&ldquo;人头马一开，好事自然来&rdquo;等，但是并非一切都是这么教条。另外，要注意如何吸引注意，如传统的3B原则、婴儿、美女、野兽。</p>
<h2>4、巧妙利用&ldquo;空白&rdquo;</h2>
<p>有一个说法，广告空白增加1倍，注目率增加0.7倍。但是，这是内容与空白的比例关系，很难做到的平衡。</p>
<p>我们试着按这个假设做一个推理：A4幅面的广告面积，常用的排版文字，无特效纯文字排满，1/4行空。相信这个的注目率应该是很低的标准。我们假定值为1，经过测试，发现即便是将文字行空加一倍到1/2空，注目程度也没有太大变化，甚至达到2倍行空，也不会有什么改善。</p>
<p>这说明，这个&ldquo;空白&rdquo;是指的&ldquo;集中空白区域&rdquo;而不是&ldquo;平均分布&rdquo;的方式。也就是说，画面需要空出一半的空白位置来，才能达到原来效果的1.7倍。其实，如果所有广告都空出一半来，肯定都会被人看到的，不是因为内容，而是因为奇怪。这样空出一半来，就要经受考验了，例如客户的接受能力、内容的充足性、空白的性价比等。</p>
<h2>5、一流广告数字&ldquo;潜规则&rdquo;</h2>
<p>数字&ldquo;100&rdquo;元比&ldquo;一百元&rdquo;更打动人心25%，因为它接近实际!</p>
<p>&ldquo;接近实际&rdquo;的说法比较牵强。应该说，阿拉伯数字比文字的传达速度要快，无国界理解限制，&ldquo;无阅读&rdquo;直达大脑，因此，在文字中夹杂阿拉伯数字，会增加文本的理解速度。</p>
<p>按照中国国家文字标准，凡是能在文字中使用阿拉伯数字的，尽量要使用阿拉伯数字而不是中文数字，这也是&ldquo;数字说话原则&rdquo;,方便速读。</p>
<h2>6、彩色广告是黑白广告的5倍</h2>
<p>用一个好的理由去说服客户做彩色的广告，如果价格不是5倍的话。想一下，如果彩色丛林中突然跃出一只黑白斑纹的斑马，是不是同样会吸引你的目光呢?要理解，差异才是最大的吸引力，而不是形式如何。</p>
<h2>7、广告语8-12个字最易记忆</h2>
<p>这就是我们常说的口号了。有时候口号和标题是一体的。至于是否便于记忆，还看押韵与否。&ldquo;美特斯邦威，不走寻常路&rdquo;是一个很好的例子。音韵学是中文的一个独特部分，音韵不对，会让口号生涩喑哑，难以上口。</p>
<h2>8、一流广告正文字数多少合适</h2>
<p>广告正文20个字阅读人数为10，50个字阅读人数为5，500个字阅读人数为1!</p>
<p>好像大家都很讨厌啰嗦，但是引人入胜的内文是不怕长的，或者应该多看看侦探类型的小小说，会有很多帮助。</p>
<p>再有，有人说古典爱情小说和现代爱情小说的区别是什么?是结构。古典小说通常应该从正中间翻开，才能看到一些男女主人公的亲昵镜头，而现代小说应该在你翻开头几页就是激情镜头了。这些都说明，现在的读者需要把兴奋点提前，想想现在的电影结构，比如&ldquo;少数派报告&rdquo;的开场抓刺杀偷情者的片段，你就能理解，在20分钟内不能吸引你的电影会让你睡着， 广告给你的时间就更短!</p>
<h2>9、看图象比看标题的人数多20%</h2>
<p>反过来讲就是，你的图像不能吸引人就死定了，你的标题再不吸引人就只能再死一次!图像：标题=1.2: 1。</p>
<p>注意你的侧重程度，现在还有一些大厂商的广告偏重于图像，广告语很小，但是有点睛的解说成分。不太鼓励学习这样的广告模式，因为不到一定的程度，你没有能力创造完美体现内容的画面。</p>
<h2>10、深刻分析了解本源属性</h2>
<p>一般人类的心智不能同时与七个以上的单位打交道!</p>
<p>这个规则很早就出现了。也就是说，如果同一版面中有七个广告，你应该是最先被看到的那个(比较难，通常我们都不能精确预见周边是什么广告)。再者，广告中的阐述要点也不能超过7个。冥冥中自有天定，大七之数，难以超越。</p>
<h2>11、图画比语言的力量强16倍</h2>
<p>我们以往说：一图胜千文，这就是实证。如果你学会了用图画来说话的方法，你会受益终生。如果你要我告诉你怎么锻炼这样的能力，我建议你去学着画&ldquo;四格&rdquo;，如果你功力到了，你在四格中的关键那幅，就可以成为你的广告画面。</p>
<h2>12、巧用&ldquo;图象-标题-正文&rdquo;这个顺序</h2>
<p>这是一个新的思考方向，它会影响我们重新安排广告画面。以往我们总是把标题放在最前面，现在看来，从兴奋点和视觉流程考虑，都应该重新调整。</p>
<h2>13、符合人类行为学基准</h2>
<p>有人说，看报纸广告左边比右边的人数多12%，看上边比看下边的人数多60%?这个数据或许值得怀疑，从我们自己统计的中文广告在报刊上的情况来看，应该是右侧，上半版的位置是最佳位置。</p>
<h2>14、美学对视觉的影响</h2>
<p>受众对电视广告维持注意状态的时间是5秒，而前两秒注意力最强!</p>
<p>心经说：眼耳鼻舌身意，是六觉。声音在电视广告中的位置举足轻重。嗅觉味觉触觉现在还没有出现在多媒体电视广告中，但很多迹象表明，不久的几年中，这些东西会带领我们体验真正多感触的&ldquo;多媒体&rdquo;世界。</p>
<h2>15、看三角形比正方形的人数多2倍</h2>
<p>推而广之，实际上是不规则形状比规则形状更容易让人注意。这是视觉的常识，是视觉心理中的&ldquo;寻边&rdquo;现象。同理，一样的正方形，你把它旋转成菱形放置， 吸引力也会大幅度提高。在数码图像的理解中可以理解为：扫描线在X,Y两轴撞击到边缘线的几率越大，该图形越有吸引力。</p>
<h2>16、打破常规的表现广告注目率增倍</h2>
<p>这有个度的问题。之前有句话总结的很好：意料之外，情理之中。如果你弄得即不在意料之内，也不通情理，这个表现方式就很成问题。这方面应该多学习法国人的广告，而不是美国人的广告。</p>
<h2>17、特色绰号比名字记忆率高8倍</h2>
<p>&ldquo;断臂&rdquo;、&ldquo;珊瑚虫&rdquo;、&ldquo;范特西&rdquo;，善用这些词汇，能让你的作品有时代的烙印。Intel给每款芯片都搞一个&ldquo;绰号&rdquo;,也是为了市场的推广效应。</p>
<!--content_text-->', CAST(0x0000A4080161A2DC AS DateTime), N'广告失败的原因很复杂，根据美国广告市场调查显示：36%的广告浪费是因为广告主对市场的认识和想法是错误的，31%是因为广告代理公司的创意失败了，83%的原因在于广告媒介的选择可能是错误的。', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (31, 204, 1, 0, 0, 0, 0, 1, 0, 1, 0, N'admin', 0, 0, 0, N'润物细无声：Google，微信的温情营销案例', N'/Upload/Images/2019/03/12/t_c-google.png', N'<p>很久以来，我们生活在这个&ldquo;世界在狂欢&rdquo;的大环境中，被舆论、被噱头浸染，也被手机等移动设备&ldquo;绑架着&rdquo;。除了充满噱头、抢眼亮点的营销方式，除了小苹果、小鸡小鸡般的夸张绚烂，有种营销，叫润物细无声。</p>
<h2>谷歌&ldquo;请给我爸爸放天假&rdquo;</h2>
<p><a href="/Upload/Images/2019/03/12/c-google.png"><img width="1000" height="591" alt="google" src="/Upload/Images/2019/03/12/c-google.png" class="aligncenter size-full wp-image-613" /></a></p>
<p>故事主角是个小女孩，女孩用蜡笔给谷歌写信，信件内容大意是，爸爸只在每周六休息，但七月份的某个周三是爸爸的生日，希望公司能给爸爸一天假期。而谷歌一方爸爸的上司回信同意了，并给了爸爸一周的假期。</p>
<p>故事如童话，充满着正能量，并相继被各大社交网络转发，这一事件最终得到Google搜索相关记录超7500万条的成绩。</p>
<p>因为故事温暖、触动人心，没有人计较故事出处，更没有人去探究这些信怎么被媒体得到，善意的人们单单靠着一份温情带动了&ldquo;谷歌&rdquo;的又一次宣传动作。</p>
<h2>运营商&ldquo;手绘使用数明书 教妈妈玩微信&rdquo;</h2>
<p><a href="/Upload/Images/2019/03/12/c-cef.png"><img width="1000" height="706" alt="CEF" src="/Upload/Images/2019/03/12/c-cef.png" class="aligncenter size-full wp-image-614" /></a></p>
<p>故事主角多为大学生，学生为远在家乡的爸爸、妈妈们绘制了一副微信使用说明书。</p>
<p>切入点仍是亲情，为了父母能更容易学懂&ldquo;高科技&rdquo;、与远方的孩子畅快交流，大学生用心地手绘了一套&ldquo;微信使用说明书&rdquo;。</p>
<p>有人说这是运营商的广告(手绘使用手册上有表明&ldquo;中国移动&rdquo;或是&ldquo;中国联通&rdquo;等)，有人说这是微信的宣传动作，但无论是谁助力了这么一段温馨故事，都再次成功打造了一次&ldquo;润物细无声&rdquo;的营销案例。</p>
<!--content_text-->', CAST(0x0000A4080161AE94 AS DateTime), N'很久以来，我们生活在这个“世界在狂欢”的大环境中，被舆论、被噱头浸染，也被手机等移动设备“绑架着”。除了充满噱头、抢眼亮点的营销方式，除了小苹果、小鸡小鸡般的夸张绚烂，有种营销，叫润物细无声。', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (32, 204, 1, 0, 0, 0, 0, 1, 0, 0, 0, N'admin', 0, 3, 0, N'病毒营销，什么样的内容能让人疯狂传播？', N'', N'<p>电脑病毒的传播，一般都主动的，主动感染，主动复制，主动散发到与之产生联系的电脑。</p>
<p>而信息的病毒式传播，则是被动的，需要驱动访客传播才行，不然根本没有办法。</p>
<p>那么，到底是什么样的内容，才能引发网民疯狂转发，像病毒那样的扩散呢？</p>
<p>根据我个人看到的各种案例，总结了以下几个能引发大量传播的场景。</p>
<h2>一丶能挑起网民某种情绪内容</h2>
<p>这是一种能够激起网民的各种情绪的内容，激动丶感动丶愤怒丶呐喊，等等一时的情绪，当理智压不住这种情绪的时候，这种情绪就会驱动人去传播这样的内容，发泄这种情绪。</p>
<p>例如，2008年很火的&ldquo;封杀王老吉&rdquo;事件，QQ空间丶QQ群丶各大论坛，SNS社区，网民铺天盖地地转发，就是成功的利用了网民的激动和感动情绪，这其实是营销公司一手策划的。</p>
<p>再例如，微博上的很多偏激言论，就是激起了部分不明真相又不够理智的群众的愤怒情绪，这种情绪支配他们转发微博，并且加上一句支持的言论。</p>
<p>为什么挑起情绪就能达到主动传播的目的？</p>
<p>因为情绪需要宣泄，而最简单最低成本的宣泄方法，就是：告诉别人。</p>
<p>我想，大家都应该遇到过这样的场景：某件事情很让我愤怒，我就会把这种愤怒告诉别人，不然心里不舒服；同样的，遇到很感动的事情，也会抑制不住想要告诉别人。</p>
<h2>二丶非常有价值的内容</h2>
<p>有价值，是指能给人帮助的内容，范围很广，能够解决了别人的难题丶给别人提供了借鉴和参考丶看了能够学到东西等等，甚至是能逗人一乐，这种内容，对于传播者而言，是不会产生负面影响的，他的朋友圈也需要这些内容。</p>
<p>例如，QQ空间上各种考驾照包过技巧丶四六级词汇表等等，对于某些群体来说，都是很有价值的，所以他们乐于转发，这种内容能够传播的关键点在于：不能是烂大街的内容，必须含有一些平时很少用到的，即使一辈子都用不上的，总之是比较新颖的。</p>
<p>再例如，有很多广告为了能够达到自动传播的效果，都制作得非常恶搞，例如&ldquo;七喜搞笑广告&rdquo;&ldquo;跑鞋搞笑广告(与死神争分夺秒）&rdquo;等等，其价值点在于能够逗人一乐，而搞笑的玩意，向来很多人传播，很少有人在意是不是广告。</p>
<p>有价值的内容能够传播，不仅仅是因为传播者需要，而是他身边的部分人也有这个需求，这其实是一个群体的关注点。</p>
<h2>三丶想说但不敢说的内容</h2>
<p>微博上有不少的毒舌，说话尖酸刻薄，动辄滚粗骂人，他们的内容为什么有那么多人传播呢？</p>
<p>其实，毒舌是说出了传播者自己心里想说却不敢说的话，，他随手转发到自己的微博里面指桑骂槐，被骂的人也不能说什么，这效果跟借刀杀人差不多。</p>
<p>想骂谁，转发一个相关的微博就是了，何必自己说出口得罪人呢，他们就是这么想的。</p>
<p>如果能够说出别人都认同，却不敢说出口的话，一定能引来大量转发。</p>
<h2>四丶能成为谈资的内容</h2>
<p>这些其实是有争议的内容，或者是模糊不清的事情。比如各种小道消息丶内幕丶八卦丶谣言等等，当别人讨论的时候，就已经达到传播的目的了。</p>
<p>最简单的例子，当各大明星传出绯闻的时候，他们并不急于表态，而是选择沉默上一段时间，等别人都讨论够了，再出来澄清，引发新一轮争议，这其实是故意成为别人谈资的一种炒作方法。要是绯闻放在普通人身上，肯定是要迫不及待跑出来澄清的。</p>
<h2>五丶利诱传播</h2>
<p>天下熙熙皆为利来，天下攘攘皆为利往。利诱是最实际的，直接告诉别人，你传播了会得到什么好处，觉得划得来的人立马就给传播了。</p>
<p>这个的案例实在是太多了，如腾讯当初的微博邀请码丶百度网盘的推广扩容任务丶DZ论坛的推广ip送论坛币功能，都是非常不错的利诱推广案例。</p>
<p>利诱的效果是最明显的，只要给出的价钱合适，明星都可以帮忙传播。</p>
<p>综合上面五个传播的场景，不难发现，别人传播我们的内容，其实都是有原因的，也就是说，他们是被驱动传播的，这种驱动，有的是基于内容本身，有的则是内容以外的东西。</p>
<!--content_text-->', CAST(0x0000A4080161BB78 AS DateTime), N'电脑病毒的传播，一般都主动的，主动感染，主动复制，主动散发到与之产生联系的电脑。而信息的病毒式传播，则是被动的，需要驱动访客传播才行，不然根本没有办法。', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (33, 204, 1, 0, 0, 0, 0, 1, 0, 0, 0, N'admin', 0, 2, 0, N'品牌故事所触发的5种消费者反应', N'', N'<p>几乎所有的经典品牌都有自己的&ldquo;故事&rdquo;，而正是因为这些广为流传的品牌故事，让消费者乐意从一而终。所以，好品牌一定要懂得讲故事！用故事的形式设置一个情境，让消费者进入情境，感受品牌所传递的信息和情感。那么，我们需要通过品牌故事触发消费者什么样的情感和反应？</p>
<p>唯美的韩剧总是吸引无数少男少女，而一些好的品牌广告就像韩剧一样，他们做到了让目标消费者对号入座，他们把自己想象成广告片中的男女主角，去感受那一份感动、喜悦、刺激，哪怕是痛苦。</p>
<p>我们发现几乎所有的经典品牌都有自己的&ldquo;故事&rdquo;，Dior、Zippo、迪斯尼、channel、可口可乐&hellip;&hellip;而正是因为这些广为流传的品牌故事，让消费者乐意从一而终。所以，好品牌一定是要懂得讲故事的！用故事的形式设置一个情境，让消费者进入情境，感受品牌所传递的信息和情感，这是故事营销的精髓，这种方式远比生硬地强调产品性能要高明很多。</p>
<p>那么，我们需要通过品牌故事触发消费者什么样的情感和反应？结合Hazel Barkworth、Mark Di Somma等学者的观点以及时代的特征，我们可以将能够有效触发当代消费者情感认同的&ldquo;反应&rdquo;概括为以下几种：</p>
<h2>1、让消费者感受到&ldquo;归属感、参与感&rdquo;</h2>
<p>任何人都不愿意孤立，我们喜欢同一个球队、喜欢一个明星，因为从中能找到共同话题和情感共鸣。品牌需要提供一种情感、情节、情境，让消费者能够&ldquo;进入到&rdquo;我们，让消费者觉得我们是一伙人，比如动感地带M-zone人、比如果粉、米粉的概念。</p>
<h2>2、让消费者感受到高效率和条理性</h2>
<p>&mdash;&mdash;消费者总是希望更加聪明一些，事情能进展得更快，并让人觉得他们是负责任的。他们渴望品牌能给他们带来帮助，让他们的工作、生活更高效、更有条理，而不仅仅是满足一些物质上的需求。</p>
<h2>3、让消费者感觉到自己更有创造力</h2>
<p>&mdash;随着如3D打印等技术的出现，很快每个人都将成为一个生产者，他们能够创造自己想要的。品牌如果能够赋予消费者更多的改变的能力，让他们通过产品展现与众不同的创造力，这自然是他们所乐意尝试和接受的。</p>
<h2>4、让消费者感觉到被理解</h2>
<p>随着世界变得越来越小，人们的压力持续上升，逃避高压的生活显得越来越有吸引力。林友清认为，品牌需要直面这一切，让消费者感受到情绪上的共振，给予消费者另外一种生活方式的理由。我们可以看到现在许多品牌的诉求直指&ldquo;放纵自己&rdquo;、&ldquo;释放自己&rdquo;，让消费者找到了一种知音，更重要的是找到了自我释放的理由。</p>
<h2>5、让消费者感觉到他们所做的事情是有意义的</h2>
<p>人们想在他们生活中的各个方面都能达到富足和圆满，他们渴望从他们所做的事情中获得深度和意义。为消费者找到事情的意义和价值，因为人们总是会趋向于那些能理解自己的人、事、物的。</p>
<!--content_text-->', CAST(0x0000A4080161C730 AS DateTime), N'几乎所有的经典品牌都有自己的“故事”，而正是因为这些广为流传的品牌故事，让消费者乐意从一而终。所以，好品牌一定要懂得讲故事！用故事的形式设置一个情境，让消费者进入情境，感受品牌所传递的信息和情感。那么，我们需要通过品牌故事触发消费者什么样的情感和反应？', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (34, 204, 1, 0, 0, 0, 0, 1, 0, 1, 0, N'admin', 0, 9, 0, N'今天装逼只为明天引爆，小众营销不要死在大众路上', N'/Upload/Images/2019/03/12/t_c-ggtgtr.png', N'<p>原标题：小众营销： 不要死在奔向大众的路上</p><p>你的&amp;ldquo;体验&amp;rdquo;很快被别人迭代</p><p>用产品驱动营销，可以四两拨千斤。理论派强调的这个说法，我很认同，这是你想我想他也想的事。</p><p>但是，真的能用&amp;ldquo;产品&amp;rdquo;来驱动营销的，毕竟是极少数，而大多数产品都身处于水深火热，差异不大。</p><p>多数时候，产品没有进入市场之前，谁看谁知道你的产品是顾客很需要的！但进入市场之后才发现，它可能是市场不需要的。</p><p>因为你的产品缺乏个性和特色，最后不是顾客不需要，而是顾客有了更喜欢的；因为你的全新理念和痛点精准，感动了几个身边朋友、三五个社群部落、一帮&amp;ldquo;友情赞助者&amp;rdquo;，你按捺不住，全新产品满血动力推出了，结果发现没有十月怀胎不可能生出孩子。</p><p>因为缺乏竞争力，导致你的产品看似&amp;ldquo;需要&amp;rdquo;，实则变成了&amp;ldquo;需而不要&amp;rdquo;。</p><p>因为缺乏承诺兑现，他即便通过口碑传播了解了你，会欣然&amp;ldquo;体验&amp;rdquo;你，但一次&amp;ldquo;体验&amp;rdquo;之后又会放弃你。</p><p>你的产品很快被别的产品取代，你的故事很快被别的故事岔开，你的&amp;ldquo;体验&amp;rdquo;很快被别人迭代，你精心勾兑的&amp;ldquo;产品经理学说&amp;rdquo;很快被人忘记。</p><p>或许以前消费者更看重产品功能需求，现在还看重情感、价值观、文化，许多新产品以此成为差异化的手段。但当大家都做到了，并习以为常的时候，这种差异化思路也就到头了？</p><blockquote><p>故事总有讲完的一天，制造的紧迫感和荣誉感总有稀释的时候，人们的新鲜感总有疲倦的时候，消费者总有回归冷静的一天。</p></blockquote><p>于是，这个神奇的年代里，造就了黄太吉等等&amp;ldquo;快品牌&amp;rdquo;新星神话。但是这个速变的年代里，也不断拆穿这些新星，大起大落，震荡加快，一闪而过。</p><p>只有少数人例外，那就是能够坚持本质的人。他们最清楚什么玩法是靠不住的。</p><p>多少人的装逼，只为明天的引爆</p><p>消费者需求变得多样化，顾客群体面临碎片化，&amp;ldquo;粉丝经济+社会化营销&amp;rdquo;的兴起，把传统企业打得措手不及。它们臃肿的决策体系、冗长的渠道体系、呆板的品牌建设手法，让它们自己都失去了底气。</p><p>连最迟钝的传统企业也已经普遍认识到了一个事实：单靠传统购买式推广无法覆盖受众，单靠交易无法形成持续，单靠一个部门的创意无法通杀，单靠产品已无法有效地增强用户黏性，利用产品开发社区进而聚合社群才能持续获利。</p><p>只不过，传统企业的惯性使然，有心无力。</p><p>看到这一点的，真是不少。</p><p>现在社群林立，有人是追求情怀、江湖地位，有人是为了积资源、赶潮流、甚至挟群要价。但闲聊扯淡的社群越来越多，潜水的群员越来越多。没进入社群着急，进入社群的也着急。</p><p>这些看似小众起步的，无不做着大众的梦想：找到投资、做出品牌、扩大生产，最后还是规模模式，做着大工业时代的美梦。<br/>他们现在的逼格，只是为了大众营销的启动而已。</p><p>他们看重小米，他们关心粉丝营销，不是看重它当初如何成功切入了小众营销的生活场景中去，不是看重如何淬炼产品、有没有工匠精神，而是看重小米如何引爆了用户，最终占领大众市场。</p><p><a href="/Upload/Images/2019/03/12/c-ggtgtr.png"><img class="aligncenter size-full wp-image-564" alt="ggtgtr" src="/Upload/Images/2019/03/12/c-ggtgtr.png" width="1000" height="610"/></a></p><p>专心做&amp;ldquo;小众&amp;rdquo;的人，真的是太少了。小众有小众的做法。小众因为&amp;ldquo;小&amp;rdquo;才有价值，那些小众之死，不是死在小众，而是死在了从小众向大众奔跑的路上。</p><p>伪&amp;ldquo;粉丝营销&amp;rdquo;让&amp;ldquo;做大梦想&amp;rdquo;成&amp;ldquo;做大幻想&amp;rdquo;</p><p>在互联网时代，相当一批互联网原住民的理念是，要忘掉打广告的&amp;ldquo;传统营销方式&amp;rdquo;，要多思考让用户进行传播，尝试&amp;ldquo;粉丝经济&amp;rdquo;。<br/>其实这是非此即彼的扯淡。</p><blockquote><p>传统营销的路径是先告知、再购买、后沉淀忠实用户，而&amp;ldquo;社会化传播+粉丝营销&amp;rdquo;的路径是：先发展一部分忠实用户、他们再扩散、后沉淀更多的忠实用户。</p></blockquote><p>这两条路径对立吗？NO！</p><p>如果你实现了&amp;ldquo;忠实用户的沉淀&amp;rdquo;这个最终目的，抓住了用户人群，两条路径其实殊途同归。</p><p>事实上，我也有过这样那样的理论，但在实际操作中，我有一个基本思考模型：产品打动他，他才会喜欢你；喜欢你，才会形成真实粉丝的积累。</p><p>如果只是借助费用购买的推广手法，打个粉丝营销的概念，只为赚个吆喝，吸引一些&amp;ldquo;关注者&amp;rdquo;或&amp;ldquo;听众&amp;rdquo;，不论是传统的广告，还是新媒体推广，其实都是&amp;ldquo;传统的&amp;rdquo;。这样的&amp;ldquo;购买执行&amp;rdquo;的案子，是任何一个&amp;ldquo;传统的服务机构&amp;rdquo;都可以玩的。</p><p>我总说一点，不论理论有多花哨，不论趋势如何改变，在商业世界中，有两样东西永远不变：用户体验，用户口碑。这是商业的本质。不是围绕两个本质上做大做出闪光点的活儿，纵然花哨无边，也都是扯淡。</p><blockquote><p>&amp;ldquo;用户体验＋用户口碑&amp;rdquo;的结果是什么呢？是积累。</p><p>我聚焦于&amp;ldquo;粉丝营销&amp;rdquo;之后，有一个真实感悟是，小即是大，少即是多，慢也是快。</p><p>比如我提倡这样的&amp;ldquo;做小&amp;rdquo;之道，概括为&amp;ldquo;DFC&amp;rdquo;：</p><p>一、深（Deep）：深挖核心市场、核心人群的深度需求。</p><p>二、快（Fast）：企业人与用户有直接沟通方式（社会化传播方式，社交营销手段），在了解消费群的需求与新动向时，快速做出反应，在产品、体验和理念上形成迭代。</p><p>三、圈（Circle）：在核心市场形成核心消费群（圈层文化），有故事、有观点、有情怀，引发共鸣，逐渐扩大消费群。</p><p>没有&amp;ldquo;DFC&amp;rdquo;这三件事的支撑，就很难有真实的&amp;ldquo;粉丝营销&amp;rdquo;，这最终也是我们常说的&amp;ldquo;基本粉丝盘&amp;rdquo;。不能先与一部分人建立起&amp;ldquo;用户关系&amp;rdquo;，无法形成&amp;ldquo;真正参与&amp;rdquo;（他们顶多观看表演，这已属万幸），更不可能获得信任。当然，更难有&amp;ldquo;引爆&amp;rdquo;、&amp;ldquo;做大&amp;rdquo;、&amp;ldquo;规模化&amp;rdquo;的基础。</p></blockquote><p>我看好那些专心&amp;ldquo;做小&amp;rdquo;的人。因为他们有真正&amp;ldquo;做大&amp;rdquo;的根基。</p><!--content_text-->', CAST(0x0000AA0B01185924 AS DateTime), N'用产品驱动营销，可以四两拨千斤。理论派强调的这个说法，我很认同，这是你想我想他也想的事。但是，真的能用“产品”来驱动营销的，毕竟是极少数，而大多数产品都身处于水深火热，差异不大。', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (35, 204, 1, 0, 0, 0, 0, 1, 0, 1, 0, N'admin', 0, 18, 0, N'内容营销内涵解读：内容货币论', N'/Upload/Images/2019/03/12/t_c-vffv.png', N'<p>当提到内容营销，很多人不一定明白它具体的含义是什么，但是一般都会觉得它好厉害的样子，因为关于内容营销的传说通常都带有&amp;ldquo;营销之王&amp;rdquo;的标签。</p><p>是不是营销之王我就不知道了，我也只是觉得它好厉害的样子，是营销的底层基调。今天从另外一个角度解读一下内容营销的含义，希望能够让大家对内容营销有新的认识。</p><blockquote><p>首先我们来看看内容营销最官方的定义，摘自contentmarketinginstitute.com，美国内容营销研究结构，是内容营销领域的权威：</p><p>Content marketing is the marketing and business process for creating and distributing valuable and compelling content to attract,acquire,and engage a clearly defined and understood target audience-with the objective of driving profitable customer action.</p><p>之所以要摘英文的定义，是因为英文界的内容营销起步早很多。以上这段话翻译成中文大概是：</p><p>内容营销就是通过制作和发布有价值的、有吸引力的内容去吸引、获取和聚集匹配度高的目标人群，最终使这些人产生转化，带来收益。</p></blockquote><p>虽然翻译得很蹩脚，但是总算把基本意思翻译出来了。看似很简单的一个定义，其实有很深的内涵。我们没必要把它背下来，而是要对它进行深入解读，得到启发，做出行动。</p><h2>第一层解读：去渠道化</h2><p>以上定义中，没有提到渠道的问题，因为它根本就没有渠道限制，其实这也是内容营销的威力所在。</p><p>这个去渠道化，有两层含义。一是不分线上线下，线上和线下可以表达同样的内容，只不过承载媒介不一样而已，起码最原始的文字和图片是线上线下通用的；二是线上或者线下的渠道之间也是相互打通的。比如一段采访的音频可以转化成一篇文章、一张信息图，但它表达的内容是一样的。</p><p>最初的内容营销是从线下开始的，我指的是有意识的内容营销。很多企业在这个概念还没有出来之前就已经做起来了，最有代表性的就是世界知名农具企业John Deere。在还没有互联网的时候，它就开始发行一本名为Furrow的杂志，分发到广大的农民朋友（美国农民知识水平都不低）和农业企业手中。目前为止，这本杂志还在持续发行。</p><p>通过阅读这本杂志，农民和农业企业都获得了很多有用的信息和知识，当然也与John Deere这个企业成为老朋友了。John Deere想要做他们的生意，就不用费吹灰之力了。</p><p>如今，互联网的普及为内容营销大大拓宽了渠道，不仅渠道种类多了，而且传播的广度也没什么限制了。一张信息图，可以从很容易从东半球传到西半球，而且若干年之后，这张图还可能被完好无缺地挖出来。时间和空间的限制被打破后，内容营销的春天就要到来了。</p><p>内容营销关注的是内容本身，目的是营销。所以，渠道和载体都只是外衣而已，内容价值才是精髓。就像一个人，无论他穿什么衣服，内涵是基本不变的。</p><p>N年后，搜索引擎、微博、微信、电子邮件、短信、电视、报纸杂志&amp;hellip;&amp;hellip;这些渠道和载体都不知道会变成什么样子了。但是，我们对内容永远是有需求的，不能因为换了个餐具就不吃饭了。所以，不用担心内容营销会过时。</p><h2>第二层解读：内容相当于货币</h2><p>货币的俗称就是钱，就是用来交换（买）东西的媒介。内容营销的过程，其实就是用内容去买东西的过程。只不过这里的东西不是指吃的喝的，也不是房子和车，而是流量、曝光度、交易、品牌形象等等。</p><p><a href="/Upload/Images/2019/03/12/c-vffv.png"><img alt="vffv" src="/Upload/Images/2019/03/12/c-vffv.png" class="aligncenter size-full wp-image-552" width="1000" height="610"/></a></p><p>下面通过一个比喻来详细讲解这个&amp;ldquo;内容货币论&amp;rdquo;：</p><p>非洲大陆中部有一个小村落，很穷，穷到一分钱都没有，所以他们买东西不要钱，而是直接以物易物。有一户人家是种花生的，他们把花生拿到交易集市去换粮食、衣服等生活必需品来维持生活。过了几年，小孩长大了，能帮忙了，花生产量增加了，于是能换到更多其它生活所需的东西，生活水平改善了。后来，大家都知道这户人家是专门种花生的，只要有人来问关于买花生的事，别人就会推荐这户人家。</p><p>在这个故事里，花生就是内容，交易集市就是互联网，去市场交换其它东西的过程，就是营销。一如既往给大家提供花生，久而久之人们都习惯了，只要别人一问就会推荐他，这就是品牌。</p><p>内容营销中，内容实际上充当了货币的角色，利用这些货币，你可以换回来很多东西，比如曝光度、商品交易、信任度、品牌印象。</p><p>交换一方面满足了别人的需求，另一方面也满足了自己的不同需求（维持生活、改善生活）。所以，内容营销的出发点都是需求。行动之前，你必须非常清楚自己想要什么，你的目标人群想要什么。</p><h2>第三层理解：什么样的货币能够获得认可？</h2><p>既然内容就是货币，那么，什么样的货币能够获得认可呢？一般来说，货币都是由特定机构发行的，比如人民币是由中国人民银行发行的，自己决不能私自制造货币。</p><p>但是对于内容营销来说自由得多，你可以私自印制货币，而且必须自己创造自己的货币。这些货币的制造标准只有一个：那就是获得你的目标用户的认可。也就是说，你的内容是具有很强的针对性的，而不是通用的，它们必须非常明确地锚向你的目标人群。</p><p>因此，发行货币之前，必须确定你的目标人群的特征，研究他们需要什么，在此基础上创造内容，才不会出现钱没处花的尴尬。</p><p>我们的机会在哪里？</p><p>如果你经常使用百度，而且发现在百度很多东西都搜不出来，那么，你的机会来了。不是百度的技术不好，而是互联网上在闹内容饥荒。</p><p>一方面是持续的数据大爆炸，另一方面是高质量内容的匮乏。前段时间百度出台的《百度网页质量白皮书》也提到过，高质量的网页比例在减少，低质量网页比例却在上升。所以，如果你找准了自己的利基市场，好好做内容还是比较容易树立权威的。</p><p>由于渠道和载体的弱限制，同一种内容可以做成多种形式，在不同的渠道流通，就像货币在特定范围内可以用在不同的领域一样。所以，如果你的营销策略以内容为出发点，而不是以渠道为出发点就可以有更大的影响面。</p><p>机会其实很多人也看得到，但是最后能够做成的也就那么几个，大多数人还是习惯于围观和吹水。也有一部分人因为想大展拳脚但不会使劲，好像被绑住了手脚，说白了就是没找到方法和思路。</p><!--content_text-->', CAST(0x0000AA0C01184E98 AS DateTime), N'当提到内容营销，很多人不一定明白它具体的含义是什么，但是一般都会觉得它好厉害的样子，因为关于内容营销的传说通常都带有“营销之王”的标签。是不是营销之王我就不知道了，我也只是觉得它好厉害的样子，是营销的底层基调。今天从另外一个角度解读一下内容营销的含义，希望能够让大家对内容营销有新的认识。', NULL, NULL)
INSERT [dbo].[article] ([id], [columnId], [state], [isGood], [isHot], [isTop], [publishFrom], [isOnline], [isExpire], [hasThumbnail], [uid], [username], [replyState], [clicks], [comments], [title], [thumbnail], [content], [thedate], [introduction], [author], [relativeIds]) VALUES (36, 204, 1, 0, 0, 0, 0, 1, 0, 0, 0, N'admin', 0, 62, 0, N'史上营销的五大案例思想', N'', N'<h2>
	一、打1折</h2><p>
	估计大家都喜欢去买打折的商品，因为感觉能便宜很多。其实打折是很多商家的一种变相的赚钱方式。一般都是打7、8折很常见，5折就很少见了。但是，今天要说的这个却是打1折!大家是不是很好奇呢?我们一起来看看吧!</p><p>
	据悉日本东京有个银座绅士西装店。这里就是首创“打1折”销售的商店，曾经轰动了东京。当时销售的商品是“日本GOOD”。他们是这么实行的。首先定出打折销售的时间，第一天打9折，第二天打8折，第三天第四天打7折，第五天第六天打6折，第七天第八天打5折，第九天第十天打4折，第十一天第十二天打3折，第十三天第十四天打2折，最后两天打1折。看起来好像最后两天买东西是最优惠的，是吗?那我们看下面——</p><p>
	商家的预测是：由于是让人吃惊的销售策略，所以，前期的舆论宣传效果会很好。抱着猎奇的心态，顾客们将蜂拥而至。当然，顾客可以在这打折销售期间随意选定购物的的日子，如果你想要以最便宜的价钱购习，那么你在最后的那二天去买就行了，但是，你想买的东西不一定会留到最后那两天。实际情况是：第一天前来的客人并不多，如果前来也只是看看，一会儿就走了。从第三天就开始一群一群的光临，第五天打6折时客人就像洪水般涌来开始抢购，以后就连日客人爆满，当然等不到打1折，商品就全部买完了。</p><p>
	那么，商家究竟赔本了没有?你想，顾客纷纷急于购买到自己喜受的商品，就会引起抢购的连锁反应。商家运用独特的创意，把自己的商品在打5、6折时就已经全部推销出去。“打1折”的只是一种心理战术而已，商家怎能亏本呢?</p><p>
	见过打折促销的，却是没见过如此“打1折”的神奇策略的，我们在佩服商家的聪明生意经的同时，也感受到网络营销的强大奇迹!</p><h2>
	二、一件货</h2><p>
	对买新产品的商家来说，最吸引顾客的无非是“新”，如何再在“新”上继续作文章呢 ?</p><p>
	意大利有个莱尔市场，就是专售新产品的。有些新产品很畅销，许多顾客抢着购卖，没抢到手的，要求市场再次进货，可得到的回答竟是：很抱歉，本市场只售首批，买完为止，不再进货。</p><p>
	对此，有些顾客很不理解，还向旁人诉说。但从此以后，来这里的顾客中意就买，决不犹疑。不难看出，莱尔市场的“割爱”是个绝妙的创意，它能给顾客留下强烈的印象——这里出售的商品都是最新的;要买最新的商品，就得光顾莱尔市场。</p><p>
	这真是“新”上创新的创意!</p><h2>
	三、明亏暗赚</h2><p>
	日本松户市原市长松本清，本是一个头脑灵活的生意人。他经营“创意药局”的时候，曾将当时售价200元的膏药，以80元卖出。由于80元的价格实在太便宜了，所以“创意药局”连日生意兴隆，门庭若市。由于他不顾赔血本的销售膏药，所以虽然这种膏药的销售量越来越大，但赤字却免不了越来越高。</p><p>
	那么，他这样做的秘密在哪里呢?</p><p>
	原来，前来购买膏药的人，几乎都会顺便买些其它药品，这当然是有利可图的。靠着其它药品的利润，不但弥补了膏药的亏损，同时也使整个药局的经营却出现了前所未有的盈余。</p><p>
	这种“明亏暗赚”的创意，以降低一种商品的价格，而促销其它商品，不仅吸引了顾客，而且大大提高了知名度，有名有利，真是一举两得的创意!</p><h2>
	四、“限客进门”销售法</h2><p>
	意大利的菲尔·劳伦斯开办了一家七岁儿童商店，经营的商品全是七岁左右儿童吃穿看玩的用品。商店规定，进店的顾客必须是七岁的儿童，大人进店必须有七岁儿童做伴，否则谢绝入内，即使是当地官员也不例外。商店的这一招不仅没有减少生意，反而有效地吸引了顾客。一些带着七岁儿童的家长进门，想看看里面到底“卖的什么药”，而一些身带其他年龄孩子的家长也谎称孩子只有七岁，进店选购商品，致使菲尔的生意越做越红火。后来，菲尔又开设了20多家类似的商店，如新婚青年商店、老年人商店、孕妇商店、妇女商店等等。妇女商店，谢绝男顾客入内，因而使不少过路女性很感兴趣，少不得进店看一看。孕妇可以进妇女商店，但一般无孕妇女不得进孕妇商店。戴眼镜商店只接待戴眼镜的顾客，其他人只得望门兴叹。左撇子商店只提供各种左撇子专用商品，但绝不反对人们冒充左撇子进店。所有这些限制顾客的做法，反而都起到了促进销售的效果。</p><h2>
	五、一元销售术</h2><p>
	美国人卡尔开了家小店，开始时生意萧条，后来他经过精心计算做出决定，只要顾客拿出一美元，便可以购买店里的任意一件商品。于是招来了大批顾客，销售量超过了附近几家大的百货公司。后来他改行经营绸布店，又在经营方式上出新，决定凡在该店购买10美元商品，可获赠白券一张，积5张白券可兑换蓝券一张，积5张蓝券可兑换红券一张，一张红券可以任意挑选店中的一件商品。这种“卡尔销售术”，使他成为百万富翁。</p><!--content_text-->', CAST(0x0000AA0D01184088 AS DateTime), N'一、打1折估计大家都喜欢去买打折的商品，因为感觉能便宜很多。其实打折是很多商家的一种变相的赚钱方式。一般都是打7、8折很常见，5折就很少见了。但是，今天要说的这个却是打1折!大家是不是很好奇呢?我们一...', N'小A', N'35,34,33,32,31')
SET IDENTITY_INSERT [dbo].[article] OFF
SET IDENTITY_INSERT [dbo].[article_url_set] ON 

INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (1, 1, 0, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (3, 3, 202, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (4, 4, 202, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (5, 5, 202, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (6, 6, 202, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (7, 7, 202, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (8, 8, 202, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (9, 9, 202, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (10, 10, 202, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (11, 11, 202, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (12, 12, 202, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (13, 13, 202, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (14, 14, 202, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (15, 15, 202, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (16, 16, 202, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (17, 17, 202, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (19, 19, 201, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (20, 20, 201, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (21, 21, 201, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (22, 22, 201, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (23, 23, 201, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (24, 24, 201, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (25, 25, 201, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (26, 26, 201, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (27, 27, 201, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (28, 28, 204, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (29, 29, 204, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (30, 30, 204, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (31, 31, 204, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (32, 32, 204, NULL, NULL)
INSERT [dbo].[article_url_set] ([id], [detailId], [columnId], [zdyPath], [zdyUrl]) VALUES (33, 33, 204, NULL, NULL)
SET IDENTITY_INSERT [dbo].[article_url_set] OFF
SET IDENTITY_INSERT [dbo].[pa_admin] ON 

INSERT [dbo].[pa_admin] ([id], [roleId], [uid], [username], [remark], [siteIds], [defaultSiteId], [memberGroupIds]) VALUES (2, 1, 1, N'admin', N'初始管理员', N'xyz', 1, NULL)
SET IDENTITY_INSERT [dbo].[pa_admin] OFF
SET IDENTITY_INSERT [dbo].[pa_admin_menu] ON 

INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (4, 0, N'系统', NULL, 1, NULL, N'Admin', N'', N'', 0, 1, 1, 1, NULL, NULL, NULL, N'system', 5, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (7, 174, N'系统设置', NULL, 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'Admin', N'SysSet', N'Index', 1, 1, 1, 1, NULL, NULL, NULL, N'', 1, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (16, 174, N'站点管理', NULL, 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'Admin', N'Site', N'Index', 1, 1, 1, 1, NULL, NULL, NULL, N'', 2, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (21, 4, N'表管理', N'fa-database', 2, N'', N'Admin', N'', N'', 0, 1, 1, 1, NULL, NULL, NULL, N'', 2, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (23, 21, N'信息表', NULL, 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'Admin', N'InfoTable', N'index', 1, 1, 1, 1, NULL, NULL, NULL, N'', 2, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (24, 21, N'附属表', NULL, 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'Admin', N'SubTable', N'Index', 1, 1, 1, 1, NULL, NULL, NULL, N'', 4, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (25, 21, N'系统表', NULL, 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'Admin', N'Entities', N'index', 1, 1, 1, 1, NULL, NULL, NULL, N'', 1, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (33, 0, N'网站', NULL, 1, N'', N'Admin', N'', N'', 0, 1, 1, 1, NULL, NULL, NULL, N'web', 2, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (34, 0, N'用户', NULL, 1, NULL, N'Admin', NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL, N'users', 3, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (35, 0, N'工具', NULL, 1, NULL, N'Admin', NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL, N'', 6, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (49, 33, N'基础管理', N'fa-th', 2, N'', N'Admin', N'', N'', 0, 1, 1, 1, NULL, NULL, NULL, N'', 1, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (53, 33, N'内容管理', N'fa-file-text-o', 2, N'', N'Admin', N'', N'', 0, 1, 1, 1, NULL, NULL, NULL, N'infoData', 2, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (59, 49, N'栏目管理', NULL, 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'Admin', N'Column', N'Index', 1, 1, 1, 1, NULL, NULL, NULL, N'', 2, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (96, 236, N'会员管理', NULL, 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'Admin', N'Member', N'Index', 1, 1, 1, 1, NULL, NULL, NULL, N'', 1, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (101, 34, N'用户相关', N'fa-user-plus', 2, N'', N'Admin', N'', N'', 0, 1, 1, 1, NULL, NULL, NULL, N'', 4, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (103, 34, N'用户系统', N'fa-cog', 2, NULL, N'Admin', NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL, N'', 3, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (109, 236, N'管理员管理', NULL, 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'Admin', N'Admin', N'Index', 1, 1, 1, 1, NULL, NULL, NULL, N'', 2, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (110, 103, N'角色管理', NULL, 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'Admin', N'Role', N'Index', 1, 1, 1, 1, NULL, NULL, NULL, N'', 5, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (112, 103, N'会员组管理', NULL, 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'Admin', N'MemberGroup', N'Index', 1, 1, 1, 1, NULL, NULL, NULL, N'', 3, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (113, 103, N'部门管理', NULL, 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'Admin', N'Department', N'Index', 1, 1, 1, 1, NULL, NULL, NULL, N'', 4, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (115, 35, N'常用工具', N'fa-wrench', 2, N'', N'Admin', N'', N'', 0, 1, 1, 1, NULL, NULL, NULL, N'', 1, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (123, 101, N'登录锁定记录', NULL, 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'Admin', N'MemberLock', N'Index', 1, 1, 1, 1, NULL, NULL, NULL, N'', 6, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (148, 175, N'缓存管理', NULL, 3, NULL, N'Admin', N'CacheManager', N'Index', 1, 1, 1, 1, NULL, NULL, NULL, N'', 1, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (161, 21, N'分类表', NULL, 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'Admin', N'CategoryTable', N'index', 1, 1, 1, 1, NULL, NULL, NULL, N'', 3, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (162, 115, N'文件管理', N'', 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'Admin', N'FileManager', N'Index', 1, 1, 1, 1, N'', N'', N'', N'', 1, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (171, 174, N'管理菜单', NULL, 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'Admin', N'AdminMenu', N'Index', 1, 1, 1, 1, NULL, NULL, NULL, N'', 5, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (172, 174, N'会员菜单', NULL, 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'Admin', N'MemberMenu', N'Index', 1, 1, 1, 1, NULL, NULL, NULL, N'', 6, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (174, 4, N'系统管理', N'fa-wrench', 2, N'', N'Admin', N'', N'', 0, 1, 1, 1, NULL, NULL, NULL, N'', 1, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (175, 35, N'网站监控', N'fa-th-list', 2, N'', N'Admin', N'', N'', 0, 1, 1, 1, NULL, NULL, NULL, N'', 4, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (201, 0, N'我的工作台', N'', 1, N'', N'Admin', N'', N'', 0, 1, 1, 1, N'', N'', N'', N'desktop', 1, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (202, 201, N'我的账户', N'fa-user-circle', 2, N'', N'Admin', N'', N'', 0, 1, 1, 1, NULL, NULL, NULL, N'', 2, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (206, 202, N'账户安全', N'', 3, N'PageAdmin.Web.Areas.Member.Controllers', N'Member', N'MyLogin', N'Security', 1, 1, 1, 1, N'', N'', N'', N'', 1, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (211, 49, N'模板管理', NULL, 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'Admin', N'TemplateManager', N'index', 1, 1, 1, 1, NULL, NULL, NULL, N'', 4, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (212, 101, N'登录用户管理', NULL, 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'Admin', N'LoginingUser', N'Index', 1, 1, 1, 1, NULL, NULL, NULL, N'', 3, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (216, 174, N'http缓存方案', NULL, 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'Admin', N'HttpCacheSolution', N'Index', 1, 1, 1, 1, NULL, NULL, NULL, N'', 3, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (236, 34, N'用户管理', N'fa-user', 2, N'', N'admin', N'', N'', 0, 1, 1, 1, NULL, NULL, NULL, N'', 1, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (238, 103, N'会员系统设置', N'', 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'admin', N'MemberSet', N'index', 1, 1, 1, 1, NULL, NULL, NULL, N'', 1, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (239, 175, N'日志管理', N'', 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'admin', N'WebLog', N'Index', 1, 1, 1, 1, NULL, NULL, NULL, N'', 2, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (241, 0, N'应用', N'', 1, N'', N'admin', N'', N'', 0, 1, 1, 1, NULL, NULL, NULL, N'app', 10, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (242, 241, N'我的应用', N'fa-download', 2, N'', N'admin', N'', N'', 0, 1, 1, 1, NULL, NULL, NULL, N'', 1, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (243, 242, N'插件管理', N'', 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'admin', N'PluginAdmin', N'index', 1, 1, 1, 1, N'', N'', N'', N'', 1, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (245, 202, N'登录日志', N'', 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'admin', N'MyLoginLog', N'Index', 1, 1, 1, 1, NULL, NULL, NULL, N'', 2, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (271, 242, N'插件安装', N'', 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'Admin', N'PluginInstall', N'Index', 1, 1, 1, 1, N'', N'', N'', N'0', 2, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (282, 201, N'我的应用', N'fa-briefcase', 2, N'', N'admin', N'', N'', 0, 1, 1, 1, N'', N'', N'', N'pluginNode', 1, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (306, 174, N'AccessKey', N'', 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'admin', N'AccessKey', N'Index', 1, 1, 1, 1, N'', N'', N'', N'', 4, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (308, 115, N'在线升级', N'', 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'admin', N'OnlineUpgrade', N'Index', 1, 1, 1, 1, N'', N'', N'', N'', 3, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (309, 242, N'模板安装', N'', 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'admin', N'TemplateInstall', N'Index', 1, 1, 1, 1, N'', N'', N'', N'', 3, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (310, 21, N'附件表', NULL, 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'Admin', N'AttachmentTable', N'Index', 1, 1, 1, 1, NULL, NULL, NULL, N'', 5, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (311, 202, N'资料修改', N'', 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'Member', N'MyLogin', N'UserInfo', 1, 1, 1, 1, N'', N'', N'', N'', 2, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (312, 49, N'站点设置', N'', 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'admin', N'SiteSet', N'index', 1, 0, 1, 1, N'', N'', N'', N'', 1, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (313, 49, N'标签管理', N'', 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'admin', N'Tag', N'index', 1, 0, 1, 1, N'', N'', N'', N'', 3, 0)
INSERT [dbo].[pa_admin_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [target], [pluginName], [zdyUrl], [sysNode], [xuhao], [viewType]) VALUES (314, 115, N'数据库管理', N'', 3, N'PageAdmin.Web.Areas.Admin.Controllers', N'admin', N'DbManager', N'index', 1, 0, 1, 1, N'', N'', N'', N'', 2, 0)
SET IDENTITY_INSERT [dbo].[pa_admin_menu] OFF
SET IDENTITY_INSERT [dbo].[pa_admin_menu_item] ON 

INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (125, 238, N'会员系统设置', N'PageAdmin.Web.Areas.Admin.Controllers', N'MemberSet', N'index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (126, 239, N'网站日志管理', N'PageAdmin.Web.Areas.Admin.Controllers', N'WebLog', N'Index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (129, 243, N'插件管理', N'PageAdmin.Web.Areas.Admin.Controllers', N'PluginAdmin', N'index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (130, 245, N'登录日志', N'PageAdmin.Web.Areas.Admin.Controllers', N'MyLoginLog', N'Index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (136, 7, N'系统设置', N'PageAdmin.Web.Areas.Admin.Controllers', N'SysSet', N'Index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (137, 16, N'站点管理', N'PageAdmin.Web.Areas.Admin.Controllers', N'Site', N'Index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (138, 23, N'信息表', N'PageAdmin.Web.Areas.Admin.Controllers', N'InfoTable', N'index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (139, 24, N'附属表', N'PageAdmin.Web.Areas.Admin.Controllers', N'SubTable', N'Index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (140, 25, N'系统表', N'PageAdmin.Web.Areas.Admin.Controllers', N'Entities', N'index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (145, 59, N'栏目管理', N'PageAdmin.Web.Areas.Admin.Controllers', N'Column', N'Index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (146, 96, N'会员管理', N'PageAdmin.Web.Areas.Admin.Controllers', N'Member', N'Index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (147, 109, N'管理员管理', N'PageAdmin.Web.Areas.Admin.Controllers', N'Admin', N'Index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (148, 110, N'角色管理', N'PageAdmin.Web.Areas.Admin.Controllers', N'Role', N'Index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (149, 112, N'会员组管理', N'PageAdmin.Web.Areas.Admin.Controllers', N'MemberGroup', N'Index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (150, 113, N'部门管理', N'PageAdmin.Web.Areas.Admin.Controllers', N'Department', N'Index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (152, 123, N'登录锁定记录', N'PageAdmin.Web.Areas.Admin.Controllers', N'MemberLock', N'Index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (153, 148, N'缓存管理', N'', N'CacheManager', N'Index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (155, 161, N'分类表', N'PageAdmin.Web.Areas.Admin.Controllers', N'CategoryTable', N'index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (156, 162, N'文件管理', N'PageAdmin.Web.Areas.Admin.Controllers', N'FileManager', N'Index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (157, 171, N'管理菜单', N'PageAdmin.Web.Areas.Admin.Controllers', N'AdminMenu', N'Index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (158, 172, N'会员菜单', N'PageAdmin.Web.Areas.Admin.Controllers', N'MemberMenu', N'Index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (161, 206, N'我的账户', N'PageAdmin.Web.Areas.Admin.Controllers', N'MyLogin', N'Index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (162, 211, N'模板管理', N'PageAdmin.Web.Areas.Admin.Controllers', N'TemplateManager', N'index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (163, 212, N'登录用户管理', N'PageAdmin.Web.Areas.Admin.Controllers', N'LoginingUser', N'Index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (164, 216, N'http缓存方案', N'PageAdmin.Web.Areas.Admin.Controllers', N'HttpCacheSolution', N'Index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (177, 245, N'删除日志', N'PageAdmin.Web.Areas.Admin.Controllers', N'MyLoginLog', N'Delete', N'POST', 0)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (179, 271, N'插件安装', N'PageAdmin.Web.Areas.Admin.Controllers', N'PluginInstall', N'Index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (188, 306, N'AccessKey', N'PageAdmin.Web.Areas.Admin.Controllers', N'AccessKey', N'Index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (192, 308, N'在线升级', N'PageAdmin.Web.Areas.Admin.Controllers', N'OnlineUpgrade', N'Index', N'GET', 1)
INSERT [dbo].[pa_admin_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (193, 309, N'模板安装', N'PageAdmin.Web.Areas.Admin.Controllers', N'TemplateInstall', N'Index', N'GET', 1)
SET IDENTITY_INSERT [dbo].[pa_admin_menu_item] OFF
SET IDENTITY_INSERT [dbo].[pa_admin_permissions] ON 

INSERT [dbo].[pa_admin_permissions] ([id], [uid], [siteIds], [defaultSiteId], [memberGroupIds]) VALUES (2, 33, N'1', 1, N'')
SET IDENTITY_INSERT [dbo].[pa_admin_permissions] OFF
SET IDENTITY_INSERT [dbo].[pa_attachment_1] ON 

INSERT [dbo].[pa_attachment_1] ([id], [parentField], [parentId], [name], [path], [thumbnail], [username], [uid], [state], [xuhao], [size], [thedate]) VALUES (1, N'thumbnail', 18, N'1.jpg', N'/upload/Images/2019/03/12/1746227870.jpg', N'', N'admin', 1, 1, 0, CAST(43.53 AS Decimal(12, 2)), CAST(0x0000AA0E0124E3D9 AS DateTime))
SET IDENTITY_INSERT [dbo].[pa_attachment_1] OFF
SET IDENTITY_INSERT [dbo].[pa_attachment_18] ON 

INSERT [dbo].[pa_attachment_18] ([id], [parentField], [parentId], [name], [path], [thumbnail], [username], [uid], [state], [xuhao], [size], [thedate]) VALUES (1, N'logo', 1, N'logo.png', N'/upload/Images/2019/03/12/1757038250.png', N'', N'admin', 1, 1, 0, CAST(8.23 AS Decimal(12, 2)), CAST(0x0000AA0E0127D31C AS DateTime))
SET IDENTITY_INSERT [dbo].[pa_attachment_18] OFF
SET IDENTITY_INSERT [dbo].[pa_attachment_table] ON 

INSERT [dbo].[pa_attachment_table] ([id], [name], [parentTable], [remark], [uid], [state], [thedate]) VALUES (1, N'pa_attachment_1', N'article', N'', 0, 1, CAST(0x0000ABF30118F1B9 AS DateTime))
INSERT [dbo].[pa_attachment_table] ([id], [name], [parentTable], [remark], [uid], [state], [thedate]) VALUES (2, N'pa_attachment_14', N'feedback', N'', 0, 1, CAST(0x0000ABF30118F1C1 AS DateTime))
INSERT [dbo].[pa_attachment_table] ([id], [name], [parentTable], [remark], [uid], [state], [thedate]) VALUES (3, N'pa_attachment_7', N'pa_column_content_set', N'', 0, 1, CAST(0x0000ABF30118F1C6 AS DateTime))
INSERT [dbo].[pa_attachment_table] ([id], [name], [parentTable], [remark], [uid], [state], [thedate]) VALUES (4, N'pa_attachment_18', N'pa_site', N'', 0, 1, CAST(0x0000ABF30118F1CA AS DateTime))
SET IDENTITY_INSERT [dbo].[pa_attachment_table] OFF
SET IDENTITY_INSERT [dbo].[pa_column] ON 

INSERT [dbo].[pa_column] ([Id], [parentId], [siteId], [name], [columnType], [showName], [level], [path], [isFinal], [tableId], [httpcacheSolutionId], [target], [show], [zdyUrl], [xuhao]) VALUES (22, 0, 1, N'首页', 0, N'', 1, N'', 1, 0, 0, N'_self', 1, N'', 1)
INSERT [dbo].[pa_column] ([Id], [parentId], [siteId], [name], [columnType], [showName], [level], [path], [isFinal], [tableId], [httpcacheSolutionId], [target], [show], [zdyUrl], [xuhao]) VALUES (201, 0, 1, N'成长', 1, N'', 1, N'cz', 1, 80, 0, N'_self', 1, N'', 2)
INSERT [dbo].[pa_column] ([Id], [parentId], [siteId], [name], [columnType], [showName], [level], [path], [isFinal], [tableId], [httpcacheSolutionId], [target], [show], [zdyUrl], [xuhao]) VALUES (202, 0, 1, N'观点', 1, N'', 1, N'gd', 1, 80, 0, N'_self', 1, N'', 3)
INSERT [dbo].[pa_column] ([Id], [parentId], [siteId], [name], [columnType], [showName], [level], [path], [isFinal], [tableId], [httpcacheSolutionId], [target], [show], [zdyUrl], [xuhao]) VALUES (203, 0, 1, N'用户', 1, N'', 1, N'yh', 1, 80, 0, N'_self', 1, N'', 4)
INSERT [dbo].[pa_column] ([Id], [parentId], [siteId], [name], [columnType], [showName], [level], [path], [isFinal], [tableId], [httpcacheSolutionId], [target], [show], [zdyUrl], [xuhao]) VALUES (204, 0, 1, N'营销', 1, N'', 1, N'yx', 1, 80, 0, N'_self', 1, N'', 5)
INSERT [dbo].[pa_column] ([Id], [parentId], [siteId], [name], [columnType], [showName], [level], [path], [isFinal], [tableId], [httpcacheSolutionId], [target], [show], [zdyUrl], [xuhao]) VALUES (207, 0, 1, N'关于', 2, N'', 1, N'about', 1, 0, 0, N'_self', 0, N'', 6)
INSERT [dbo].[pa_column] ([Id], [parentId], [siteId], [name], [columnType], [showName], [level], [path], [isFinal], [tableId], [httpcacheSolutionId], [target], [show], [zdyUrl], [xuhao]) VALUES (208, 0, 1, N'留言 ', 2, N'', 1, N'gwly', 1, 0, 0, N'_self', 0, N'', 7)
SET IDENTITY_INSERT [dbo].[pa_column] OFF
SET IDENTITY_INSERT [dbo].[pa_column_content_set] ON 

INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (85, 10, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (86, 11, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (90, 14, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (91, 15, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (92, 16, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (93, 17, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (94, 18, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (98, 19, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (99, 20, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (101, 22, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (105, 26, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (106, 27, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (109, 30, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (110, 31, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (111, 32, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (115, 36, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (116, 37, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (118, 39, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (119, 40, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (120, 41, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (123, 44, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (157, 78, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (158, 79, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (159, 80, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (160, 81, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (161, 82, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (162, 83, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (163, 84, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (164, 85, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (165, 86, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (166, 87, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (167, 88, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (168, 89, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (169, 90, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (170, 91, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (171, 92, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (172, 93, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (173, 94, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (174, 95, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (175, 96, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (176, 97, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (177, 98, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (178, 99, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (179, 100, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (180, 101, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (181, 102, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (182, 103, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (183, 104, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (186, 107, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (187, 108, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (188, 109, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (196, 117, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (197, 118, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (198, 119, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (199, 120, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (200, 121, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (201, 122, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (203, 124, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (204, 125, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (205, 126, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (206, 127, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (207, 128, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (209, 130, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (210, 131, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (211, 132, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (212, 133, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (213, 134, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (214, 135, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (218, 139, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (219, 140, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (221, 142, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (222, 143, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (223, 144, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (224, 145, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (225, 146, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (226, 147, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (231, 152, N'<p style="text-align:left;"><a href="http://www.softxp.net/zip/sentry10doc.zip" target="_blank"><span style="color:blue;font-size:16px;">网路岗10代资料下载</span></a></p><h2>
	●实时监控电脑桌面/摄像头，并可录像取证</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;可远程观察电脑桌面变化情况，对不规范行为随时启用录像取证功能。全网版的可以跨局域网看到其他城市的电脑桌面。</p><p>
	&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.softbar.com/function/images/view-screen.jpg"/></p><h2>
	●后台自动截取桌面</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;设置后台自动截取桌面，比如每小时截取张数，当打开U盘时候临时截取，休眠状态下不截取等等。截取下来的图片上传至服务器保存。</p><p>
	&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.softbar.com/function/images/screen-rule.jpg"/></p><h2>
	●桌面定期录像</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;设置录像时段后，电脑会自动录像并上传，录像采用mp4的格式，避免了avi导致文件过大情况。</p><p>
		&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.softbar.com/function/images/record-screen.jpg"/></p><h2>
		●自定义应用程序窗口截图</h2><p>
		&nbsp;&nbsp;&nbsp;&nbsp;设置要截取的应用程序，当其窗口处于活跃状态时，会自动截取窗口图片，并上传。</p><p>
			&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.softbar.com/function/images/app-window.jpg"/></p><h2>
			●多窗口监视桌面</h2><p>
			&nbsp;&nbsp;&nbsp;&nbsp;用户可同时观察多达16台电脑或摄像头的画面。</p><p>
				&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.softbar.com/function/images/multi-screen.jpg"/></p>', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (232, 153, N'<p style="text-align:left;"><a href="http://www.softxp.net/zip/sentry10doc.zip" target="_blank"><span style="color:blue;font-size:16px;">网路岗10代资料下载</span></a></p><h2>
	QQ聊天全方位监控</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;详细记录并还原QQ聊天内容，（包括群消息），提供内容搜索功能，所有内容上传服务器备份保存。</p><p>
	&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.softbar.com/function/images/qq-content.jpg"/></p><p><br/></p><h2>
	QQ收发文件监控</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;全面监控QQ收发文件，可设置敏感文件上传至服务器。</p><p><br/></p><h2>
	与聊天相关的规则设置规则</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;限制只能上指定的QQ号，敏感消息即时报警，记录 QQ收发文件监控并根据需要上传至服务器等。</p><p>
	&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.softbar.com/function/images/qq-rule.jpg"/></p><p>
	&nbsp;&nbsp;&nbsp;&nbsp;</p><h2>
	聊天窗口自动截图</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;除了监控聊天文字内容之外，用户还可以设置截取任何一款其他聊天软件的窗口图片，并保存以作日后证据之一。</p><p>
	&nbsp;&nbsp;&nbsp;&nbsp;</p><h2>
	Skype/旺旺等其他聊天内容监控</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;可详细记录并还原skype/旺旺常用的聊天内容</p><p>
	&nbsp;&nbsp;&nbsp;&nbsp;</p>', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (233, 154, N'<p style="text-align:left;"><a href="http://www.softxp.net/zip/sentry10doc.zip" target="_blank"><span style="color:blue;font-size:16px;">网路岗10代资料下载</span></a></p><h2>
	专注上网行为管理软件开发13年，可跨局域网、跨地域监控。</h2><p><br/></p><h5><p>
		1.个人电脑行为分析,比如上网习惯、搜索分析、常打开的应用程序。</p><p>
		2.上网规则、上网时间设定，可设置个别电脑完全脱离互联网，设置过滤关键词。</p><p>
		3.网络带宽限制，针对不同的电脑授权不同级别带库流量，网络出入规则设置。</p><p>
		4.分时段屏蔽游戏、视频等与工作无关的网站。</p><p>
		5.记录还原聊天内容和文件传输，QQ传输文件备份至服务器（针对敏感文档）。</p><p>
		6.控制非法热点；比如360wifi等。</p><p>
		7.控制U盘写入，可设置只读不写或完全禁用。</p><p>
		8.全球监控笔记本电脑，丢失追踪、录像取证。</p><p>
		9.IP和域名黑白名单。</p><p>
		10.网络游戏、股票软件等进程的控制。</p><p>
		11.桌面录像取证，多窗口实时监视桌面（跨局域网、跨区域）。</p><p>
		12.IP和域名黑白名单。</p><p>
		13。多种专业报表，并可导出doc/pdf/xls/txt 等多种格式</p><p><br/></p></h5><p><img style="width:722px;height:480px;" src="http://www.softbar.com/function/images/network.jpg" width="806" height="501"/></p><p><br/></p><p><img style="width:682px;height:450px;" src="http://www.softbar.com/function/images/web-control.jpg" width="563" height="363"/></p><p><br/></p><p><img style="width:590px;height:851px;" src="http://www.softbar.com/function/images/pc-activity.jpg" width="563" height="363"/></p><p><img style="width:435px;height:898px;" src="http://www.softbar.com/function/images/monitor-log.jpg" width="563" height="363"/></p>', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (234, 155, N'<p style="text-align:left;"><a href="http://www.softxp.net/zip/sentry10doc.zip" target="_blank"><span style="color:blue;font-size:16px;">网路岗10代资料下载</span></a></p><h2>&nbsp; &nbsp;
	●控制移动U盘（移动硬盘）。</h2><p>&nbsp; &nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;可实现只读不能写，或完全禁用U盘；拷贝敏感文件报警，并上传到服务器；打开U盘时候可以马上截取桌面图片。</p><p>&nbsp; &nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.softbar.com/function/images/udisk-control.jpg"/></p><h2>&nbsp; &nbsp;
	●网页外发文件控制。</h2><p>&nbsp; &nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;控制QQ聊天软件发送文件，控制发送网邮，针对邮件域名设置域名黑名单，敏感文件删除时自动备份至服务器。</p><p>&nbsp; &nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.softbar.com/function/images/doc-control.jpg"/></p><h2>&nbsp; &nbsp;
	●禁用无线wifi。</h2><p>&nbsp; &nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;防止通过手机wifi传输文件。</p><p><br/></p><h2>&nbsp; &nbsp;
	●备份QQ传输的文件，敏感文件上传至服务器用以取证。</h2><p>&nbsp; &nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;QQ是很多设计人员或开发人员的首选传输文件方式，网路岗可以全面监控聊天记录和传输文件内容，并能设置电脑只允许上指定的公司QQ。</p><p><br/></p>', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (235, 156, N'<p style="text-align:left;"><a href="http://www.softxp.net/zip/sentry10doc.zip" target="_blank"><span style="color:blue;font-size:16px;">网路岗10代资料下载</span></a></p><h2>
	●全球监控笔记本电脑，丢失追踪、录像取证。</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;当笔记本离开局域网，不管在咖啡店或机场，仍然可以对其电脑行为进行实时监控；如果电脑不慎丢失或被盗，一旦电脑安全系统被破解闯入，管理端便可以远程打开电脑桌面/摄像头，进行录像取证；同时记录所在地IP地址便于报案。</p><p>
	&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.softbar.com/function/images/view-screen.jpg"/></p><h2>
	●笔记本不在线时，电脑行为事后上传。</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;笔记本不在线时，用户的电脑行为同样会记录下来，包括U盘拷贝，文件操作,定期桌面录像等等，等再次接入互联网时自动上传记录至服务器。</p><h2>
	●记录笔记本U盘拷贝文件。</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;笔记本因为长期处于流动状态，电脑文件很容通过U盘拷贝出去，网路岗可记录U盘拷贝文件，上传敏感文件，也可以完全禁用U盘。</p><p>
	&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.softbar.com/function/images/udisk-control.jpg"/></p><p><br/></p>', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (236, 157, N'<p style="text-align:left;"><a href="http://www.softxp.net/zip/sentry10doc.zip" target="_blank"><span style="color:blue;font-size:16px;">网路岗10代资料下载</span></a></p><p><img style="width:722px;height:480px;" src="http://www.softbar.com/function/images/network.jpg" width="806" height="501"/></p><h2>
	●局域网常见上网活动</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;可以监控到局域网电脑浏览网页、发邮件、网上搜索、发表帖子，FTP上传、telnet，能记录电脑的文件操作、打开关闭应用程序、拷贝U盘文件、文件删除、文件打印、安装卸载软件等。</p><p>
	&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.softbar.com/function/images/monitor-log.jpg"/></p><h2>
	●局域网电脑聊天记录</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;可以监控QQ/Skype/旺旺等聊天记录，以及QQ传输的文件内容，敏感文件上传至服务器。</p><p>
	&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.softbar.com/function/images/qq-content.jpg"/></p><h2>
	●局域网网络控制</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;可以控制局域网单台电脑的上网带宽，设置网络出入规则，类似防火墙功能，可是设置电脑完全隔离互联网或局域网。</p><h2>
	●局域网电脑管理</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;查看电脑软件配置、硬件配置、软件安装信息、注册表信息、进程及后台服务信息等。</p><p>
	&nbsp;&nbsp;&nbsp;&nbsp;<img style="width:753px;height:620px;" src="http://www.softbar.com/function/images/pc-control.jpg" width="846" height="643"/></p><h2>
	●配置电脑上网过滤规则、电脑操作规则、报警规则。</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;规则内容包括：屏幕截取、设备控制、移动盘规则、上网过滤规则、进程规则、QQ规则等等。</p><p>
	&nbsp;&nbsp;&nbsp;&nbsp;<img style="width:760px;height:560px;" src="http://www.softbar.com/function/images/pc-rules.jpg" width="562" height="375"/></p><p><br/></p>', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (237, 158, N'<p style="text-align:left;"><a href="http://www.softxp.net/zip/sentry10doc.zip" target="_blank"><span style="color:blue;font-size:16px;">网路岗10代资料下载</span></a></p><h2>
	●监控通过outlook/foxmail 收发工具收发的邮件</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;电脑使用者用工具软件收发邮件时，可以记录邮件的附件和内容。</p><p>
	&nbsp;&nbsp;&nbsp;&nbsp;<img style="width:750px;height:639px;" src="http://www.softbar.com/function/images/email-monitor.jpg" width="797" height="555"/></p><h2>
	●监控网页发送邮件和附件</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;通过网页发送邮件时，能记录邮件全文和粘贴的附件。</p><p><br/></p>', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (238, 159, N'<p style="text-align:left;"><a href="http://www.softxp.net/zip/sentry10doc.zip" target="_blank"><span style="color:blue;font-size:16px;">网路岗10代资料下载</span></a></p><p><img style="width:722px;height:480px;" src="http://www.softbar.com/function/images/network.jpg" width="806" height="501"/></p><h2>
	●电脑上网过滤</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;支持各类网址库过滤、关键词过滤、搜索过滤。</p><h2>
	●网络流量控制/网络控制</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;限制电脑上网流量带宽，网络出入规则，可设置电脑不能上外网或上内部局域网。</p><h2>
	●电脑聊天监控</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;可监控QQ/skype等常用聊天内容，可记录QQ传输文件内容。</p><h2>
	●电脑设备控制</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;可禁用u盘，共享wifi，可监控移动盘拷贝文件，设置u盘只读不能写。</p><h2>
	●电脑屏幕监控及录像</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;可定时截取桌面图片，或定时桌面录像，并上传至服务器以做证据。</p><h2>
	●电脑资产管理</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;可集中查阅电脑基本软件硬件配置情况，修改注册表，查看硬盘文件，安装的软件信息。</p><p>
	&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.softbar.com/function/images/monitor-log.jpg"/></p>', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (239, 160, N'<p style="text-align:left;"><a href="http://www.softxp.net/zip/iptool(1.5).zip" target="_blank"><span style="color:blue;font-size:16px;">下载 iptool 1.5 for win10</span></a></p><h2>
	●独立纯绿色ip分析工具/网路岗10代里附带</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;用户不用做任何安装，直接解压到一个目录下运行即可。</p><p>
	&nbsp;&nbsp;&nbsp;&nbsp;<img style="width:731px;height:509px;" src="http://www.softbar.com/function/images/iptool1.jpg" width="838" height="510"/></p><h2>
	●抓包之前，设置“捕包选项”</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;1、选择好捕包网卡</p><p>
	&nbsp;&nbsp;&nbsp; 2、协议过滤 通常情况下，可不选，除非您对协议类型较为熟悉。</p><p>
	&nbsp;&nbsp;&nbsp; 3、设置捕包缓冲确省的捕包缓冲区大小为 1M，如果您的要追踪的网络规模较大，可适当调大该值；另外，如果追踪主机 CPU 处理能力不够，也需加大缓冲；否则，可能出现丢包的情况。</p><p>
	&nbsp;&nbsp;&nbsp; 4、IP过滤 IP过滤里可以设置想要捕包的IP地址或是设置要排除的IP地址等信息。</p><p>
	&nbsp;&nbsp;&nbsp; 5、端口过滤 端口过滤过滤里可以设置想要捕包的端口或是设置要排除过滤的端口等信息。</p><p>
	&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.softbar.com/function/images/iptool2.jpg"/></p><h2>
	●通讯协议分析</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;用户按下“开始”按钮启动捕包功能后，列表框中会自动显示出符合条件的数据包，并附带简单的解析。选中“分析”左边和右下部分是分析结果，右上部是原始二进制代码，选中左边某一条目时，在右边二进制区域的色块和其一一对应。</p><h2>
	●二进制数据查找</h2><p>
	&nbsp;&nbsp;&nbsp;&nbsp;用户除了能查找文本数据外，还可以查找二进制数据。具体方法见下图:</p><p>
	&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.softbar.com/function/images/iptool3.jpg"/></p>', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (240, 161, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (241, 162, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (243, 164, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (244, 165, N'<style>.container-fluid {padding: 0px;}
.box {margin:0 5px;margin-bottom: 16px; float: left;width: 220px; border:1px #e1e0e1 solid; padding:8px; background:#FFF; box-shadow: rgba(34, 25, 25, 0.2) 0px 1px 3px;border-radius: 4px 4px 4px 4px;}
  .box a {display:block;height:140px;clear:both;overflow:hidden;}
.box img {max-width: 100%;}
.box img:hover{opacity:0.8; }
.box .title {width: 220px;height: 25px;margin: 0 auto;line-height: 25px;text-align: center;color: #666;font-size: 12px;
overflow: hidden;}</style><div id="masonry" class="container-fluid"><div class="box"><a rel="group" target="_blank" href="/e/upload/s1/product/image/2016/04/08121944.png" title="日志浏览"><img alt="日志浏览" src="/e/upload/s1/product/image/2016/04/08121944.png"/></a><p style=" text-align:center;">日志浏览</p></div><div class="box"><a rel="group" target="_blank" href="/e/upload/s1/product/image/2016/04/08122043.jpg" title="智能截屏"><img alt="智能截屏" src="/e/upload/s1/product/image/2016/04/08122043.jpg"/></a><p style=" text-align:center;">智能截屏</p></div><div class="box"><a rel="group" target="_blank" href="/e/upload/s1/product/image/2016/04/08122155.jpg" title="QQ控制"><img alt="QQ控制" src="/e/upload/s1/product/image/2016/04/08122155.jpg"/></a><p style=" text-align:center;">QQ控制</p></div><div class="box"><a rel="group" target="_blank" href="/e/upload/s1/product/image/2016/04/08122236.jpg" title="IP报文分析"><img alt="IP报文分析" src="/e/upload/s1/product/image/2016/04/08122236.jpg"/></a><p style=" text-align:center;">IP报文分析</p></div><div class="box"><a rel="group" target="_blank" href="/e/upload/s1/product/image/2016/04/08122328.jpg" title="邮件记录"><img alt="邮件记录" src="/e/upload/s1/product/image/2016/04/08122328.jpg"/></a><p style=" text-align:center;">邮件记录</p></div><div class="box"><a rel="group" target="_blank" href="/e/upload/s1/product/image/2016/04/t_08122537.jpg" title=""><img alt="" src="/e/upload/s1/product/image/2016/04/t_08122537.jpg"/></a><p style=" text-align:center;">&quot;简易型&quot;主界面</p></div><div class="box"><a rel="group" target="_blank" href="/e/upload/s1/product/image/2016/03/tpic_t_31140204.jpg" title=""><img alt="" src="/e/upload/s1/product/image/2016/03/tpic_t_31140204.jpg"/></a><p style=" text-align:center;">&quot;简易型&quot;主界面</p></div></div>', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (249, 170, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (251, 172, N'<p style="text-indent:2em;"><span style="font-family:SimSun;font-size:18px;">公司自主研发多项前沿技术，拥有超高层工程、基础设施工程、绿色工程、石油化工等多类工程施工核心技术，累计取得科技成果200多项：开发的“装配式低位顶升模架体系”、“超宽预应力混凝土斜拉桥关键技术”中关于钢锚梁设计与施工等多项技术达国际领先水平；独立研发的“基于生态建设领域综合施工技术”、“地下空间逆作法施工集成技术”“大型化工储罐库区工程施工集成技术”达到了国际先进水平；“超宽幅斜拉桥H型主塔施工技术”、“基于石化罐区工程的工业综合自动化系统应用关键技术”、“敏感地区下城市共同管沟施工扰动控制技术研究”、“地源热泵地埋管施工可靠性研究及施工关键技术”等多项技术达到国内领先水平。公司拥有国家专利技术98项,其中发明专利17项，近8年取得省部级工法68项，国家级工法6项，荣获省部级科技进步奖29项。主编的关于盐渍土地区建设我国第一本国家标准——《盐渍土地区建筑技术规范》，内容总体达到国际先进水平。</span></p>', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (252, 173, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (253, 174, N'<p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/fwjs/1.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">苏州中南中心（729米）</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/fwjs/2.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">重庆瑞安超高层二三期（468米）</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/fwjs/3.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">九龙仓苏州国际金融中心（450米）</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/fwjs/4.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">镇江苏宁广场（341米）</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/fwjs/5.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">无锡国金中心（339米）</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/fwjs/6.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">深圳前海世茂（330米）</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/fwjs/7.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">世茂浙江之门（279.16米）</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/fwjs/8.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">福州世茂国际中心（274.48米）</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/fwjs/9.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">上海会德丰广场（270.48米）</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/fwjs/10.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">太原信达国际金融中心（266米）</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/fwjs/11.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">福州宇洋·中央金座（258.65米）</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/fwjs/12.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">重庆瑞安超高层一期（255.8米）</span></p><p><br/></p>', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (254, 175, N'<p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/jcss/1.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">东湖通道</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/jcss/2.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">武汉三官汉江公路大桥</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/jcss/3.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">武汉四环线汉江特大桥</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/jcss/4.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">江汉六桥引桥</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/jcss/5.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">武咸公路改造工程</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/jcss/6.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">重庆融侨大道螺旋桥</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/jcss/7.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">杨泗港快速通道</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/jcss/8.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">二环线龙阳大道改造工程</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/jcss/9.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">雄楚大街改造工程</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/jcss/10.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">金口新城配套工程</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/jcss/11.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">长江大道</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/jcss/12.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">太原南站站前广场及配套设施工程</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/jcss/13.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">城际铁路黄冈东站</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/jcss/14.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">怀化舞水河综合治理工程</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/jcss/15.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">重庆化龙湖改造工程</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/jcss/16.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">天津梅江会展中心一、二期</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/jcss/17.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">东湖国家自主创新示范区公共服务中心</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/jcss/18.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">湖北省电力公司调度通信楼</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/jcss/19.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">南京华能电厂</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/jcss/20.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">陕西渭河电厂</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/jcss/21.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">武昌热电厂</span></p><p><br/></p>', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (255, 176, N'<p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/gyaz/1.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">北京京东方</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/gyaz/2.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">德国大众厂房</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/gyaz/3.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">上海正大广场</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/gyaz/4.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">天津海关</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/gyaz/5.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">新疆会展中心</span></p><p><br/></p>', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (256, 177, N'<p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/syhg/1.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">舟山液体化工品中转基地</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/syhg/2.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">奥德费尔码头仓储有限公司天津南港工业区液体石化仓储项目</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/syhg/3.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">厦门海沧液体化工码头</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/syhg/4.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">天津滨海南港石油仓储有限公司80万立方油库一期施工总承包项目</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/syhg/5.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">天津中石油汇鑫油品储运有限公司65万立方油库</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/syhg/6.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">印尼春金（天津）油脂有限公司罐体安装工程</span></p><p><br/></p><p style="text-align:center;"><img title="" alt="" src="/e/images/c3b3/jyly/syhg/7.jpg" width="500"/></p><p style="text-align:center;"><span style="font-family:宋体;font-size:16px;">中石油汇鑫30万方库容补建工程</span></p><p><br/></p>', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (257, 178, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (258, 179, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (259, 180, N'', NULL)
GO
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (261, 182, N'<ol style="list-style-type: decimal;" class=" list-paddingleft-2"><li><p>人才理念</p></li><li><p>用人唯才，人尽其才。</p></li><li><p>人才是企业的灵魂，</p></li><li><p>公司视人才为最大财富，始终把人才作为企业发展的创业之本、竞争之本、发展之本。公司为员工提供一个能发挥才能的宽广舞台，展示才华的广阔空间，做到发现人才、培养人才</p></li><li><p>尊重人才、发展人才。

 &nbsp; &nbsp; &nbsp; &nbsp;</p></li><li><p>注重人才的引进和再培养，配套全方位的技术培训和业务培训，增强各层次员工在工作上的实际操作能力，做到以人为本、任人唯贤、人尽其才。

 &nbsp; &nbsp; &nbsp; &nbsp;</p></li><li><p>我们有一支年轻、高学历的员工</p></li><li><p>队伍、一个和谐、勤勉的工作氛围、一种共同发展的团队精神。

 &nbsp; &nbsp; &nbsp; &nbsp;我们相信：正方软件股份有限公司是德才兼备的各类人才施展抱负的理想平台。 <br/></p></li></ol>', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (262, 183, N'<p><strong><span style="font-size:18px;">终端培训师</span></strong></p><p>工作内容:</p><p>1、完善公司培训制度，制定短中长期公司培训战略规划；</p><p>2、负责收集陶瓷行业培训信息资料，分析总结现有培训政策效果，完善培训体系；</p><p>3、组织开发培训课程及编写培训教材；</p><p>4、制定导购星级评定方案，并负责跟踪落实；</p><p>任职要求:</p><p>1、有知名品牌建材行业终端培训3年以上工作经验；</p><p>2、能独立编写相关培训教案，并组织安排培训；</p><p>3、善于专卖店、陶瓷产品知识、终端管理方面培训；</p><p>4、爱岗敬业，能接受长期出差。</p><p><strong>.....</strong><br/></p>', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (263, 184, N'<style type="text/css">.lxtable{border-collapse:collapse;border:1px solid #cccccc;width:100%}
.lxtable td{border:1px solid #cccccc;padding:5px}</style><p><br/></p><table class="lxtable ke-zeroborder" cellspacing="0" cellpadding="0" border="0" align="center"><tbody><tr class="firstRow"><td width="20%" height="21" bgcolor="#e8e8e8"><div align="center"><span style="white-space:nowrap;">公司名称：</span></div></td><td width="80%" height="21"><span style="white-space:nowrap;">中建三局第三建设工程有限责任公司<br/></span></td></tr><tr class="L15"><td width="20%" bgcolor="#e8e8e8"><div align="center"><span style="white-space:nowrap;">通讯地址：</span></div></td><td width="80%"><span style="white-space:nowrap;">武汉市洪山区关南园路2号<br/></span></td></tr><tr class="L15"><td bgcolor="#e8e8e8"><div align="center"><span style="white-space:nowrap;">邮政编码：</span></div></td><td><span style="white-space:nowrap;">430074<br/></span></td></tr><tr class="L15"><td width="20%" bgcolor="#e8e8e8"><div align="center"><span style="white-space:nowrap;">联系电话：</span></div></td><td width="80%"><span style="white-space:nowrap;">027-87802338<br/></span></td></tr><tr class="L15"><td width="20%" bgcolor="#e8e8e8"><div align="center"><span style="white-space:nowrap;">传真号码：</span></div></td><td width="80%"><span style="white-space:nowrap;">027-87423854</span></td></tr><tr class="L15"><td width="20%" bgcolor="#e8e8e8"><div align="center"><span style="white-space:nowrap;">微信公众号：</span></div></td><td width="80%">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
				cscec333<span style="white-space:nowrap;"><br/></span></td></tr><tr class="L15"><td width="20%" bgcolor="#e8e8e8"><div align="center"><span style="white-space:nowrap;">二维码：</span></div></td><td width="80%"><img src="/e/upload/s1/fck/image/2016/11/21/1523161276.jpg" alt=""/><br/></td></tr><tr><td><br/></td><td><br/></td></tr></tbody></table>', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (265, 186, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (266, 187, N'', N'')
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (267, 188, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (268, 189, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (270, 191, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (271, 192, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (272, 193, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (273, 194, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (274, 195, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (275, 196, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (276, 197, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (277, 198, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (278, 199, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (279, 200, N'', NULL)
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (280, 201, N'', N'')
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (281, 202, N'', N'')
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (282, 203, N'', N'')
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (283, 204, N'', N'')
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (286, 207, N'<div class="sublanmu_box sublanmu_box_638"><div class="sublanmu_content sublanmu_content_introduct"><p>姓名: PageAdmin</p><p>性别：男</p><p>学院：中南名族大学</p><p>展业：市场营销<br/></p><p>籍贯： 广东</p><p>座右铭：If you think you can,you can!</p><p>性格爱好：拥有巨蟹座与狮子座的双重特点，喜欢一群人的狂欢，也享受一个人的孤单。性格比较直爽，因此也很容易得罪人。刚认识我的人都会觉得我很 
“冷”，而和我相处久了就会发现我很热情，没办法，谁让巨蟹有坚硬的外壳，柔软的内心呢！喜欢运动，各种运动都能沾点边，还喜欢听歌和唱歌，不过唱歌水平
 就不值得一提啦！我还很喜欢看书，看各种人物传记，揣摩传记中主角的人生，还喜欢看一些经济类的书籍，因为我也梦想着有一天也能创业。一直以来都有个向
 往，就是去流浪，最想去的地方有乌镇、丽江、大理，希望在毕业前能去做这么一件疯狂的事情！</p></div></div>', N'')
INSERT [dbo].[pa_column_content_set] ([id], [columnId], [content], [shareColumnIds]) VALUES (287, 208, N'', N'')
SET IDENTITY_INSERT [dbo].[pa_column_content_set] OFF
SET IDENTITY_INSERT [dbo].[pa_column_template_set] ON 

INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (132, 10, N'列表页/InfoList.cshtml', N'内容页/InfoContent.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (133, 11, N'列表页/InfoList.cshtml', N'内容页/InfoContent.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (137, 14, N'列表页/InfoList.cshtml', N'内容页/InfoContent.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (138, 15, N'列表页/InfoList.cshtml', N'内容页/InfoContent.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (139, 16, N'列表页/InfoList.cshtml', N'内容页/InfoContent.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (140, 17, N'列表页/InfoList.cshtml', N'内容页/InfoContent.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (141, 18, N'列表页/InfoList.cshtml', N'内容页/InfoContent.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (145, 19, N'产品栏目/index.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (146, 20, N'产品栏目/index.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (148, 22, N'首页/Index.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (152, 26, N'新闻中心/CompanyNew.cshtml', N'新闻中心/新闻详情页/DetailsPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (153, 27, N'新闻中心/IndustryNew.cshtml', N'新闻中心/新闻详情页/DetailsPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (156, 30, N'自定义单页/CustomPage.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (157, 31, N'自定义单页/CustomPage.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (158, 32, N'自定义单页/CustomPage.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (162, 36, N'人力资源/Idea.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (163, 37, N'人力资源/Recruit.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (165, 39, N'自定义单页/CustomPage.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (166, 40, N'自定义单页/CustomPage.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (167, 41, N'自定义单页/CustomPage.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (170, 44, N'自定义单页/CustomPage.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (204, 78, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (205, 79, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (206, 80, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (207, 81, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (208, 82, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (209, 83, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (210, 84, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (211, 85, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (212, 86, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (213, 87, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (214, 88, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (215, 89, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (216, 90, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (217, 91, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (218, 92, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (219, 93, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (220, 94, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (221, 95, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (222, 96, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (223, 97, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (224, 98, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (225, 99, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (226, 100, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (227, 101, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (228, 102, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (229, 103, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (230, 104, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (233, 107, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (234, 108, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (235, 109, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (243, 117, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (244, 118, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (245, 119, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (246, 120, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (247, 121, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (248, 122, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (250, 124, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (251, 125, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (252, 126, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (253, 127, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (254, 128, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (256, 130, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (257, 131, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (258, 132, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (259, 133, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (260, 134, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (261, 135, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (265, 139, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (266, 140, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (268, 142, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (269, 143, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (270, 144, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (271, 145, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (272, 146, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (273, 147, N'新闻中心/NewsListPage.cshtml', N'新闻中心/NewsDetailPage.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (278, 152, N'通用单页模板/leftIntroductPage.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (279, 153, N'通用单页模板/leftIntroductPage.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (280, 154, N'通用单页模板/leftIntroductPage.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (281, 155, N'通用单页模板/leftIntroductPage.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (282, 156, N'通用单页模板/leftIntroductPage.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (283, 157, N'通用单页模板/leftIntroductPage.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (284, 158, N'通用单页模板/leftIntroductPage.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (285, 159, N'通用单页模板/leftIntroductPage.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (286, 160, N'通用单页模板/leftIntroductPage.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (287, 161, N'产品中心/List.cshtml', N'产品中心/Detail.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (288, 162, N'产品中心/List.cshtml', N'产品中心/Detail.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (290, 164, N'单页模板/Page.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (291, 165, N'通用单页模板/IntroductPage.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (296, 170, N'新闻中心/NewsList.cshtml', N'新闻中心/Detail.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (298, 172, N'单页模板/Page.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (299, 173, N'单页模板/Page.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (300, 174, N'新闻中心/ImageList.cshtml', N'新闻中心/Detail.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (301, 175, N'新闻中心/ImageList.cshtml', N'新闻中心/Detail.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (302, 176, N'新闻中心/ImageList.cshtml', N'新闻中心/Detail.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (303, 177, N'新闻中心/ImageList.cshtml', N'新闻中心/Detail.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (304, 178, N'单页模板/Page.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (305, 179, N'单页模板/Page.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (306, 180, N'单页模板/Page.cshtml', N'')
GO
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (308, 182, N'单页模板/Page.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (309, 183, N'单页模板/Page.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (310, 184, N'通用单页模板/IntroductPage.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (312, 186, N'新闻中心/NewsList.cshtml', N'新闻中心/Detail.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (313, 187, N'单页模板/Page.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (314, 188, N'产品中心/List.cshtml', N'产品中心/Detail.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (315, 189, N'产品中心/List.cshtml', N'产品中心/Detail.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (317, 191, N'单页模板/Page.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (318, 192, N'单页模板/Page.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (319, 193, N'单页模板/Page.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (320, 194, N'单页模板/Page.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (321, 195, N'单页模板/Page.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (322, 196, N'在线反馈/Feedback.cshtml', N'在线反馈/Feedback.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (323, 197, N'单页模板/Page.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (324, 198, N'单页模板/Page.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (325, 199, N'单页模板/Page.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (326, 200, N'单页模板/Page.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (327, 201, N'新闻中心/NewsList.cshtml', N'新闻中心/NewsDetail.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (328, 202, N'新闻中心/NewsList.cshtml', N'新闻中心/NewsDetail.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (329, 203, N'新闻中心/NewsList.cshtml', N'新闻中心/NewsDetail.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (330, 204, N'新闻中心/NewsList.cshtml', N'新闻中心/NewsDetail.cshtml')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (333, 207, N'单页模板/Page.cshtml', N'')
INSERT [dbo].[pa_column_template_set] ([id], [columnId], [template], [templateDetail]) VALUES (334, 208, N'在线反馈/Feedback.cshtml', N'')
SET IDENTITY_INSERT [dbo].[pa_column_template_set] OFF
SET IDENTITY_INSERT [dbo].[pa_department] ON 

INSERT [dbo].[pa_department] ([id], [parentId], [name], [level], [isFinal], [xuhao]) VALUES (36, 0, N'客服部', 1, 0, 1)
INSERT [dbo].[pa_department] ([id], [parentId], [name], [level], [isFinal], [xuhao]) VALUES (37, 36, N'客服1部', 2, 1, 1)
INSERT [dbo].[pa_department] ([id], [parentId], [name], [level], [isFinal], [xuhao]) VALUES (38, 36, N'客服2部', 2, 1, 2)
SET IDENTITY_INSERT [dbo].[pa_department] OFF
SET IDENTITY_INSERT [dbo].[pa_department_info_permissions] ON 

INSERT [dbo].[pa_department_info_permissions] ([id], [open], [departmentId], [tableId], [canAdd], [canEdit], [canDelete], [canSetTopProperty], [canSetGoodProperty], [canSetHotProperty], [maxNum], [addDefaultState], [editDefaultState], [columnIds], [canResubmitCheck], [canDraft]) VALUES (1, 1, 37, 80, 1, 2, 2, 0, 0, 0, 8, 0, 0, N'11,9', 0, NULL)
SET IDENTITY_INSERT [dbo].[pa_department_info_permissions] OFF
SET IDENTITY_INSERT [dbo].[pa_department_permissions] ON 

INSERT [dbo].[pa_department_permissions] ([id], [departmentId], [menuIds], [menuItemIds]) VALUES (21, 37, N'252,259,260,257,256', N'119')
INSERT [dbo].[pa_department_permissions] ([id], [departmentId], [menuIds], [menuItemIds]) VALUES (22, 38, N'252,259,260,257,256', N'119')
SET IDENTITY_INSERT [dbo].[pa_department_permissions] OFF
SET IDENTITY_INSERT [dbo].[pa_field] ON 

INSERT [dbo].[pa_field] ([id], [tableName], [name], [sysField], [remark], [fieldType], [valueType], [fieldTip], [defaultValue], [valueLength], [decimalAccuracy], [items], [watermark], [thumbnail], [thumbnailWidth], [thumbnailHeight], [rename], [uploadExt], [uploadMaxsize], [isMultipleSelect], [mustItem], [adminListUpdate], [memberListUpdate], [anonymousListUpdate], [adminCanAdd], [memberCanAdd], [anonymousCanAdd], [adminCanEdit], [memberCanEdit], [anonymousCanEdit], [memberGroupIds], [roleIds], [noPermissionContent], [onlyItem], [collectionItem], [orderItem], [searchType], [htmlencode], [zdyContent], [additionalContent], [dataType], [maxNum], [editorStyle], [editorWidth], [editorHeight], [inputParams], [beforeSubmitJs], [tips], [adminListItem], [memberListItem], [listWords], [listWidth], [datasourceOpen], [datasourceTable], [btText], [winWidth], [winHeight], [orderby], [pagesize], [show], [deleteProtect], [xuhao], [ListItem], [DetailItem], [subTableType], [zdyCondition], [valueField], [textField], [textFieldName], [selectDataType], [isMultiLevelTable], [onlySelectFinal]) VALUES (12, N'article', N'title', 1, N'标题', N'text', N'nvarchar', N'', N'', 150, N'', N'', 0, 0, 0, 0, 1, N'', 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, N'', N'', N'', 0, 0, 0, N'fuzzy', 0, N'', N'', N'', 0, N'', N'', N'', N'', N'', N'', 1, 1, 30, N'', 0, N'', N'', N'', N'', N'', 20, 0, 0, 1, 1, 1, NULL, N'', N'', N'', N'', 0, 0, 0)
INSERT [dbo].[pa_field] ([id], [tableName], [name], [sysField], [remark], [fieldType], [valueType], [fieldTip], [defaultValue], [valueLength], [decimalAccuracy], [items], [watermark], [thumbnail], [thumbnailWidth], [thumbnailHeight], [rename], [uploadExt], [uploadMaxsize], [isMultipleSelect], [mustItem], [adminListUpdate], [memberListUpdate], [anonymousListUpdate], [adminCanAdd], [memberCanAdd], [anonymousCanAdd], [adminCanEdit], [memberCanEdit], [anonymousCanEdit], [memberGroupIds], [roleIds], [noPermissionContent], [onlyItem], [collectionItem], [orderItem], [searchType], [htmlencode], [zdyContent], [additionalContent], [dataType], [maxNum], [editorStyle], [editorWidth], [editorHeight], [inputParams], [beforeSubmitJs], [tips], [adminListItem], [memberListItem], [listWords], [listWidth], [datasourceOpen], [datasourceTable], [btText], [winWidth], [winHeight], [orderby], [pagesize], [show], [deleteProtect], [xuhao], [ListItem], [DetailItem], [subTableType], [zdyCondition], [valueField], [textField], [textFieldName], [selectDataType], [isMultiLevelTable], [onlySelectFinal]) VALUES (13, N'article', N'thumbnail', 1, N'缩略图', N'image', N'nvarchar', N'', N'', 100, N'', N'', 0, 0, 300, 300, 1, N'.jpg,.jpeg,.gif,.png', 10240, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, N'', N'', N'', 0, 0, 0, N'', 0, N'', N'', N'', 0, N'', N'', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', 20, 0, 0, 2, 1, 1, NULL, N'', N'', N'', N'', 0, 0, 0)
INSERT [dbo].[pa_field] ([id], [tableName], [name], [sysField], [remark], [fieldType], [valueType], [fieldTip], [defaultValue], [valueLength], [decimalAccuracy], [items], [watermark], [thumbnail], [thumbnailWidth], [thumbnailHeight], [rename], [uploadExt], [uploadMaxsize], [isMultipleSelect], [mustItem], [adminListUpdate], [memberListUpdate], [anonymousListUpdate], [adminCanAdd], [memberCanAdd], [anonymousCanAdd], [adminCanEdit], [memberCanEdit], [anonymousCanEdit], [memberGroupIds], [roleIds], [noPermissionContent], [onlyItem], [collectionItem], [orderItem], [searchType], [htmlencode], [zdyContent], [additionalContent], [dataType], [maxNum], [editorStyle], [editorWidth], [editorHeight], [inputParams], [beforeSubmitJs], [tips], [adminListItem], [memberListItem], [listWords], [listWidth], [datasourceOpen], [datasourceTable], [btText], [winWidth], [winHeight], [orderby], [pagesize], [show], [deleteProtect], [xuhao], [ListItem], [DetailItem], [subTableType], [zdyCondition], [valueField], [textField], [textFieldName], [selectDataType], [isMultiLevelTable], [onlySelectFinal]) VALUES (14, N'article', N'content', 1, N'内容', N'editor', N'nvarchar', N'', N'', 999999, N'', N'', 0, 0, 0, 0, 1, N'', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, N'', N'', N'', 0, 0, 0, N'', 0, N'', N'', N'', 0, N'normal', N'', N'400', N'', N'', N'', 0, 0, 50, N'', 0, N'', N'', N'', N'', N'', 20, 0, 0, 6, 0, 1, NULL, N'', N'', N'', N'', 0, 0, 0)
INSERT [dbo].[pa_field] ([id], [tableName], [name], [sysField], [remark], [fieldType], [valueType], [fieldTip], [defaultValue], [valueLength], [decimalAccuracy], [items], [watermark], [thumbnail], [thumbnailWidth], [thumbnailHeight], [rename], [uploadExt], [uploadMaxsize], [isMultipleSelect], [mustItem], [adminListUpdate], [memberListUpdate], [anonymousListUpdate], [adminCanAdd], [memberCanAdd], [anonymousCanAdd], [adminCanEdit], [memberCanEdit], [anonymousCanEdit], [memberGroupIds], [roleIds], [noPermissionContent], [onlyItem], [collectionItem], [orderItem], [searchType], [htmlencode], [zdyContent], [additionalContent], [dataType], [maxNum], [editorStyle], [editorWidth], [editorHeight], [inputParams], [beforeSubmitJs], [tips], [adminListItem], [memberListItem], [listWords], [listWidth], [datasourceOpen], [datasourceTable], [btText], [winWidth], [winHeight], [orderby], [pagesize], [show], [deleteProtect], [xuhao], [ListItem], [DetailItem], [subTableType], [zdyCondition], [valueField], [textField], [textFieldName], [selectDataType], [isMultiLevelTable], [onlySelectFinal]) VALUES (15, N'article', N'thedate', 1, N'发布日期', N'datepicker', N'datetime', N'', N'', 19, N'', N'', 0, 0, 0, 0, 1, N'', 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, N'', N'', N'', 0, 0, 1, N'range', 0, N'', N'', N'', 0, N'', N'', N'', N'', N'', N'', 1, 1, 10, N'', 0, N'', N'', N'', N'', N'', 20, 0, 0, 8, 1, 1, NULL, N'', N'', N'', N'', 0, 0, 0)
INSERT [dbo].[pa_field] ([id], [tableName], [name], [sysField], [remark], [fieldType], [valueType], [fieldTip], [defaultValue], [valueLength], [decimalAccuracy], [items], [watermark], [thumbnail], [thumbnailWidth], [thumbnailHeight], [rename], [uploadExt], [uploadMaxsize], [isMultipleSelect], [mustItem], [adminListUpdate], [memberListUpdate], [anonymousListUpdate], [adminCanAdd], [memberCanAdd], [anonymousCanAdd], [adminCanEdit], [memberCanEdit], [anonymousCanEdit], [memberGroupIds], [roleIds], [noPermissionContent], [onlyItem], [collectionItem], [orderItem], [searchType], [htmlencode], [zdyContent], [additionalContent], [dataType], [maxNum], [editorStyle], [editorWidth], [editorHeight], [inputParams], [beforeSubmitJs], [tips], [adminListItem], [memberListItem], [listWords], [listWidth], [datasourceOpen], [datasourceTable], [btText], [winWidth], [winHeight], [orderby], [pagesize], [show], [deleteProtect], [xuhao], [ListItem], [DetailItem], [subTableType], [zdyCondition], [valueField], [textField], [textFieldName], [selectDataType], [isMultiLevelTable], [onlySelectFinal]) VALUES (22, N'pa_member', N'name', 0, N'姓名', N'text', N'nvarchar', N'', N'', 50, N'12,2', N'', 1, 1, 0, 0, 1, N'.jpg,.gif,.png', 1024, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, N'1', N'', N'', 0, 0, 0, N'', 0, N'', N'', N'', 5, N'small', N'90%', N'200', N'', N'', N'', 1, 0, 50, N'', 0, N'', N'上传', N'90%', N'90%', N'', 20, 0, 0, 1, 1, 1, NULL, N'', N'id', N'', N'', 0, 0, 0)
INSERT [dbo].[pa_field] ([id], [tableName], [name], [sysField], [remark], [fieldType], [valueType], [fieldTip], [defaultValue], [valueLength], [decimalAccuracy], [items], [watermark], [thumbnail], [thumbnailWidth], [thumbnailHeight], [rename], [uploadExt], [uploadMaxsize], [isMultipleSelect], [mustItem], [adminListUpdate], [memberListUpdate], [anonymousListUpdate], [adminCanAdd], [memberCanAdd], [anonymousCanAdd], [adminCanEdit], [memberCanEdit], [anonymousCanEdit], [memberGroupIds], [roleIds], [noPermissionContent], [onlyItem], [collectionItem], [orderItem], [searchType], [htmlencode], [zdyContent], [additionalContent], [dataType], [maxNum], [editorStyle], [editorWidth], [editorHeight], [inputParams], [beforeSubmitJs], [tips], [adminListItem], [memberListItem], [listWords], [listWidth], [datasourceOpen], [datasourceTable], [btText], [winWidth], [winHeight], [orderby], [pagesize], [show], [deleteProtect], [xuhao], [ListItem], [DetailItem], [subTableType], [zdyCondition], [valueField], [textField], [textFieldName], [selectDataType], [isMultiLevelTable], [onlySelectFinal]) VALUES (24, N'pa_member', N'gender', 0, N'性别', N'radio', N'tinyint', N'', N'0', 0, N'12,2', N'0,女
1,男', 1, 1, NULL, NULL, 1, N'.jpg,.gif,.png', 1024, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, N'', N'', N'', 0, 0, 0, N'', 0, N'', N'', N'', 5, N'small', N'90%', N'200', N'', N'', N'', 0, 0, 50, N'', 0, N'', N'上传', N'90%', N'90%', N'', 20, 0, 0, 2, 1, 1, NULL, N'', N'id', N'', N'', 0, 0, 0)
INSERT [dbo].[pa_field] ([id], [tableName], [name], [sysField], [remark], [fieldType], [valueType], [fieldTip], [defaultValue], [valueLength], [decimalAccuracy], [items], [watermark], [thumbnail], [thumbnailWidth], [thumbnailHeight], [rename], [uploadExt], [uploadMaxsize], [isMultipleSelect], [mustItem], [adminListUpdate], [memberListUpdate], [anonymousListUpdate], [adminCanAdd], [memberCanAdd], [anonymousCanAdd], [adminCanEdit], [memberCanEdit], [anonymousCanEdit], [memberGroupIds], [roleIds], [noPermissionContent], [onlyItem], [collectionItem], [orderItem], [searchType], [htmlencode], [zdyContent], [additionalContent], [dataType], [maxNum], [editorStyle], [editorWidth], [editorHeight], [inputParams], [beforeSubmitJs], [tips], [adminListItem], [memberListItem], [listWords], [listWidth], [datasourceOpen], [datasourceTable], [btText], [winWidth], [winHeight], [orderby], [pagesize], [show], [deleteProtect], [xuhao], [ListItem], [DetailItem], [subTableType], [zdyCondition], [valueField], [textField], [textFieldName], [selectDataType], [isMultiLevelTable], [onlySelectFinal]) VALUES (25, N'pa_member', N'birthday', 0, N'生日', N'datepicker', N'datetime', N'', N'', 10, N'12,2', N'', 1, 1, NULL, NULL, 1, N'.jpg,.gif,.png', 1024, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, N'', N'', N'', 0, 0, 0, N'', 0, N'', N'', N'', 5, N'small', N'90%', N'200', N'', N'', N'', 0, 0, 50, N'', 0, N'', N'上传', N'90%', N'90%', N'', 20, 0, 0, 3, 1, 1, NULL, N'', N'id', N'', N'', 0, 0, 0)
INSERT [dbo].[pa_field] ([id], [tableName], [name], [sysField], [remark], [fieldType], [valueType], [fieldTip], [defaultValue], [valueLength], [decimalAccuracy], [items], [watermark], [thumbnail], [thumbnailWidth], [thumbnailHeight], [rename], [uploadExt], [uploadMaxsize], [isMultipleSelect], [mustItem], [adminListUpdate], [memberListUpdate], [anonymousListUpdate], [adminCanAdd], [memberCanAdd], [anonymousCanAdd], [adminCanEdit], [memberCanEdit], [anonymousCanEdit], [memberGroupIds], [roleIds], [noPermissionContent], [onlyItem], [collectionItem], [orderItem], [searchType], [htmlencode], [zdyContent], [additionalContent], [dataType], [maxNum], [editorStyle], [editorWidth], [editorHeight], [inputParams], [beforeSubmitJs], [tips], [adminListItem], [memberListItem], [listWords], [listWidth], [datasourceOpen], [datasourceTable], [btText], [winWidth], [winHeight], [orderby], [pagesize], [show], [deleteProtect], [xuhao], [ListItem], [DetailItem], [subTableType], [zdyCondition], [valueField], [textField], [textFieldName], [selectDataType], [isMultiLevelTable], [onlySelectFinal]) VALUES (26, N'pa_member', N'district', 0, N'所在区域', N'zdy', N'nvarchar', N'', N'', 150, N'12,2', N'', 1, 1, 0, 0, 1, N'.jpg,.gif,.png', 1024, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, N'', N'', N'', 0, 0, 0, N'', 0, N'<ui-script src="/FrameUi/1.0/citys.js" v-model="formData.District" component-name="ui-cascader-city" width="100%"></ui-script>', N'', N'', 5, N'small', N'90%', N'200', N'', N'', N'', 0, 0, 50, N'', 0, N'', N'上传', N'90%', N'90%', N'', 20, 0, 0, 6, 1, 1, NULL, N'', N'id', N'', N'', 0, 0, 0)
INSERT [dbo].[pa_field] ([id], [tableName], [name], [sysField], [remark], [fieldType], [valueType], [fieldTip], [defaultValue], [valueLength], [decimalAccuracy], [items], [watermark], [thumbnail], [thumbnailWidth], [thumbnailHeight], [rename], [uploadExt], [uploadMaxsize], [isMultipleSelect], [mustItem], [adminListUpdate], [memberListUpdate], [anonymousListUpdate], [adminCanAdd], [memberCanAdd], [anonymousCanAdd], [adminCanEdit], [memberCanEdit], [anonymousCanEdit], [memberGroupIds], [roleIds], [noPermissionContent], [onlyItem], [collectionItem], [orderItem], [searchType], [htmlencode], [zdyContent], [additionalContent], [dataType], [maxNum], [editorStyle], [editorWidth], [editorHeight], [inputParams], [beforeSubmitJs], [tips], [adminListItem], [memberListItem], [listWords], [listWidth], [datasourceOpen], [datasourceTable], [btText], [winWidth], [winHeight], [orderby], [pagesize], [show], [deleteProtect], [xuhao], [ListItem], [DetailItem], [subTableType], [zdyCondition], [valueField], [textField], [textFieldName], [selectDataType], [isMultiLevelTable], [onlySelectFinal]) VALUES (29, N'pa_member', N'tel', 0, N'联系电话', N'text', N'nvarchar', N'', N'', 15, N'12,2', N'', 1, 1, NULL, NULL, 1, N'.jpg,.gif,.png', 1024, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, N'', N'', N'', 0, 0, 0, N'', 0, N'', N'', N'', 5, N'small', N'90%', N'200', N'', N'', N'', 0, 0, 50, N'', 0, N'', N'上传', N'90%', N'90%', N'', 20, 0, 0, 4, 1, 1, NULL, N'', N'id', N'', N'', 0, 0, 0)
INSERT [dbo].[pa_field] ([id], [tableName], [name], [sysField], [remark], [fieldType], [valueType], [fieldTip], [defaultValue], [valueLength], [decimalAccuracy], [items], [watermark], [thumbnail], [thumbnailWidth], [thumbnailHeight], [rename], [uploadExt], [uploadMaxsize], [isMultipleSelect], [mustItem], [adminListUpdate], [memberListUpdate], [anonymousListUpdate], [adminCanAdd], [memberCanAdd], [anonymousCanAdd], [adminCanEdit], [memberCanEdit], [anonymousCanEdit], [memberGroupIds], [roleIds], [noPermissionContent], [onlyItem], [collectionItem], [orderItem], [searchType], [htmlencode], [zdyContent], [additionalContent], [dataType], [maxNum], [editorStyle], [editorWidth], [editorHeight], [inputParams], [beforeSubmitJs], [tips], [adminListItem], [memberListItem], [listWords], [listWidth], [datasourceOpen], [datasourceTable], [btText], [winWidth], [winHeight], [orderby], [pagesize], [show], [deleteProtect], [xuhao], [ListItem], [DetailItem], [subTableType], [zdyCondition], [valueField], [textField], [textFieldName], [selectDataType], [isMultiLevelTable], [onlySelectFinal]) VALUES (30, N'pa_member', N'fax', 0, N'传真', N'text', N'nvarchar', N'', N'', 15, N'12,2', N'', 1, 1, NULL, NULL, 1, N'.jpg,.gif,.png', 1024, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, N'', N'', N'', 0, 0, 0, N'', 0, N'', N'', N'', 5, N'small', N'90%', N'200', N'', N'', N'', 0, 0, 50, N'', 0, N'', N'上传', N'90%', N'90%', N'', 20, 0, 0, 5, 1, 1, NULL, N'', N'id', N'', N'', 0, 0, 0)
INSERT [dbo].[pa_field] ([id], [tableName], [name], [sysField], [remark], [fieldType], [valueType], [fieldTip], [defaultValue], [valueLength], [decimalAccuracy], [items], [watermark], [thumbnail], [thumbnailWidth], [thumbnailHeight], [rename], [uploadExt], [uploadMaxsize], [isMultipleSelect], [mustItem], [adminListUpdate], [memberListUpdate], [anonymousListUpdate], [adminCanAdd], [memberCanAdd], [anonymousCanAdd], [adminCanEdit], [memberCanEdit], [anonymousCanEdit], [memberGroupIds], [roleIds], [noPermissionContent], [onlyItem], [collectionItem], [orderItem], [searchType], [htmlencode], [zdyContent], [additionalContent], [dataType], [maxNum], [editorStyle], [editorWidth], [editorHeight], [inputParams], [beforeSubmitJs], [tips], [adminListItem], [memberListItem], [listWords], [listWidth], [datasourceOpen], [datasourceTable], [btText], [winWidth], [winHeight], [orderby], [pagesize], [show], [deleteProtect], [xuhao], [ListItem], [DetailItem], [subTableType], [zdyCondition], [valueField], [textField], [textFieldName], [selectDataType], [isMultiLevelTable], [onlySelectFinal]) VALUES (31, N'pa_member', N'address', 0, N'联系地址', N'text', N'nvarchar', N'', N'', 50, N'12,2', N'', 1, 1, NULL, NULL, 1, N'.jpg,.gif,.png', 1024, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, N'', N'', N'', 0, 0, 0, N'', 0, N'', N'', N'', 5, N'small', N'90%', N'200', N'', N'', N'', 0, 0, 50, N'', 0, N'', N'上传', N'90%', N'90%', N'', 20, 0, 0, 9, 1, 1, NULL, N'', N'id', N'', N'', 0, 0, 0)
INSERT [dbo].[pa_field] ([id], [tableName], [name], [sysField], [remark], [fieldType], [valueType], [fieldTip], [defaultValue], [valueLength], [decimalAccuracy], [items], [watermark], [thumbnail], [thumbnailWidth], [thumbnailHeight], [rename], [uploadExt], [uploadMaxsize], [isMultipleSelect], [mustItem], [adminListUpdate], [memberListUpdate], [anonymousListUpdate], [adminCanAdd], [memberCanAdd], [anonymousCanAdd], [adminCanEdit], [memberCanEdit], [anonymousCanEdit], [memberGroupIds], [roleIds], [noPermissionContent], [onlyItem], [collectionItem], [orderItem], [searchType], [htmlencode], [zdyContent], [additionalContent], [dataType], [maxNum], [editorStyle], [editorWidth], [editorHeight], [inputParams], [beforeSubmitJs], [tips], [adminListItem], [memberListItem], [listWords], [listWidth], [datasourceOpen], [datasourceTable], [btText], [winWidth], [winHeight], [orderby], [pagesize], [show], [deleteProtect], [xuhao], [ListItem], [DetailItem], [subTableType], [zdyCondition], [valueField], [textField], [textFieldName], [selectDataType], [isMultiLevelTable], [onlySelectFinal]) VALUES (80, N'article', N'introduction', 0, N'简介', N'textarea', N'nvarchar', N'', N'', 300, N'12,2', N'', 1, 1, 200, 200, 1, N'.jpg,.gif,.png', 1024, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, N'', N'', N'', 0, 0, 0, N'', 0, N'', N'', N'', 5, N'small', N'100%', N'200', N'', N'', N'', 0, 0, 50, N'', 0, N'', N'管理', N'90%', N'90%', N'', 20, 0, 0, 5, 1, 1, NULL, N'', N'id', N'', N'', 0, 0, 0)
INSERT [dbo].[pa_field] ([id], [tableName], [name], [sysField], [remark], [fieldType], [valueType], [fieldTip], [defaultValue], [valueLength], [decimalAccuracy], [items], [watermark], [thumbnail], [thumbnailWidth], [thumbnailHeight], [rename], [uploadExt], [uploadMaxsize], [isMultipleSelect], [mustItem], [adminListUpdate], [memberListUpdate], [anonymousListUpdate], [adminCanAdd], [memberCanAdd], [anonymousCanAdd], [adminCanEdit], [memberCanEdit], [anonymousCanEdit], [memberGroupIds], [roleIds], [noPermissionContent], [onlyItem], [collectionItem], [orderItem], [searchType], [htmlencode], [zdyContent], [additionalContent], [dataType], [maxNum], [editorStyle], [editorWidth], [editorHeight], [inputParams], [beforeSubmitJs], [tips], [adminListItem], [memberListItem], [listWords], [listWidth], [datasourceOpen], [datasourceTable], [btText], [winWidth], [winHeight], [orderby], [pagesize], [show], [deleteProtect], [xuhao], [ListItem], [DetailItem], [subTableType], [zdyCondition], [valueField], [textField], [textFieldName], [selectDataType], [isMultiLevelTable], [onlySelectFinal]) VALUES (100, N'pa_column_content_set', N'content', 1, N'内容', N'editor', N'nvarchar', N'', N'', 99999, N'', N'', 0, 0, 0, 0, 1, N'', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, N'', N'', N'', 0, 0, 0, N'', 0, N'', N'', N'', 0, N'normal', N'', N'400', N'', N'', N'', 0, 0, 50, N'', 0, N'', N'', N'', N'', N'', 20, 0, 0, 2, 1, 1, NULL, N'', N'', N'', N'', 0, 0, 0)
INSERT [dbo].[pa_field] ([id], [tableName], [name], [sysField], [remark], [fieldType], [valueType], [fieldTip], [defaultValue], [valueLength], [decimalAccuracy], [items], [watermark], [thumbnail], [thumbnailWidth], [thumbnailHeight], [rename], [uploadExt], [uploadMaxsize], [isMultipleSelect], [mustItem], [adminListUpdate], [memberListUpdate], [anonymousListUpdate], [adminCanAdd], [memberCanAdd], [anonymousCanAdd], [adminCanEdit], [memberCanEdit], [anonymousCanEdit], [memberGroupIds], [roleIds], [noPermissionContent], [onlyItem], [collectionItem], [orderItem], [searchType], [htmlencode], [zdyContent], [additionalContent], [dataType], [maxNum], [editorStyle], [editorWidth], [editorHeight], [inputParams], [beforeSubmitJs], [tips], [adminListItem], [memberListItem], [listWords], [listWidth], [datasourceOpen], [datasourceTable], [btText], [winWidth], [winHeight], [orderby], [pagesize], [show], [deleteProtect], [xuhao], [ListItem], [DetailItem], [subTableType], [zdyCondition], [valueField], [textField], [textFieldName], [selectDataType], [isMultiLevelTable], [onlySelectFinal]) VALUES (102, N'feedback', N'title', 1, N'留言标题', N'text', N'nvarchar', N'', N'', 150, N'', N'', 0, 0, 0, 0, 1, N'', 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, N'', N'', N'', 0, 0, 0, N'fuzzy', 0, N'', N'', N'', 0, N'', N'', N'', N'', N'', N'', 1, 1, 50, N'', 0, N'', N'', N'', N'', N'', 20, 0, 0, 1, 1, 1, NULL, N'', N'', N'', N'', 0, 0, 0)
INSERT [dbo].[pa_field] ([id], [tableName], [name], [sysField], [remark], [fieldType], [valueType], [fieldTip], [defaultValue], [valueLength], [decimalAccuracy], [items], [watermark], [thumbnail], [thumbnailWidth], [thumbnailHeight], [rename], [uploadExt], [uploadMaxsize], [isMultipleSelect], [mustItem], [adminListUpdate], [memberListUpdate], [anonymousListUpdate], [adminCanAdd], [memberCanAdd], [anonymousCanAdd], [adminCanEdit], [memberCanEdit], [anonymousCanEdit], [memberGroupIds], [roleIds], [noPermissionContent], [onlyItem], [collectionItem], [orderItem], [searchType], [htmlencode], [zdyContent], [additionalContent], [dataType], [maxNum], [editorStyle], [editorWidth], [editorHeight], [inputParams], [beforeSubmitJs], [tips], [adminListItem], [memberListItem], [listWords], [listWidth], [datasourceOpen], [datasourceTable], [btText], [winWidth], [winHeight], [orderby], [pagesize], [show], [deleteProtect], [xuhao], [ListItem], [DetailItem], [subTableType], [zdyCondition], [valueField], [textField], [textFieldName], [selectDataType], [isMultiLevelTable], [onlySelectFinal]) VALUES (103, N'feedback', N'thumbnail', 1, N'缩略图', N'image', N'nvarchar', NULL, NULL, 100, NULL, NULL, 0, 1, 0, 0, 1, N'.jpg,.jpeg,.gif,.png', 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 20, 1, 0, 2, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[pa_field] ([id], [tableName], [name], [sysField], [remark], [fieldType], [valueType], [fieldTip], [defaultValue], [valueLength], [decimalAccuracy], [items], [watermark], [thumbnail], [thumbnailWidth], [thumbnailHeight], [rename], [uploadExt], [uploadMaxsize], [isMultipleSelect], [mustItem], [adminListUpdate], [memberListUpdate], [anonymousListUpdate], [adminCanAdd], [memberCanAdd], [anonymousCanAdd], [adminCanEdit], [memberCanEdit], [anonymousCanEdit], [memberGroupIds], [roleIds], [noPermissionContent], [onlyItem], [collectionItem], [orderItem], [searchType], [htmlencode], [zdyContent], [additionalContent], [dataType], [maxNum], [editorStyle], [editorWidth], [editorHeight], [inputParams], [beforeSubmitJs], [tips], [adminListItem], [memberListItem], [listWords], [listWidth], [datasourceOpen], [datasourceTable], [btText], [winWidth], [winHeight], [orderby], [pagesize], [show], [deleteProtect], [xuhao], [ListItem], [DetailItem], [subTableType], [zdyCondition], [valueField], [textField], [textFieldName], [selectDataType], [isMultiLevelTable], [onlySelectFinal]) VALUES (104, N'feedback', N'content', 1, N'留言内容', N'textarea', N'nvarchar', N'', N'', 2000, N'', N'', 0, 0, 0, 0, 1, N'', 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, N'', N'', N'', 0, 0, 0, N'', 0, N'', N'', N'', 0, N'normal', N'', N'400', N'style="height:400px"', N'', N'', 0, 0, 50, N'', 0, N'', N'', N'', N'', N'', 20, 0, 0, 3, 0, 1, NULL, N'', N'', N'', N'', 0, 0, 0)
INSERT [dbo].[pa_field] ([id], [tableName], [name], [sysField], [remark], [fieldType], [valueType], [fieldTip], [defaultValue], [valueLength], [decimalAccuracy], [items], [watermark], [thumbnail], [thumbnailWidth], [thumbnailHeight], [rename], [uploadExt], [uploadMaxsize], [isMultipleSelect], [mustItem], [adminListUpdate], [memberListUpdate], [anonymousListUpdate], [adminCanAdd], [memberCanAdd], [anonymousCanAdd], [adminCanEdit], [memberCanEdit], [anonymousCanEdit], [memberGroupIds], [roleIds], [noPermissionContent], [onlyItem], [collectionItem], [orderItem], [searchType], [htmlencode], [zdyContent], [additionalContent], [dataType], [maxNum], [editorStyle], [editorWidth], [editorHeight], [inputParams], [beforeSubmitJs], [tips], [adminListItem], [memberListItem], [listWords], [listWidth], [datasourceOpen], [datasourceTable], [btText], [winWidth], [winHeight], [orderby], [pagesize], [show], [deleteProtect], [xuhao], [ListItem], [DetailItem], [subTableType], [zdyCondition], [valueField], [textField], [textFieldName], [selectDataType], [isMultiLevelTable], [onlySelectFinal]) VALUES (105, N'feedback', N'thedate', 1, N'发布日期', N'datepicker', N'datetime', NULL, NULL, 19, NULL, NULL, 0, 0, 0, 0, 1, NULL, NULL, 0, 1, 0, 0, 0, 1, 1, 0, 1, 1, 0, NULL, NULL, NULL, 0, 0, 1, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 10, NULL, 0, NULL, NULL, NULL, NULL, NULL, 20, 1, 0, 4, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[pa_field] ([id], [tableName], [name], [sysField], [remark], [fieldType], [valueType], [fieldTip], [defaultValue], [valueLength], [decimalAccuracy], [items], [watermark], [thumbnail], [thumbnailWidth], [thumbnailHeight], [rename], [uploadExt], [uploadMaxsize], [isMultipleSelect], [mustItem], [adminListUpdate], [memberListUpdate], [anonymousListUpdate], [adminCanAdd], [memberCanAdd], [anonymousCanAdd], [adminCanEdit], [memberCanEdit], [anonymousCanEdit], [memberGroupIds], [roleIds], [noPermissionContent], [onlyItem], [collectionItem], [orderItem], [searchType], [htmlencode], [zdyContent], [additionalContent], [dataType], [maxNum], [editorStyle], [editorWidth], [editorHeight], [inputParams], [beforeSubmitJs], [tips], [adminListItem], [memberListItem], [listWords], [listWidth], [datasourceOpen], [datasourceTable], [btText], [winWidth], [winHeight], [orderby], [pagesize], [show], [deleteProtect], [xuhao], [ListItem], [DetailItem], [subTableType], [zdyCondition], [valueField], [textField], [textFieldName], [selectDataType], [isMultiLevelTable], [onlySelectFinal]) VALUES (106, N'pa_column_content_set', N'shareColumnIds', 0, N'共享数据栏目', N'select', N'nvarchar', N'', N'', 100, N'12,2', N'', 1, 1, 400, 0, 1, N'.jpg,.gif,.png', 1024, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, N'', N'', N'', 0, 0, 0, N'', 0, N'', N'', N'', 5, N'small', N'100%', N'200', N'', N'', N'字段名为：shareColumnIds，模板中可通过读取此字段来获取选择的栏目Id组', 0, 0, 50, N'', 1, N'pa_column', N'选择', N'80%', N'80%', N'', 20, 0, 0, 1, 1, 1, N'', N'', N'id', N'name', N'栏目', 1, 1, 0)
INSERT [dbo].[pa_field] ([id], [tableName], [name], [sysField], [remark], [fieldType], [valueType], [fieldTip], [defaultValue], [valueLength], [decimalAccuracy], [items], [watermark], [thumbnail], [thumbnailWidth], [thumbnailHeight], [rename], [uploadExt], [uploadMaxsize], [isMultipleSelect], [mustItem], [adminListUpdate], [memberListUpdate], [anonymousListUpdate], [adminCanAdd], [memberCanAdd], [anonymousCanAdd], [adminCanEdit], [memberCanEdit], [anonymousCanEdit], [memberGroupIds], [roleIds], [noPermissionContent], [onlyItem], [collectionItem], [orderItem], [searchType], [htmlencode], [zdyContent], [additionalContent], [dataType], [maxNum], [editorStyle], [editorWidth], [editorHeight], [inputParams], [beforeSubmitJs], [tips], [adminListItem], [memberListItem], [listWords], [listWidth], [datasourceOpen], [datasourceTable], [btText], [winWidth], [winHeight], [orderby], [pagesize], [show], [deleteProtect], [xuhao], [ListItem], [DetailItem], [subTableType], [zdyCondition], [valueField], [textField], [textFieldName], [selectDataType], [isMultiLevelTable], [onlySelectFinal]) VALUES (110, N'article', N'author', 0, N'作者', N'text', N'nvarchar', N'', N'', 50, N'12,2', N'', 1, 1, 400, 0, 1, N'.jpg,.gif,.png', 1024, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, N'', N'', N'', 0, 0, 0, N'', 0, N'', N'', N'', 5, N'small', N'100%', N'200', N'', N'', N'', 0, 0, 50, N'', 0, N'', N'管理', N'90%', N'90%', N'', 20, 0, 0, 3, 1, 1, N'', N'', N'id', N'', N'', 0, 0, 0)
INSERT [dbo].[pa_field] ([id], [tableName], [name], [sysField], [remark], [fieldType], [valueType], [fieldTip], [defaultValue], [valueLength], [decimalAccuracy], [items], [watermark], [thumbnail], [thumbnailWidth], [thumbnailHeight], [rename], [uploadExt], [uploadMaxsize], [isMultipleSelect], [mustItem], [adminListUpdate], [memberListUpdate], [anonymousListUpdate], [adminCanAdd], [memberCanAdd], [anonymousCanAdd], [adminCanEdit], [memberCanEdit], [anonymousCanEdit], [memberGroupIds], [roleIds], [noPermissionContent], [onlyItem], [collectionItem], [orderItem], [searchType], [htmlencode], [zdyContent], [additionalContent], [dataType], [maxNum], [editorStyle], [editorWidth], [editorHeight], [inputParams], [beforeSubmitJs], [tips], [adminListItem], [memberListItem], [listWords], [listWidth], [datasourceOpen], [datasourceTable], [btText], [winWidth], [winHeight], [orderby], [pagesize], [show], [deleteProtect], [xuhao], [ListItem], [DetailItem], [subTableType], [zdyCondition], [valueField], [textField], [textFieldName], [selectDataType], [isMultiLevelTable], [onlySelectFinal]) VALUES (112, N'article', N'relativeIds', 0, N'相关文档', N'select', N'nvarchar', N'', N'', 200, N'12,2', N'', 1, 1, 400, 0, 1, N'.jpg,.gif,.png', 1024, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, N'', N'', N'', 0, 0, 0, N'', 0, N'', N'', N'', 5, N'small', N'100%', N'200', N'', N'', N'', 0, 0, 50, N'', 1, N'article', N'选择', N'80%', N'80%', N'', 20, 0, 0, 7, 1, 1, N'', N'', N'id', N'title', N'', 2, 0, 0)
INSERT [dbo].[pa_field] ([id], [tableName], [name], [sysField], [remark], [fieldType], [valueType], [fieldTip], [defaultValue], [valueLength], [decimalAccuracy], [items], [watermark], [thumbnail], [thumbnailWidth], [thumbnailHeight], [rename], [uploadExt], [uploadMaxsize], [isMultipleSelect], [mustItem], [adminListUpdate], [memberListUpdate], [anonymousListUpdate], [adminCanAdd], [memberCanAdd], [anonymousCanAdd], [adminCanEdit], [memberCanEdit], [anonymousCanEdit], [memberGroupIds], [roleIds], [noPermissionContent], [onlyItem], [collectionItem], [orderItem], [searchType], [htmlencode], [zdyContent], [additionalContent], [dataType], [maxNum], [editorStyle], [editorWidth], [editorHeight], [inputParams], [beforeSubmitJs], [tips], [adminListItem], [memberListItem], [listWords], [listWidth], [datasourceOpen], [datasourceTable], [btText], [winWidth], [winHeight], [orderby], [pagesize], [show], [deleteProtect], [xuhao], [ListItem], [DetailItem], [subTableType], [zdyCondition], [valueField], [textField], [textFieldName], [selectDataType], [isMultiLevelTable], [onlySelectFinal]) VALUES (113, N'pa_site', N'logo', 0, N'站点logo', N'image', N'nvarchar', N'', N'', 50, N'12,2', N'', 1, 1, 400, 0, 1, N'.jpg,.gif,.png', 1024, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, N'', N'', N'', 0, 0, 0, N'', 0, N'', N'', N'', 5, N'small', N'100%', N'200', N'', N'', N'', 0, 0, 50, N'', 0, N'', N'管理', N'90%', N'90%', N'', 20, 0, 0, 1, 1, 1, N'', N'', N'id', N'', N'', 0, 0, 0)
SET IDENTITY_INSERT [dbo].[pa_field] OFF
SET IDENTITY_INSERT [dbo].[pa_httpcache_solution] ON 

INSERT [dbo].[pa_httpcache_solution] ([id], [name], [columnCacheMinutes], [detailCacheMinutes], [cacheMaxPage], [nocacheUrlParams], [nocacheUrlKeywords]) VALUES (2, N'栏目页缓存方案', 30, 30, 1, N'', N'&')
SET IDENTITY_INSERT [dbo].[pa_httpcache_solution] OFF
SET IDENTITY_INSERT [dbo].[pa_info_table] ON 

INSERT [dbo].[pa_info_table] ([id], [siteId], [name], [remark], [pagesize], [orderby], [uid], [deleteProtect], [xuhao], [thedate], [showMenu], [templateDetail], [guestSubmit], [verificationCode], [SubmitDefaultState]) VALUES (80, 1, N'article', N'文章管理', 10, N'id desc', 151, 1, 1, CAST(0x0000A86501262784 AS DateTime), 1, NULL, 0, 1, 0)
INSERT [dbo].[pa_info_table] ([id], [siteId], [name], [remark], [pagesize], [orderby], [uid], [deleteProtect], [xuhao], [thedate], [showMenu], [templateDetail], [guestSubmit], [verificationCode], [SubmitDefaultState]) VALUES (82, 1, N'feedback', N'在线留言', 20, N'id desc', 1, 1, 3, CAST(0x0000A9C900C522CC AS DateTime), 1, N'', 1, 1, 0)
SET IDENTITY_INSERT [dbo].[pa_info_table] OFF
SET IDENTITY_INSERT [dbo].[pa_logining_user] ON 

INSERT [dbo].[pa_logining_user] ([id], [guid], [uid], [username], [departmentId], [memberGroupId], [roleId], [isSuperAdmin], [email], [mobile], [thedate], [updateDate], [expireDate], [entryUrl], [ip], [browser], [state]) VALUES (34, N'c0ec5aa19ed34965859bba7421e5822e', 1, N'admin', 1, 1, 0, 0, N'', N'', CAST(0x0000AA0E00F129E4 AS DateTime), CAST(0x0000AA0E011A4FE0 AS DateTime), CAST(0x0000AA0E012ACAA0 AS DateTime), N'http://localhost:800/admin/Login/', N'127.0.0.1', N'Firefox 65.0', 0)
INSERT [dbo].[pa_logining_user] ([id], [guid], [uid], [username], [departmentId], [memberGroupId], [roleId], [isSuperAdmin], [email], [mobile], [thedate], [updateDate], [expireDate], [entryUrl], [ip], [browser], [state]) VALUES (35, N'b43eda1b37804163a339b04d973a98d1', 1, N'admin', 1, 1, 0, 0, N'', N'', CAST(0x0000AA0E011A6E58 AS DateTime), CAST(0x0000AA0E011A6E58 AS DateTime), CAST(0x0000AA0E012AE918 AS DateTime), N'http://localhost/admin/Login/', N'127.0.0.1', N'Firefox 65.0', 0)
INSERT [dbo].[pa_logining_user] ([id], [guid], [uid], [username], [departmentId], [memberGroupId], [roleId], [isSuperAdmin], [email], [mobile], [thedate], [updateDate], [expireDate], [entryUrl], [ip], [browser], [state]) VALUES (36, N'00f2f211fbce4c9f90e55c7041aac322', 1, N'admin', 1, 1, 0, 0, N'', N'', CAST(0x0000AA0E011C18E8 AS DateTime), CAST(0x0000AA0E0123E118 AS DateTime), CAST(0x0000AA0E01345BD8 AS DateTime), N'http://localhost:800/admin/Login/', N'127.0.0.1', N'Firefox 65.0', 0)
INSERT [dbo].[pa_logining_user] ([id], [guid], [uid], [username], [departmentId], [memberGroupId], [roleId], [isSuperAdmin], [email], [mobile], [thedate], [updateDate], [expireDate], [entryUrl], [ip], [browser], [state]) VALUES (37, N'53099fc0e069402e862ed2c566d0d517', 1, N'admin', 1, 1, 0, 0, N'', N'', CAST(0x0000AA0E0123F2AC AS DateTime), CAST(0x0000AA0E012792CC AS DateTime), CAST(0x0000AA0E01380D8C AS DateTime), N'http://localhost/admin/Login/', N'127.0.0.1', N'Firefox 65.0', 0)
INSERT [dbo].[pa_logining_user] ([id], [guid], [uid], [username], [departmentId], [memberGroupId], [roleId], [isSuperAdmin], [email], [mobile], [thedate], [updateDate], [expireDate], [entryUrl], [ip], [browser], [state]) VALUES (38, N'bcd813ebaec74f69b8a5f351cec2eee6', 1, N'admin', 1, 1, 0, 0, N'', N'', CAST(0x0000AB2D011BB1C8 AS DateTime), CAST(0x0000AB2D011BB1C8 AS DateTime), CAST(0x0000AB2D012C2C88 AS DateTime), N'http://localhost:52786/admin/Login/', N'127.0.0.1', N'Firefox 71.0', 0)
INSERT [dbo].[pa_logining_user] ([id], [guid], [uid], [username], [departmentId], [memberGroupId], [roleId], [isSuperAdmin], [email], [mobile], [thedate], [updateDate], [expireDate], [entryUrl], [ip], [browser], [state]) VALUES (39, N'c29b5bf678b34a419e377cbb82b75d5d', 1, N'admin', 1, 1, 1, 1, N'', N'', CAST(0x0000AB720093DF14 AS DateTime), CAST(0x0000AB720093DF14 AS DateTime), CAST(0x0000AB7200A459D4 AS DateTime), N'http://localhost:8060/admin/Login/', N'127.0.0.1', N'Firefox 72.0', 0)
INSERT [dbo].[pa_logining_user] ([id], [guid], [uid], [username], [departmentId], [memberGroupId], [roleId], [isSuperAdmin], [email], [mobile], [thedate], [updateDate], [expireDate], [entryUrl], [ip], [browser], [state]) VALUES (41, N'68c90709fa364ec98f7be57b95bccd27', 1, N'admin', 1, 1, 1, 1, N'', N'', CAST(0x0000AB72009A6D34 AS DateTime), CAST(0x0000AB72009A6D34 AS DateTime), CAST(0x0000AB7200AAE7F4 AS DateTime), N'http://localhost:8060/admin/Login/', N'127.0.0.1', N'Firefox 72.0', 0)
INSERT [dbo].[pa_logining_user] ([id], [guid], [uid], [username], [departmentId], [memberGroupId], [roleId], [isSuperAdmin], [email], [mobile], [thedate], [updateDate], [expireDate], [entryUrl], [ip], [browser], [state]) VALUES (43, N'abd52427039f48e18c151c802ddb27fd', 1, N'admin', 1, 1, 1, 1, N'', N'', CAST(0x0000AB72009A7D9C AS DateTime), CAST(0x0000AB72009C2BB0 AS DateTime), CAST(0x0000AB7200ACA670 AS DateTime), N'http://localhost:8060/admin/Login/', N'127.0.0.1', N'Firefox 72.0', 0)
INSERT [dbo].[pa_logining_user] ([id], [guid], [uid], [username], [departmentId], [memberGroupId], [roleId], [isSuperAdmin], [email], [mobile], [thedate], [updateDate], [expireDate], [entryUrl], [ip], [browser], [state]) VALUES (44, N'c1c215d237d74ccb8d1a27b65b458fe1', 1, N'admin', 1, 1, 1, 1, N'', N'', CAST(0x0000AB72009DDAF0 AS DateTime), CAST(0x0000AB7200A79B08 AS DateTime), CAST(0x0000AB7200B815C8 AS DateTime), N'http://localhost:8060/admin/Login/', N'127.0.0.1', N'Firefox 72.0', 0)
INSERT [dbo].[pa_logining_user] ([id], [guid], [uid], [username], [departmentId], [memberGroupId], [roleId], [isSuperAdmin], [email], [mobile], [thedate], [updateDate], [expireDate], [entryUrl], [ip], [browser], [state]) VALUES (45, N'ca78da1e293740c7b9df59080a3e70fb', 1, N'admin', 1, 1, 1, 1, N'', N'', CAST(0x0000AB7200A80A5C AS DateTime), CAST(0x0000AB7200BB2A74 AS DateTime), CAST(0x0000AB7200CBA534 AS DateTime), N'http://localhost:8060/admin/Login/', N'127.0.0.1', N'Firefox 72.0', 0)
INSERT [dbo].[pa_logining_user] ([id], [guid], [uid], [username], [departmentId], [memberGroupId], [roleId], [isSuperAdmin], [email], [mobile], [thedate], [updateDate], [expireDate], [entryUrl], [ip], [browser], [state]) VALUES (1039, N'53cab7c6b5564f1abe8a0839f37040f3', 1, N'admin', 1, 1, 1, 1, N'', N'', CAST(0x0000AB7300BA4848 AS DateTime), CAST(0x0000AB7300BFA6E4 AS DateTime), CAST(0x0000AB7300D021A4 AS DateTime), N'http://localhost:8060/admin/Login/', N'127.0.0.1', N'Firefox 72.0', 0)
INSERT [dbo].[pa_logining_user] ([id], [guid], [uid], [username], [departmentId], [memberGroupId], [roleId], [isSuperAdmin], [email], [mobile], [thedate], [updateDate], [expireDate], [entryUrl], [ip], [browser], [state]) VALUES (1040, N'7077a3b2a1ba4ecf87a6cadd8cf77eaf', 1, N'admin', 1, 1, 1, 1, N'', N'', CAST(0x0000ABF30118D304 AS DateTime), CAST(0x0000ABF30118D304 AS DateTime), CAST(0x0000ABF301294DC4 AS DateTime), N'http://localhost:61902/admin/Login/', N'127.0.0.1', N'Firefox 78.0', 0)
INSERT [dbo].[pa_logining_user] ([id], [guid], [uid], [username], [departmentId], [memberGroupId], [roleId], [isSuperAdmin], [email], [mobile], [thedate], [updateDate], [expireDate], [entryUrl], [ip], [browser], [state]) VALUES (1041, N'8a1c17f3e78747f3b715d5c5c5f5ed66', 1, N'admin', 1, 1, 1, 1, N'', N'', CAST(0x0000ABF3011F3CD0 AS DateTime), CAST(0x0000ABF30122A708 AS DateTime), CAST(0x0000ABF3013321C8 AS DateTime), N'http://localhost:61902/admin/Login/', N'127.0.0.1', N'Firefox 78.0', 1)
SET IDENTITY_INSERT [dbo].[pa_logining_user] OFF
SET IDENTITY_INSERT [dbo].[pa_member] ON 

INSERT [dbo].[pa_member] ([id], [username], [password], [memberGroupId], [departmentId], [regDate], [lastDate], [regIp], [lastIp], [logins], [state], [avatar], [mobile], [mobileState], [email], [emailState], [name], [gender], [birthday], [tel], [fax], [address], [district]) VALUES (1, N'admin', N'7fef6171469e80d32c0559f88b377245', 1, 1, CAST(0x0000A9C8012E592C AS DateTime), CAST(0x0000ABF3011F3BA4 AS DateTime), N'127.0.0.1', N'127.0.0.1', 53, 1, N'', N'', 0, N'', 0, N'', 0, CAST(0x0000A9C8012E5A58 AS DateTime), N'', N'', N'', N',,')
INSERT [dbo].[pa_member] ([id], [username], [password], [memberGroupId], [departmentId], [regDate], [lastDate], [regIp], [lastIp], [logins], [state], [avatar], [mobile], [mobileState], [email], [emailState], [name], [gender], [birthday], [tel], [fax], [address], [district]) VALUES (2, N'username', N'e10adc3949ba59abbe56e057f20f883e', 1, 0, CAST(0x0000AA0E00C1E8A0 AS DateTime), CAST(0x0000AA0E00C1E8A0 AS DateTime), N'127.0.0.1', N'', 0, 1, N'', N'15012345678', 0, N'pacms@qq.com', 0, N'1111', 0, CAST(0x0000AA0E00000000 AS DateTime), N'2321', N'', N'312312', N'北京,朝阳区,三环以内')
SET IDENTITY_INSERT [dbo].[pa_member] OFF
SET IDENTITY_INSERT [dbo].[pa_member_group] ON 

INSERT [dbo].[pa_member_group] ([id], [name], [remark], [canReg], [rank], [isDefault]) VALUES (1, N'注册会员', N'默认会员，建议放在第一个位置', 1, 1, 1)
INSERT [dbo].[pa_member_group] ([id], [name], [remark], [canReg], [rank], [isDefault]) VALUES (3, N'高级会员', N'高级会员', 0, 2, 0)
SET IDENTITY_INSERT [dbo].[pa_member_group] OFF
SET IDENTITY_INSERT [dbo].[pa_member_group_permissions] ON 

INSERT [dbo].[pa_member_group_permissions] ([id], [memberGroupId], [menuIds], [menuItemIds]) VALUES (4, 1, N'252,259,260,257,256,261,262', N'119')
INSERT [dbo].[pa_member_group_permissions] ([id], [memberGroupId], [menuIds], [menuItemIds]) VALUES (6, 3, N'252,259,260,257,256,261,262', N'119')
SET IDENTITY_INSERT [dbo].[pa_member_group_permissions] OFF
SET IDENTITY_INSERT [dbo].[pa_member_menu] ON 

INSERT [dbo].[pa_member_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [sysNode], [target], [pluginName], [zdyUrl], [xuhao], [viewType]) VALUES (252, 0, N'我的控制台', N'', 1, N'', N'admin', N'', N'', 0, 1, 1, 1, N'desktop', N'', N'', N'', 1, 0)
INSERT [dbo].[pa_member_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [sysNode], [target], [pluginName], [zdyUrl], [xuhao], [viewType]) VALUES (256, 257, N'账户安全', N'', 3, N'PageAdmin.Web.Areas.Member.Controllers', N'Member', N'MyLogin', N'Security', 1, 1, 1, 1, N'', N'', N'', N'', 1, 0)
INSERT [dbo].[pa_member_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [sysNode], [target], [pluginName], [zdyUrl], [xuhao], [viewType]) VALUES (257, 252, N'我的账户', N'fa-user-circle', 2, N'', N'admin', N'', N'', 0, 1, 1, 1, N'', N'', N'', N'', 3, 0)
INSERT [dbo].[pa_member_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [sysNode], [target], [pluginName], [zdyUrl], [xuhao], [viewType]) VALUES (259, 252, N'我的菜单', N'fa-briefcase', 2, N'', N'admin', N'', N'', 0, 1, 1, 1, N'pluginNode', N'', N'', N'', 1, 0)
INSERT [dbo].[pa_member_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [sysNode], [target], [pluginName], [zdyUrl], [xuhao], [viewType]) VALUES (260, 252, N'内容发布', N'fa-file-text-o', 2, N'', N'admin', N'', N'', 0, 1, 1, 1, N'infoData', N'', N'', N'', 2, 0)
INSERT [dbo].[pa_member_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [sysNode], [target], [pluginName], [zdyUrl], [xuhao], [viewType]) VALUES (261, 257, N'资料修改', N'', 3, N'PageAdmin.Web.Areas.Member.Controllers', N'Member', N'MyLogin', N'UserInfo', 1, 1, 1, 1, N'', N'', N'', N'', 2, 0)
INSERT [dbo].[pa_member_menu] ([id], [parentId], [name], [icon], [level], [nameSpace], [area], [controller], [action], [isFinal], [isExpand], [state], [isSys], [sysNode], [target], [pluginName], [zdyUrl], [xuhao], [viewType]) VALUES (262, 257, N'登录日志', N'', 3, N'PageAdmin.Web.Areas.Member.Controllers', N'Member', N'MyLogin', N'LoginLog', 1, 1, 1, 1, N'', N'', N'', N'', 3, 0)
SET IDENTITY_INSERT [dbo].[pa_member_menu] OFF
SET IDENTITY_INSERT [dbo].[pa_member_menu_item] ON 

INSERT [dbo].[pa_member_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (119, 256, N'我的账户', N'PageAdmin.Web.Areas.Member.Controllers', N'MyLogin', N'Index', N'GET', 1)
INSERT [dbo].[pa_member_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (121, 259, N'我的菜单', N'', N'', N'', N'GET', 1)
INSERT [dbo].[pa_member_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (122, 252, N'我的控制台', N'', N'', N'', N'GET', 1)
INSERT [dbo].[pa_member_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (123, 257, N'账户信息', N'', N'', N'', N'GET', 1)
INSERT [dbo].[pa_member_menu_item] ([id], [menuId], [name], [namespace], [controller], [action], [method], [isDefault]) VALUES (124, 260, N'内容发布', N'', N'', N'', N'GET', 1)
SET IDENTITY_INSERT [dbo].[pa_member_menu_item] OFF
SET IDENTITY_INSERT [dbo].[pa_role] ON 

INSERT [dbo].[pa_role] ([id], [name], [remark], [isSuperadmin]) VALUES (1, N'超级管理员', N'默认角色，不可删除', 1)
INSERT [dbo].[pa_role] ([id], [name], [remark], [isSuperadmin]) VALUES (13, N'编辑人员', N'', 0)
SET IDENTITY_INSERT [dbo].[pa_role] OFF
SET IDENTITY_INSERT [dbo].[pa_role_permissions] ON 

INSERT [dbo].[pa_role_permissions] ([id], [roleId], [menuIds], [menuItemIds]) VALUES (10, 13, N'33,49,59,211,53', N'145,162')
INSERT [dbo].[pa_role_permissions] ([id], [roleId], [menuIds], [menuItemIds]) VALUES (11, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[pa_role_permissions] OFF
SET IDENTITY_INSERT [dbo].[pa_site] ON 

INSERT [dbo].[pa_site] ([id], [name], [remark], [directory], [domain], [templateDirectory], [isDefault], [compression], [logo]) VALUES (1, N'PageAdmin博客系统', N'默认站点', N'cn', N'http://localhost:61902', N'Blog', 1, 0, N'/upload/Images/2019/03/12/1757038250.png')
SET IDENTITY_INSERT [dbo].[pa_site] OFF
SET IDENTITY_INSERT [dbo].[pa_web_log] ON 

INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18909, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AA0D012AB2F1 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18910, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AA0D0132C541 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18911, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AA0E0092BB7F AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18912, 5, 1, N'admin', N'管理员admin登录', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AA0E0092CC67 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18913, 3, 0, N'', N'控制器：Login，方法：Index,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AA0E0092CD44 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18914, 3, 1, N'admin', N'控制器：Column，方法：Delete,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Column/Delete/', N'127.0.0.1', CAST(0x0000AA0E0093296D AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18915, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=NewsDetail.cshtml&type=1&path=views%2F%E6%96%B0%E9%97%BB%E4%B8%AD%E5%BF%83', N'127.0.0.1', CAST(0x0000AA0E00936455 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18916, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=style.css&type=1&path=Css', N'127.0.0.1', CAST(0x0000AA0E00940669 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18917, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=NewsDetail.cshtml&type=1&path=views%2F%E6%96%B0%E9%97%BB%E4%B8%AD%E5%BF%83', N'127.0.0.1', CAST(0x0000AA0E0094ABBA AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18918, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=NewsDetail.cshtml&type=1&path=views%2F%E6%96%B0%E9%97%BB%E4%B8%AD%E5%BF%83', N'127.0.0.1', CAST(0x0000AA0E0094BFC1 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18919, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=NewsDetail.cshtml&type=1&path=views%2F%E6%96%B0%E9%97%BB%E4%B8%AD%E5%BF%83', N'127.0.0.1', CAST(0x0000AA0E0094E610 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18920, 3, 1, N'admin', N'控制器：Field，方法：Delete,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Field/Delete/', N'127.0.0.1', CAST(0x0000AA0E0095422A AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18921, 3, 1, N'admin', N'控制器：Field，方法：Add,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Field/Add/?tableName=article', N'127.0.0.1', CAST(0x0000AA0E00955928 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18922, 3, 1, N'admin', N'控制器：Field，方法：Delete,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Field/Delete/', N'127.0.0.1', CAST(0x0000AA0E00955FBC AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18923, 3, 1, N'admin', N'控制器：Field，方法：Add,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Field/Add/?tableName=article', N'127.0.0.1', CAST(0x0000AA0E00958535 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18924, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=NewsDetail.cshtml&type=1&path=views%2F%E6%96%B0%E9%97%BB%E4%B8%AD%E5%BF%83', N'127.0.0.1', CAST(0x0000AA0E0095AC95 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18925, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=Index.cshtml&type=1&path=views%2F%E9%A6%96%E9%A1%B5', N'127.0.0.1', CAST(0x0000AA0E0095C682 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18926, 3, 1, N'admin', N'控制器：InfoData，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoData/Edit/?table=article&id=36', N'127.0.0.1', CAST(0x0000AA0E0095E064 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18927, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=NewsDetail.cshtml&type=1&path=views%2F%E6%96%B0%E9%97%BB%E4%B8%AD%E5%BF%83', N'127.0.0.1', CAST(0x0000AA0E009618FA AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18928, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=NewsDetail.cshtml&type=1&path=views%2F%E6%96%B0%E9%97%BB%E4%B8%AD%E5%BF%83', N'127.0.0.1', CAST(0x0000AA0E009799B6 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18929, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=NewsDetail.cshtml&type=1&path=views%2F%E6%96%B0%E9%97%BB%E4%B8%AD%E5%BF%83', N'127.0.0.1', CAST(0x0000AA0E0098C3E2 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18930, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=NewsDetail.cshtml&type=1&path=views%2F%E6%96%B0%E9%97%BB%E4%B8%AD%E5%BF%83', N'127.0.0.1', CAST(0x0000AA0E0099F86A AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18931, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=NewsDetail.cshtml&type=1&path=views%2F%E6%96%B0%E9%97%BB%E4%B8%AD%E5%BF%83', N'127.0.0.1', CAST(0x0000AA0E009A211B AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18932, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=style.css&type=1&path=Css', N'127.0.0.1', CAST(0x0000AA0E009A66C7 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18933, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=NewsDetail.cshtml&type=1&path=views%2F%E6%96%B0%E9%97%BB%E4%B8%AD%E5%BF%83', N'127.0.0.1', CAST(0x0000AA0E009A8637 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18934, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=NewsDetail.cshtml&type=1&path=views%2F%E6%96%B0%E9%97%BB%E4%B8%AD%E5%BF%83', N'127.0.0.1', CAST(0x0000AA0E009A929C AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18935, 3, 1, N'admin', N'控制器：Field，方法：Add,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Field/Add/?tableName=article', N'127.0.0.1', CAST(0x0000AA0E009B067A AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18936, 3, 1, N'admin', N'控制器：InfoData，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoData/Edit/?table=article&id=36', N'127.0.0.1', CAST(0x0000AA0E009C3870 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18937, 3, 1, N'admin', N'控制器：Field，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Field/Edit/?id=112', N'127.0.0.1', CAST(0x0000AA0E009C5D33 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18938, 3, 1, N'admin', N'控制器：TemplateManager，方法：AddFile,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/AddFile/', N'127.0.0.1', CAST(0x0000AA0E00A03C1D AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18939, 3, 1, N'admin', N'控制器：TemplateManager，方法：Delete,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Delete/', N'127.0.0.1', CAST(0x0000AA0E00A04C91 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18940, 3, 1, N'admin', N'控制器：TemplateManager，方法：AddFile,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/AddFile/', N'127.0.0.1', CAST(0x0000AA0E00A0641D AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18941, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=RelativeNewsModel.cshtml&type=1&path=views%2FModel', N'127.0.0.1', CAST(0x0000AA0E00A06BB6 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18942, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=NewsDetail.cshtml&type=1&path=views%2F%E6%96%B0%E9%97%BB%E4%B8%AD%E5%BF%83', N'127.0.0.1', CAST(0x0000AA0E00A1FF27 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18943, 3, 1, N'admin', N'控制器：InfoTable，方法：CheckExists,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoTable/CheckExists/?id=80&fieldName=%E8%A1%A8%E5%90%8D', N'127.0.0.1', CAST(0x0000AA0E00A21BE7 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18944, 3, 1, N'admin', N'控制器：InfoTable，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoTable/Edit/?id=80', N'127.0.0.1', CAST(0x0000AA0E00A21BF0 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18945, 3, 1, N'admin', N'控制器：InfoData，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoData/Edit/?table=article&id=36', N'127.0.0.1', CAST(0x0000AA0E00A264F2 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18946, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=RelativeNewsModel.cshtml&type=1&path=views%2FModel', N'127.0.0.1', CAST(0x0000AA0E00A301B0 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18947, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=RelativeNewsModel.cshtml&type=1&path=views%2FModel', N'127.0.0.1', CAST(0x0000AA0E00A31921 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18948, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AA0E00A3195F AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18949, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AA0E00A31BFF AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18950, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=RelativeNewsModel.cshtml&type=1&path=views%2FModel', N'127.0.0.1', CAST(0x0000AA0E00A32F5A AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18951, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=BreadcrumbPartial.cshtml&type=1&path=views%2FShared', N'127.0.0.1', CAST(0x0000AA0E00A38E7D AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18952, 1, 0, NULL, N'Error：“System.Dynamic.ExpandoObject”未包含“Pa_author”的定义', NULL, NULL, CAST(0x0000AA0E00A3A955 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18953, 1, 0, NULL, N'Error：“System.Dynamic.ExpandoObject”未包含“Pa_author”的定义', NULL, NULL, CAST(0x0000AA0E00A3AD6E AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18954, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=FooterPartial.cshtml&type=1&path=views%2FShared', N'127.0.0.1', CAST(0x0000AA0E00A42015 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18955, 1, 0, NULL, N'Error：“System.Dynamic.ExpandoObject”未包含“Pa_author”的定义', NULL, NULL, CAST(0x0000AA0E00A4232D AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18956, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=Index.cshtml&type=1&path=views%2F%E9%A6%96%E9%A1%B5', N'127.0.0.1', CAST(0x0000AA0E00A4638D AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18957, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=NewsList.cshtml&type=1&path=views%2F%E6%96%B0%E9%97%BB%E4%B8%AD%E5%BF%83', N'127.0.0.1', CAST(0x0000AA0E00A483F6 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18958, 3, 1, N'admin', N'控制器：TemplateManager，方法：AddFile,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/AddFile/', N'127.0.0.1', CAST(0x0000AA0E00A49D0E AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18959, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=ArticleListModel.cshtml&type=1&path=views%2FModel', N'127.0.0.1', CAST(0x0000AA0E00A4B8F2 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18960, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=NewsList.cshtml&type=1&path=views%2F%E6%96%B0%E9%97%BB%E4%B8%AD%E5%BF%83', N'127.0.0.1', CAST(0x0000AA0E00A4CC49 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18961, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=NewsList.cshtml&type=1&path=views%2F%E6%96%B0%E9%97%BB%E4%B8%AD%E5%BF%83', N'127.0.0.1', CAST(0x0000AA0E00A66E8E AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18962, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=ArticleListModel.cshtml&type=1&path=views%2FModel', N'127.0.0.1', CAST(0x0000AA0E00A67E51 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18963, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=NewsList.cshtml&type=1&path=views%2F%E6%96%B0%E9%97%BB%E4%B8%AD%E5%BF%83', N'127.0.0.1', CAST(0x0000AA0E00A6D4A8 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18964, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=NewsList.cshtml&type=1&path=views%2F%E6%96%B0%E9%97%BB%E4%B8%AD%E5%BF%83', N'127.0.0.1', CAST(0x0000AA0E00A74871 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18965, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=Index.cshtml&type=1&path=views%2F%E9%A6%96%E9%A1%B5', N'127.0.0.1', CAST(0x0000AA0E00A77061 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18966, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=Index.cshtml&type=1&path=views%2F%E9%A6%96%E9%A1%B5', N'127.0.0.1', CAST(0x0000AA0E00A78882 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18967, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AA0E00A8F712 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18968, 5, 1, N'admin', N'管理员admin登录', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AA0E00A903DC AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18969, 3, 0, N'', N'控制器：Login，方法：Index,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AA0E00A9040E AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18970, 3, 1, N'admin', N'控制器：Site，方法：CheckExists,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Site/CheckExists/?id=1', N'127.0.0.1', CAST(0x0000AA0E00A91826 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18971, 3, 1, N'admin', N'控制器：Site，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Site/Edit/?id=1', N'127.0.0.1', CAST(0x0000AA0E00A91835 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18972, 3, 1, N'admin', N'控制器：Default，方法：RestartApplication,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Default/RestartApplication/', N'127.0.0.1', CAST(0x0000AA0E00A91EFF AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18973, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AA0E00A91F1E AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18974, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AA0E00A921B3 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18975, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AA0E00A96028 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18976, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AA0E00A97858 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18977, 5, 1, N'admin', N'管理员admin登录', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AA0E00AC0168 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18978, 3, 0, N'', N'控制器：Login，方法：Index,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AA0E00AC0169 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18979, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AA0E00AF167F AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18980, 1, 0, NULL, N'Error：值不能为 null。
参数名: String', NULL, NULL, CAST(0x0000AA0E00AF38CC AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18981, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AA0E00AF4C50 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18982, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AA0E00AF5937 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18983, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AA0E00AF7741 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18984, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AA0E00B056B8 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18985, 1, 0, NULL, N'Error：无法将 null 转换为“int”，因为后者是不可以为 null 的值类型', NULL, NULL, CAST(0x0000AA0E00B257BF AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18986, 2, 0, NULL, N'删除60天前的日志,删除数：218', NULL, NULL, CAST(0x0000AA0E00B397A2 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18987, 2, 0, NULL, N'删除过期的登录用户数据成功，删除数：2', NULL, NULL, CAST(0x0000AA0E00B397A2 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18988, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AA0E00B415C0 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18989, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AA0E00B418F9 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18990, 1, 0, NULL, N'Error：无法将 null 转换为“int”，因为后者是不可以为 null 的值类型', NULL, NULL, CAST(0x0000AA0E00B4298A AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18991, 1, 0, NULL, N'Error：索引超出了数组界限。', NULL, NULL, CAST(0x0000AA0E00B51567 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18992, 1, 0, NULL, N'Error：无法将类型“string”隐式转换为“int”', NULL, NULL, CAST(0x0000AA0E00B51F54 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18993, 1, 0, NULL, N'Error：输入字符串的格式不正确。', NULL, NULL, CAST(0x0000AA0E00B53221 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18994, 1, 0, NULL, N'Error：f:\pageadmin\v4.0\PageAdmin.Web\PageAdmin.Web\Templates\Blog\views\Shared\leftNavPartial.cshtml(7): error CS1955: 不能像使用方法那样使用不可调用的成员“System.Web.HttpRequestBase.QueryString”。', NULL, NULL, CAST(0x0000AA0E00B8AD30 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18995, 1, 0, NULL, N'Error：从客户端(kw="2222<alert")中检测到有潜在危险的 Request.QueryString 值。', NULL, NULL, CAST(0x0000AA0E00B8C59E AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18996, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AA0E00B9B020 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18997, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AA0E00BD563A AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18998, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AA0E00BD594D AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (18999, 5, 1, N'admin', N'管理员admin登录', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AA0E00BDA7BA AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19000, 3, 0, N'', N'控制器：Login，方法：Index,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AA0E00BDA7BB AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19001, 3, 1, N'admin', N'控制器：Column，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Column/Edit/?id=207', N'127.0.0.1', CAST(0x0000AA0E00BDB44F AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19002, 3, 1, N'admin', N'控制器：Column，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Column/Edit/?id=208', N'127.0.0.1', CAST(0x0000AA0E00BDBD48 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19003, 3, 1, N'admin', N'控制器：Column，方法：SetMultiple,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Column/SetMultiple/', N'127.0.0.1', CAST(0x0000AA0E00BDC481 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19004, 3, 1, N'admin', N'控制器：Column，方法：SetMultiple,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Column/SetMultiple/', N'127.0.0.1', CAST(0x0000AA0E00C0A9B5 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19005, 3, 1, N'admin', N'控制器：Field，方法：Add,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Field/Add/?tableName=pa_site', N'127.0.0.1', CAST(0x0000AA0E00C180BC AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19006, 3, 1, N'admin', N'控制器：Admin，方法：Add,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Admin/Add/', N'127.0.0.1', CAST(0x0000AA0E00C1C844 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19007, 3, 1, N'admin', N'控制器：Member，方法：CheckExists,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Member/CheckExists/?fieldName=%E7%94%A8%E6%88%B7%E5%90%8D', N'127.0.0.1', CAST(0x0000AA0E00C1E344 AS DateTime))
GO
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19008, 3, 1, N'admin', N'控制器：Member，方法：CheckExists,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Member/CheckExists/?fieldName=%E7%94%A8%E6%88%B7%E5%90%8D', N'127.0.0.1', CAST(0x0000AA0E00C1E373 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19009, 3, 1, N'admin', N'控制器：Member，方法：CheckExists,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Member/CheckExists/?fieldName=%E7%94%A8%E6%88%B7%E5%90%8D', N'127.0.0.1', CAST(0x0000AA0E00C1E3A0 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19010, 3, 1, N'admin', N'控制器：Member，方法：CheckExists,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Member/CheckExists/?fieldName=%E7%94%A8%E6%88%B7%E5%90%8D', N'127.0.0.1', CAST(0x0000AA0E00C1E45C AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19011, 3, 1, N'admin', N'控制器：Member，方法：CheckExists,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Member/CheckExists/?fieldName=%E7%94%A8%E6%88%B7%E5%90%8D', N'127.0.0.1', CAST(0x0000AA0E00C1E4A4 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19012, 3, 1, N'admin', N'控制器：Member，方法：CheckExists,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Member/CheckExists/?fieldName=%E7%94%A8%E6%88%B7%E5%90%8D', N'127.0.0.1', CAST(0x0000AA0E00C1E519 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19013, 3, 1, N'admin', N'控制器：Member，方法：CheckExists,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Member/CheckExists/?fieldName=%E7%94%A8%E6%88%B7%E5%90%8D', N'127.0.0.1', CAST(0x0000AA0E00C1E62D AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19014, 3, 1, N'admin', N'控制器：Member，方法：CheckExists,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Member/CheckExists/?fieldName=%E7%94%A8%E6%88%B7%E5%90%8D', N'127.0.0.1', CAST(0x0000AA0E00C1E66B AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19015, 3, 1, N'admin', N'控制器：Member，方法：CheckExists,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Member/CheckExists/?fieldName=%E7%94%A8%E6%88%B7%E5%90%8D', N'127.0.0.1', CAST(0x0000AA0E00C1E69C AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19016, 3, 1, N'admin', N'控制器：Member，方法：CheckExists,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Member/CheckExists/?fieldName=%E7%94%A8%E6%88%B7%E5%90%8D', N'127.0.0.1', CAST(0x0000AA0E00C1E6D7 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19017, 3, 1, N'admin', N'控制器：Member，方法：CheckExists,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Member/CheckExists/?fieldName=%E7%94%A8%E6%88%B7%E5%90%8D', N'127.0.0.1', CAST(0x0000AA0E00C1E6FB AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19018, 3, 1, N'admin', N'控制器：Member，方法：CheckExists,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Member/CheckExists/?fieldName=%E7%94%A8%E6%88%B7%E5%90%8D', N'127.0.0.1', CAST(0x0000AA0E00C1E717 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19019, 3, 1, N'admin', N'控制器：Member，方法：CheckExists,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Member/CheckExists/?fieldName=%E7%94%A8%E6%88%B7%E5%90%8D', N'127.0.0.1', CAST(0x0000AA0E00C1E73D AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19020, 3, 1, N'admin', N'控制器：Member，方法：Add,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Member/Add/', N'127.0.0.1', CAST(0x0000AA0E00C1E8D6 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19021, 3, 1, N'admin', N'控制器：Admin，方法：Add,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Admin/Add/', N'127.0.0.1', CAST(0x0000AA0E00C1FCF2 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19022, 3, 1, N'admin', N'控制器：Admin，方法：Delete,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Admin/Delete/', N'127.0.0.1', CAST(0x0000AA0E00C20217 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19023, 3, 1, N'admin', N'控制器：Admin，方法：Add,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Admin/Add/', N'127.0.0.1', CAST(0x0000AA0E00C57156 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19024, 1, 0, NULL, N'Error：sql:insert into [pa_admin]([uid],[username],[remark],[roleId],[siteIds],[MemberGroupIds],[defaultSiteId]) values(@InsertParamter0,@InsertParamter1,@InsertParamter2,@InsertParamter3,@InsertParamt', NULL, NULL, CAST(0x0000AA0E00C57158 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19025, 3, 1, N'admin', N'控制器：Admin，方法：Add,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Admin/Add/', N'127.0.0.1', CAST(0x0000AA0E00C611A4 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19026, 1, 0, NULL, N'Error：sql:insert into [pa_admin]([uid],[username],[remark],[roleId],[siteIds],[MemberGroupIds],[defaultSiteId]) values(@InsertParamter0,@InsertParamter1,@InsertParamter2,@InsertParamter3,@InsertParamt', NULL, NULL, CAST(0x0000AA0E00C611A4 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19027, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AA0E00C89BDF AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19028, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AA0E00C8B6C7 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19029, 3, 1, N'admin', N'控制器：Admin，方法：Add,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Admin/Add/', N'127.0.0.1', CAST(0x0000AA0E00C8C486 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19030, 1, 0, NULL, N'Error：sql:insert into [pa_admin]([uid],[username],[remark],[roleId],[siteIds],[MemberGroupIds],[defaultSiteId]) values(@InsertParamter0,@InsertParamter1,@InsertParamter2,@InsertParamter3,@InsertParamt', NULL, NULL, CAST(0x0000AA0E00C8C487 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19031, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AA0E00C8CBA8 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19032, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AA0E00C8DD9B AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19033, 3, 1, N'admin', N'控制器：Admin，方法：Add,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Admin/Add/', N'127.0.0.1', CAST(0x0000AA0E00C8E9A1 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19034, 1, 0, NULL, N'Error：sql:insert into [pa_admin]([uid],[username],[remark],[roleId],[siteIds],[MemberGroupIds],[defaultSiteId]) values(@InsertParamter0,@InsertParamter1,@InsertParamter2,@InsertParamter3,@InsertParamt', NULL, NULL, CAST(0x0000AA0E00C8E9A2 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19035, 3, 1, N'admin', N'控制器：Admin，方法：Add,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Admin/Add/', N'127.0.0.1', CAST(0x0000AA0E00C9033A AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19036, 1, 0, NULL, N'Error：sql:insert into [pa_admin]([uid],[username],[remark],[roleId],[siteIds],[MemberGroupIds],[defaultSiteId]) values(@InsertParamter0,@InsertParamter1,@InsertParamter2,@InsertParamter3,@InsertParamt', NULL, NULL, CAST(0x0000AA0E00C9033B AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19037, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AA0E00CAC80C AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19038, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AA0E00CAD1DB AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19039, 3, 1, N'admin', N'控制器：Admin，方法：Add,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Admin/Add/', N'127.0.0.1', CAST(0x0000AA0E00CCE505 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19040, 1, 0, NULL, N'Error：sql:insert into [pa_admin]([uid],[username],[remark],[roleId],[siteIds],[MemberGroupIds],[defaultSiteId]) values(@InsertParamter0,@InsertParamter1,@InsertParamter2,@InsertParamter3,@InsertParamt', NULL, NULL, CAST(0x0000AA0E00CCE510 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19041, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AA0E00F11B78 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19042, 5, 1, N'admin', N'管理员admin登录', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AA0E00F12ADF AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19043, 3, 0, N'', N'控制器：Login，方法：Index,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AA0E00F12AE0 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19044, 3, 1, N'admin', N'控制器：Admin，方法：Add,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Admin/Add/', N'127.0.0.1', CAST(0x0000AA0E00F16CB9 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19045, 3, 1, N'admin', N'控制器：Admin，方法：Delete,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Admin/Delete/', N'127.0.0.1', CAST(0x0000AA0E00F17087 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19046, 3, 1, N'admin', N'控制器：Admin，方法：Add,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Admin/Add/', N'127.0.0.1', CAST(0x0000AA0E00F1804B AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19047, 3, 1, N'admin', N'控制器：Admin，方法：Delete,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Admin/Delete/', N'127.0.0.1', CAST(0x0000AA0E00F1881F AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19048, 3, 1, N'admin', N'控制器：InfoData，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoData/Edit/?table=article&id=36', N'127.0.0.1', CAST(0x0000AA0E00FDBDDD AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19049, 3, 1, N'admin', N'控制器：InfoData，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoData/Edit/?table=article&id=36', N'127.0.0.1', CAST(0x0000AA0E00FDCCFF AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19050, 3, 1, N'admin', N'控制器：InfoData，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoData/Edit/?table=article&id=36', N'127.0.0.1', CAST(0x0000AA0E00FDD91D AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19051, 3, 1, N'admin', N'控制器：InfoData，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoData/Edit/?table=article&id=36', N'127.0.0.1', CAST(0x0000AA0E00FDEC38 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19052, 3, 1, N'admin', N'控制器：InfoData，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoData/Edit/?table=article&id=36', N'127.0.0.1', CAST(0x0000AA0E00FDFDD2 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19053, 3, 1, N'admin', N'控制器：InfoData，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoData/Edit/?table=article&id=36', N'127.0.0.1', CAST(0x0000AA0E00FE0FD6 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19054, 3, 1, N'admin', N'控制器：InfoData，方法：add,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoData/add/?table=article', N'127.0.0.1', CAST(0x0000AA0E00FE1A4D AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19055, 3, 1, N'admin', N'控制器：Column，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Column/Edit/?id=207', N'127.0.0.1', CAST(0x0000AA0E00FE6D7B AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19056, 3, 1, N'admin', N'控制器：Column，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Column/Edit/?id=207', N'127.0.0.1', CAST(0x0000AA0E00FE86D6 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19057, 2, 0, NULL, N'删除1天前的日志,删除数：137', NULL, NULL, CAST(0x0000AA0E01019636 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19058, 2, 0, NULL, N'删除过期的登录用户数据成功，删除数：4', NULL, NULL, CAST(0x0000AA0E01019637 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19059, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AA0E010D612E AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19060, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AA0E01116F45 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19061, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AA0E011A5F38 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19062, 5, 1, N'admin', N'管理员admin登录', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AA0E011A6E7A AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19063, 3, 0, N'', N'控制器：Login，方法：Index,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AA0E011A6F2C AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19064, 3, 1, N'admin', N'控制器：Site，方法：CheckExists,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Site/CheckExists/?id=1', N'127.0.0.1', CAST(0x0000AA0E011A8345 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19065, 3, 1, N'admin', N'控制器：Site，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Site/Edit/?id=1', N'127.0.0.1', CAST(0x0000AA0E011A9D34 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19066, 3, 1, N'admin', N'控制器：Default，方法：RestartApplication,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Default/RestartApplication/', N'127.0.0.1', CAST(0x0000AA0E011ACD00 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19067, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AA0E011ACD32 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19068, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AA0E011ACFAE AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19069, 3, 1, N'admin', N'控制器：InfoData，方法：Delete,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoData/Delete/?table=article', N'127.0.0.1', CAST(0x0000AA0E011AD90B AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19070, 3, 1, N'admin', N'控制器：FileManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/FileManager/Edit/?&name=Version.config&type=1&path=Config', N'127.0.0.1', CAST(0x0000AA0E011B06C0 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19071, 11, 1, N'admin', N'下载4.0.06升级文件(success)', N'', N'', CAST(0x0000AA0E011B2129 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19072, 3, 1, N'admin', N'控制器：OnlineUpgrade，方法：DownLoad,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/OnlineUpgrade/DownLoad/', N'127.0.0.1', CAST(0x0000AA0E011B2129 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19073, 3, 1, N'admin', N'控制器：OnlineUpgrade，方法：RestartApplication,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/OnlineUpgrade/RestartApplication/', N'127.0.0.1', CAST(0x0000AA0E011B225C AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19074, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AA0E011B225D AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19075, 11, 0, NULL, N'系统成功更新到4.0.06版本', NULL, NULL, CAST(0x0000AA0E011B234A AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19076, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AA0E011B23B8 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19077, 3, 1, N'admin', N'控制器：OnlineUpgrade，方法：Visitor,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/OnlineUpgrade/Visitor/', N'127.0.0.1', CAST(0x0000AA0E011B2419 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19078, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AA0E011B245A AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19079, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AA0E011B31C3 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19080, 5, 1, N'admin', N'管理员admin登录', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AA0E011C1940 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19081, 3, 0, N'', N'控制器：Login，方法：Index,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AA0E011C1941 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19082, 1, 0, NULL, N'Error：连接出错,请求被中止: 操作超时。', NULL, NULL, CAST(0x0000AA0E011C32D4 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19083, 3, 1, N'admin', N'控制器：Site，方法：CheckExists,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Site/CheckExists/?id=1', N'127.0.0.1', CAST(0x0000AA0E011C3B6B AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19084, 3, 1, N'admin', N'控制器：Site，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Site/Edit/?id=1', N'127.0.0.1', CAST(0x0000AA0E011C3B7C AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19085, 3, 1, N'admin', N'控制器：SiteSet，方法：CheckExists,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/SiteSet/CheckExists/?id=1', N'127.0.0.1', CAST(0x0000AA0E011C4711 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19086, 3, 1, N'admin', N'控制器：SiteSet，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/SiteSet/Edit/', N'127.0.0.1', CAST(0x0000AA0E011C4718 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19087, 2, 0, NULL, N'删除1天前的日志,删除数：53', NULL, NULL, CAST(0x0000AA0E0121EA02 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19088, 5, 1, N'admin', N'管理员admin登录', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AA0E0123F37F AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19089, 3, 0, N'', N'控制器：Login，方法：Index,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AA0E0123F380 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19090, 3, 1, N'admin', N'控制器：InfoData，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoData/Edit/?table=article&id=18', N'127.0.0.1', CAST(0x0000AA0E0124E9A8 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19091, 3, 1, N'admin', N'控制器：InfoData，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoData/Edit/?table=article&id=18', N'127.0.0.1', CAST(0x0000AA0E0124F3D9 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19092, 3, 1, N'admin', N'控制器：Field，方法：Delete,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Field/Delete/', N'127.0.0.1', CAST(0x0000AA0E012508BE AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19093, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AA0E012668C6 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19094, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AA0E012712FD AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19095, 3, 1, N'admin', N'控制器：Site，方法：CheckExists,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Site/CheckExists/?id=1', N'127.0.0.1', CAST(0x0000AA0E012724FB AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19096, 3, 1, N'admin', N'控制器：Site，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Site/Edit/?id=1', N'127.0.0.1', CAST(0x0000AA0E01272511 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19097, 3, 1, N'admin', N'控制器：Default，方法：RestartApplication,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Default/RestartApplication/', N'127.0.0.1', CAST(0x0000AA0E01272810 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19098, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AA0E01272811 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19099, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AA0E01272971 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19100, 3, 1, N'admin', N'控制器：SiteSet，方法：CheckExists,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/SiteSet/CheckExists/?id=1', N'127.0.0.1', CAST(0x0000AA0E0127D41E AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19101, 3, 1, N'admin', N'控制器：SiteSet，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/SiteSet/Edit/', N'127.0.0.1', CAST(0x0000AA0E0127D439 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19102, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AB2D011BA180 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19103, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AB2D011BA379 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19104, 5, 1, N'admin', N'管理员admin登录', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AB2D011BB249 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19105, 3, 0, N'', N'控制器：Login，方法：Index,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AB2D011BB272 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19106, 11, 1, N'admin', N'下载4.0.07升级文件(success)', N'', N'', CAST(0x0000AB2D011BDCD9 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19107, 3, 1, N'admin', N'控制器：OnlineUpgrade，方法：DownLoad,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/OnlineUpgrade/DownLoad/', N'127.0.0.1', CAST(0x0000AB2D011BDCDC AS DateTime))
GO
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19108, 11, 1, N'admin', N'下载4.0.08升级文件(success)', N'', N'', CAST(0x0000AB2D011BDFD5 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19109, 3, 1, N'admin', N'控制器：OnlineUpgrade，方法：DownLoad,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/OnlineUpgrade/DownLoad/', N'127.0.0.1', CAST(0x0000AB2D011BDFD7 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19110, 3, 1, N'admin', N'控制器：OnlineUpgrade，方法：RestartApplication,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/OnlineUpgrade/RestartApplication/', N'127.0.0.1', CAST(0x0000AB2D011BE115 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19111, 11, 0, NULL, N'系统成功更新到4.0.07版本', NULL, NULL, CAST(0x0000AB2D011BE1F5 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19112, 11, 0, NULL, N'系统成功更新到4.0.08版本', NULL, NULL, CAST(0x0000AB2D011BE22E AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19113, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AB2D011BE248 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19114, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AB2D011BE28F AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19115, 3, 1, N'admin', N'控制器：OnlineUpgrade，方法：Visitor,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/OnlineUpgrade/Visitor/', N'127.0.0.1', CAST(0x0000AB2D011BE2ED AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19116, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AB2D011BE2ED AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19117, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AB2D011BEF62 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19118, 3, 1, N'admin', N'控制器：InfoData，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoData/Edit/?table=article&id=2', N'127.0.0.1', CAST(0x0000AB2D011C29A2 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19119, 3, 1, N'admin', N'控制器：AttachmentTable，方法：ClearAllInvalid,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/AttachmentTable/ClearAllInvalid/', N'127.0.0.1', CAST(0x0000AB2D011C5D47 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19120, 3, 1, N'admin', N'控制器：Admin，方法：Delete,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Admin/Delete/', N'127.0.0.1', CAST(0x0000AB2D011C69FB AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19121, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AB720093D095 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19122, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AB720093D34E AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19123, 5, 1, N'admin', N'管理员admin登录', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AB720093DFBB AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19124, 3, 0, N'', N'控制器：Login，方法：Index,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AB720093DFFD AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19125, 1, 0, NULL, N'Error：未将对象引用设置到对象的实例。', NULL, NULL, CAST(0x0000AB720093F030 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19126, 1, 0, NULL, N'Error：e:\PA_工作内容\2020\3月\模板\Blog\Templates\Blog\views\搜索\Search.cshtml(5): error CS0103: 当前上下文中不存在名称“currentPage”', NULL, NULL, CAST(0x0000AB720094C899 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19127, 1, 0, NULL, N'Error：无法将 null 转换为“int”，因为后者是不可以为 null 的值类型', NULL, NULL, CAST(0x0000AB7200959ED7 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19128, 1, 0, NULL, N'Error：无法将 null 转换为“int”，因为后者是不可以为 null 的值类型', NULL, NULL, CAST(0x0000AB720095D8E9 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19129, 1, 0, NULL, N'Error：无法将 null 转换为“int”，因为后者是不可以为 null 的值类型', NULL, NULL, CAST(0x0000AB720095E265 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19130, 1, 0, NULL, N'Error：无法将 null 转换为“int”，因为后者是不可以为 null 的值类型', NULL, NULL, CAST(0x0000AB7200966172 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19131, 1, 0, NULL, N'Error：无法将 null 转换为“int”，因为后者是不可以为 null 的值类型', NULL, NULL, CAST(0x0000AB7200967C70 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19132, 1, 0, NULL, N'Error：无法将 null 转换为“int”，因为后者是不可以为 null 的值类型', NULL, NULL, CAST(0x0000AB720096F3B1 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19133, 1, 0, NULL, N'Error：无法将 null 转换为“int”，因为后者是不可以为 null 的值类型', NULL, NULL, CAST(0x0000AB7200981D27 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19134, 1, 0, NULL, N'Error：无法将 null 转换为“int”，因为后者是不可以为 null 的值类型', NULL, NULL, CAST(0x0000AB7200981F98 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19135, 1, 0, NULL, N'Error：无法将 null 转换为“int”，因为后者是不可以为 null 的值类型', NULL, NULL, CAST(0x0000AB7200996663 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19136, 1, 0, NULL, N'Error：无法将 null 转换为“int”，因为后者是不可以为 null 的值类型', NULL, NULL, CAST(0x0000AB72009A0C8D AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19137, 1, 0, NULL, N'Error：无法将 null 转换为“int”，因为后者是不可以为 null 的值类型', NULL, NULL, CAST(0x0000AB72009A1A55 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19138, 5, 1, N'admin', N'管理员admin登录', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AB72009A6D0E AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19139, 3, 0, N'', N'控制器：Login，方法：Index,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AB72009A6D13 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19140, 5, 1, N'admin', N'管理员admin登录', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AB72009A6DC4 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19141, 3, 1, N'admin', N'控制器：Login，方法：Index,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AB72009A6DC4 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19142, 5, 1, N'admin', N'管理员admin登录', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AB72009A7E10 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19143, 3, 0, N'', N'控制器：Login，方法：Index,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AB72009A7E10 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19144, 5, 1, N'admin', N'管理员admin登录', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AB72009A7E29 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19145, 3, 1, N'admin', N'控制器：Login，方法：Index,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AB72009A7E29 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19146, 1, 0, NULL, N'Error：无法将 null 转换为“int”，因为后者是不可以为 null 的值类型', NULL, NULL, CAST(0x0000AB72009B5B9F AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19147, 1, 0, NULL, N'Error：无法将 null 转换为“int”，因为后者是不可以为 null 的值类型', NULL, NULL, CAST(0x0000AB72009B78FB AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19148, 1, 0, NULL, N'Error：无法将 null 转换为“int”，因为后者是不可以为 null 的值类型', NULL, NULL, CAST(0x0000AB72009B88CB AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19149, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AB72009BA620 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19150, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AB72009BACAE AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19151, 1, 0, NULL, N'Error：未将对象引用设置到对象的实例。', NULL, NULL, CAST(0x0000AB72009BAE70 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19152, 1, 0, NULL, N'Error：e:\PA_工作内容\2020\3月\模板\Blog\Templates\Blog\views\搜索\Search.cshtml(4): error CS0103: 当前上下文中不存在名称“pageInfo”', NULL, NULL, CAST(0x0000AB72009C15AF AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19153, 1, 0, NULL, N'Error：e:\PA_工作内容\2020\3月\模板\Blog\Templates\Blog\views\搜索\Search.cshtml(18): error CS0103: 当前上下文中不存在名称“pageInfo”', NULL, NULL, CAST(0x0000AB72009C2D67 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19154, 1, 0, NULL, N'Error：e:\PA_工作内容\2020\3月\模板\Blog\Templates\Blog\views\搜索\Search.cshtml(18): error CS0103: 当前上下文中不存在名称“pageInfo”', NULL, NULL, CAST(0x0000AB72009C2D6A AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19155, 3, 1, N'admin', N'控制器：Column，方法：Add,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Column/Add/', N'127.0.0.1', CAST(0x0000AB72009CFC26 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19156, 1, 0, NULL, N'Error：无法将 null 转换为“int”，因为后者是不可以为 null 的值类型', NULL, NULL, CAST(0x0000AB72009DC03D AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19157, 5, 1, N'admin', N'管理员admin登录', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AB72009DDB89 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19158, 3, 0, N'', N'控制器：Login，方法：Index,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AB72009DDB89 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19159, 3, 1, N'admin', N'控制器：Column，方法：Delete,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Column/Delete/', N'127.0.0.1', CAST(0x0000AB72009DEEE5 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19160, 1, 0, NULL, N'Error：无法将 null 转换为“int”，因为后者是不可以为 null 的值类型', NULL, NULL, CAST(0x0000AB72009E2515 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19161, 1, 0, NULL, N'Error：无法将 null 转换为“int”，因为后者是不可以为 null 的值类型', NULL, NULL, CAST(0x0000AB72009E2585 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19162, 1, 0, NULL, N'Error：无法将 null 转换为“int”，因为后者是不可以为 null 的值类型', NULL, NULL, CAST(0x0000AB72009E3011 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19163, 1, 0, NULL, N'Error：未将对象引用设置到对象的实例。', NULL, NULL, CAST(0x0000AB72009E59ED AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19164, 1, 0, NULL, N'Error：未将对象引用设置到对象的实例。', NULL, NULL, CAST(0x0000AB7200A10690 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19165, 1, 0, NULL, N'Error：未将对象引用设置到对象的实例。', NULL, NULL, CAST(0x0000AB7200A154B4 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19166, 1, 0, NULL, N'Error：未将对象引用设置到对象的实例。', NULL, NULL, CAST(0x0000AB7200A16BF6 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19167, 1, 0, NULL, N'Error：未将对象引用设置到对象的实例。', NULL, NULL, CAST(0x0000AB7200A1DC94 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19168, 1, 0, NULL, N'Error：未将对象引用设置到对象的实例。', NULL, NULL, CAST(0x0000AB7200A7CBEA AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19169, 5, 1, N'admin', N'管理员admin登录', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AB7200A80AFC AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19170, 3, 0, N'', N'控制器：Login，方法：Index,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AB7200A80AFF AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19171, 1, 0, NULL, N'Error：输入字符串的格式不正确。', NULL, NULL, CAST(0x0000AB7200AABBEC AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19172, 1, 0, NULL, N'Error：输入字符串的格式不正确。', NULL, NULL, CAST(0x0000AB7200AB14EE AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19173, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AB7200AB1F12 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19174, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AB7200AB26FD AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19175, 1, 0, NULL, N'Error：输入字符串的格式不正确。', NULL, NULL, CAST(0x0000AB7200AB54F0 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19176, 1, 0, NULL, N'Error：输入字符串的格式不正确。', NULL, NULL, CAST(0x0000AB7200AB9A3E AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19177, 1, 0, NULL, N'Error：输入字符串的格式不正确。', NULL, NULL, CAST(0x0000AB7200AD64F4 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19178, 1, 0, NULL, N'Error：输入字符串的格式不正确。', NULL, NULL, CAST(0x0000AB7200AD87B7 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19179, 1, 0, NULL, N'Error：e:\PA_工作内容\2020\3月\模板\Blog\Templates\Blog\views\搜索\Search.cshtml(6): error CS0029: 无法将类型“string”隐式转换为“int”', NULL, NULL, CAST(0x0000AB7200B12711 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19180, 1, 0, NULL, N'Error：输入字符串的格式不正确。', NULL, NULL, CAST(0x0000AB7200B177F4 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19181, 1, 0, NULL, N'Error：输入字符串的格式不正确。', NULL, NULL, CAST(0x0000AB7200B20734 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19182, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AB7200B78F59 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19183, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AB7200B8AF73 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19184, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AB7200B93DC9 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19185, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AB7200BB2B4E AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (19186, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AB7200BB5B2E AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20123, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AB7300BA3DA5 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20124, 5, 1, N'admin', N'管理员admin登录', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AB7300BA4952 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20125, 3, 0, N'', N'控制器：Login，方法：Index,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Login/', N'127.0.0.1', CAST(0x0000AB7300BA49B7 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20126, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=Search.cshtml&type=1&path=views%2F%E6%90%9C%E7%B4%A2', N'127.0.0.1', CAST(0x0000AB7300BA6FE6 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20127, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=PagebreakPartial.cshtml&type=1&path=views%2FShared', N'127.0.0.1', CAST(0x0000AB7300BC8186 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20128, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=PagebreakPartial.cshtml&type=1&path=views%2FShared', N'127.0.0.1', CAST(0x0000AB7300BCFCEA AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20129, 3, 1, N'admin', N'控制器：Default，方法：RestartApplication,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Default/RestartApplication/', N'127.0.0.1', CAST(0x0000AB7300BD2317 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20130, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000AB7300BD2372 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20131, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000AB7300BD26FB AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20132, 3, 1, N'admin', N'控制器：TemplateManager，方法：AddFile,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/AddFile/', N'127.0.0.1', CAST(0x0000AB7300BFB205 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20133, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=zdyPagebreakPartial.cshtml&type=1&path=views%2FShared', N'127.0.0.1', CAST(0x0000AB7300C01557 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20134, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=Search.cshtml&type=1&path=views%2F%E6%90%9C%E7%B4%A2', N'127.0.0.1', CAST(0x0000AB7300C02455 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20135, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=zdyPagebreakPartial.cshtml&type=1&path=views%2FShared', N'127.0.0.1', CAST(0x0000AB7300C049C5 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20136, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=zdyPagebreakPartial.cshtml&type=1&path=views%2FShared', N'127.0.0.1', CAST(0x0000AB7300C0BD81 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20137, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=zdyPagebreakPartial.cshtml&type=1&path=views%2FShared', N'127.0.0.1', CAST(0x0000AB7300C0D9C7 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20138, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=zdyPagebreakPartial.cshtml&type=1&path=views%2FShared', N'127.0.0.1', CAST(0x0000AB7300C10E06 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20139, 3, 1, N'admin', N'控制器：TemplateManager，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/TemplateManager/Edit/?&name=zdyPagebreakPartial.cshtml&type=1&path=views%2FShared', N'127.0.0.1', CAST(0x0000AB7300C12925 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20140, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000ABF30118C146 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20141, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000ABF30118C38B AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20142, 5, 1, N'admin', N'管理员admin登录', N'/admin/Login/', N'127.0.0.1', CAST(0x0000ABF30118D42D AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20143, 3, 0, N'', N'控制器：Login，方法：Index,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/Login/', N'127.0.0.1', CAST(0x0000ABF30118D469 AS DateTime))
GO
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20144, 11, 1, N'admin', N'下载4.0.09升级文件(success)', N'', N'', CAST(0x0000ABF30118EE19 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20145, 3, 1, N'admin', N'控制器：OnlineUpgrade，方法：DownLoad,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/OnlineUpgrade/DownLoad/', N'127.0.0.1', CAST(0x0000ABF30118EE1A AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20146, 3, 1, N'admin', N'控制器：OnlineUpgrade，方法：RestartApplication,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/OnlineUpgrade/RestartApplication/', N'127.0.0.1', CAST(0x0000ABF30118EFB1 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20147, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000ABF30118EFE6 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20148, 11, 0, NULL, N'系统成功更新到4.0.09版本', NULL, NULL, CAST(0x0000ABF30118F34D AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20149, 11, 0, NULL, N'系统成功更新到4.0.09版本', NULL, NULL, CAST(0x0000ABF30118F467 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20150, 0, 0, NULL, N'Application_Start,应用程序启动', NULL, NULL, CAST(0x0000ABF30118F588 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20151, 3, 1, N'admin', N'控制器：OnlineUpgrade，方法：Visitor,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/OnlineUpgrade/Visitor/', N'127.0.0.1', CAST(0x0000ABF30118F608 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20152, 0, 0, NULL, N'Application_End，应用程序停止', NULL, NULL, CAST(0x0000ABF30118F643 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20153, 0, 0, NULL, N'Application_Start,应用程序启动', N'', N'', CAST(0x0000ABF3011901E4 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20154, 3, 1, N'admin', N'控制器：InfoTable，方法：Edit,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoTable/Edit/?id=82', N'127.0.0.1', CAST(0x0000ABF3011983F8 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20155, 5, 1, N'admin', N'账户admin登录成功', N'/admin/Login/', N'127.0.0.1', CAST(0x0000ABF3011F3DFC AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20156, 3, 1, N'admin', N'控制器：InfoData，方法：Delete,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoData/Delete/?table=feedback', N'127.0.0.1', CAST(0x0000ABF3011FAE7C AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20157, 3, 1, N'admin', N'控制器：InfoData，方法：Delete,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoData/Delete/?table=feedback', N'127.0.0.1', CAST(0x0000ABF3011FD1A4 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20158, 3, 1, N'admin', N'控制器：InfoData，方法：Delete,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoData/Delete/?table=feedback', N'127.0.0.1', CAST(0x0000ABF3011FD528 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20159, 3, 1, N'admin', N'控制器：InfoData，方法：Delete,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoData/Delete/?table=feedback', N'127.0.0.1', CAST(0x0000ABF3011FD780 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20160, 3, 1, N'admin', N'控制器：InfoData，方法：Delete,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoData/Delete/?table=feedback', N'127.0.0.1', CAST(0x0000ABF3011FDB04 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20161, 3, 1, N'admin', N'控制器：InfoData，方法：Delete,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoData/Delete/?table=feedback', N'127.0.0.1', CAST(0x0000ABF3011FDE88 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20162, 3, 1, N'admin', N'控制器：InfoData，方法：Delete,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoData/Delete/?table=feedback', N'127.0.0.1', CAST(0x0000ABF301240C74 AS DateTime))
INSERT [dbo].[pa_web_log] ([id], [logType], [uid], [username], [message], [url], [ip], [thedate]) VALUES (20163, 3, 1, N'admin', N'控制器：InfoData，方法：Delete,命名空间：PageAdmin.Web.Areas.Admin.Controllers', N'/admin/InfoData/Delete/?table=feedback', N'127.0.0.1', CAST(0x0000ABF301240ECC AS DateTime))
SET IDENTITY_INSERT [dbo].[pa_web_log] OFF
ALTER TABLE [dbo].[article] ADD  CONSTRAINT [DF_news_columnId]  DEFAULT ((0)) FOR [columnId]
GO
ALTER TABLE [dbo].[article] ADD  CONSTRAINT [DF_news_state]  DEFAULT ((0)) FOR [state]
GO
ALTER TABLE [dbo].[article] ADD  CONSTRAINT [DF_news_isGood]  DEFAULT ((0)) FOR [isGood]
GO
ALTER TABLE [dbo].[article] ADD  CONSTRAINT [DF_news_isHot]  DEFAULT ((0)) FOR [isHot]
GO
ALTER TABLE [dbo].[article] ADD  CONSTRAINT [DF_news_isTop]  DEFAULT ((0)) FOR [isTop]
GO
ALTER TABLE [dbo].[article] ADD  CONSTRAINT [DF_news_publishFrom]  DEFAULT ((0)) FOR [publishFrom]
GO
ALTER TABLE [dbo].[article] ADD  CONSTRAINT [DF_news_isOnline]  DEFAULT ((0)) FOR [isOnline]
GO
ALTER TABLE [dbo].[article] ADD  CONSTRAINT [DF_news_isExpire]  DEFAULT ((0)) FOR [isExpire]
GO
ALTER TABLE [dbo].[article] ADD  CONSTRAINT [DF_news_hasThumbnail]  DEFAULT ((0)) FOR [hasThumbnail]
GO
ALTER TABLE [dbo].[article] ADD  CONSTRAINT [DF_news_uid]  DEFAULT ((0)) FOR [uid]
GO
ALTER TABLE [dbo].[article] ADD  CONSTRAINT [DF_news_replyState]  DEFAULT ((0)) FOR [replyState]
GO
ALTER TABLE [dbo].[article] ADD  CONSTRAINT [DF_news_clicks]  DEFAULT ((0)) FOR [clicks]
GO
ALTER TABLE [dbo].[article] ADD  CONSTRAINT [DF_news_comments]  DEFAULT ((0)) FOR [comments]
GO
ALTER TABLE [dbo].[article] ADD  CONSTRAINT [DF_news_thedate]  DEFAULT (getdate()) FOR [thedate]
GO
ALTER TABLE [dbo].[article_seo_set] ADD  CONSTRAINT [DF_news_seo_set_detailId]  DEFAULT ((0)) FOR [detailId]
GO
ALTER TABLE [dbo].[article_template_set] ADD  CONSTRAINT [DF_news_template_set_detailId]  DEFAULT ((0)) FOR [detailId]
GO
ALTER TABLE [dbo].[article_url_set] ADD  CONSTRAINT [DF_news_url_set_detailId]  DEFAULT ((0)) FOR [detailId]
GO
ALTER TABLE [dbo].[article_url_set] ADD  CONSTRAINT [DF_news_url_set_columnId]  DEFAULT ((0)) FOR [columnId]
GO
ALTER TABLE [dbo].[feedback] ADD  CONSTRAINT [DF_feedback_columnId]  DEFAULT ((0)) FOR [columnId]
GO
ALTER TABLE [dbo].[feedback] ADD  CONSTRAINT [DF_feedback_state]  DEFAULT ((0)) FOR [state]
GO
ALTER TABLE [dbo].[feedback] ADD  CONSTRAINT [DF_feedback_isGood]  DEFAULT ((0)) FOR [isGood]
GO
ALTER TABLE [dbo].[feedback] ADD  CONSTRAINT [DF_feedback_isHot]  DEFAULT ((0)) FOR [isHot]
GO
ALTER TABLE [dbo].[feedback] ADD  CONSTRAINT [DF_feedback_isTop]  DEFAULT ((0)) FOR [isTop]
GO
ALTER TABLE [dbo].[feedback] ADD  CONSTRAINT [DF_feedback_publishFrom]  DEFAULT ((0)) FOR [publishFrom]
GO
ALTER TABLE [dbo].[feedback] ADD  CONSTRAINT [DF_feedback_isOnline]  DEFAULT ((0)) FOR [isOnline]
GO
ALTER TABLE [dbo].[feedback] ADD  CONSTRAINT [DF_feedback_isExpire]  DEFAULT ((0)) FOR [isExpire]
GO
ALTER TABLE [dbo].[feedback] ADD  CONSTRAINT [DF_feedback_hasThumbnail]  DEFAULT ((0)) FOR [hasThumbnail]
GO
ALTER TABLE [dbo].[feedback] ADD  CONSTRAINT [DF_feedback_uid]  DEFAULT ((0)) FOR [uid]
GO
ALTER TABLE [dbo].[feedback] ADD  CONSTRAINT [DF_feedback_clicks]  DEFAULT ((0)) FOR [clicks]
GO
ALTER TABLE [dbo].[feedback] ADD  CONSTRAINT [DF_feedback_thedate]  DEFAULT (getdate()) FOR [thedate]
GO
ALTER TABLE [dbo].[feedback_seo_set] ADD  CONSTRAINT [DF_feedback_seo_set_detailId]  DEFAULT ((0)) FOR [detailId]
GO
ALTER TABLE [dbo].[feedback_template_set] ADD  CONSTRAINT [DF_feedback_template_set_detailId]  DEFAULT ((0)) FOR [detailId]
GO
ALTER TABLE [dbo].[feedback_url_set] ADD  CONSTRAINT [DF_feedback_url_set_detailId]  DEFAULT ((0)) FOR [detailId]
GO
ALTER TABLE [dbo].[feedback_url_set] ADD  CONSTRAINT [DF_feedback_url_set_columnId]  DEFAULT ((0)) FOR [columnId]
GO
ALTER TABLE [dbo].[pa_admin] ADD  CONSTRAINT [DF_pa_admin_roleId]  DEFAULT ((0)) FOR [roleId]
GO
ALTER TABLE [dbo].[pa_admin] ADD  CONSTRAINT [DF_pa_admin_uid]  DEFAULT ((0)) FOR [uid]
GO
ALTER TABLE [dbo].[pa_admin] ADD  CONSTRAINT [DF_pa_admin_remark]  DEFAULT (N'xyz') FOR [remark]
GO
ALTER TABLE [dbo].[pa_admin] ADD  CONSTRAINT [DF_pa_admin_siteIds]  DEFAULT ('xyz') FOR [siteIds]
GO
ALTER TABLE [dbo].[pa_admin] ADD  CONSTRAINT [DF_pa_admin_defaultSiteId]  DEFAULT ((0)) FOR [defaultSiteId]
GO
ALTER TABLE [dbo].[pa_admin_info_permissions] ADD  CONSTRAINT [DF_pa_admin_info_permissions_uid]  DEFAULT ((0)) FOR [uid]
GO
ALTER TABLE [dbo].[pa_admin_info_permissions] ADD  CONSTRAINT [DF_pa_admin_info_permissions_tableId]  DEFAULT ((0)) FOR [tableId]
GO
ALTER TABLE [dbo].[pa_admin_info_permissions] ADD  CONSTRAINT [DF_pa_admin_info_permissions_listCanPset]  DEFAULT ((0)) FOR [listCanPset]
GO
ALTER TABLE [dbo].[pa_admin_info_permissions] ADD  CONSTRAINT [DF_pa_admin_info_permissions_listCanPush]  DEFAULT ((0)) FOR [listCanPush]
GO
ALTER TABLE [dbo].[pa_admin_info_permissions] ADD  CONSTRAINT [DF_pa_admin_info_permissions_canAdd]  DEFAULT ((0)) FOR [canAdd]
GO
ALTER TABLE [dbo].[pa_admin_info_permissions] ADD  CONSTRAINT [DF_pa_admin_info_permissions_canEdit]  DEFAULT ((0)) FOR [canEdit]
GO
ALTER TABLE [dbo].[pa_admin_info_permissions] ADD  CONSTRAINT [DF_pa_admin_info_permissions_canDelete]  DEFAULT ((0)) FOR [canDelete]
GO
ALTER TABLE [dbo].[pa_admin_info_permissions] ADD  CONSTRAINT [DF_pa_admin_info_permissions_canSetState]  DEFAULT ((0)) FOR [canSetState]
GO
ALTER TABLE [dbo].[pa_admin_info_permissions] ADD  CONSTRAINT [DF_pa_admin_info_permissions_addDefaultState]  DEFAULT ((0)) FOR [addDefaultState]
GO
ALTER TABLE [dbo].[pa_admin_info_permissions] ADD  CONSTRAINT [DF_pa_admin_info_permissions_editDefaultState]  DEFAULT ((0)) FOR [editDefaultState]
GO
ALTER TABLE [dbo].[pa_admin_info_permissions] ADD  CONSTRAINT [DF_pa_admin_info_permissions_canDraft]  DEFAULT ((0)) FOR [canDraft]
GO
ALTER TABLE [dbo].[pa_admin_menu] ADD  CONSTRAINT [DF_pa_admin_menu_parentId]  DEFAULT ((0)) FOR [parentId]
GO
ALTER TABLE [dbo].[pa_admin_menu] ADD  CONSTRAINT [DF_pa_admin_menu_level]  DEFAULT ((0)) FOR [level]
GO
ALTER TABLE [dbo].[pa_admin_menu] ADD  CONSTRAINT [DF_pa_admin_menu_isFinal]  DEFAULT ((0)) FOR [isFinal]
GO
ALTER TABLE [dbo].[pa_admin_menu] ADD  CONSTRAINT [DF_pa_admin_menu_isExpand]  DEFAULT ((0)) FOR [isExpand]
GO
ALTER TABLE [dbo].[pa_admin_menu] ADD  CONSTRAINT [DF_pa_admin_menu_state]  DEFAULT ((0)) FOR [state]
GO
ALTER TABLE [dbo].[pa_admin_menu] ADD  CONSTRAINT [DF_pa_admin_menu_isSys]  DEFAULT ((0)) FOR [isSys]
GO
ALTER TABLE [dbo].[pa_admin_menu] ADD  CONSTRAINT [DF_pa_admin_menu_xuhao]  DEFAULT ((0)) FOR [xuhao]
GO
ALTER TABLE [dbo].[pa_admin_menu_item] ADD  CONSTRAINT [DF_pa_admin_menu_item_menuId]  DEFAULT ((0)) FOR [menuId]
GO
ALTER TABLE [dbo].[pa_admin_menu_item] ADD  CONSTRAINT [DF_pa_admin_menu_item_isDefault]  DEFAULT ((0)) FOR [isDefault]
GO
ALTER TABLE [dbo].[pa_admin_permissions] ADD  CONSTRAINT [DF_pa_admin_permissions_uid]  DEFAULT ((0)) FOR [uid]
GO
ALTER TABLE [dbo].[pa_admin_permissions] ADD  CONSTRAINT [DF_pa_admin_permissions_defaultSiteId]  DEFAULT ((0)) FOR [defaultSiteId]
GO
ALTER TABLE [dbo].[pa_attachment_1] ADD  DEFAULT ((0)) FOR [parentId]
GO
ALTER TABLE [dbo].[pa_attachment_1] ADD  DEFAULT ((0)) FOR [uid]
GO
ALTER TABLE [dbo].[pa_attachment_1] ADD  DEFAULT ((0)) FOR [state]
GO
ALTER TABLE [dbo].[pa_attachment_1] ADD  DEFAULT ((0)) FOR [xuhao]
GO
ALTER TABLE [dbo].[pa_attachment_1] ADD  DEFAULT ((0)) FOR [size]
GO
ALTER TABLE [dbo].[pa_attachment_1] ADD  DEFAULT (getdate()) FOR [thedate]
GO
ALTER TABLE [dbo].[pa_attachment_14] ADD  DEFAULT ((0)) FOR [parentId]
GO
ALTER TABLE [dbo].[pa_attachment_14] ADD  DEFAULT ((0)) FOR [uid]
GO
ALTER TABLE [dbo].[pa_attachment_14] ADD  DEFAULT ((0)) FOR [state]
GO
ALTER TABLE [dbo].[pa_attachment_14] ADD  DEFAULT ((0)) FOR [xuhao]
GO
ALTER TABLE [dbo].[pa_attachment_14] ADD  DEFAULT ((0)) FOR [size]
GO
ALTER TABLE [dbo].[pa_attachment_14] ADD  DEFAULT (getdate()) FOR [thedate]
GO
ALTER TABLE [dbo].[pa_attachment_18] ADD  DEFAULT ((0)) FOR [parentId]
GO
ALTER TABLE [dbo].[pa_attachment_18] ADD  DEFAULT ((0)) FOR [uid]
GO
ALTER TABLE [dbo].[pa_attachment_18] ADD  DEFAULT ((0)) FOR [state]
GO
ALTER TABLE [dbo].[pa_attachment_18] ADD  DEFAULT ((0)) FOR [xuhao]
GO
ALTER TABLE [dbo].[pa_attachment_18] ADD  DEFAULT ((0)) FOR [size]
GO
ALTER TABLE [dbo].[pa_attachment_18] ADD  DEFAULT (getdate()) FOR [thedate]
GO
ALTER TABLE [dbo].[pa_attachment_7] ADD  DEFAULT ((0)) FOR [parentId]
GO
ALTER TABLE [dbo].[pa_attachment_7] ADD  DEFAULT ((0)) FOR [uid]
GO
ALTER TABLE [dbo].[pa_attachment_7] ADD  DEFAULT ((0)) FOR [state]
GO
ALTER TABLE [dbo].[pa_attachment_7] ADD  DEFAULT ((0)) FOR [xuhao]
GO
ALTER TABLE [dbo].[pa_attachment_7] ADD  DEFAULT ((0)) FOR [size]
GO
ALTER TABLE [dbo].[pa_attachment_7] ADD  DEFAULT (getdate()) FOR [thedate]
GO
ALTER TABLE [dbo].[pa_attachment_table] ADD  DEFAULT ((0)) FOR [uid]
GO
ALTER TABLE [dbo].[pa_attachment_table] ADD  DEFAULT ((0)) FOR [state]
GO
ALTER TABLE [dbo].[pa_attachment_table] ADD  DEFAULT (getdate()) FOR [thedate]
GO
ALTER TABLE [dbo].[pa_category_table] ADD  CONSTRAINT [DF_pa_category_table_uid]  DEFAULT ((0)) FOR [uid]
GO
ALTER TABLE [dbo].[pa_category_table] ADD  CONSTRAINT [DF_pa_category_table_deleteProtect]  DEFAULT ((0)) FOR [deleteProtect]
GO
ALTER TABLE [dbo].[pa_category_table] ADD  CONSTRAINT [DF_pa_category_table_thedate]  DEFAULT (getdate()) FOR [thedate]
GO
ALTER TABLE [dbo].[pa_column] ADD  CONSTRAINT [DF_pa_column_parentId]  DEFAULT ((0)) FOR [parentId]
GO
ALTER TABLE [dbo].[pa_column] ADD  CONSTRAINT [DF_pa_column_siteId]  DEFAULT ((0)) FOR [siteId]
GO
ALTER TABLE [dbo].[pa_column] ADD  CONSTRAINT [DF_pa_column_columnType]  DEFAULT ((0)) FOR [columnType]
GO
ALTER TABLE [dbo].[pa_column] ADD  CONSTRAINT [DF_pa_column_isFinal]  DEFAULT ((0)) FOR [isFinal]
GO
ALTER TABLE [dbo].[pa_column] ADD  CONSTRAINT [DF_pa_column_tableId]  DEFAULT ((0)) FOR [tableId]
GO
ALTER TABLE [dbo].[pa_column] ADD  CONSTRAINT [DF_pa_column_httpcacheSolutionId]  DEFAULT ((0)) FOR [httpcacheSolutionId]
GO
ALTER TABLE [dbo].[pa_column] ADD  CONSTRAINT [DF_pa_column_show]  DEFAULT ((0)) FOR [show]
GO
ALTER TABLE [dbo].[pa_column_content_set] ADD  CONSTRAINT [DF_pa_column_content_set_columnId]  DEFAULT ((0)) FOR [columnId]
GO
ALTER TABLE [dbo].[pa_column_seo_set] ADD  CONSTRAINT [DF_pa_column_seo_set_columnId]  DEFAULT ((0)) FOR [columnId]
GO
ALTER TABLE [dbo].[pa_column_template_set] ADD  CONSTRAINT [DF_pa_column_template_set_columnId]  DEFAULT ((0)) FOR [columnId]
GO
ALTER TABLE [dbo].[pa_department] ADD  CONSTRAINT [DF_pa_department_parentId]  DEFAULT ((0)) FOR [parentId]
GO
ALTER TABLE [dbo].[pa_department] ADD  CONSTRAINT [DF_pa_department_level]  DEFAULT ((0)) FOR [level]
GO
ALTER TABLE [dbo].[pa_department] ADD  CONSTRAINT [DF_pa_department_isFinal]  DEFAULT ((0)) FOR [isFinal]
GO
ALTER TABLE [dbo].[pa_department] ADD  CONSTRAINT [DF_pa_department_xuhao]  DEFAULT ((0)) FOR [xuhao]
GO
ALTER TABLE [dbo].[pa_department_info_permissions] ADD  CONSTRAINT [DF_pa_department_info_permissions_open]  DEFAULT ((0)) FOR [open]
GO
ALTER TABLE [dbo].[pa_department_info_permissions] ADD  CONSTRAINT [DF_pa_department_info_permissions_departmentId]  DEFAULT ((0)) FOR [departmentId]
GO
ALTER TABLE [dbo].[pa_department_info_permissions] ADD  CONSTRAINT [DF_pa_department_info_permissions_tableId]  DEFAULT ((0)) FOR [tableId]
GO
ALTER TABLE [dbo].[pa_department_info_permissions] ADD  CONSTRAINT [DF_pa_department_info_permissions_canAdd]  DEFAULT ((0)) FOR [canAdd]
GO
ALTER TABLE [dbo].[pa_department_info_permissions] ADD  CONSTRAINT [DF_pa_department_info_permissions_canEdit]  DEFAULT ((0)) FOR [canEdit]
GO
ALTER TABLE [dbo].[pa_department_info_permissions] ADD  CONSTRAINT [DF_pa_department_info_permissions_canDelete]  DEFAULT ((0)) FOR [canDelete]
GO
ALTER TABLE [dbo].[pa_department_info_permissions] ADD  CONSTRAINT [DF_pa_department_info_permissions_canSetTopProperty]  DEFAULT ((0)) FOR [canSetTopProperty]
GO
ALTER TABLE [dbo].[pa_department_info_permissions] ADD  CONSTRAINT [DF_pa_department_info_permissions_canSetGoodProperty]  DEFAULT ((0)) FOR [canSetGoodProperty]
GO
ALTER TABLE [dbo].[pa_department_info_permissions] ADD  CONSTRAINT [DF_pa_department_info_permissions_canSetNewProperty]  DEFAULT ((0)) FOR [canSetHotProperty]
GO
ALTER TABLE [dbo].[pa_department_info_permissions] ADD  CONSTRAINT [DF_pa_department_info_permissions_maxNum]  DEFAULT ((0)) FOR [maxNum]
GO
ALTER TABLE [dbo].[pa_department_info_permissions] ADD  CONSTRAINT [DF_pa_department_info_permissions_addDefaultState]  DEFAULT ((0)) FOR [addDefaultState]
GO
ALTER TABLE [dbo].[pa_department_info_permissions] ADD  CONSTRAINT [DF_pa_department_info_permissions_editDefaultState]  DEFAULT ((0)) FOR [editDefaultState]
GO
ALTER TABLE [dbo].[pa_department_info_permissions] ADD  CONSTRAINT [DF_pa_department_info_permissions_canResubmitCheck]  DEFAULT ((0)) FOR [canResubmitCheck]
GO
ALTER TABLE [dbo].[pa_department_info_permissions] ADD  CONSTRAINT [DF_pa_department_info_permissions_canDraft]  DEFAULT ((0)) FOR [canDraft]
GO
ALTER TABLE [dbo].[pa_department_permissions] ADD  CONSTRAINT [DF_pa_department_permissions_departmentId]  DEFAULT ((0)) FOR [departmentId]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_sysField]  DEFAULT ((0)) FOR [sysField]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_valueLength]  DEFAULT ((100)) FOR [valueLength]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_watermark]  DEFAULT ((0)) FOR [watermark]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_thumbnail]  DEFAULT ((0)) FOR [thumbnail]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_thumbnailWidth]  DEFAULT ((0)) FOR [thumbnailWidth]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_thumbnailHeight]  DEFAULT ((0)) FOR [thumbnailHeight]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_rename]  DEFAULT ((1)) FOR [rename]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_isMultipleSelect]  DEFAULT ((0)) FOR [isMultipleSelect]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_mustItem]  DEFAULT ((0)) FOR [mustItem]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_adminListUpdate]  DEFAULT ((0)) FOR [adminListUpdate]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_memberListUpdate]  DEFAULT ((0)) FOR [memberListUpdate]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_anonymousListUpdate]  DEFAULT ((0)) FOR [anonymousListUpdate]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_adminCanAdd]  DEFAULT ((0)) FOR [adminCanAdd]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_memberCanAdd]  DEFAULT ((0)) FOR [memberCanAdd]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_anonymousCanAdd]  DEFAULT ((0)) FOR [anonymousCanAdd]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_adminCanEdit]  DEFAULT ((0)) FOR [adminCanEdit]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_memberCanEdit]  DEFAULT ((0)) FOR [memberCanEdit]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_anonymousCanEdit]  DEFAULT ((0)) FOR [anonymousCanEdit]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_onlyItem]  DEFAULT ((0)) FOR [onlyItem]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_collectionItem]  DEFAULT ((0)) FOR [collectionItem]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_orderItem]  DEFAULT ((0)) FOR [orderItem]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_htmlencode]  DEFAULT ((0)) FOR [htmlencode]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_maxNum]  DEFAULT ((0)) FOR [maxNum]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_adminListItem]  DEFAULT ((0)) FOR [adminListItem]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_memberListItem]  DEFAULT ((0)) FOR [memberListItem]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_datasourceOpen]  DEFAULT ((0)) FOR [datasourceOpen]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_pagesize]  DEFAULT ((20)) FOR [pagesize]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_show]  DEFAULT ((1)) FOR [show]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_deleteProtect]  DEFAULT ((0)) FOR [deleteProtect]
GO
ALTER TABLE [dbo].[pa_field] ADD  CONSTRAINT [DF_pa_field_xuhao]  DEFAULT ((0)) FOR [xuhao]
GO
ALTER TABLE [dbo].[pa_field] ADD  DEFAULT ((1)) FOR [ListItem]
GO
ALTER TABLE [dbo].[pa_field] ADD  DEFAULT ((1)) FOR [DetailItem]
GO
ALTER TABLE [dbo].[pa_field] ADD  DEFAULT ((0)) FOR [selectDataType]
GO
ALTER TABLE [dbo].[pa_field] ADD  DEFAULT ((0)) FOR [isMultiLevelTable]
GO
ALTER TABLE [dbo].[pa_field] ADD  DEFAULT ((0)) FOR [onlySelectFinal]
GO
ALTER TABLE [dbo].[pa_info_table] ADD  CONSTRAINT [DF_pa_info_table_siteId]  DEFAULT ((0)) FOR [siteId]
GO
ALTER TABLE [dbo].[pa_info_table] ADD  CONSTRAINT [DF_pa_info_table_uid]  DEFAULT ((0)) FOR [uid]
GO
ALTER TABLE [dbo].[pa_info_table] ADD  CONSTRAINT [DF_pa_info_table_deleteProtect]  DEFAULT ((0)) FOR [deleteProtect]
GO
ALTER TABLE [dbo].[pa_info_table] ADD  CONSTRAINT [DF_pa_info_table_xuhao]  DEFAULT ((0)) FOR [xuhao]
GO
ALTER TABLE [dbo].[pa_info_table] ADD  CONSTRAINT [DF_pa_info_table_thedate]  DEFAULT (getdate()) FOR [thedate]
GO
ALTER TABLE [dbo].[pa_info_table] ADD  DEFAULT ((0)) FOR [showMenu]
GO
ALTER TABLE [dbo].[pa_logining_user] ADD  CONSTRAINT [DF_pa_logining_user_uid]  DEFAULT ((0)) FOR [uid]
GO
ALTER TABLE [dbo].[pa_logining_user] ADD  CONSTRAINT [DF_pa_logining_user_departmentId]  DEFAULT ((0)) FOR [departmentId]
GO
ALTER TABLE [dbo].[pa_logining_user] ADD  CONSTRAINT [DF_pa_logining_user_memberGroupId]  DEFAULT ((0)) FOR [memberGroupId]
GO
ALTER TABLE [dbo].[pa_logining_user] ADD  CONSTRAINT [DF_pa_logining_user_roleId]  DEFAULT ((0)) FOR [roleId]
GO
ALTER TABLE [dbo].[pa_logining_user] ADD  CONSTRAINT [DF_pa_logining_user_thedate]  DEFAULT (getdate()) FOR [thedate]
GO
ALTER TABLE [dbo].[pa_logining_user] ADD  CONSTRAINT [DF_pa_logining_user_updatedate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[pa_logining_user] ADD  CONSTRAINT [DF_pa_logining_user_expireDate]  DEFAULT (getdate()) FOR [expireDate]
GO
ALTER TABLE [dbo].[pa_logining_user] ADD  CONSTRAINT [DF_pa_logining_user_state]  DEFAULT ((0)) FOR [state]
GO
ALTER TABLE [dbo].[pa_logining_user_event_log] ADD  CONSTRAINT [DF_pa_member_log_fillInformation]  DEFAULT ((0)) FOR [fillInformation]
GO
ALTER TABLE [dbo].[pa_logining_user_event_log] ADD  CONSTRAINT [DF_pa_member_log_ModifyUsername]  DEFAULT ((0)) FOR [modifyUsernameTimes]
GO
ALTER TABLE [dbo].[pa_member] ADD  CONSTRAINT [DF_pa_member_memberGroupId]  DEFAULT ((0)) FOR [memberGroupId]
GO
ALTER TABLE [dbo].[pa_member] ADD  CONSTRAINT [DF_pa_member_departmentId]  DEFAULT ((0)) FOR [departmentId]
GO
ALTER TABLE [dbo].[pa_member] ADD  CONSTRAINT [DF_pa_member_regDate]  DEFAULT (getdate()) FOR [regDate]
GO
ALTER TABLE [dbo].[pa_member] ADD  CONSTRAINT [DF_pa_member_lastDate]  DEFAULT (getdate()) FOR [lastDate]
GO
ALTER TABLE [dbo].[pa_member] ADD  CONSTRAINT [DF_pa_member_logins]  DEFAULT ((0)) FOR [logins]
GO
ALTER TABLE [dbo].[pa_member] ADD  CONSTRAINT [DF_pa_member_state]  DEFAULT ((0)) FOR [state]
GO
ALTER TABLE [dbo].[pa_member] ADD  CONSTRAINT [DF_pa_member_mobileState]  DEFAULT ((0)) FOR [mobileState]
GO
ALTER TABLE [dbo].[pa_member] ADD  CONSTRAINT [DF_pa_member_emailState]  DEFAULT ((0)) FOR [emailState]
GO
ALTER TABLE [dbo].[pa_member] ADD  DEFAULT ((0)) FOR [gender]
GO
ALTER TABLE [dbo].[pa_member] ADD  CONSTRAINT [DF_pa_member_birthday]  DEFAULT (getdate()) FOR [birthday]
GO
ALTER TABLE [dbo].[pa_member_group] ADD  CONSTRAINT [DF_pa_member_group_canReg]  DEFAULT ((0)) FOR [canReg]
GO
ALTER TABLE [dbo].[pa_member_group] ADD  CONSTRAINT [DF_pa_member_group_rank]  DEFAULT ((0)) FOR [rank]
GO
ALTER TABLE [dbo].[pa_member_group] ADD  CONSTRAINT [DF_pa_member_group_isDefault]  DEFAULT ((0)) FOR [isDefault]
GO
ALTER TABLE [dbo].[pa_member_group_info_permissions] ADD  CONSTRAINT [DF_pa_member_group_info_permissions_open]  DEFAULT ((0)) FOR [open]
GO
ALTER TABLE [dbo].[pa_member_group_info_permissions] ADD  CONSTRAINT [DF_pa_member_group_info_permissions_memberGroupId]  DEFAULT ((0)) FOR [memberGroupId]
GO
ALTER TABLE [dbo].[pa_member_group_info_permissions] ADD  CONSTRAINT [DF_pa_member_group_info_permissions_tableId]  DEFAULT ((0)) FOR [tableId]
GO
ALTER TABLE [dbo].[pa_member_group_info_permissions] ADD  CONSTRAINT [DF_pa_member_group_info_permissions_canAdd]  DEFAULT ((0)) FOR [canAdd]
GO
ALTER TABLE [dbo].[pa_member_group_info_permissions] ADD  CONSTRAINT [DF_pa_member_group_info_permissions_canEdit]  DEFAULT ((0)) FOR [canEdit]
GO
ALTER TABLE [dbo].[pa_member_group_info_permissions] ADD  CONSTRAINT [DF_pa_member_group_info_permissions_canDelete]  DEFAULT ((0)) FOR [canDelete]
GO
ALTER TABLE [dbo].[pa_member_group_info_permissions] ADD  CONSTRAINT [DF_pa_member_group_info_permissions_canSetTopProperty]  DEFAULT ((0)) FOR [canSetTopProperty]
GO
ALTER TABLE [dbo].[pa_member_group_info_permissions] ADD  CONSTRAINT [DF_pa_member_group_info_permissions_canSetGoodProperty]  DEFAULT ((0)) FOR [canSetGoodProperty]
GO
ALTER TABLE [dbo].[pa_member_group_info_permissions] ADD  CONSTRAINT [DF_pa_member_group_info_permissions_canSetNewProperty]  DEFAULT ((0)) FOR [canSetHotProperty]
GO
ALTER TABLE [dbo].[pa_member_group_info_permissions] ADD  CONSTRAINT [DF_pa_member_group_info_permissions_maxNum]  DEFAULT ((0)) FOR [maxNum]
GO
ALTER TABLE [dbo].[pa_member_group_info_permissions] ADD  CONSTRAINT [DF_pa_member_group_info_permissions_addDefaultState]  DEFAULT ((0)) FOR [addDefaultState]
GO
ALTER TABLE [dbo].[pa_member_group_info_permissions] ADD  CONSTRAINT [DF_pa_member_group_info_permissions_editDefaultState]  DEFAULT ((0)) FOR [editDefaultState]
GO
ALTER TABLE [dbo].[pa_member_group_info_permissions] ADD  CONSTRAINT [DF_pa_member_group_info_permissions_canResubmitCheck]  DEFAULT ((0)) FOR [canResubmitCheck]
GO
ALTER TABLE [dbo].[pa_member_group_info_permissions] ADD  CONSTRAINT [DF_pa_member_group_info_permissions_canDraft]  DEFAULT ((0)) FOR [canDraft]
GO
ALTER TABLE [dbo].[pa_member_group_permissions] ADD  CONSTRAINT [DF_pa_member_group_permissions_memberGroupId]  DEFAULT ((0)) FOR [memberGroupId]
GO
ALTER TABLE [dbo].[pa_member_lock] ADD  CONSTRAINT [DF_pa_member_lock_thedate]  DEFAULT (getdate()) FOR [thedate]
GO
ALTER TABLE [dbo].[pa_member_lock] ADD  CONSTRAINT [DF_pa_member_lock_expireDate]  DEFAULT (getdate()) FOR [expireDate]
GO
ALTER TABLE [dbo].[pa_member_login_error_log] ADD  CONSTRAINT [DF_pa_member_login_error_log_thedate]  DEFAULT (getdate()) FOR [thedate]
GO
ALTER TABLE [dbo].[pa_member_menu] ADD  CONSTRAINT [DF_pa_member_menu_parentId]  DEFAULT ((0)) FOR [parentId]
GO
ALTER TABLE [dbo].[pa_member_menu] ADD  CONSTRAINT [DF_pa_member_menu_level]  DEFAULT ((0)) FOR [level]
GO
ALTER TABLE [dbo].[pa_member_menu] ADD  CONSTRAINT [DF_pa_member_menu_isFinal]  DEFAULT ((0)) FOR [isFinal]
GO
ALTER TABLE [dbo].[pa_member_menu] ADD  CONSTRAINT [DF_pa_member_menu_isExpand]  DEFAULT ((0)) FOR [isExpand]
GO
ALTER TABLE [dbo].[pa_member_menu] ADD  CONSTRAINT [DF_pa_member_menu_state]  DEFAULT ((0)) FOR [state]
GO
ALTER TABLE [dbo].[pa_member_menu] ADD  CONSTRAINT [DF_pa_member_menu_isSys]  DEFAULT ((0)) FOR [isSys]
GO
ALTER TABLE [dbo].[pa_member_menu] ADD  CONSTRAINT [DF_pa_member_menu_xuhao]  DEFAULT ((0)) FOR [xuhao]
GO
ALTER TABLE [dbo].[pa_member_menu_item] ADD  CONSTRAINT [DF_pa_member_menu_item_menuId]  DEFAULT ((0)) FOR [menuId]
GO
ALTER TABLE [dbo].[pa_member_menu_item] ADD  CONSTRAINT [DF_pa_member_menu_item_isDefault]  DEFAULT ((0)) FOR [isDefault]
GO
ALTER TABLE [dbo].[pa_role] ADD  CONSTRAINT [DF_pa_role_isSuperadmin]  DEFAULT ((0)) FOR [isSuperadmin]
GO
ALTER TABLE [dbo].[pa_role_permissions] ADD  CONSTRAINT [DF_pa_role_permissions_roleId]  DEFAULT ((0)) FOR [roleId]
GO
ALTER TABLE [dbo].[pa_site] ADD  CONSTRAINT [DF_pa_site_isDefault]  DEFAULT ((0)) FOR [isDefault]
GO
ALTER TABLE [dbo].[pa_site] ADD  CONSTRAINT [DF_pa_site_compression]  DEFAULT ((0)) FOR [compression]
GO
ALTER TABLE [dbo].[pa_sub_table] ADD  CONSTRAINT [DF_pa_sub_table_uid]  DEFAULT ((0)) FOR [uid]
GO
ALTER TABLE [dbo].[pa_sub_table] ADD  CONSTRAINT [DF_pa_sub_table_thedate]  DEFAULT (getdate()) FOR [thedate]
GO
ALTER TABLE [dbo].[pa_sub_table] ADD  DEFAULT ((0)) FOR [state]
GO
ALTER TABLE [dbo].[pa_tag] ADD  CONSTRAINT [DF_pa_tag_tableId]  DEFAULT ((0)) FOR [tableId]
GO
ALTER TABLE [dbo].[pa_tag] ADD  CONSTRAINT [DF_pa_tag_count]  DEFAULT ((0)) FOR [count]
GO
ALTER TABLE [dbo].[pa_tag_data] ADD  CONSTRAINT [DF_pa_tag_data_tagId]  DEFAULT ((0)) FOR [tagId]
GO
ALTER TABLE [dbo].[pa_tag_data] ADD  CONSTRAINT [DF_pa_tag_data_tableId]  DEFAULT ((0)) FOR [tableId]
GO
ALTER TABLE [dbo].[pa_tag_data] ADD  CONSTRAINT [DF_pa_tag_data_tableDataId]  DEFAULT ((0)) FOR [tableDataId]
GO
ALTER TABLE [dbo].[pa_wait_expire_data] ADD  CONSTRAINT [DF_pa_wait_expire_data_detailId]  DEFAULT ((0)) FOR [detailId]
GO
ALTER TABLE [dbo].[pa_wait_expire_data] ADD  CONSTRAINT [DF_pa_wait_expire_data_thedate]  DEFAULT (getdate()) FOR [thedate]
GO
ALTER TABLE [dbo].[pa_wait_expire_data] ADD  CONSTRAINT [DF_pa_wait_expire_data_hasOperated]  DEFAULT ((0)) FOR [hasOperated]
GO
ALTER TABLE [dbo].[pa_wait_online_data] ADD  CONSTRAINT [DF_pa_wait_online_data_detailId]  DEFAULT ((0)) FOR [detailId]
GO
ALTER TABLE [dbo].[pa_wait_online_data] ADD  CONSTRAINT [DF_pa_wait_online_data_thedate]  DEFAULT (getdate()) FOR [thedate]
GO
ALTER TABLE [dbo].[pa_wait_online_data] ADD  CONSTRAINT [DF_pa_wait_online_data_hasOperated]  DEFAULT ((0)) FOR [hasOperated]
GO
ALTER TABLE [dbo].[pa_web_log] ADD  CONSTRAINT [DF_pa_web_log_logType]  DEFAULT ((0)) FOR [logType]
GO
ALTER TABLE [dbo].[pa_web_log] ADD  CONSTRAINT [DF_pa_web_log_uid]  DEFAULT ((0)) FOR [uid]
GO
ALTER TABLE [dbo].[pa_web_log] ADD  CONSTRAINT [DF_pa_web_log_thedate]  DEFAULT (getdate()) FOR [thedate]
GO
