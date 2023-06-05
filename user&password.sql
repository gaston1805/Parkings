USE [master]
GO
CREATE LOGIN [Parking] WITH PASSWORD=N'Parkings', DEFAULT_DATABASE=[Parkings], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
USE [Parkings]
GO
CREATE USER [Parking] FOR LOGIN [Parking]
GO
USE [Parkings]
GO
ALTER ROLE [db_owner] ADD MEMBER [Parking]
GO