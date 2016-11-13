
create table UserInfo(UserName char(10) primary key,
					  FirstName nvarchar(20),
					  LastName nvarchar(20),
                      Password nvarchar(16),
                      Email char(50),
                      Phone char(20),
                      Stt int,
                      RoleID char(10))
create table Role(RoleID char(10) primary key,
				  RoleName nvarchar(20))
create table Calendar(UserName char(10),
					  IDEvent char(10))
create table Event(IDEvent char(10) primary key,
				   NameEvent nvarchar(30),
				   StartDay date,
				   StartTime time,
				   EndDay date,
				   EndTime time,
				   Location nvarchar(30),
				   Detail nvarchar(300),
				   IDRepeat char(10))
create table ListInvite(IDInvite char(10),
						IDEvent char(10))
create table UserInvite(IDInvite char(10) primary key,
                        UserName char(10))
create table ListNotify(IDNotify char(10),
						IDEvent char(10))
create table NotifyInfo(IDNotify char(10) primary key,
                        NotifyTime int,
                        TypeNotify char(10),
                        Pass char(10))
create table InfoRepeat(IDRepeat char(10) primary key,
					    TypeRP char(10),
                        RPEvery int,
						Times char(10))
alter table UserInfo   add foreign key (RoleID) references Role(RoleID)

alter table Calendar   add foreign key (UserName) references UserInfo(UserName)

alter table Calendar   add foreign key (IDEvent) references Event(IDEvent)

alter table Event      add foreign key (IDRepeat) references InfoRepeat(IDRepeat)

alter table ListInvite add foreign key (IDInvite) references UserInvite(IDInvite)

alter table ListInvite add foreign key (IDEvent) references Event(IDEvent)

alter table UserInvite add foreign key (UserName) references UserInfo(UserName)

alter table ListNotify add foreign key (IDNotify) references NotifyInfo(IDNotify)

alter table ListNotify add foreign key (IDEvent) references Event(IDEvent)

alter table Calendar add primary key (IDEvent) 

alter table ListInvite add primary key (IDInvite) 

alter table ListNotify add primary key (ListNotify)