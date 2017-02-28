USE [DbParqueo]
GO

INSERT INTO [dbo].[TBL_DIMENSION] VALUES (1,'GRANDE',3,2)
INSERT INTO [dbo].[TBL_DIMENSION] VALUES (2,'MEDIANO',2,2)
INSERT INTO [dbo].[TBL_DIMENSION] VALUES (3,'PEQUE�O',1,2)
GO

--Insert de jornadas
USE [DbParqueo]
GO
INSERT INTO [dbo].[TBL_JORNADA] VALUES (1,'MATUTINA','7:00-11:00')
INSERT INTO [dbo].[TBL_JORNADA] VALUES (2,'NOCTURNA','18:00-10:00')
INSERT INTO [dbo].[TBL_JORNADA] VALUES (3,'MATUTINA-SABADO','7:00-13:00')
GO

--Insert dias de la semana
USE [DbParqueo]
GO

INSERT INTO [dbo].[TBL_DIAS] VALUES (1,'LUNES')
INSERT INTO [dbo].[TBL_DIAS] VALUES (2,'MARTES')
INSERT INTO [dbo].[TBL_DIAS] VALUES (3,'MIERCOLES')
INSERT INTO [dbo].[TBL_DIAS] VALUES (4,'JUEVES')
INSERT INTO [dbo].[TBL_DIAS] VALUES (5,'VIERNES')
INSERT INTO [dbo].[TBL_DIAS] VALUES (6,'SABADO')
INSERT INTO [dbo].[TBL_DIAS] VALUES (7,'DOMINGO')
GO