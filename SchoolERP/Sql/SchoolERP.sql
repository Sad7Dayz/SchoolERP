USE [SchoolERPSoftware]
GO
/****** Object:  Table [dbo].[AssignClass]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssignClass](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StaffID] [int] NULL,
	[ClassLevelID] [int] NULL,
	[Prefix] [varchar](2) NULL,
 CONSTRAINT [PK_AssignClass] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssignSubject]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssignSubject](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StaffID] [int] NULL,
	[ClassLevelID] [int] NULL,
	[Prefix] [varchar](5) NULL,
	[SubjectID] [int] NULL,
 CONSTRAINT [PK_AssignSubject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassLevel]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassLevel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClassLevel] [varchar](10) NULL,
	[SectionID] [int] NULL,
 CONSTRAINT [PK_ClassLevel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designation]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designation](
	[DesignationID] [int] IDENTITY(1,1) NOT NULL,
	[Designation] [varchar](50) NULL,
 CONSTRAINT [PK_Designation] PRIMARY KEY CLUSTERED 
(
	[DesignationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeePayment]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeePayment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdmissionNo] [int] NOT NULL,
	[ClassLevelID] [int] NOT NULL,
	[Session] [varchar](50) NOT NULL,
	[Amount] [decimal](18, 0) NOT NULL,
	[Tellerno] [varchar](50) NOT NULL,
	[Bank] [varchar](50) NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_FeePayment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeeStructure]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeeStructure](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FeeTypeID] [int] NULL,
	[SectionID] [int] NULL,
	[Amount] [decimal](18, 0) NULL,
 CONSTRAINT [PK_FeeStructure] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeeType]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeeType](
	[FeeID] [int] IDENTITY(1,1) NOT NULL,
	[Fee] [varchar](50) NULL,
 CONSTRAINT [PK_FeeType] PRIMARY KEY CLUSTERED 
(
	[FeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleTbl]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleTbl](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Role] [varchar](50) NULL,
	[StaffID] [int] NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_RoleTbl] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sections]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sections](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClassType] [varchar](50) NULL,
 CONSTRAINT [PK_Sections] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SessionTble]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SessionTble](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Session] [varchar](50) NULL,
	[Term] [varchar](50) NULL,
	[IsActive] [varchar](50) NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffAttendance]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffAttendance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StaffID] [int] NULL,
	[Date] [date] NULL,
	[Remark] [varchar](50) NULL,
 CONSTRAINT [PK_StaffAttendance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffFinance]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffFinance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StaffID] [int] NULL,
	[BasicSalary] [decimal](18, 0) NULL,
	[HouseAllowance] [decimal](18, 0) NULL,
	[TransportAllowance] [decimal](18, 0) NULL,
	[LateComingFee] [decimal](18, 0) NULL,
	[Tax] [decimal](18, 0) NULL,
	[Vat] [decimal](18, 0) NULL,
	[TotalPay] [decimal](18, 0) NULL,
 CONSTRAINT [PK_StaffFinance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffTbl]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffTbl](
	[StaffID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](70) NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[DesignationID] [int] NOT NULL,
	[Phone1] [varchar](15) NOT NULL,
	[Phone2] [varchar](15) NULL,
	[StaffAddress] [nvarchar](max) NOT NULL,
	[Email] [varchar](70) NOT NULL,
	[DateOfAppointment] [date] NOT NULL,
	[Nationality] [varchar](50) NOT NULL,
	[YearOfExperience] [int] NOT NULL,
	[PreviousOrg] [varchar](50) NOT NULL,
	[Resume] [nvarchar](max) NOT NULL,
	[AccountStatus] [varchar](50) NOT NULL,
 CONSTRAINT [PK_StaffTbl] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffType]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StaffType] [varchar](50) NULL,
 CONSTRAINT [PK_StaffType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[AdmissionNo] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](60) NOT NULL,
	[DOB] [date] NOT NULL,
	[Nationality] [varchar](50) NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[Religion] [varchar](50) NOT NULL,
	[SessionID] [int] NOT NULL,
	[Term] [varchar](50) NOT NULL,
	[ClassLevelID] [int] NOT NULL,
	[ClassAlphabet] [varchar](2) NOT NULL,
	[AdmissionDate] [date] NOT NULL,
	[FatherName] [varchar](50) NOT NULL,
	[Mothername] [varchar](50) NOT NULL,
	[FatherPhone] [varchar](15) NOT NULL,
	[MotherPhone] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[AdmissionNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentAttendance]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAttendance](
	[ID] [int] NULL,
	[AdmissionNo] [int] NULL,
	[Date] [date] NULL,
	[Remark] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [varchar](50) NULL,
	[SectionID] [int] NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubjectMarks]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubjectMarks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SessionID] [int] NULL,
	[SubjectID] [int] NULL,
	[ClassLevelID] [int] NULL,
	[AdmissionNo] [int] NULL,
	[FirstCa] [int] NULL,
	[SecondCa] [int] NULL,
	[ThirdCa] [int] NULL,
	[Exams] [int] NULL,
	[Total] [int] NULL,
 CONSTRAINT [PK_SubjectMarks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeTable]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClassLevelID] [int] NOT NULL,
	[Days] [varchar](50) NOT NULL,
	[Period1] [varchar](50) NOT NULL,
	[Period2] [varchar](50) NOT NULL,
	[Period3] [varchar](50) NOT NULL,
	[Period4] [varchar](50) NOT NULL,
	[Period5] [varchar](50) NOT NULL,
	[Period6] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TimeTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StaffTbl] ADD  CONSTRAINT [DF_StaffTbl_AccountStatus]  DEFAULT ('Pending') FOR [AccountStatus]
GO
/****** Object:  StoredProcedure [dbo].[addsession]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[addsession]
@SessionName varchar(50),
@Term varchar(50),
@Isactive varchar(50)

as
begin
insert into SessionTble(Session, Term, IsActive) values (@SessionName, @Term, @Isactive)
end
GO
/****** Object:  StoredProcedure [dbo].[AssignClasses]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[AssignClasses]
@StaffID int,
@ClassLevelID int,
@Prefix varchar(2)
as 
begin
insert into AssignClass(StaffID, ClassLevelID, Prefix)values(@StaffID, @ClassLevelID, @Prefix)
end
GO
/****** Object:  StoredProcedure [dbo].[AssignSubjects]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[AssignSubjects]
@StaffID int,
@SubjectID int,
@LevelID int,
@Prefix varchar(2)
as
begin
insert into AssignSubject(StaffID, SubjectID, ClassLevelID, Prefix) values (@StaffID, @SubjectID, @LevelID, @Prefix)
end
GO
/****** Object:  StoredProcedure [dbo].[AssingnSubjects]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[AssingnSubjects]
@StaffID int,
@SubjectID int,
@LevelID int,
@Prefix varchar(2)
as
begin
insert into AssignSubject(StaffID, SubjectID, ClassLevelID, Prefix) values (@StaffID, @SubjectID, @LevelID, @Prefix)
end
GO
/****** Object:  StoredProcedure [dbo].[BroadSheet]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[BroadSheet]
as
begin
select * from SubjectMarks inner join Student on SubjectMarks.AdmissionNo = Student.AdmissionNo inner join  ClassLevel on ClassLevel.ID = SubjectMarks.ClassLevelID inner join Subject on Subject.ID = SubjectMarks.SubjectID inner join SessionTble on SessionTble.ID = SubjectMarks.SessionID
end
GO
/****** Object:  StoredProcedure [dbo].[CreateClassLevel]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[CreateClassLevel]
@ClassLevel varchar(10),
@SectionId int

as
begin
insert into ClassLevel (ClassLevel, SectionID) values (@ClassLevel, @SectionId)
end
GO
/****** Object:  StoredProcedure [dbo].[CreateClassTimeTable]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CreateClassTimeTable]
@LeveID int,
@Days varchar(50),
@Period1 int,
@Period2 int,
@Period3 int,
@Period4 int,
@Period5 int,
@Period6 int
as
begin
insert into TimeTable(ClassLevelID, Days, Period1, Period2, Period3, Period4, Period5, Period6) 
values 
(@LeveID, @Days, @Period1, @Period2, @Period3, @Period4, @Period5, @Period6)
end
GO
/****** Object:  StoredProcedure [dbo].[CreateDesignation]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[CreateDesignation]
@Designation varchar(50)
as
begin
insert into Designation(Designation)values(@Designation)
end
GO
/****** Object:  StoredProcedure [dbo].[CreateFeeType]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CreateFeeType]
@FeeName varchar(50)
as
begin
insert into FeeType(Fee)Values(@FeeName)
end
GO
/****** Object:  StoredProcedure [dbo].[CreateStaff]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[CreateStaff]
@Fullname varchar(50),
@Gender varchar(50),
@Designation int,
@Phone1 varchar(15),
@Phone2 varchar(15),
@Email varchar(50),
@StaffAddress nvarchar(max),
@dateOfAppointment date,
@Nationality varchar(50),
@YOE int,
@PreviousOrg varchar(50),
@Resume nvarchar(max)
as

begin
insert into StaffTbl(FullName, Gender, DesignationID, Phone1, Phone2, Email, DateOfAppointment, Nationality, YearOfExperience, PreviousOrg, Resume, StaffAddress)
values (@Fullname, @Gender, @Designation, @Phone1, @Phone2, @Email, @dateOfAppointment, @Nationality, @YOE, @PreviousOrg, @Resume, @StaffAddress)
end
GO
/****** Object:  StoredProcedure [dbo].[CreateStudent]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE procedure [dbo].[CreateStudent]

  
@FullName		varchar(50),
@DOB            date,
@Nationality	varchar(50),
@Gender			varchar(50),
@Religion		varchar(50),
@Session		int,
@Term			varchar(50),
@ClassLevelID	int,
@Alphabet	    varchar(2),
@AdmissionDate	date,
@FatherName		varchar(50),
@Mothername		varchar(50),
@FatherContact	varchar(15),
@MotherContact  varchar(15) 

as
begin
insert into Student(FullName, DOB, Nationality, Gender, Religion, SessionID, Term, ClassLevelID,ClassAlphabet,AdmissionDate,FatherName,FatherPhone,Mothername,MotherPhone)
values (@FullName, @DOB, @Nationality, @Gender, @Religion, @Session, @Term, @ClassLevelID, @Alphabet, @AdmissionDate, @FatherName, @FatherContact, @Mothername,@MotherContact)
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteFeeType]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DeleteFeeType]
@FeeiD int
as
begin
Delete from FeeType where FeeID = @FeeID
end
GO
/****** Object:  StoredProcedure [dbo].[Deletesession]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[Deletesession]
@ID int
as
begin
Delete from SessionTble where ID = @ID
end
GO
/****** Object:  StoredProcedure [dbo].[EditSession]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[EditSession]
@ID int,
@SessionName varchar(50),
@Term varchar(50),
@Isactive varchar(50)

as
begin
Update SessionTble set Session=@SessionName, Term=@Term, IsActive= @Isactive where ID=@ID
end
GO
/****** Object:  StoredProcedure [dbo].[getActiveStaffs]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[getActiveStaffs]
as
begin
select * from StaffTbl s inner join Designation d on s.DesignationID = d.DesignationID where AccountStatus = 'Active'
end
GO
/****** Object:  StoredProcedure [dbo].[getAssignClass]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[getAssignClass]
as 
begin
select *from AssignClass a inner join StaffTbl s on a.StaffID = s.StaffID inner join ClassLevel cl on a.ClassLevelID = cl.ID
end
GO
/****** Object:  StoredProcedure [dbo].[GetAssignedStudent]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAssignedStudent]
@Username varchar(50)
as
begin
Select * from Student s inner join AssignClass a on a.ClassLevelID = s.ClassLevelID inner join StaffTbl st on a.StaffID = st.StaffID inner join RoleTbl r on st.StaffID = r.StaffID where r.Username = @Username
end
GO
/****** Object:  StoredProcedure [dbo].[getAssignedSubject]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getAssignedSubject]
as
begin
select * from AssignSubject ass inner join StaffTbl s on ass.StaffID = s.StaffID inner join Subject su on su.ID = ass.SubjectID inner join ClassLevel cl on cl.ID = ass.ClassLevelID
end
GO
/****** Object:  StoredProcedure [dbo].[GetClassLevel]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[GetClassLevel]
as
begin
select * from ClassLevel c inner join Sections s on c.SectionID = s.ID
end
GO
/****** Object:  StoredProcedure [dbo].[GetClassTimeTable]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[GetClassTimeTable]
@ID int
as
begin
Select * from TimeTable t inner join ClassLevel c on t.ClassLevelID = c.ID where c.ID = @ID
end
GO
/****** Object:  StoredProcedure [dbo].[getCollectedFee]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[getCollectedFee]
as
begin
select * from FeePayment f inner join  Student s on f.AdmissionNo = s.AdmissionNo inner join ClassLevel cl on f.ClassLevelID = cl.ID
end
GO
/****** Object:  StoredProcedure [dbo].[GetDesignation]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetDesignation]
as
begin
select * from Designation
end
GO
/****** Object:  StoredProcedure [dbo].[getFeeStructure]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[getFeeStructure]
as
begin
Select * from FeeStructure f inner join FeeType ft on f.FeeTypeID = ft.FeeID inner join Sections s on f.SectionID = s.ID
end
GO
/****** Object:  StoredProcedure [dbo].[GetFeeType]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetFeeType]
as
begin
select * from FeeType
end
GO
/****** Object:  StoredProcedure [dbo].[GetRole]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetRole]
as 
begin
select * from RoleTbl r inner join StaffTbl s on r.StaffID = s.StaffID
end
GO
/****** Object:  StoredProcedure [dbo].[GetSections]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[GetSections]

as
begin
Select * from Sections
end
GO
/****** Object:  StoredProcedure [dbo].[GetSession]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetSession]
as
begin
select * from SessionTble
end
GO
/****** Object:  StoredProcedure [dbo].[GetStaff]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[GetStaff]
as
begin
Select * from StaffTbl st inner join Designation d on st.DesignationID = d.DesignationID
end
GO
/****** Object:  StoredProcedure [dbo].[getStaffAttendance]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getStaffAttendance]
as
begin
select * from StaffAttendance sa inner join StaffTbl s on sa.StaffID = s.StaffID
end
GO
/****** Object:  StoredProcedure [dbo].[GetStaffFinance]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[GetStaffFinance]
as
begin
select * from StaffFinance sf inner join StaffTbl s on sf.StaffID = s.StaffID
end
GO
/****** Object:  StoredProcedure [dbo].[getStudent]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[getStudent]
@Id int
as
begin
select * from Student s inner join ClassLevel cl on s.ClassLevelID = cl.ID join SessionTble se on s.SessionID = se.ID where AdmissionNo = @Id
end
GO
/****** Object:  StoredProcedure [dbo].[GetStudentAttendance]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetStudentAttendance]
@Username varchar(50)
as
begin
select * from StudentAttendance sa inner join Student s on sa.AdmissionNo = s.AdmissionNo inner join AssignClass ac on ac.ClassLevelID = s.ClassLevelID  inner join StaffTbl st on st.StaffID = ac.StaffID inner join RoleTbl r on r.StaffID = st.StaffID where r.Username = @Username
end
GO
/****** Object:  StoredProcedure [dbo].[GetStudentList]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetStudentList]
as
begin
Select * from Student s inner join ClassLevel l on s.ClassLevelID = l.ID inner join SessionTble se on s.SessionID = se.ID
end
GO
/****** Object:  StoredProcedure [dbo].[GetSubject]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetSubject]
as
begin
select * from Subject s inner join Sections se on s.SectionID = se.ID
end
GO
/****** Object:  StoredProcedure [dbo].[InserStudentAttendance]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InserStudentAttendance]
@AddmissionNo int,
@Date date,
@Remark varchar(50)
as
begin
insert into StudentAttendance(AdmissionNo, Date, Remark) values( @AddmissionNo, @Date, @Remark)
end
GO
/****** Object:  StoredProcedure [dbo].[InsertFeeDetails]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[InsertFeeDetails]
@AdmissionNo int,
@ClassLevelID int,
@Session varchar(50),
@Amount decimal(18, 0),
@TellerNo varchar(50),
@Bank varchar(50),
@Date date
as
begin
insert into FeePayment(AdmissionNo, ClassLevelID, Session, Amount, TellerNo, Bank, Date) values (@AdmissionNo,@ClassLevelID,@Session,@Amount,@TellerNo,@Bank, @Date)
end
GO
/****** Object:  StoredProcedure [dbo].[insertFeeStructure]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[insertFeeStructure]
@FeeTypeID int,
@SecionID int,
@Amount decimal(18,0)

as

begin

insert into FeeStructure(FeeTypeId, SectionID, Amount)values(@FeeTypeID,@SecionID, @Amount)
end
GO
/****** Object:  StoredProcedure [dbo].[insertMark]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insertMark]
@SessionID varchar(50),
@SubjectID int,
@ClassID int, 
@AdmissionNo int, 
@FirstCa int, 
@SecondCa int, 
@ThirdCa int,
@Exams int

as
begin
insert into SubjectMarks(SessionID, SubjectID, ClassLevelID, AdmissionNo, FirstCa, SecondCa, ThirdCa, Exams) values(@SessionID, @SubjectID, @ClassID, @AdmissionNo, @FirstCa, @SecondCa, @ThirdCa, @Exams)
end
GO
/****** Object:  StoredProcedure [dbo].[insertRole]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insertRole]
@RoleName varchar(50),
@StaffID int,
@Username varchar(50),
@Password varchar(50)
as
begin
insert into RoleTbl(Role, StaffID, Username, Password)values(@RoleName, @StaffID, @Username, @Password)
end
GO
/****** Object:  StoredProcedure [dbo].[InsertSections]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[InsertSections]
@Section varchar(50)

as
begin
insert into Sections(ClassType) values (@Section)
end
GO
/****** Object:  StoredProcedure [dbo].[insertStaffAttendance]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insertStaffAttendance]
@StaffID int,
@Date date,
@Remark varchar(50)
as
begin
insert into StaffAttendance(StaffID, Date, Remark) values (@StaffID, @Date, @Remark)
end
GO
/****** Object:  StoredProcedure [dbo].[InsertStaffFinance]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[InsertStaffFinance]
@StaffID int,
@BasicSalary decimal(18,0),
@HouseAllowance decimal(18,0),
@TransportAllowance decimal(18,0),
@LateComingFee decimal(18,0),
@Tax decimal(18,0),
@Vat decimal(18,0)
as
begin
insert into StaffFinance(StaffID, BasicSalary, HouseAllowance, TransportAllowance, LateComingFee, Tax, Vat)
values (@StaffID, @BasicSalary, @HouseAllowance, @TransportAllowance, @LateComingFee, @Tax, @Vat)
end
GO
/****** Object:  StoredProcedure [dbo].[insertSubject]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[insertSubject]
@Subject varchar(50),
@SectionID int
as
begin
insert into Subject(Subject, SectionID)values(@Subject, @SectionID)
end
GO
/****** Object:  StoredProcedure [dbo].[PrintCollectedFee]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[PrintCollectedFee]
@ID int
as
begin
select * from FeePayment f inner join Student s on f.AdmissionNo = s.AdmissionNo inner join ClassLevel cl on f.ClassLevelID = cl.ID where f.ID = @ID
end
GO
/****** Object:  StoredProcedure [dbo].[SearchAssignedStudent]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[SearchAssignedStudent]
@Username varchar(50),
@Studentname varchar(50)
as 
begin
select *from Student s inner join AssignClass a on a.ClassLevelID = s.ClassLevelID inner join StaffTbl st on a.StaffID = st.StaffID inner join RoleTbl r on st.StaffID = r.StaffID inner join ClassLevel cl on cl.ID = s.ClassLevelID where s.FullName like '%'+@Studentname+'%'
end
GO
/****** Object:  StoredProcedure [dbo].[SearchSession]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SearchSession]
@Session varchar(50)
as
begin
Select * from SessionTble where Session like '%'+@Session+'%'
end
GO
/****** Object:  StoredProcedure [dbo].[SearchStaff]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SearchStaff]
@Staffname varchar(50)
as
begin
select * from StaffTbl s inner join Designation d on s.DesignationID = d.DesignationID where s.FullName like '%'+@Staffname+'%'
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateFeeType]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UpdateFeeType]
@FeeName varchar(50),
@FeeID int
as
begin
Update FeeType set Fee = @FeeName where FeeID = @FeeID
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudent]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[UpdateStudent]
@FullName		varchar(50),
@DOB            date,
@Nationality	varchar(50),
@Gender			varchar(50),
@Religion		varchar(50),
@Session		int,
@Term			varchar(50),
@ClassLevelID	int,
@Alphabet	    varchar(2),
@AdmissionDate	date,
@FatherName		varchar(50),
@Mothername		varchar(50),
@FatherContact	varchar(15),
@MotherContact  varchar(15),
@AdmissionNo  int

as
begin
update Student set FullName = @FullName, DOB = @DOB, Nationality = @Nationality, Gender = @Gender, Religion = @Religion, SessionID = @Session, Term = @Term, ClassLevelID = @ClassLevelID, ClassAlphabet = @Alphabet, AdmissionDate = @AdmissionDate, FatherName = @FatherName, Mothername=@Mothername, FatherPhone=@FatherContact, MotherPhone=@MotherContact where @AdmissionNo = @AdmissionNo
end
GO
/****** Object:  StoredProcedure [dbo].[ViewClassTimeTable]    Script Date: 2022-07-28 오전 12:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[ViewClassTimeTable]
@ID int
as
begin
Select * from TimeTable t inner join Subject s on t.Period1 = s.Subject inner join ClassLevel cl on t.ClassLevelID = cl.ID where cl.ID = @ID
end
GO
