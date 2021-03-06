USE [DbParqueo]
GO
/****** Object:  StoredProcedure [dbo].[SP_DOCENTE]    Script Date: 28/02/2017 14:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DOCENTE]
@PCEDULA VARCHAR(15)
AS

SELECT        academico.dbo.PROFESOR.DTPCEDULAC, academico.dbo.DATOSPERSONALES.DTPNOMBREC, academico.dbo.DATOSPERSONALES.DTPAPELLIC, academico.dbo.DATOSPERSONALES.DTPAPELLIC2, 
                         academico.dbo.DATOSPERSONALES.DTPFECHNAF, academico.dbo.DATOSPERSONALES.DTPEMAILC, academico.dbo.DATOSPERSONALES.DTPTELEFOCELC
FROM            academico.dbo.DATOSPERSONALES INNER JOIN
                         academico.dbo.PROFESOR ON academico.dbo.DATOSPERSONALES.DTPCEDULAC = academico.dbo.PROFESOR.DTPCEDULAC
WHERE academico.DBO.PROFESOR.DTPCEDULAC=@PCEDULA

GO
/****** Object:  StoredProcedure [dbo].[SP_ESTUDIANTE]    Script Date: 28/02/2017 14:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_ESTUDIANTE]

@PCEDULA VARCHAR(15)
AS

SELECT        academico.dbo.CARRERA.CRRDESCRIPC, academico.dbo.INSCRIPCION.DTPCEDULAC, RTRIM(academico.dbo.DATOSPERSONALES.DTPAPELLIC) + ' ' + RTRIM(academico.dbo.DATOSPERSONALES.DTPAPELLIC2)
                          + ' ' + RTRIM(academico.dbo.DATOSPERSONALES.DTPNOMBREC) AS NOMBRES, academico.dbo.DATOSPERSONALES.DTPEMAILC, academico.dbo.MATRICULA.NVLCODIGOI, 
                         academico.dbo.MODALIDAD.MDLDESCRIPC, academico.dbo.MATRICULA.MTRFECHAD, academico.dbo.CARRERA_MODAL.CRRCODIGOI, academico.dbo.INSCRIPCION.INSGRUPOESP, 
                         academico.dbo.MATRICULA.MTRPARALELO, academico.dbo.MATRICULA.MTRAÑOING, academico.dbo.INSCRIPCION.TPECODIGOI, academico.dbo.DATOSPERSONALES.DTPTELEFOCELC, 
                         academico.dbo.DATOSPERSONALES.DTPTELEFOC
FROM            academico.dbo.MATRICULA INNER JOIN
                         academico.dbo.INSCRIPCION ON academico.dbo.MATRICULA.INSCODIGOI = academico.dbo.INSCRIPCION.INSCODIGOI INNER JOIN
                         academico.dbo.DATOSPERSONALES ON academico.dbo.INSCRIPCION.DTPCEDULAC = academico.dbo.DATOSPERSONALES.DTPCEDULAC INNER JOIN
                         academico.dbo.CARRERA_MODAL ON academico.dbo.MATRICULA.CRRMODCODIGOI = academico.dbo.CARRERA_MODAL.CRRMODCODIGOI INNER JOIN
                         academico.dbo.CARRERA ON academico.dbo.CARRERA_MODAL.CRRCODIGOI = academico.dbo.CARRERA.CRRCODIGOI INNER JOIN
                         academico.dbo.MODALIDAD ON academico.dbo.CARRERA_MODAL.MDLCODIGOI = academico.dbo.MODALIDAD.MDLCODIGOI
WHERE        (academico.dbo.MATRICULA.PRDCODIGOI =
                             (SELECT        MAX(PRDCODIGOI) AS Expr1
                               FROM            academico.dbo.PERIODO
                               WHERE        (TPECODIGOI = 1))) AND (academico.dbo.INSCRIPCION.TPECODIGOI = 1)
							   and academico.dbo.DATOSPERSONALES.DTPCEDULAC=@PCEDULA
GO
