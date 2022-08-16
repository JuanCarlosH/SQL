/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [AGNO]
      ,[RBD]
      ,[DGV_RBD]
      ,[NOM_RBD]
      ,[LET_RBD]
      ,[NUM_RBD]
      ,[COD_REG_RBD]
      ,[COD_COM_RBD]
      ,[NOM_COM_RBD]
      ,[COD_DEPE]
      ,[RURAL_RBD]
      ,[COD_ENSE]
      ,[COD_GRADO]
      ,[LET_CUR]
      ,[MRUN]
      ,[GEN_ALU]
      ,[FEC_NAC_ALU]
      ,[COD_COM_ALU]
      ,[NOM_COM_ALU]
      ,[PROM_GRAL]
      ,[ASISTENCIA]
      ,[SIT_FIN]
      ,[SIT_FIN_R]
  FROM [Rend_Acad_Estud].[dbo].[Rend_Anho_2002]


CREATE TABLE #Base_Analitica_Taller_Estad (
AGNO float,
MRUN int,
GEN_ALU int,
[FEC_NAC_ALU] nvarchar(100),
[COD_DEPE] int,
[PROM_GRAL] float,
[ASISTENCIA] float,
[SIT_FIN] nvarchar(5),
[SIT_FIN_R]  nvarchar(5),
AÑO_ING_CARR int,
[dur_estudio_carr] int,
[dur_proceso_tit] int,
[dur_total_carr] int,
FECHA_OBTENCION_TITULO int,
[jornada] nvarchar(20),
[nomb_carrera] nvarchar(150),
TIPO_INST_2 nvarchar(100),
NIVEL_GLOBAL nvarchar(100)
);

--drop table #Base_Analitica_Taller_Estad


insert #Base_Analitica_Taller_Estad
select B1.AGNO 
      ,B1.MRUN
	  ,B1.GEN_ALU
	  ,B1.[FEC_NAC_ALU]
	  ,B1.[COD_DEPE]
      ,B1.[PROM_GRAL]
      ,B1.[ASISTENCIA]
      ,B1.[SIT_FIN]
      ,B1.[SIT_FIN_R]  
	  ,B2.AÑO_ING_CARR
	  ,B2.[dur_estudio_carr]
      ,B2.[dur_proceso_tit]
      ,B2.[dur_total_carr]
	  ,B2.FECHA_OBTENCION_TITULO
	  ,B2.[jornada]
	  ,B2.[nomb_carrera]
	  ,B2.TIPO_INST_2
	  ,B2.nivel_global
--into #Base_Analitica_Taller_Estad
from [Rend_Acad_Estud].[dbo].[Rend_Anho_2002] as B1 inner join
     Tit_Edu_Sup.dbo.Tit_Anho_2007 as B2 on B1.MRUN = B2.MRUN
where B1.SIT_FIN = 'P'  and B2.AÑO_ING_CARR >=2002 and B2.AÑO_ING_CARR < 2022 and B1.COD_ENSE in (310, 360) and B1.COD_GRADO = 4
order by B1.MRUN
go

insert into #Base_Analitica_Taller_Estad
select B1.AGNO 
      ,B1.MRUN
	  ,B1.GEN_ALU
	  ,B1.[FEC_NAC_ALU]
	  ,B1.[COD_DEPE]
      ,B1.[PROM_GRAL]
      ,B1.[ASISTENCIA]
      ,B1.[SIT_FIN]
      ,B1.[SIT_FIN_R]  
	  ,B2.AÑO_ING_CARR
	  ,B2.[dur_estudio_carr]
      ,B2.[dur_proceso_tit]
      ,B2.[dur_total_carr]
	  ,B2.FECHA_OBTENCION_TITULO
	  ,B2.[jornada]
	  ,B2.[nomb_carrera]
	  ,B2.TIPO_INST_2
	   ,B2.nivel_global
from [Rend_Acad_Estud].[dbo].[Rend_Anho_2002] as B1 inner join
     Tit_Edu_Sup.dbo.Tit_Anho_2008 as B2 on B1.MRUN = B2.MRUN
where B1.SIT_FIN = 'P'  and B2.AÑO_ING_CARR >=2002 and B2.AÑO_ING_CARR < 2022 and B1.COD_ENSE in (310, 360) and B1.COD_GRADO = 4
order by B1.MRUN
go

--select * from Tit_Edu_Sup.dbo.Tit_Anho_2008

insert into #Base_Analitica_Taller_Estad
select B1.AGNO 
      ,B1.MRUN
	  ,B1.GEN_ALU
	  ,B1.[FEC_NAC_ALU]
	  ,B1.[COD_DEPE]
      ,B1.[PROM_GRAL]
      ,B1.[ASISTENCIA]
      ,B1.[SIT_FIN]
      ,B1.[SIT_FIN_R]  
	  ,B2.AÑO_ING_CARR
	  ,B2.[dur_estudio_carr]
      ,B2.[dur_proceso_tit]
      ,B2.[dur_total_carr]
	  ,B2.FECHA_OBTENCION_TITULO
	  ,B2.[jornada]
	  ,B2.[nomb_carrera]
	  ,B2.TIPO_INST_2
	   ,B2.nivel_global
from [Rend_Acad_Estud].[dbo].[Rend_Anho_2002] as B1 inner join
     Tit_Edu_Sup.dbo.Tit_Anho_2009 as B2 on B1.MRUN = B2.MRUN
where B1.SIT_FIN = 'P'  and B2.AÑO_ING_CARR >=2002 and B2.AÑO_ING_CARR < 2022  and B1.COD_ENSE in (310, 360) and B1.COD_GRADO = 4
order by B1.MRUN
go

insert into #Base_Analitica_Taller_Estad
select B1.AGNO 
      ,B1.MRUN
	  ,B1.GEN_ALU
	  ,B1.[FEC_NAC_ALU]
	  ,B1.[COD_DEPE]
      ,B1.[PROM_GRAL]
      ,B1.[ASISTENCIA]
      ,B1.[SIT_FIN]
      ,B1.[SIT_FIN_R]  
	  ,B2.AÑO_ING_CARR
	  ,B2.[dur_estudio_carr]
      ,B2.[dur_proceso_tit]
      ,B2.[dur_total_carr]
	  ,B2.FECHA_OBTENCION_TITULO
	  ,B2.[jornada]
	  ,B2.[nomb_carrera]
	  ,B2.TIPO_INST_2
	   ,B2.nivel_global
from [Rend_Acad_Estud].[dbo].[Rend_Anho_2002] as B1 inner join
     Tit_Edu_Sup.dbo.Tit_Anho_2010 as B2 on B1.MRUN = B2.MRUN
where B1.SIT_FIN = 'P'  and B2.AÑO_ING_CARR >=2002 and B2.AÑO_ING_CARR < 2022  and B1.COD_ENSE in (310, 360) and B1.COD_GRADO = 4
order by B1.MRUN
go

insert into #Base_Analitica_Taller_Estad
select B1.AGNO 
      ,B1.MRUN
	  ,B1.GEN_ALU
	  ,B1.[FEC_NAC_ALU]
	  ,B1.[COD_DEPE]
      ,B1.[PROM_GRAL]
      ,B1.[ASISTENCIA]
      ,B1.[SIT_FIN]
      ,B1.[SIT_FIN_R]  
	  ,B2.AÑO_ING_CARR
	  ,B2.[dur_estudio_carr]
      ,B2.[dur_proceso_tit]
      ,B2.[dur_total_carr]
	  ,B2.FECHA_OBTENCION_TITULO
	  ,B2.[jornada]
	  ,B2.[nomb_carrera]
	  ,B2.TIPO_INST_2
	   ,B2.nivel_global
from [Rend_Acad_Estud].[dbo].[Rend_Anho_2002] as B1 inner join
     Tit_Edu_Sup.dbo.Tit_Anho_2011 as B2 on B1.MRUN = B2.MRUN
where B1.SIT_FIN = 'P'  and B2.AÑO_ING_CARR >=2002 and B2.AÑO_ING_CARR < 2022 and B1.COD_ENSE in (310, 360) and B1.COD_GRADO = 4
order by B1.MRUN
go

insert into #Base_Analitica_Taller_Estad
select B1.AGNO 
      ,B1.MRUN
	  ,B1.GEN_ALU
	  ,B1.[FEC_NAC_ALU]
	  ,B1.[COD_DEPE]
      ,B1.[PROM_GRAL]
      ,B1.[ASISTENCIA]
      ,B1.[SIT_FIN]
      ,B1.[SIT_FIN_R]  
	  ,B2.AÑO_ING_CARR
	  ,B2.[dur_estudio_carr]
      ,B2.[dur_proceso_tit]
      ,B2.[dur_total_carr]
	  ,B2.FECHA_OBTENCION_TITULO
	  ,B2.[jornada]
	  ,B2.[nomb_carrera]
	  ,B2.TIPO_INST_2
	   ,B2.nivel_global
from [Rend_Acad_Estud].[dbo].[Rend_Anho_2002] as B1 inner join
     Tit_Edu_Sup.dbo.Tit_Anho_2012 as B2 on B1.MRUN = B2.MRUN
where B1.SIT_FIN = 'P'  and B2.AÑO_ING_CARR >=2002 and B2.AÑO_ING_CARR < 2022 and B1.COD_ENSE in (310, 360) and B1.COD_GRADO = 4
order by B1.MRUN
go

insert into #Base_Analitica_Taller_Estad
select B1.AGNO 
      ,B1.MRUN
	  ,B1.GEN_ALU
	  ,B1.[FEC_NAC_ALU]
	  ,B1.[COD_DEPE]
      ,B1.[PROM_GRAL]
      ,B1.[ASISTENCIA]
      ,B1.[SIT_FIN]
      ,B1.[SIT_FIN_R]  
	  ,B2.AÑO_ING_CARR
	  ,B2.[dur_estudio_carr]
      ,B2.[dur_proceso_tit]
      ,B2.[dur_total_carr]
	  ,B2.FECHA_OBTENCION_TITULO
	  ,B2.[jornada]
	  ,B2.[nomb_carrera]
	  ,B2.TIPO_INST_2
	   ,B2.nivel_global
from [Rend_Acad_Estud].[dbo].[Rend_Anho_2002] as B1 inner join
     Tit_Edu_Sup.dbo.Tit_Anho_2013 as B2 on B1.MRUN = B2.MRUN
where B1.SIT_FIN = 'P'  and B2.AÑO_ING_CARR >=2002 and B2.AÑO_ING_CARR < 2022 and B1.COD_ENSE in (310, 360) and B1.COD_GRADO = 4
order by B1.MRUN
go

insert into #Base_Analitica_Taller_Estad
select B1.AGNO 
      ,B1.MRUN
	  ,B1.GEN_ALU
	  ,B1.[FEC_NAC_ALU]
	  ,B1.[COD_DEPE]
      ,B1.[PROM_GRAL]
      ,B1.[ASISTENCIA]
      ,B1.[SIT_FIN]
      ,B1.[SIT_FIN_R]  
	  ,B2.AÑO_ING_CARR
	  ,B2.[dur_estudio_carr]
      ,B2.[dur_proceso_tit]
      ,B2.[dur_total_carr]
	  ,B2.FECHA_OBTENCION_TITULO
	  ,B2.[jornada]
	  ,B2.[nomb_carrera]
	  ,B2.TIPO_INST_2
	   ,B2.nivel_global
from [Rend_Acad_Estud].[dbo].[Rend_Anho_2002] as B1 inner join
     Tit_Edu_Sup.dbo.Tit_Anho_2014 as B2 on B1.MRUN = B2.MRUN
where B1.SIT_FIN = 'P'  and B2.AÑO_ING_CARR >=2002 and B2.AÑO_ING_CARR < 2022 and B1.COD_ENSE in (310, 360) and B1.COD_GRADO = 4
order by B1.MRUN
go

insert into #Base_Analitica_Taller_Estad
select B1.AGNO 
      ,B1.MRUN
	  ,B1.GEN_ALU
	  ,B1.[FEC_NAC_ALU]
	  ,B1.[COD_DEPE]
      ,B1.[PROM_GRAL]
      ,B1.[ASISTENCIA]
      ,B1.[SIT_FIN]
      ,B1.[SIT_FIN_R]  
	  ,B2.AÑO_ING_CARR
	  ,B2.[dur_estudio_carr]
      ,B2.[dur_proceso_tit]
      ,B2.[dur_total_carr]
	  ,B2.FECHA_OBTENCION_TITULO
	  ,B2.[jornada]
	  ,B2.[nomb_carrera]
	  ,B2.TIPO_INST_2
	   ,B2.nivel_global
from [Rend_Acad_Estud].[dbo].[Rend_Anho_2002] as B1 inner join
     Tit_Edu_Sup.dbo.Tit_Anho_2015 as B2 on B1.MRUN = B2.MRUN
where B1.SIT_FIN = 'P'  and B2.AÑO_ING_CARR >=2002 and B2.AÑO_ING_CARR < 2022 and B1.COD_ENSE in (310, 360) and B1.COD_GRADO = 4
order by B1.MRUN
go

insert into #Base_Analitica_Taller_Estad
select B1.AGNO 
      ,B1.MRUN
	  ,B1.GEN_ALU
	  ,B1.[FEC_NAC_ALU]
	  ,B1.[COD_DEPE]
      ,B1.[PROM_GRAL]
      ,B1.[ASISTENCIA]
      ,B1.[SIT_FIN]
      ,B1.[SIT_FIN_R]  
	  ,B2.AÑO_ING_CARR
	  ,B2.[dur_estudio_carr]
      ,B2.[dur_proceso_tit]
      ,B2.[dur_total_carr]
	  ,B2.FECHA_OBTENCION_TITULO
	  ,B2.[jornada]
	  ,B2.[nomb_carrera]
	  ,B2.TIPO_INST_2
	   ,B2.nivel_global
from [Rend_Acad_Estud].[dbo].[Rend_Anho_2002] as B1 inner join
     Tit_Edu_Sup.dbo.Tit_Anho_2016 as B2 on B1.MRUN = B2.MRUN
where B1.SIT_FIN = 'P'  and B2.AÑO_ING_CARR >=2002 and B2.AÑO_ING_CARR < 2022 and B1.COD_ENSE in (310, 360) and B1.COD_GRADO = 4
order by B1.MRUN
go

insert into #Base_Analitica_Taller_Estad
select B1.AGNO 
      ,B1.MRUN
	  ,B1.GEN_ALU
	  ,B1.[FEC_NAC_ALU]
	  ,B1.[COD_DEPE]
      ,B1.[PROM_GRAL]
      ,B1.[ASISTENCIA]
      ,B1.[SIT_FIN]
      ,B1.[SIT_FIN_R]  
	  ,B2.AÑO_ING_CARR
	  ,B2.[dur_estudio_carr]
      ,B2.[dur_proceso_tit]
      ,B2.[dur_total_carr]
	  ,B2.FECHA_OBTENCION_TITULO
	  ,B2.[jornada]
	  ,B2.[nomb_carrera]
	  ,B2.TIPO_INST_2
	   ,B2.nivel_global
from [Rend_Acad_Estud].[dbo].[Rend_Anho_2002] as B1 inner join
     Tit_Edu_Sup.dbo.Tit_Anho_2017 as B2 on B1.MRUN = B2.MRUN
where B1.SIT_FIN = 'P'  and B2.AÑO_ING_CARR >=2002 and B2.AÑO_ING_CARR < 2022 and B1.COD_ENSE in (310, 360) and B1.COD_GRADO = 4
order by B1.MRUN
go

insert into #Base_Analitica_Taller_Estad
select B1.AGNO 
      ,B1.MRUN
	  ,B1.GEN_ALU
	  ,B1.[FEC_NAC_ALU]
	  ,B1.[COD_DEPE]
      ,B1.[PROM_GRAL]
      ,B1.[ASISTENCIA]
      ,B1.[SIT_FIN]
      ,B1.[SIT_FIN_R]  
	  ,B2.AÑO_ING_CARR
	  ,B2.[dur_estudio_carr]
      ,B2.[dur_proceso_tit]
      ,B2.[dur_total_carr]
	  ,B2.FECHA_OBTENCION_TITULO
	  ,B2.[jornada]
	  ,B2.[nomb_carrera]
	  ,B2.TIPO_INST_2
	   ,B2.nivel_global
from [Rend_Acad_Estud].[dbo].[Rend_Anho_2002] as B1 inner join
     Tit_Edu_Sup.dbo.Tit_Anho_2018 as B2 on B1.MRUN = B2.MRUN
where B1.SIT_FIN = 'P'  and B2.AÑO_ING_CARR >=2002 and B2.AÑO_ING_CARR < 2022 and B1.COD_ENSE in (310, 360) and B1.COD_GRADO = 4
order by B1.MRUN
go

insert into #Base_Analitica_Taller_Estad
select B1.AGNO 
      ,B1.MRUN
	  ,B1.GEN_ALU
	  ,B1.[FEC_NAC_ALU]
	  ,B1.[COD_DEPE]
      ,B1.[PROM_GRAL]
      ,B1.[ASISTENCIA]
      ,B1.[SIT_FIN]
      ,B1.[SIT_FIN_R]  
	  ,B2.AÑO_ING_CARR
	  ,B2.[dur_estudio_carr]
      ,B2.[dur_proceso_tit]
      ,B2.[dur_total_carr]
	  ,B2.FECHA_OBTENCION_TITULO
	  ,B2.[jornada]
	  ,B2.[nomb_carrera]
	  ,B2.TIPO_INST_2
	   ,B2.nivel_global
from [Rend_Acad_Estud].[dbo].[Rend_Anho_2002] as B1 inner join
     Tit_Edu_Sup.dbo.Tit_Anho_2019 as B2 on B1.MRUN = B2.MRUN
where B1.SIT_FIN = 'P'  and B2.AÑO_ING_CARR >=2002 and B2.AÑO_ING_CARR < 2022 and B1.COD_ENSE in (310, 360) and B1.COD_GRADO = 4
order by B1.MRUN
go

insert into #Base_Analitica_Taller_Estad
select B1.AGNO 
      ,B1.MRUN
	  ,B1.GEN_ALU
	  ,B1.[FEC_NAC_ALU]
	  ,B1.[COD_DEPE]
      ,B1.[PROM_GRAL]
      ,B1.[ASISTENCIA]
      ,B1.[SIT_FIN]
      ,B1.[SIT_FIN_R]  
	  ,B2.AÑO_ING_CARR
	  ,B2.[dur_estudio_carr]
      ,B2.[dur_proceso_tit]
      ,B2.[dur_total_carr]
	  ,B2.FECHA_OBTENCION_TITULO
	  ,B2.[jornada]
	  ,B2.[nomb_carrera]
	  ,B2.TIPO_INST_2
	   ,B2.nivel_global
from [Rend_Acad_Estud].[dbo].[Rend_Anho_2002] as B1 inner join
     Tit_Edu_Sup.dbo.Tit_Anho_2020 as B2 on B1.MRUN = B2.MRUN
where B1.SIT_FIN = 'P'  and B2.AÑO_ING_CARR >=2002 and B2.AÑO_ING_CARR < 2022 and B1.COD_ENSE in (310, 360) and B1.COD_GRADO = 4
order by B1.MRUN
go

select count(distinct MRUN), count(*) from #Base_Analitica_Taller_Estad
where NIVEL_GLOBAL = 'PREGRADO' and AGNO <= AÑO_ING_CARR

select * from #Base_Analitica_Taller_Estad
where NIVEL_GLOBAL = 'PREGRADO' and AGNO <= AÑO_ING_CARR
order by MRUN, AÑO_ING_CARR

alter table #Base_Analitica_Taller_Estad add anho_sab numeric

update #Base_Analitica_Taller_Estad set
anho_sab = AÑO_ING_CARR - AGNO
from #Base_Analitica_Taller_Estad

alter table #Base_Analitica_Taller_Estad add Tiempo float

update #Base_Analitica_Taller_Estad set
Tiempo = FECHA_OBTENCION_TITULO/10000 - AÑO_ING_CARR
from #Base_Analitica_Taller_Estad

alter table #Base_Analitica_Taller_Estad add log_tiempo float

update #Base_Analitica_Taller_Estad set
log_tiempo = log(Tiempo + 2)
from #Base_Analitica_Taller_Estad

select COD_DEPE, min(log_tiempo) as min, max(log_tiempo) as max, avg(log_tiempo) as Media, count(*) as N from #Base_Analitica_Taller_Estad
where NIVEL_GLOBAL = 'PREGRADO' and AGNO <= AÑO_ING_CARR
group by COD_DEPE
order by COD_DEPE