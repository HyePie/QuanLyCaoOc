
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/12/2018 13:46:14
-- Generated from EDMX file: C:\Users\dhp15_000\Desktop\QLyCaoOc\QLyCaoOc\Models\dbQuanLyCaoOc.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [QLCAOOC];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_CHITIETHOPDONG_HOPDONG]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CHITIETHOPDONG] DROP CONSTRAINT [FK_CHITIETHOPDONG_HOPDONG];
GO
IF OBJECT_ID(N'[dbo].[FK_CHITIETHOPDONG_PHONG]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CHITIETHOPDONG] DROP CONSTRAINT [FK_CHITIETHOPDONG_PHONG];
GO
IF OBJECT_ID(N'[dbo].[FK_CONGTY_HOPDONG]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CONGTY] DROP CONSTRAINT [FK_CONGTY_HOPDONG];
GO
IF OBJECT_ID(N'[dbo].[FK_NHANVIEN_CONGTY]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NHANVIEN] DROP CONSTRAINT [FK_NHANVIEN_CONGTY];
GO
IF OBJECT_ID(N'[dbo].[FK_NHANVIEN_PHONG]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NHANVIEN] DROP CONSTRAINT [FK_NHANVIEN_PHONG];
GO
IF OBJECT_ID(N'[dbo].[FK_PHONG_TANG]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PHONG] DROP CONSTRAINT [FK_PHONG_TANG];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[CHITIETHOPDONG]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CHITIETHOPDONG];
GO
IF OBJECT_ID(N'[dbo].[CONGTY]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CONGTY];
GO
IF OBJECT_ID(N'[dbo].[HOPDONG]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HOPDONG];
GO
IF OBJECT_ID(N'[dbo].[NHANVIEN]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NHANVIEN];
GO
IF OBJECT_ID(N'[dbo].[PHONG]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PHONG];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[TANG]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TANG];
GO
IF OBJECT_ID(N'[dbo].[THAMSO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[THAMSO];
GO
IF OBJECT_ID(N'[dbo].[USERS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[USERS];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'CHITIETHOPDONGs'
CREATE TABLE [dbo].[CHITIETHOPDONGs] (
    [MaHD] varchar(5)  NOT NULL,
    [MaPHG] varchar(5)  NOT NULL,
    [ThoiGianThue] int  NULL
);
GO

-- Creating table 'CONGTies'
CREATE TABLE [dbo].[CONGTies] (
    [MaCongTy] varchar(5)  NOT NULL,
    [TenCT] nvarchar(50)  NULL,
    [DiaChiCT] nvarchar(50)  NULL,
    [SDT] nvarchar(10)  NULL,
    [MaHD] varchar(5)  NOT NULL
);
GO

-- Creating table 'HOPDONGs'
CREATE TABLE [dbo].[HOPDONGs] (
    [MaHD] varchar(5)  NOT NULL,
    [NgayLap] datetime  NULL,
    [TienCoc] int  NULL
);
GO

-- Creating table 'NHANVIENs'
CREATE TABLE [dbo].[NHANVIENs] (
    [MaNV] varchar(5)  NOT NULL,
    [TenNV] nvarchar(50)  NULL,
    [DiaChiNV] nvarchar(50)  NULL,
    [SDTNV] nvarchar(10)  NULL,
    [MaCongTy] varchar(5)  NOT NULL,
    [MaPHG] varchar(5)  NOT NULL
);
GO

-- Creating table 'PHONGs'
CREATE TABLE [dbo].[PHONGs] (
    [MaPHG] varchar(5)  NOT NULL,
    [TenPHG] nvarchar(10)  NULL,
    [Tang] int  NOT NULL,
    [DienTich] int  NOT NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'TANGs'
CREATE TABLE [dbo].[TANGs] (
    [Tang] int  NOT NULL,
    [DienTich] int  NOT NULL,
    [Gia] nchar(10)  NOT NULL
);
GO

-- Creating table 'THAMSOes'
CREATE TABLE [dbo].[THAMSOes] (
    [MaTS] varchar(5)  NOT NULL,
    [TenTS] nvarchar(50)  NULL,
    [GiaTriTS] int  NULL
);
GO

-- Creating table 'USERS'
CREATE TABLE [dbo].[USERS] (
    [Id] varchar(5)  NOT NULL,
    [UserName] nvarchar(10)  NULL,
    [PassWord] nvarchar(10)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [MaHD], [MaPHG] in table 'CHITIETHOPDONGs'
ALTER TABLE [dbo].[CHITIETHOPDONGs]
ADD CONSTRAINT [PK_CHITIETHOPDONGs]
    PRIMARY KEY CLUSTERED ([MaHD], [MaPHG] ASC);
GO

-- Creating primary key on [MaCongTy] in table 'CONGTies'
ALTER TABLE [dbo].[CONGTies]
ADD CONSTRAINT [PK_CONGTies]
    PRIMARY KEY CLUSTERED ([MaCongTy] ASC);
GO

-- Creating primary key on [MaHD] in table 'HOPDONGs'
ALTER TABLE [dbo].[HOPDONGs]
ADD CONSTRAINT [PK_HOPDONGs]
    PRIMARY KEY CLUSTERED ([MaHD] ASC);
GO

-- Creating primary key on [MaNV] in table 'NHANVIENs'
ALTER TABLE [dbo].[NHANVIENs]
ADD CONSTRAINT [PK_NHANVIENs]
    PRIMARY KEY CLUSTERED ([MaNV] ASC);
GO

-- Creating primary key on [MaPHG] in table 'PHONGs'
ALTER TABLE [dbo].[PHONGs]
ADD CONSTRAINT [PK_PHONGs]
    PRIMARY KEY CLUSTERED ([MaPHG] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [Tang], [DienTich] in table 'TANGs'
ALTER TABLE [dbo].[TANGs]
ADD CONSTRAINT [PK_TANGs]
    PRIMARY KEY CLUSTERED ([Tang], [DienTich] ASC);
GO

-- Creating primary key on [MaTS] in table 'THAMSOes'
ALTER TABLE [dbo].[THAMSOes]
ADD CONSTRAINT [PK_THAMSOes]
    PRIMARY KEY CLUSTERED ([MaTS] ASC);
GO

-- Creating primary key on [Id] in table 'USERS'
ALTER TABLE [dbo].[USERS]
ADD CONSTRAINT [PK_USERS]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [MaHD] in table 'CHITIETHOPDONGs'
ALTER TABLE [dbo].[CHITIETHOPDONGs]
ADD CONSTRAINT [FK_CHITIETHOPDONG_HOPDONG]
    FOREIGN KEY ([MaHD])
    REFERENCES [dbo].[HOPDONGs]
        ([MaHD])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [MaPHG] in table 'CHITIETHOPDONGs'
ALTER TABLE [dbo].[CHITIETHOPDONGs]
ADD CONSTRAINT [FK_CHITIETHOPDONG_PHONG]
    FOREIGN KEY ([MaPHG])
    REFERENCES [dbo].[PHONGs]
        ([MaPHG])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CHITIETHOPDONG_PHONG'
CREATE INDEX [IX_FK_CHITIETHOPDONG_PHONG]
ON [dbo].[CHITIETHOPDONGs]
    ([MaPHG]);
GO

-- Creating foreign key on [MaHD] in table 'CONGTies'
ALTER TABLE [dbo].[CONGTies]
ADD CONSTRAINT [FK_CONGTY_HOPDONG]
    FOREIGN KEY ([MaHD])
    REFERENCES [dbo].[HOPDONGs]
        ([MaHD])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CONGTY_HOPDONG'
CREATE INDEX [IX_FK_CONGTY_HOPDONG]
ON [dbo].[CONGTies]
    ([MaHD]);
GO

-- Creating foreign key on [MaCongTy] in table 'NHANVIENs'
ALTER TABLE [dbo].[NHANVIENs]
ADD CONSTRAINT [FK_NHANVIEN_CONGTY]
    FOREIGN KEY ([MaCongTy])
    REFERENCES [dbo].[CONGTies]
        ([MaCongTy])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NHANVIEN_CONGTY'
CREATE INDEX [IX_FK_NHANVIEN_CONGTY]
ON [dbo].[NHANVIENs]
    ([MaCongTy]);
GO

-- Creating foreign key on [MaPHG] in table 'NHANVIENs'
ALTER TABLE [dbo].[NHANVIENs]
ADD CONSTRAINT [FK_NHANVIEN_PHONG]
    FOREIGN KEY ([MaPHG])
    REFERENCES [dbo].[PHONGs]
        ([MaPHG])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NHANVIEN_PHONG'
CREATE INDEX [IX_FK_NHANVIEN_PHONG]
ON [dbo].[NHANVIENs]
    ([MaPHG]);
GO

-- Creating foreign key on [Tang], [DienTich] in table 'PHONGs'
ALTER TABLE [dbo].[PHONGs]
ADD CONSTRAINT [FK_PHONG_TANG]
    FOREIGN KEY ([Tang], [DienTich])
    REFERENCES [dbo].[TANGs]
        ([Tang], [DienTich])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PHONG_TANG'
CREATE INDEX [IX_FK_PHONG_TANG]
ON [dbo].[PHONGs]
    ([Tang], [DienTich]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------