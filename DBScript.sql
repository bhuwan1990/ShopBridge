Create database ShopBridge;
go
USE ShopBridge
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](30) NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[ItemCode] [varchar](30) NOT NULL,
	[ItemName] [varchar](100) NULL,
	[Price] [decimal](18, 2) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 6/4/2022 1:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[Quantity] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Stock] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [IsActive], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, N'Cooler', 1, CAST(N'2022-06-02T00:26:15.787' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [IsActive], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (2, N'AC', 1, CAST(N'2022-06-02T00:26:17.510' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [IsActive], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (3, N'Fan', 1, CAST(N'2022-06-02T00:26:25.250' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [IsActive], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (4, N'Bulb', 1, CAST(N'2022-06-02T00:26:27.700' AS DateTime), 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Items] ON 
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (3, 3, N'S2526', N'Usha High Speed Fan with 3 blade 1400 mm', CAST(1350.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (6, 3, N'S8586222', N'Baja 4 Blade High Speed Fan 1300 mm', CAST(1500.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (7, 4, N'Syska', N'Syska LED 80W', CAST(99.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (9, 1, N'1423478843', N'Ramipril', CAST(40.01 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (10, 4, N'7679641447', N'Hydroquinone, Ethylhexyl Methoxycinnamate', CAST(167.77 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (12, 1, N'0527593702', N'fluoxetine', CAST(240.97 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (14, 2, N'5449614144', N'ACETAMINOPHEN', CAST(133.72 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (16, 4, N'3905976374', N'Eugenol', CAST(110.36 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (22, 3, N'0196500052', N'Olanzapine', CAST(84.79 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (23, 2, N'4465726449', N'Ethyl Alcohol', CAST(112.35 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (24, 2, N'5833910218', N'MENTHOL, METHYL SALYCILATE, BORNEOL', CAST(184.06 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (25, 2, N'8481365319', N'Topotecan', CAST(181.41 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (26, 1, N'8800515738', N'Dextromethorphan HBr, Phenylephrine HCl', CAST(99.31 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (27, 4, N'6872409711', N'Phenazopyridine', CAST(99.34 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (28, 4, N'7653569846', N'ASPIRIN', CAST(176.39 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (29, 2, N'6274010734', N'DOCUSATE SODIUM', CAST(170.45 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (30, 4, N'6075987983', N'stannous fluoride', CAST(43.83 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (31, 3, N'0689712987', N'Lisinopril', CAST(161.16 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (32, 4, N'6758998460', N'AMERICAN COCKROACH', CAST(213.79 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (33, 2, N'7308444635', N'Salicylic Acid', CAST(236.78 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (34, 2, N'8051989058', N'Isopropyl Alcohol', CAST(12.23 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (35, 4, N'8811074932', N'ziprasidone hydrochloride', CAST(17.90 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (36, 2, N'7783780946', N'Methyl Salicylate, Capsaicin, and Menthol', CAST(72.19 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (37, 4, N'7818135596', N'Fosphenytoin Sodium', CAST(161.51 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (38, 2, N'2494829232', N'Flavoxate hydrochloride', CAST(25.99 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (39, 1, N'8938680037', N'Cyproheptadine Hydrochloride', CAST(178.75 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (40, 2, N'9857195881', N'GENTAMICIN SULFATE', CAST(49.81 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (41, 1, N'2875914642', N'White Petrolatum', CAST(27.36 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (42, 1, N'1738218368', N'Ramipril', CAST(241.61 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (43, 4, N'3184079597', N'Loperamide Hydrochloride', CAST(171.41 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (44, 1, N'4223650572', N'Lithium Carbonate', CAST(232.94 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (45, 2, N'3532577658', N'OCTREOTIDE ACETATE', CAST(179.62 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (46, 2, N'2945166860', N'epoetin alfa', CAST(215.37 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (47, 1, N'5648220529', N'ALCOHOL', CAST(46.22 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (48, 2, N'4438965411', N'Mepivacaine Hydrochloride and Levonordefrin', CAST(144.34 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (49, 4, N'3561419267', N'imipenem and cilastatin sodium', CAST(131.49 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (51, 2, N'0370172612', N'ropinirole hydrochloride', CAST(112.72 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (52, 4, N'5771597333', N'Naproxen', CAST(164.01 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (53, 4, N'1583765972', N'Octinoxate and Titanium Dioxide', CAST(210.02 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (54, 4, N'9788398626', N'Number Four Mold Mixture', CAST(120.38 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (55, 1, N'1368521746', N'Aluminum Zirconium Tetrachlorohydrex GLY', CAST(53.52 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (56, 1, N'6291778106', N'Acetaminophen', CAST(52.85 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (57, 2, N'7341842199', N'Lidocaine Hydrochloride', CAST(178.91 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (58, 1, N'4734187525', N'Mineral oil, Petrolatum, Phenylephrine HCl, Shark liver oil', CAST(57.72 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (59, 2, N'8691612134', N'MERCURIUS VIVUS', CAST(201.40 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (60, 1, N'4737316601', N'Naproxen sodium', CAST(60.06 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (61, 2, N'3192798718', N'Loperamide Hydrochloride', CAST(239.33 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (62, 4, N'6006853094', N'ETHYL ALCOHOL', CAST(74.86 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (63, 1, N'3207601715', N'Miconazole nitrate', CAST(26.62 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (64, 3, N'4028018021', N'Niacin', CAST(222.46 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (66, 2, N'7577705942', N'CALCAREA SULPHURICA', CAST(44.49 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (67, 2, N'2578713308', N'AMITRIPTYLINE HYDROCHLORIDE', CAST(58.27 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (68, 1, N'6842624282', N'Hydrocortisone', CAST(230.59 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (69, 1, N'6414567892', N'Warfarin Sodium', CAST(3.41 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (70, 2, N'2666188132', N'Metoprolol succinate', CAST(241.10 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (71, 1, N'9911067114', N'GUAIFENESIN', CAST(233.53 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (72, 4, N'6710596788', N'Sertraline Hydrochloride', CAST(245.93 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (73, 2, N'0578895129', N'Ranitidine', CAST(170.34 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (74, 4, N'0154522562', N'Ensulizole', CAST(61.72 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (75, 2, N'1306801915', N'Adefovir Dipivoxil', CAST(161.41 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (76, 4, N'9720178299', N'Bismuth subsalicylate', CAST(9.35 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (77, 2, N'9275885699', N'Lisinopril and hydrochlorothiazide', CAST(231.19 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (78, 1, N'0613801571', N'benzonatate', CAST(63.76 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (79, 3, N'8381156572', N'Butalbital, Acetaminophen, and Caffeine', CAST(104.95 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (80, 2, N'4745706561', N'Phenylephrine HCl', CAST(214.56 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (81, 4, N'2948234131', N'Dexamethasone', CAST(208.49 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (82, 2, N'4117553674', N'Magnesium citrate', CAST(222.34 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (83, 4, N'7599209212', N'Carvedilol', CAST(85.80 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (84, 4, N'9821168515', N'Eprosartan Mesylate and Hydrochlorothiazide', CAST(177.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (85, 1, N'9623496753', N'Psyllium Hydrophilic Mucilloid', CAST(14.14 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (86, 3, N'5429712221', N'acetylcholine chloride, histamine, serotonin', CAST(214.95 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (87, 1, N'5708301872', N'IMIPRAMINE PAMOATE', CAST(124.01 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (88, 4, N'2892103002', N'Morphine Sulfate', CAST(47.41 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (89, 4, N'0026765217', N'Irbesartan', CAST(136.55 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (90, 3, N'0260953105', N'MORPHINE SULFATE', CAST(71.43 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (91, 4, N'4248343320', N'Calcium carbonate', CAST(168.35 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (92, 2, N'7352083987', N'TITANIUM DIOXIDE', CAST(28.84 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (93, 1, N'1497023769', N'Glipizide', CAST(138.17 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (94, 2, N'0326729712', N'Menthol', CAST(103.43 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (96, 4, N'3643651236', N'Mugwort', CAST(191.47 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (97, 3, N'4895297616', N'Escitalopram Oxalate', CAST(137.63 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (98, 3, N'9502543963', N'Dexamethasone Sodium Phosphate', CAST(92.69 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (99, 4, N'7731451356', N'Aluminum Zirconium Octachlorohydrex Gly', CAST(202.97 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (100, 4, N'4753687082', N'Octocrylene and Avobenzone and Octisalate and Oxybenzone and Octinoxate and Homosalate', CAST(195.03 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (101, 3, N'9352950577', N'clonazepam', CAST(65.91 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (102, 3, N'2732327352', N'Aloe socotrina, Phosphorus, Silicea, Sulphur,', CAST(203.01 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (103, 3, N'2646016816', N'Terazosin Hydrochloride Anhydrous', CAST(51.85 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (104, 2, N'8704621913', N'HYDROQUINONE', CAST(74.51 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (105, 4, N'7551953329', N'ETHYL ALCOHOL', CAST(174.74 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (106, 2, N'2799217281', N'CHAETOMIUM GLOBOSUM', CAST(32.46 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (107, 4, N'9616247514', N'Lidocaine, Menthol', CAST(16.87 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (108, 1, N'1253463530', N'ONDANSETRON', CAST(104.32 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (109, 3, N'5835308922', N'Western Asset Bond Fund', CAST(164.57 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (110, 3, N'7667485534', N'CBL & Associates Properties, Inc.', CAST(69.81 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (111, 4, N'7440937228', N'Old Line Bancshares, Inc.', CAST(206.36 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (112, 2, N'7942914372', N'SVB Financial Group', CAST(13.44 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (113, 4, N'4541643987', N'MarineMax, Inc.', CAST(145.68 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (114, 3, N'3857712252', N'Primoris Services Corporation', CAST(63.42 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (115, 1, N'5503303083', N'First Defiance Financial Corp.', CAST(130.91 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (116, 1, N'0395528038', N'Stanley Black & Decker, Inc.', CAST(20.24 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (117, 3, N'8978348726', N'ArQule, Inc.', CAST(102.56 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Items] ([Id], [CategoryId], [ItemCode], [ItemName], [Price], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (118, 4, N'5800497591', N'Big 5 Sporting Goods Corporation', CAST(56.31 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Items] OFF
GO
SET ANSI_PADDING ON
GO

ALTER TABLE [dbo].[Items] ADD  CONSTRAINT [IX_Items] UNIQUE NONCLUSTERED 
(
	[ItemCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Category] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Stock] ADD  CONSTRAINT [DF_Stock_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Think Bridge
-- Create date: 03-JUN-2022
-- Description:	Fetch all category/ single category
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetCategory](
	@Id	int
)
AS
BEGIN
	
	SET NOCOUNT ON;

	IF( @Id<>0 )
	BEGIN
		SELECT Id
			,CategoryName
			,IsActive
			,CreatedOn
			,CreatedBy
			,UpdatedOn
			,UpdatedBy
		FROM dbo.Category
		WHERE  Id= @Id
		AND IsActive = 1;
	END
	ELSE
	BEGIN
		SELECT Id
			,CategoryName
			,IsActive
			,CreatedOn
			,CreatedBy
			,UpdatedOn
			,UpdatedBy
		FROM dbo.Category
		WHERE IsActive = 1;

	END

END
GO
