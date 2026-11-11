/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2016                    */
/* Created on:     2/11/2026 20:24:15                           */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FICAS_CARSE') and o.name = 'FK_CUE_CAS')
alter table FICAS_CARSE
   drop constraint FK_CUE_CAS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FICAS_CARSE') and o.name = 'FK_SER_CAS')
alter table FICAS_CARSE
   drop constraint FK_SER_CAS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FICUE_CUENT') and o.name = 'FK_EPI_CUE')
alter table FICUE_CUENT
   drop constraint FK_EPI_CUE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FICUE_CUENT') and o.name = 'FK_PAC_CUE')
alter table FICUE_CUENT
   drop constraint FK_PAC_CUE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FIDFA_DETFA') and o.name = 'FK_CAS_DFA')
alter table FIDFA_DETFA
   drop constraint FK_CAS_DFA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FIDFA_DETFA') and o.name = 'FK_FAC_DFA')
alter table FIDFA_DETFA
   drop constraint FK_FAC_DFA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FIFAC_FACTU') and o.name = 'FK_CUE_FAC')
alter table FIFAC_FACTU
   drop constraint FK_CUE_FAC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FIPAG_PAGO') and o.name = 'FK_FAC_PAG')
alter table FIPAG_PAGO
   drop constraint FK_FAC_PAG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FIPAG_PAGO') and o.name = 'FK_USU_PAG')
alter table FIPAG_PAGO
   drop constraint FK_USU_PAG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHADM_ADMIS') and o.name = 'FK_CIT_ADM')
alter table GHADM_ADMIS
   drop constraint FK_CIT_ADM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHADM_ADMIS') and o.name = 'FK_PAC_ADM')
alter table GHADM_ADMIS
   drop constraint FK_PAC_ADM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHAGE_AGEND') and o.name = 'FK_ESP_AGE')
alter table GHAGE_AGEND
   drop constraint FK_ESP_AGE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHAGE_AGEND') and o.name = 'FK_PRO_AGE')
alter table GHAGE_AGEND
   drop constraint FK_PRO_AGE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHALE_ALERG') and o.name = 'FK_HIS_ALE')
alter table GHALE_ALERG
   drop constraint FK_HIS_ALE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHALT_ALTA') and o.name = 'FK_HOS_ALT')
alter table GHALT_ALTA
   drop constraint FK_HOS_ALT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHCAM_CAMA') and o.name = 'FK_HAB_CAM')
alter table GHCAM_CAMA
   drop constraint FK_HAB_CAM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHCIR_CIRUG') and o.name = 'FK_EPI_CIR')
alter table GHCIR_CIRUG
   drop constraint FK_EPI_CIR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHCIR_CIRUG') and o.name = 'FK_PRO_CIR')
alter table GHCIR_CIRUG
   drop constraint FK_PRO_CIR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHCIR_CIRUG') and o.name = 'FK_QUI_CIR')
alter table GHCIR_CIRUG
   drop constraint FK_QUI_CIR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHCIT_CITA') and o.name = 'FK_AGE_CIT')
alter table GHCIT_CITA
   drop constraint FK_AGE_CIT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHCIT_CITA') and o.name = 'FK_PAC_CIT')
alter table GHCIT_CITA
   drop constraint FK_PAC_CIT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHCON_CONTA') and o.name = 'FK_PAC_CON')
alter table GHCON_CONTA
   drop constraint FK_PAC_CON
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHDIA_DIAGN') and o.name = 'FK_EPI_DIA')
alter table GHDIA_DIAGN
   drop constraint FK_EPI_DIA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHDIS_DISPE') and o.name = 'FK_DPR_DIS')
alter table GHDIS_DISPE
   drop constraint FK_DPR_DIS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHDIS_DISPE') and o.name = 'FK_LOT_DIS')
alter table GHDIS_DISPE
   drop constraint FK_LOT_DIS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHDOC_DOCUM') and o.name = 'FK_EPI_DOC')
alter table GHDOC_DOCUM
   drop constraint FK_EPI_DOC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHDPR_DETPR') and o.name = 'FK_MED_DPR')
alter table GHDPR_DETPR
   drop constraint FK_MED_DPR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHDPR_DETPR') and o.name = 'FK_PRE_DPR')
alter table GHDPR_DETPR
   drop constraint FK_PRE_DPR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHDSO_DETSO') and o.name = 'FK_EXA_DSO')
alter table GHDSO_DETSO
   drop constraint FK_EXA_DSO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHDSO_DETSO') and o.name = 'FK_SOL_DSO')
alter table GHDSO_DETSO
   drop constraint FK_SOL_DSO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHEPI_EPISO') and o.name = 'FK_ADM_EPI')
alter table GHEPI_EPISO
   drop constraint FK_ADM_EPI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHEPI_EPISO') and o.name = 'FK_HIS_EPI')
alter table GHEPI_EPISO
   drop constraint FK_HIS_EPI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHEPI_EPISO') and o.name = 'FK_PRO_EPI')
alter table GHEPI_EPISO
   drop constraint FK_PRO_EPI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHEST_ESTUD') and o.name = 'FK_EPI_ETI')
alter table GHEST_ESTUD
   drop constraint FK_EPI_ETI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHHIS_HISTO') and o.name = 'FK_PAC_HIS')
alter table GHHIS_HISTO
   drop constraint FK_PAC_HIS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHHOS_HOSPI') and o.name = 'FK_CAM_HOS')
alter table GHHOS_HOSPI
   drop constraint FK_CAM_HOS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHHOS_HOSPI') and o.name = 'FK_EPI_HOS')
alter table GHHOS_HOSPI
   drop constraint FK_EPI_HOS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHINF_INFOR') and o.name = 'FK_ETI_INF')
alter table GHINF_INFOR
   drop constraint FK_ETI_INF
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHLOT_LOTE') and o.name = 'FK_MED_LOT')
alter table GHLOT_LOTE
   drop constraint FK_MED_LOT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHMOV_MOVIM') and o.name = 'FK_LOT_MOV')
alter table GHMOV_MOVIM
   drop constraint FK_LOT_MOV
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHMOV_MOVIM') and o.name = 'FK_USU_MOV')
alter table GHMOV_MOVIM
   drop constraint FK_USU_MOV
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHNOT_NOTA') and o.name = 'FK_EPI_NOT')
alter table GHNOT_NOTA
   drop constraint FK_EPI_NOT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHNOT_NOTA') and o.name = 'FK_PRO_NOT')
alter table GHNOT_NOTA
   drop constraint FK_PRO_NOT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHPRE_PRESC') and o.name = 'FK_EPI_PRE')
alter table GHPRE_PRESC
   drop constraint FK_EPI_PRE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHPRE_PRESC') and o.name = 'FK_PRO_PRE')
alter table GHPRE_PRESC
   drop constraint FK_PRO_PRE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHRES_RESUL') and o.name = 'FK_EXA_RES')
alter table GHRES_RESUL
   drop constraint FK_EXA_RES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHRES_RESUL') and o.name = 'FK_SOL_RES')
alter table GHRES_RESUL
   drop constraint FK_SOL_RES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHSIG_SIGNO') and o.name = 'FK_EPI_SIG')
alter table GHSIG_SIGNO
   drop constraint FK_EPI_SIG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHSOL_SOLIC') and o.name = 'FK_EPI_SOL')
alter table GHSOL_SOLIC
   drop constraint FK_EPI_SOL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHSOL_SOLIC') and o.name = 'FK_PRO_SOL')
alter table GHSOL_SOLIC
   drop constraint FK_PRO_SOL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHTRA_TRASL') and o.name = 'FK_CAM_TRA')
alter table GHTRA_TRASL
   drop constraint FK_CAM_TRA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GHTRA_TRASL') and o.name = 'FK_HOS_TRA')
alter table GHTRA_TRASL
   drop constraint FK_HOS_TRA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PECAR_CARGO') and o.name = 'FK_DEP_CAR')
alter table PECAR_CARGO
   drop constraint FK_DEP_CAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PEPER_PERSO') and o.name = 'FK_CAR_PRS')
alter table PEPER_PERSO
   drop constraint FK_CAR_PRS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PEPER_PERSO') and o.name = 'FK_ESC_PRS')
alter table PEPER_PERSO
   drop constraint FK_ESC_PRS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PEPER_PERSO') and o.name = 'FK_GEN_PRS')
alter table PEPER_PERSO
   drop constraint FK_GEN_PRS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PEPRO_PROFE') and o.name = 'FK_PRS_PRO')
alter table PEPRO_PROFE
   drop constraint FK_PRS_PRO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PEPXE_PROES') and o.name = 'FK_ESP_PXE')
alter table PEPXE_PROES
   drop constraint FK_ESP_PXE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PEPXE_PROES') and o.name = 'FK_PRO_PXE')
alter table PEPXE_PROES
   drop constraint FK_PRO_PXE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('XEAUD_AUDIT') and o.name = 'FK_USU_AUD')
alter table XEAUD_AUDIT
   drop constraint FK_USU_AUD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('XEOPC_OPCIO') and o.name = 'FK_SIS_OPC')
alter table XEOPC_OPCIO
   drop constraint FK_SIS_OPC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('XEOXP_OPCPE') and o.name = 'FK_OPC_OXP')
alter table XEOXP_OPCPE
   drop constraint FK_OPC_OXP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('XEOXP_OPCPE') and o.name = 'FK_PER_OXP')
alter table XEOXP_OPCPE
   drop constraint FK_PER_OXP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('XESES_SESIO') and o.name = 'FK_USU_SES')
alter table XESES_SESIO
   drop constraint FK_USU_SES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('XEUSU_USUAR') and o.name = 'FK_EST_USU')
alter table XEUSU_USUAR
   drop constraint FK_EST_USU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('XEUSU_USUAR') and o.name = 'FK_PRS_USU')
alter table XEUSU_USUAR
   drop constraint FK_PRS_USU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('XEUXP_USUPE') and o.name = 'FK_PER_UXP')
alter table XEUXP_USUPE
   drop constraint FK_PER_UXP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('XEUXP_USUPE') and o.name = 'FK_USU_UXP')
alter table XEUXP_USUPE
   drop constraint FK_USU_UXP
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FICAS_CARSE')
            and   name  = 'FK_SER_CAS_FK'
            and   indid > 0
            and   indid < 255)
   drop index FICAS_CARSE.FK_SER_CAS_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FICAS_CARSE')
            and   name  = 'FK_CUE_CAS_FK'
            and   indid > 0
            and   indid < 255)
   drop index FICAS_CARSE.FK_CUE_CAS_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FICAS_CARSE')
            and   type = 'U')
   drop table FICAS_CARSE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FICUE_CUENT')
            and   name  = 'FK_EPI_CUE_FK'
            and   indid > 0
            and   indid < 255)
   drop index FICUE_CUENT.FK_EPI_CUE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FICUE_CUENT')
            and   name  = 'FK_PAC_CUE_FK'
            and   indid > 0
            and   indid < 255)
   drop index FICUE_CUENT.FK_PAC_CUE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FICUE_CUENT')
            and   type = 'U')
   drop table FICUE_CUENT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FIDFA_DETFA')
            and   name  = 'FK_CAS_DFA_FK'
            and   indid > 0
            and   indid < 255)
   drop index FIDFA_DETFA.FK_CAS_DFA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FIDFA_DETFA')
            and   name  = 'FK_FAC_DFA_FK'
            and   indid > 0
            and   indid < 255)
   drop index FIDFA_DETFA.FK_FAC_DFA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FIDFA_DETFA')
            and   type = 'U')
   drop table FIDFA_DETFA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FIFAC_FACTU')
            and   name  = 'FK_CUE_FAC_FK'
            and   indid > 0
            and   indid < 255)
   drop index FIFAC_FACTU.FK_CUE_FAC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FIFAC_FACTU')
            and   type = 'U')
   drop table FIFAC_FACTU
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FIPAG_PAGO')
            and   name  = 'FK_USU_PAG_FK'
            and   indid > 0
            and   indid < 255)
   drop index FIPAG_PAGO.FK_USU_PAG_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FIPAG_PAGO')
            and   name  = 'FK_FAC_PAG_FK'
            and   indid > 0
            and   indid < 255)
   drop index FIPAG_PAGO.FK_FAC_PAG_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FIPAG_PAGO')
            and   type = 'U')
   drop table FIPAG_PAGO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FISER_SERVI')
            and   type = 'U')
   drop table FISER_SERVI
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHADM_ADMIS')
            and   name  = 'FK_CIT_ADM_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHADM_ADMIS.FK_CIT_ADM_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHADM_ADMIS')
            and   name  = 'FK_PAC_ADM_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHADM_ADMIS.FK_PAC_ADM_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHADM_ADMIS')
            and   type = 'U')
   drop table GHADM_ADMIS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHAGE_AGEND')
            and   name  = 'FK_ESP_AGE_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHAGE_AGEND.FK_ESP_AGE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHAGE_AGEND')
            and   name  = 'FK_PRO_AGE_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHAGE_AGEND.FK_PRO_AGE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHAGE_AGEND')
            and   type = 'U')
   drop table GHAGE_AGEND
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHALE_ALERG')
            and   name  = 'FK_HIS_ALE_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHALE_ALERG.FK_HIS_ALE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHALE_ALERG')
            and   type = 'U')
   drop table GHALE_ALERG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHALT_ALTA')
            and   name  = 'FK_HOS_ALT_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHALT_ALTA.FK_HOS_ALT_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHALT_ALTA')
            and   type = 'U')
   drop table GHALT_ALTA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHCAM_CAMA')
            and   name  = 'FK_HAB_CAM_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHCAM_CAMA.FK_HAB_CAM_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHCAM_CAMA')
            and   type = 'U')
   drop table GHCAM_CAMA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHCIR_CIRUG')
            and   name  = 'FK_PRO_CIR_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHCIR_CIRUG.FK_PRO_CIR_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHCIR_CIRUG')
            and   name  = 'FK_QUI_CIR_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHCIR_CIRUG.FK_QUI_CIR_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHCIR_CIRUG')
            and   name  = 'FK_EPI_CIR_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHCIR_CIRUG.FK_EPI_CIR_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHCIR_CIRUG')
            and   type = 'U')
   drop table GHCIR_CIRUG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHCIT_CITA')
            and   name  = 'FK_PAC_CIT_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHCIT_CITA.FK_PAC_CIT_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHCIT_CITA')
            and   name  = 'FK_AGE_CIT_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHCIT_CITA.FK_AGE_CIT_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHCIT_CITA')
            and   type = 'U')
   drop table GHCIT_CITA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHCON_CONTA')
            and   name  = 'FK_PAC_CON_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHCON_CONTA.FK_PAC_CON_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHCON_CONTA')
            and   type = 'U')
   drop table GHCON_CONTA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHDIA_DIAGN')
            and   name  = 'FK_EPI_DIA_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHDIA_DIAGN.FK_EPI_DIA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHDIA_DIAGN')
            and   type = 'U')
   drop table GHDIA_DIAGN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHDIS_DISPE')
            and   name  = 'FK_LOT_DIS_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHDIS_DISPE.FK_LOT_DIS_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHDIS_DISPE')
            and   name  = 'FK_DPR_DIS_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHDIS_DISPE.FK_DPR_DIS_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHDIS_DISPE')
            and   type = 'U')
   drop table GHDIS_DISPE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHDOC_DOCUM')
            and   name  = 'FK_EPI_DOC_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHDOC_DOCUM.FK_EPI_DOC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHDOC_DOCUM')
            and   type = 'U')
   drop table GHDOC_DOCUM
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHDPR_DETPR')
            and   name  = 'FK_MED_DPR_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHDPR_DETPR.FK_MED_DPR_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHDPR_DETPR')
            and   name  = 'FK_PRE_DPR_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHDPR_DETPR.FK_PRE_DPR_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHDPR_DETPR')
            and   type = 'U')
   drop table GHDPR_DETPR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHDSO_DETSO')
            and   name  = 'FK_EXA_DSO_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHDSO_DETSO.FK_EXA_DSO_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHDSO_DETSO')
            and   name  = 'FK_SOL_DSO_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHDSO_DETSO.FK_SOL_DSO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHDSO_DETSO')
            and   type = 'U')
   drop table GHDSO_DETSO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHEPI_EPISO')
            and   name  = 'FK_PRO_EPI_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHEPI_EPISO.FK_PRO_EPI_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHEPI_EPISO')
            and   name  = 'FK_ADM_EPI_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHEPI_EPISO.FK_ADM_EPI_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHEPI_EPISO')
            and   name  = 'FK_HIS_EPI_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHEPI_EPISO.FK_HIS_EPI_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHEPI_EPISO')
            and   type = 'U')
   drop table GHEPI_EPISO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHEST_ESTUD')
            and   name  = 'FK_EPI_ETI_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHEST_ESTUD.FK_EPI_ETI_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHEST_ESTUD')
            and   type = 'U')
   drop table GHEST_ESTUD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHEXA_EXAME')
            and   type = 'U')
   drop table GHEXA_EXAME
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHHAB_HABIT')
            and   type = 'U')
   drop table GHHAB_HABIT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHHIS_HISTO')
            and   name  = 'FK_PAC_HIS_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHHIS_HISTO.FK_PAC_HIS_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHHIS_HISTO')
            and   type = 'U')
   drop table GHHIS_HISTO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHHOS_HOSPI')
            and   name  = 'FK_CAM_HOS_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHHOS_HOSPI.FK_CAM_HOS_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHHOS_HOSPI')
            and   name  = 'FK_EPI_HOS_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHHOS_HOSPI.FK_EPI_HOS_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHHOS_HOSPI')
            and   type = 'U')
   drop table GHHOS_HOSPI
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHINF_INFOR')
            and   name  = 'FK_ETI_INF_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHINF_INFOR.FK_ETI_INF_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHINF_INFOR')
            and   type = 'U')
   drop table GHINF_INFOR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHLOT_LOTE')
            and   name  = 'FK_MED_LOT_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHLOT_LOTE.FK_MED_LOT_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHLOT_LOTE')
            and   type = 'U')
   drop table GHLOT_LOTE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHMED_MEDIC')
            and   type = 'U')
   drop table GHMED_MEDIC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHMOV_MOVIM')
            and   name  = 'FK_USU_MOV_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHMOV_MOVIM.FK_USU_MOV_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHMOV_MOVIM')
            and   name  = 'FK_LOT_MOV_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHMOV_MOVIM.FK_LOT_MOV_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHMOV_MOVIM')
            and   type = 'U')
   drop table GHMOV_MOVIM
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHNOT_NOTA')
            and   name  = 'FK_PRO_NOT_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHNOT_NOTA.FK_PRO_NOT_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHNOT_NOTA')
            and   name  = 'FK_EPI_NOT_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHNOT_NOTA.FK_EPI_NOT_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHNOT_NOTA')
            and   type = 'U')
   drop table GHNOT_NOTA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHPAC_PACIE')
            and   type = 'U')
   drop table GHPAC_PACIE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHPRE_PRESC')
            and   name  = 'FK_PRO_PRE_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHPRE_PRESC.FK_PRO_PRE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHPRE_PRESC')
            and   name  = 'FK_EPI_PRE_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHPRE_PRESC.FK_EPI_PRE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHPRE_PRESC')
            and   type = 'U')
   drop table GHPRE_PRESC
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHQUI_QUIRO')
            and   type = 'U')
   drop table GHQUI_QUIRO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHRES_RESUL')
            and   name  = 'FK_EXA_RES_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHRES_RESUL.FK_EXA_RES_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHRES_RESUL')
            and   name  = 'FK_SOL_RES_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHRES_RESUL.FK_SOL_RES_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHRES_RESUL')
            and   type = 'U')
   drop table GHRES_RESUL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHSIG_SIGNO')
            and   name  = 'FK_EPI_SIG_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHSIG_SIGNO.FK_EPI_SIG_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHSIG_SIGNO')
            and   type = 'U')
   drop table GHSIG_SIGNO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHSOL_SOLIC')
            and   name  = 'FK_PRO_SOL_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHSOL_SOLIC.FK_PRO_SOL_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHSOL_SOLIC')
            and   name  = 'FK_EPI_SOL_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHSOL_SOLIC.FK_EPI_SOL_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHSOL_SOLIC')
            and   type = 'U')
   drop table GHSOL_SOLIC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHTRA_TRASL')
            and   name  = 'FK_CAM_TRA_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHTRA_TRASL.FK_CAM_TRA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GHTRA_TRASL')
            and   name  = 'FK_HOS_TRA_FK'
            and   indid > 0
            and   indid < 255)
   drop index GHTRA_TRASL.FK_HOS_TRA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GHTRA_TRASL')
            and   type = 'U')
   drop table GHTRA_TRASL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PECAR_CARGO')
            and   name  = 'FK_DEP_CAR_FK'
            and   indid > 0
            and   indid < 255)
   drop index PECAR_CARGO.FK_DEP_CAR_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PECAR_CARGO')
            and   type = 'U')
   drop table PECAR_CARGO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PEDEP_DEPAR')
            and   type = 'U')
   drop table PEDEP_DEPAR
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PEESC_ESTCI')
            and   type = 'U')
   drop table PEESC_ESTCI
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PEESP_ESPEC')
            and   type = 'U')
   drop table PEESP_ESPEC
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PEGEN_GENER')
            and   type = 'U')
   drop table PEGEN_GENER
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PEPER_PERSO')
            and   name  = 'FK_CAR_PRS_FK'
            and   indid > 0
            and   indid < 255)
   drop index PEPER_PERSO.FK_CAR_PRS_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PEPER_PERSO')
            and   name  = 'FK_ESC_PRS_FK'
            and   indid > 0
            and   indid < 255)
   drop index PEPER_PERSO.FK_ESC_PRS_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PEPER_PERSO')
            and   name  = 'FK_GEN_PRS_FK'
            and   indid > 0
            and   indid < 255)
   drop index PEPER_PERSO.FK_GEN_PRS_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PEPER_PERSO')
            and   type = 'U')
   drop table PEPER_PERSO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PEPRO_PROFE')
            and   name  = 'FK_PRS_PRO_FK'
            and   indid > 0
            and   indid < 255)
   drop index PEPRO_PROFE.FK_PRS_PRO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PEPRO_PROFE')
            and   type = 'U')
   drop table PEPRO_PROFE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PEPXE_PROES')
            and   name  = 'FK_ESP_PXE_FK'
            and   indid > 0
            and   indid < 255)
   drop index PEPXE_PROES.FK_ESP_PXE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PEPXE_PROES')
            and   name  = 'FK_PRO_PXE_FK'
            and   indid > 0
            and   indid < 255)
   drop index PEPXE_PROES.FK_PRO_PXE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PEPXE_PROES')
            and   type = 'U')
   drop table PEPXE_PROES
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('XEAUD_AUDIT')
            and   name  = 'FK_USU_AUD_FK'
            and   indid > 0
            and   indid < 255)
   drop index XEAUD_AUDIT.FK_USU_AUD_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('XEAUD_AUDIT')
            and   type = 'U')
   drop table XEAUD_AUDIT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('XEEST_ESTAD')
            and   type = 'U')
   drop table XEEST_ESTAD
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('XEOPC_OPCIO')
            and   name  = 'FK_SIS_OPC_FK'
            and   indid > 0
            and   indid < 255)
   drop index XEOPC_OPCIO.FK_SIS_OPC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('XEOPC_OPCIO')
            and   type = 'U')
   drop table XEOPC_OPCIO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('XEOXP_OPCPE')
            and   name  = 'FK_OPC_OXP_FK'
            and   indid > 0
            and   indid < 255)
   drop index XEOXP_OPCPE.FK_OPC_OXP_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('XEOXP_OPCPE')
            and   name  = 'FK_PER_OXP_FK'
            and   indid > 0
            and   indid < 255)
   drop index XEOXP_OPCPE.FK_PER_OXP_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('XEOXP_OPCPE')
            and   type = 'U')
   drop table XEOXP_OPCPE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('XEPAR_PARAM')
            and   type = 'U')
   drop table XEPAR_PARAM
go

if exists (select 1
            from  sysobjects
           where  id = object_id('XEPER_PERFI')
            and   type = 'U')
   drop table XEPER_PERFI
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('XESES_SESIO')
            and   name  = 'FK_USU_SES_FK'
            and   indid > 0
            and   indid < 255)
   drop index XESES_SESIO.FK_USU_SES_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('XESES_SESIO')
            and   type = 'U')
   drop table XESES_SESIO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('XESIS_SISTE')
            and   type = 'U')
   drop table XESIS_SISTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('XEUSU_USUAR')
            and   name  = 'FK_EST_USU_FK'
            and   indid > 0
            and   indid < 255)
   drop index XEUSU_USUAR.FK_EST_USU_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('XEUSU_USUAR')
            and   name  = 'FK_PRS_USU_FK'
            and   indid > 0
            and   indid < 255)
   drop index XEUSU_USUAR.FK_PRS_USU_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('XEUSU_USUAR')
            and   type = 'U')
   drop table XEUSU_USUAR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('XEUXP_USUPE')
            and   name  = 'FK_PER_UXP_FK'
            and   indid > 0
            and   indid < 255)
   drop index XEUXP_USUPE.FK_PER_UXP_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('XEUXP_USUPE')
            and   name  = 'FK_USU_UXP_FK'
            and   indid > 0
            and   indid < 255)
   drop index XEUXP_USUPE.FK_USU_UXP_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('XEUXP_USUPE')
            and   type = 'U')
   drop table XEUXP_USUPE
go

/*==============================================================*/
/* Table: FICAS_CARSE                                           */
/*==============================================================*/
create table FICAS_CARSE (
   FICAS_CODIGO         int                  not null,
   FICUE_CODIGO         int                  not null,
   FISER_CODIGO         char(8)              not null,
   FICAS_CANTID         int                  not null,
   FICAS_VALUNI         decimal(10,2)        not null,
   FICAS_ORIGEN         varchar(50)          not null,
   FICAS_FECHA          datetime             not null,
   constraint PK_FICAS_CARSE primary key (FICAS_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('FICAS_CARSE') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'FICAS_CARSE' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Cargos generados por servicios o productos prestados.', 
   'user', @CurrentUser, 'table', 'FICAS_CARSE'
go

/*==============================================================*/
/* Index: FK_CUE_CAS_FK                                         */
/*==============================================================*/




create nonclustered index FK_CUE_CAS_FK on FICAS_CARSE (FICUE_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_SER_CAS_FK                                         */
/*==============================================================*/




create nonclustered index FK_SER_CAS_FK on FICAS_CARSE (FISER_CODIGO ASC)
go

/*==============================================================*/
/* Table: FICUE_CUENT                                           */
/*==============================================================*/
create table FICUE_CUENT (
   FICUE_CODIGO         int                  not null,
   GHPAC_CODIGO         int                  not null,
   GHEPI_CODIGO         int                  null,
   FICUE_FECAPE         datetime             not null,
   FICUE_SALDO          decimal(12,2)        not null,
   FICUE_ESTADO         varchar(15)          not null,
   constraint PK_FICUE_CUENT primary key (FICUE_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('FICUE_CUENT') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'FICUE_CUENT' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Cuenta de facturación del paciente.', 
   'user', @CurrentUser, 'table', 'FICUE_CUENT'
go

/*==============================================================*/
/* Index: FK_PAC_CUE_FK                                         */
/*==============================================================*/




create nonclustered index FK_PAC_CUE_FK on FICUE_CUENT (GHPAC_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_EPI_CUE_FK                                         */
/*==============================================================*/




create nonclustered index FK_EPI_CUE_FK on FICUE_CUENT (GHEPI_CODIGO ASC)
go

/*==============================================================*/
/* Table: FIDFA_DETFA                                           */
/*==============================================================*/
create table FIDFA_DETFA (
   FIDFA_CODIGO         int                  not null,
   FIFAC_CODIGO         int                  not null,
   FICAS_CODIGO         int                  not null,
   FIDFA_DESCRI         varchar(150)         not null,
   FIDFA_CANTID         int                  not null,
   FIDFA_VALUNI         decimal(10,2)        not null,
   FIDFA_VALTOT         decimal(12,2)        not null,
   constraint PK_FIDFA_DETFA primary key (FIDFA_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('FIDFA_DETFA') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'FIDFA_DETFA' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Líneas de una factura.', 
   'user', @CurrentUser, 'table', 'FIDFA_DETFA'
go

/*==============================================================*/
/* Index: FK_FAC_DFA_FK                                         */
/*==============================================================*/




create nonclustered index FK_FAC_DFA_FK on FIDFA_DETFA (FIFAC_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_CAS_DFA_FK                                         */
/*==============================================================*/




create nonclustered index FK_CAS_DFA_FK on FIDFA_DETFA (FICAS_CODIGO ASC)
go

/*==============================================================*/
/* Table: FIFAC_FACTU                                           */
/*==============================================================*/
create table FIFAC_FACTU (
   FIFAC_CODIGO         int                  not null,
   FICUE_CODIGO         int                  not null,
   FIFAC_NUMERO         varchar(20)          not null,
   FIFAC_FECEMI         datetime             not null,
   FIFAC_SUBTOT         decimal(12,2)        not null,
   FIFAC_DESCUE         decimal(12,2)        not null,
   FIFAC_IVA            decimal(12,2)        not null,
   FIFAC_TOTAL          decimal(12,2)        not null,
   FIFAC_ESTADO         varchar(15)          not null,
   constraint PK_FIFAC_FACTU primary key (FIFAC_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('FIFAC_FACTU') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'FIFAC_FACTU' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Documento de facturación.', 
   'user', @CurrentUser, 'table', 'FIFAC_FACTU'
go

/*==============================================================*/
/* Index: FK_CUE_FAC_FK                                         */
/*==============================================================*/




create nonclustered index FK_CUE_FAC_FK on FIFAC_FACTU (FICUE_CODIGO ASC)
go

/*==============================================================*/
/* Table: FIPAG_PAGO                                            */
/*==============================================================*/
create table FIPAG_PAGO (
   FIPAG_CODIGO         int                  not null,
   FIFAC_CODIGO         int                  not null,
   XEUSU_CODIGO         varchar(30)          not null,
   FIPAG_FECHA          datetime             not null,
   FIPAG_IMPORT         decimal(12,2)        not null,
   FIPAG_MEDPAG         varchar(20)          not null,
   FIPAG_ESTADO         varchar(15)          not null,
   constraint PK_FIPAG_PAGO primary key (FIPAG_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('FIPAG_PAGO') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'FIPAG_PAGO' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Pagos aplicados a una factura.', 
   'user', @CurrentUser, 'table', 'FIPAG_PAGO'
go

/*==============================================================*/
/* Index: FK_FAC_PAG_FK                                         */
/*==============================================================*/




create nonclustered index FK_FAC_PAG_FK on FIPAG_PAGO (FIFAC_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_USU_PAG_FK                                         */
/*==============================================================*/




create nonclustered index FK_USU_PAG_FK on FIPAG_PAGO (XEUSU_CODIGO ASC)
go

/*==============================================================*/
/* Table: FISER_SERVI                                           */
/*==============================================================*/
create table FISER_SERVI (
   FISER_CODIGO         char(8)              not null,
   FISER_DESCRI         varchar(150)         not null,
   FISER_TARIFA         decimal(10,2)        not null,
   FISER_VIGENT         bit                  not null,
   constraint PK_FISER_SERVI primary key (FISER_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('FISER_SERVI') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'FISER_SERVI' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Catálogo de servicios con tarifa.', 
   'user', @CurrentUser, 'table', 'FISER_SERVI'
go

/*==============================================================*/
/* Table: GHADM_ADMIS                                           */
/*==============================================================*/
create table GHADM_ADMIS (
   GHADM_CODIGO         int                  not null,
   GHPAC_CODIGO         int                  not null,
   GHCIT_CODIGO         int                  null,
   GHADM_FECHA          datetime             not null,
   GHADM_TIPATE         varchar(20)          not null,
   GHADM_SERVIC         varchar(50)          not null,
   GHADM_ESTADO         varchar(15)          not null,
   constraint PK_GHADM_ADMIS primary key (GHADM_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHADM_ADMIS') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHADM_ADMIS' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Ingreso administrativo del paciente para recibir atención.', 
   'user', @CurrentUser, 'table', 'GHADM_ADMIS'
go

/*==============================================================*/
/* Index: FK_PAC_ADM_FK                                         */
/*==============================================================*/




create nonclustered index FK_PAC_ADM_FK on GHADM_ADMIS (GHPAC_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_CIT_ADM_FK                                         */
/*==============================================================*/




create nonclustered index FK_CIT_ADM_FK on GHADM_ADMIS (GHCIT_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHAGE_AGEND                                           */
/*==============================================================*/
create table GHAGE_AGEND (
   GHAGE_CODIGO         int                  not null,
   PEPRO_CODIGO         int                  not null,
   PEESP_CODIGO         char(4)              not null,
   GHAGE_FECHA          datetime             not null,
   GHAGE_HORINI         varchar(5)           not null,
   GHAGE_HORFIN         varchar(5)           not null,
   GHAGE_DURCIT         int                  not null,
   GHAGE_ESTADO         char(1)              not null,
   constraint PK_GHAGE_AGEND primary key (GHAGE_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHAGE_AGEND') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHAGE_AGEND' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Agenda de atención de un profesional.', 
   'user', @CurrentUser, 'table', 'GHAGE_AGEND'
go

/*==============================================================*/
/* Index: FK_PRO_AGE_FK                                         */
/*==============================================================*/




create nonclustered index FK_PRO_AGE_FK on GHAGE_AGEND (PEPRO_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_ESP_AGE_FK                                         */
/*==============================================================*/




create nonclustered index FK_ESP_AGE_FK on GHAGE_AGEND (PEESP_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHALE_ALERG                                           */
/*==============================================================*/
create table GHALE_ALERG (
   GHALE_CODIGO         int                  not null,
   GHHIS_CODIGO         int                  not null,
   GHALE_SUSTAN         varchar(100)         not null,
   GHALE_REACCI         varchar(200)         null,
   GHALE_FUENTE         varchar(50)          not null,
   GHALE_ESTVER         varchar(15)          not null,
   constraint PK_GHALE_ALERG primary key (GHALE_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHALE_ALERG') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHALE_ALERG' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Alergias y reacciones adversas del paciente.', 
   'user', @CurrentUser, 'table', 'GHALE_ALERG'
go

/*==============================================================*/
/* Index: FK_HIS_ALE_FK                                         */
/*==============================================================*/




create nonclustered index FK_HIS_ALE_FK on GHALE_ALERG (GHHIS_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHALT_ALTA                                            */
/*==============================================================*/
create table GHALT_ALTA (
   GHALT_CODIGO         int                  not null,
   GHHOS_CODIGO         int                  not null,
   GHALT_FECHA          datetime             not null,
   GHALT_TIPO           varchar(20)          not null,
   GHALT_DIAEGR         varchar(200)         not null,
   GHALT_INDSAL         text                 not null,
   constraint PK_GHALT_ALTA primary key (GHALT_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHALT_ALTA') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHALT_ALTA' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Alta médica de la hospitalización.', 
   'user', @CurrentUser, 'table', 'GHALT_ALTA'
go

/*==============================================================*/
/* Index: FK_HOS_ALT_FK                                         */
/*==============================================================*/




create nonclustered index FK_HOS_ALT_FK on GHALT_ALTA (GHHOS_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHCAM_CAMA                                            */
/*==============================================================*/
create table GHCAM_CAMA (
   GHCAM_CODIGO         int                  not null,
   GHHAB_CODIGO         int                  not null,
   GHCAM_NUMERO         varchar(10)          not null,
   GHCAM_ESTADO         varchar(20)          not null,
   constraint PK_GHCAM_CAMA primary key (GHCAM_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHCAM_CAMA') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHCAM_CAMA' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Camas hospitalarias y su estado.', 
   'user', @CurrentUser, 'table', 'GHCAM_CAMA'
go

/*==============================================================*/
/* Index: FK_HAB_CAM_FK                                         */
/*==============================================================*/




create nonclustered index FK_HAB_CAM_FK on GHCAM_CAMA (GHHAB_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHCIR_CIRUG                                           */
/*==============================================================*/
create table GHCIR_CIRUG (
   GHCIR_CODIGO         int                  not null,
   GHEPI_CODIGO         int                  not null,
   GHQUI_CODIGO         char(4)              not null,
   PEPRO_CODIGO         int                  not null,
   GHCIR_PROCED         varchar(200)         not null,
   GHCIR_FECPRO         datetime             not null,
   GHCIR_HORINI         varchar(5)           null,
   GHCIR_HORFIN         varchar(5)           null,
   GHCIR_LISVER         bit                  not null,
   GHCIR_ESTADO         varchar(20)          not null,
   constraint PK_GHCIR_CIRUG primary key (GHCIR_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHCIR_CIRUG') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHCIR_CIRUG' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Programación y registro de procedimientos quirúrgicos.', 
   'user', @CurrentUser, 'table', 'GHCIR_CIRUG'
go

/*==============================================================*/
/* Index: FK_EPI_CIR_FK                                         */
/*==============================================================*/




create nonclustered index FK_EPI_CIR_FK on GHCIR_CIRUG (GHEPI_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_QUI_CIR_FK                                         */
/*==============================================================*/




create nonclustered index FK_QUI_CIR_FK on GHCIR_CIRUG (GHQUI_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_PRO_CIR_FK                                         */
/*==============================================================*/




create nonclustered index FK_PRO_CIR_FK on GHCIR_CIRUG (PEPRO_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHCIT_CITA                                            */
/*==============================================================*/
create table GHCIT_CITA (
   GHCIT_CODIGO         int                  not null,
   GHAGE_CODIGO         int                  not null,
   GHPAC_CODIGO         int                  not null,
   GHCIT_FECHA          datetime             not null,
   GHCIT_HORA           varchar(5)           not null,
   GHCIT_MOTIVO         varchar(200)         not null,
   GHCIT_ESTADO         varchar(15)          not null,
   GHCIT_MOTCAN         varchar(200)         null,
   constraint PK_GHCIT_CITA primary key (GHCIT_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHCIT_CITA') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHCIT_CITA' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Reserva de atención en consulta externa.', 
   'user', @CurrentUser, 'table', 'GHCIT_CITA'
go

/*==============================================================*/
/* Index: FK_AGE_CIT_FK                                         */
/*==============================================================*/




create nonclustered index FK_AGE_CIT_FK on GHCIT_CITA (GHAGE_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_PAC_CIT_FK                                         */
/*==============================================================*/




create nonclustered index FK_PAC_CIT_FK on GHCIT_CITA (GHPAC_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHCON_CONTA                                           */
/*==============================================================*/
create table GHCON_CONTA (
   GHCON_CODIGO         int                  not null,
   GHPAC_CODIGO         int                  not null,
   GHCON_NOMBRE         varchar(100)         not null,
   GHCON_PARENT         varchar(30)          not null,
   GHCON_TELEFO         varchar(15)          not null,
   constraint PK_GHCON_CONTA primary key (GHCON_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHCON_CONTA') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHCON_CONTA' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Contactos de emergencia o representantes del paciente.', 
   'user', @CurrentUser, 'table', 'GHCON_CONTA'
go

/*==============================================================*/
/* Index: FK_PAC_CON_FK                                         */
/*==============================================================*/




create nonclustered index FK_PAC_CON_FK on GHCON_CONTA (GHPAC_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHDIA_DIAGN                                           */
/*==============================================================*/
create table GHDIA_DIAGN (
   GHDIA_CODIGO         int                  not null,
   GHEPI_CODIGO         int                  not null,
   GHDIA_CIE10          varchar(10)          not null,
   GHDIA_DESCRI         varchar(200)         not null,
   GHDIA_TIPO           varchar(15)          not null,
   constraint PK_GHDIA_DIAGN primary key (GHDIA_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHDIA_DIAGN') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHDIA_DIAGN' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Diagnósticos (CIE-10) del episodio.', 
   'user', @CurrentUser, 'table', 'GHDIA_DIAGN'
go

/*==============================================================*/
/* Index: FK_EPI_DIA_FK                                         */
/*==============================================================*/




create nonclustered index FK_EPI_DIA_FK on GHDIA_DIAGN (GHEPI_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHDIS_DISPE                                           */
/*==============================================================*/
create table GHDIS_DISPE (
   GHDIS_CODIGO         int                  not null,
   GHDPR_CODIGO         int                  not null,
   GHLOT_CODIGO         int                  not null,
   GHDIS_FECHA          datetime             not null,
   GHDIS_CANENT         int                  not null,
   GHDIS_CANPEN         int                  not null,
   GHDIS_ESTADO         varchar(20)          not null,
   constraint PK_GHDIS_DISPE primary key (GHDIS_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHDIS_DISPE') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHDIS_DISPE' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Entrega de medicamentos por farmacia.', 
   'user', @CurrentUser, 'table', 'GHDIS_DISPE'
go

/*==============================================================*/
/* Index: FK_DPR_DIS_FK                                         */
/*==============================================================*/




create nonclustered index FK_DPR_DIS_FK on GHDIS_DISPE (GHDPR_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_LOT_DIS_FK                                         */
/*==============================================================*/




create nonclustered index FK_LOT_DIS_FK on GHDIS_DISPE (GHLOT_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHDOC_DOCUM                                           */
/*==============================================================*/
create table GHDOC_DOCUM (
   GHDOC_CODIGO         int                  not null,
   GHEPI_CODIGO         int                  not null,
   GHDOC_TIPO           varchar(30)          not null,
   GHDOC_NOMBRE         varchar(150)         not null,
   GHDOC_RUTA           varchar(250)         not null,
   GHDOC_FECHA          datetime             not null,
   constraint PK_GHDOC_DOCUM primary key (GHDOC_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHDOC_DOCUM') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHDOC_DOCUM' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Documentos clínicos adjuntos al episodio.', 
   'user', @CurrentUser, 'table', 'GHDOC_DOCUM'
go

/*==============================================================*/
/* Index: FK_EPI_DOC_FK                                         */
/*==============================================================*/




create nonclustered index FK_EPI_DOC_FK on GHDOC_DOCUM (GHEPI_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHDPR_DETPR                                           */
/*==============================================================*/
create table GHDPR_DETPR (
   GHDPR_CODIGO         int                  not null,
   GHPRE_CODIGO         int                  not null,
   GHMED_CODIGO         int                  not null,
   GHDPR_DOSIS          varchar(50)          not null,
   GHDPR_VIA            varchar(30)          not null,
   GHDPR_FRECUE         varchar(50)          not null,
   GHDPR_DURACI         int                  not null,
   GHDPR_CANTID         int                  not null,
   constraint PK_GHDPR_DETPR primary key (GHDPR_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHDPR_DETPR') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHDPR_DETPR' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Medicamentos prescritos con dosis y frecuencia.', 
   'user', @CurrentUser, 'table', 'GHDPR_DETPR'
go

/*==============================================================*/
/* Index: FK_PRE_DPR_FK                                         */
/*==============================================================*/




create nonclustered index FK_PRE_DPR_FK on GHDPR_DETPR (GHPRE_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_MED_DPR_FK                                         */
/*==============================================================*/




create nonclustered index FK_MED_DPR_FK on GHDPR_DETPR (GHMED_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHDSO_DETSO                                           */
/*==============================================================*/
create table GHDSO_DETSO (
   GHEXA_CODIGO         char(6)              not null,
   GHSOL_CODIGO         int                  not null,
   GHDSO_ESTADO         varchar(20)          not null,
   constraint PK_GHDSO_DETSO primary key (GHEXA_CODIGO, GHSOL_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHDSO_DETSO') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHDSO_DETSO' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Exámenes incluidos en una solicitud.', 
   'user', @CurrentUser, 'table', 'GHDSO_DETSO'
go

/*==============================================================*/
/* Index: FK_SOL_DSO_FK                                         */
/*==============================================================*/




create nonclustered index FK_SOL_DSO_FK on GHDSO_DETSO (GHSOL_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_EXA_DSO_FK                                         */
/*==============================================================*/




create nonclustered index FK_EXA_DSO_FK on GHDSO_DETSO (GHEXA_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHEPI_EPISO                                           */
/*==============================================================*/
create table GHEPI_EPISO (
   GHEPI_CODIGO         int                  not null,
   GHHIS_CODIGO         int                  not null,
   GHADM_CODIGO         int                  null,
   PEPRO_CODIGO         int                  not null,
   GHEPI_FECINI         datetime             not null,
   GHEPI_TIPATE         varchar(20)          not null,
   GHEPI_SERVIC         varchar(50)          not null,
   GHEPI_PRIORI         varchar(15)          null,
   GHEPI_DISPOS         varchar(30)          null,
   GHEPI_ESTADO         varchar(15)          not null,
   constraint PK_GHEPI_EPISO primary key (GHEPI_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHEPI_EPISO') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHEPI_EPISO' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Agrupación de una atención (consulta, emergencia u hospitalización).', 
   'user', @CurrentUser, 'table', 'GHEPI_EPISO'
go

/*==============================================================*/
/* Index: FK_HIS_EPI_FK                                         */
/*==============================================================*/




create nonclustered index FK_HIS_EPI_FK on GHEPI_EPISO (GHHIS_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_ADM_EPI_FK                                         */
/*==============================================================*/




create nonclustered index FK_ADM_EPI_FK on GHEPI_EPISO (GHADM_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_PRO_EPI_FK                                         */
/*==============================================================*/




create nonclustered index FK_PRO_EPI_FK on GHEPI_EPISO (PEPRO_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHEST_ESTUD                                           */
/*==============================================================*/
create table GHEST_ESTUD (
   GHEST_CODIGO         int                  not null,
   GHEPI_CODIGO         int                  not null,
   GHEST_TIPO           varchar(50)          not null,
   GHEST_REGION         varchar(50)          not null,
   GHEST_INDICA         varchar(300)         not null,
   GHEST_FECPRO         datetime             null,
   GHEST_ESTADO         varchar(20)          not null,
   constraint PK_GHEST_ESTUD primary key (GHEST_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHEST_ESTUD') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHEST_ESTUD' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Solicitud y ejecución de estudios de imagen.', 
   'user', @CurrentUser, 'table', 'GHEST_ESTUD'
go

/*==============================================================*/
/* Index: FK_EPI_ETI_FK                                         */
/*==============================================================*/




create nonclustered index FK_EPI_ETI_FK on GHEST_ESTUD (GHEPI_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHEXA_EXAME                                           */
/*==============================================================*/
create table GHEXA_EXAME (
   GHEXA_CODIGO         char(6)              not null,
   GHEXA_NOMBRE         varchar(100)         not null,
   GHEXA_TIPMUE         varchar(30)          not null,
   GHEXA_UNIDAD         varchar(20)          null,
   GHEXA_RANREF         varchar(50)          null,
   constraint PK_GHEXA_EXAME primary key (GHEXA_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHEXA_EXAME') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHEXA_EXAME' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Catálogo de exámenes de laboratorio.', 
   'user', @CurrentUser, 'table', 'GHEXA_EXAME'
go

/*==============================================================*/
/* Table: GHHAB_HABIT                                           */
/*==============================================================*/
create table GHHAB_HABIT (
   GHHAB_CODIGO         int                  not null,
   GHHAB_NUMERO         varchar(10)          not null,
   GHHAB_AREA           varchar(50)          not null,
   GHHAB_SERVIC         varchar(50)          not null,
   constraint PK_GHHAB_HABIT primary key (GHHAB_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHHAB_HABIT') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHHAB_HABIT' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Habitaciones por área y servicio.', 
   'user', @CurrentUser, 'table', 'GHHAB_HABIT'
go

/*==============================================================*/
/* Table: GHHIS_HISTO                                           */
/*==============================================================*/
create table GHHIS_HISTO (
   GHHIS_CODIGO         int                  not null,
   GHPAC_CODIGO         int                  not null,
   GHHIS_NUMERO         varchar(20)          not null,
   GHHIS_FECAPE         datetime             not null,
   constraint PK_GHHIS_HISTO primary key (GHHIS_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHHIS_HISTO') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHHIS_HISTO' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Historia clínica electrónica única por paciente.', 
   'user', @CurrentUser, 'table', 'GHHIS_HISTO'
go

/*==============================================================*/
/* Index: FK_PAC_HIS_FK                                         */
/*==============================================================*/




create nonclustered index FK_PAC_HIS_FK on GHHIS_HISTO (GHPAC_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHHOS_HOSPI                                           */
/*==============================================================*/
create table GHHOS_HOSPI (
   GHHOS_CODIGO         int                  not null,
   GHEPI_CODIGO         int                  not null,
   GHCAM_CODIGO         int                  null,
   GHHOS_FECING         datetime             not null,
   GHHOS_FECEGR         datetime             null,
   GHHOS_SERVIC         varchar(50)          not null,
   GHHOS_ESTADO         varchar(20)          not null,
   constraint PK_GHHOS_HOSPI primary key (GHHOS_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHHOS_HOSPI') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHHOS_HOSPI' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Ingreso hospitalario de un episodio.', 
   'user', @CurrentUser, 'table', 'GHHOS_HOSPI'
go

/*==============================================================*/
/* Index: FK_EPI_HOS_FK                                         */
/*==============================================================*/




create nonclustered index FK_EPI_HOS_FK on GHHOS_HOSPI (GHEPI_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_CAM_HOS_FK                                         */
/*==============================================================*/




create nonclustered index FK_CAM_HOS_FK on GHHOS_HOSPI (GHCAM_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHINF_INFOR                                           */
/*==============================================================*/
create table GHINF_INFOR (
   GHINF_CODIGO         int                  not null,
   GHEST_CODIGO         int                  not null,
   GHINF_TEXTO          text                 not null,
   GHINF_ESTADO         varchar(15)          not null,
   GHINF_FECEMI         datetime             null,
   constraint PK_GHINF_INFOR primary key (GHINF_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHINF_INFOR') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHINF_INFOR' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Informe radiológico de un estudio.', 
   'user', @CurrentUser, 'table', 'GHINF_INFOR'
go

/*==============================================================*/
/* Index: FK_ETI_INF_FK                                         */
/*==============================================================*/




create nonclustered index FK_ETI_INF_FK on GHINF_INFOR (GHEST_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHLOT_LOTE                                            */
/*==============================================================*/
create table GHLOT_LOTE (
   GHLOT_CODIGO         int                  not null,
   GHMED_CODIGO         int                  not null,
   GHLOT_NUMERO         varchar(30)          not null,
   GHLOT_FECCAD         datetime             not null,
   GHLOT_CANDIS         int                  not null,
   GHLOT_ESTADO         varchar(15)          not null,
   constraint PK_GHLOT_LOTE primary key (GHLOT_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHLOT_LOTE') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHLOT_LOTE' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Lotes de medicamento con fecha de caducidad.', 
   'user', @CurrentUser, 'table', 'GHLOT_LOTE'
go

/*==============================================================*/
/* Index: FK_MED_LOT_FK                                         */
/*==============================================================*/




create nonclustered index FK_MED_LOT_FK on GHLOT_LOTE (GHMED_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHMED_MEDIC                                           */
/*==============================================================*/
create table GHMED_MEDIC (
   GHMED_CODIGO         int                  not null,
   GHMED_NOMGEN         varchar(100)         not null,
   GHMED_PRESEN         varchar(50)          not null,
   GHMED_CONCEN         varchar(30)          not null,
   GHMED_FORFAR         varchar(30)          not null,
   GHMED_UNIMED         varchar(20)          not null,
   GHMED_STKMIN         int                  not null,
   constraint PK_GHMED_MEDIC primary key (GHMED_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHMED_MEDIC') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHMED_MEDIC' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Catálogo de medicamentos.', 
   'user', @CurrentUser, 'table', 'GHMED_MEDIC'
go

/*==============================================================*/
/* Table: GHMOV_MOVIM                                           */
/*==============================================================*/
create table GHMOV_MOVIM (
   GHMOV_CODIGO         int                  not null,
   GHLOT_CODIGO         int                  not null,
   XEUSU_CODIGO         varchar(30)          not null,
   GHMOV_TIPO           varchar(15)          not null,
   GHMOV_CANTID         int                  not null,
   GHMOV_MOTIVO         varchar(200)         not null,
   GHMOV_FECHA          datetime             not null,
   GHMOV_DOCRES         varchar(50)          null,
   constraint PK_GHMOV_MOVIM primary key (GHMOV_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHMOV_MOVIM') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHMOV_MOVIM' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Entradas, salidas y ajustes de inventario.', 
   'user', @CurrentUser, 'table', 'GHMOV_MOVIM'
go

/*==============================================================*/
/* Index: FK_LOT_MOV_FK                                         */
/*==============================================================*/




create nonclustered index FK_LOT_MOV_FK on GHMOV_MOVIM (GHLOT_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_USU_MOV_FK                                         */
/*==============================================================*/




create nonclustered index FK_USU_MOV_FK on GHMOV_MOVIM (XEUSU_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHNOT_NOTA                                            */
/*==============================================================*/
create table GHNOT_NOTA (
   GHNOT_CODIGO         int                  not null,
   GHEPI_CODIGO         int                  not null,
   PEPRO_CODIGO         int                  not null,
   GHNOT_TIPO           varchar(20)          not null,
   GHNOT_MOTIVO         varchar(500)         null,
   GHNOT_EXAFIS         text                 null,
   GHNOT_EVALUA         text                 null,
   GHNOT_PLANTR         text                 null,
   GHNOT_FECHA          datetime             not null,
   GHNOT_ESTADO         varchar(15)          not null,
   constraint PK_GHNOT_NOTA primary key (GHNOT_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHNOT_NOTA') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHNOT_NOTA' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Consulta o nota de evolución registrada por un profesional.', 
   'user', @CurrentUser, 'table', 'GHNOT_NOTA'
go

/*==============================================================*/
/* Index: FK_EPI_NOT_FK                                         */
/*==============================================================*/




create nonclustered index FK_EPI_NOT_FK on GHNOT_NOTA (GHEPI_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_PRO_NOT_FK                                         */
/*==============================================================*/




create nonclustered index FK_PRO_NOT_FK on GHNOT_NOTA (PEPRO_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHPAC_PACIE                                           */
/*==============================================================*/
create table GHPAC_PACIE (
   GHPAC_CODIGO         int                  not null,
   GHPAC_IDHOSP         varchar(15)          not null,
   GHPAC_TIPDOC         char(3)              not null,
   GHPAC_NUMDOC         varchar(20)          not null,
   GHPAC_NOMBRE         varchar(80)          not null,
   GHPAC_APELLI         varchar(80)          not null,
   GHPAC_FECNAC         datetime             not null,
   GHPAC_TELEFO         varchar(15)          null,
   GHPAC_EMAIL          varchar(80)          null,
   GHPAC_DIRECC         varchar(150)         null,
   GHPAC_FECREG         datetime             not null,
   GHPAC_ESTREG         char(1)              not null,
   constraint PK_GHPAC_PACIE primary key (GHPAC_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHPAC_PACIE') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHPAC_PACIE' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Paciente con identificador hospitalario único.', 
   'user', @CurrentUser, 'table', 'GHPAC_PACIE'
go

/*==============================================================*/
/* Table: GHPRE_PRESC                                           */
/*==============================================================*/
create table GHPRE_PRESC (
   GHPRE_CODIGO         int                  not null,
   GHEPI_CODIGO         int                  not null,
   PEPRO_CODIGO         int                  not null,
   GHPRE_FECHA          datetime             not null,
   GHPRE_ESTADO         varchar(20)          not null,
   GHPRE_OBSERV         varchar(300)         null,
   constraint PK_GHPRE_PRESC primary key (GHPRE_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHPRE_PRESC') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHPRE_PRESC' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Receta médica emitida en un episodio.', 
   'user', @CurrentUser, 'table', 'GHPRE_PRESC'
go

/*==============================================================*/
/* Index: FK_EPI_PRE_FK                                         */
/*==============================================================*/




create nonclustered index FK_EPI_PRE_FK on GHPRE_PRESC (GHEPI_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_PRO_PRE_FK                                         */
/*==============================================================*/




create nonclustered index FK_PRO_PRE_FK on GHPRE_PRESC (PEPRO_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHQUI_QUIRO                                           */
/*==============================================================*/
create table GHQUI_QUIRO (
   GHQUI_CODIGO         char(4)              not null,
   GHQUI_NOMBRE         varchar(50)          not null,
   GHQUI_ESTADO         varchar(15)          not null,
   constraint PK_GHQUI_QUIRO primary key (GHQUI_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHQUI_QUIRO') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHQUI_QUIRO' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Quirófanos del hospital.', 
   'user', @CurrentUser, 'table', 'GHQUI_QUIRO'
go

/*==============================================================*/
/* Table: GHRES_RESUL                                           */
/*==============================================================*/
create table GHRES_RESUL (
   GHRES_CODIGO         int                  not null,
   GHSOL_CODIGO         int                  not null,
   GHEXA_CODIGO         char(6)              not null,
   GHRES_VALOR          varchar(50)          not null,
   GHRES_OBSERV         varchar(300)         null,
   GHRES_FECPRO         datetime             not null,
   GHRES_ESTADO         varchar(20)          not null,
   GHRES_FECVAL         datetime             null,
   constraint PK_GHRES_RESUL primary key (GHRES_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHRES_RESUL') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHRES_RESUL' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Resultado de un examen de laboratorio.', 
   'user', @CurrentUser, 'table', 'GHRES_RESUL'
go

/*==============================================================*/
/* Index: FK_SOL_RES_FK                                         */
/*==============================================================*/




create nonclustered index FK_SOL_RES_FK on GHRES_RESUL (GHSOL_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_EXA_RES_FK                                         */
/*==============================================================*/




create nonclustered index FK_EXA_RES_FK on GHRES_RESUL (GHEXA_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHSIG_SIGNO                                           */
/*==============================================================*/
create table GHSIG_SIGNO (
   GHSIG_CODIGO         int                  not null,
   GHEPI_CODIGO         int                  not null,
   GHSIG_PRESIO         varchar(10)          null,
   GHSIG_FRECAR         int                  null,
   GHSIG_FRERES         int                  null,
   GHSIG_TEMPER         decimal(4,1)         null,
   GHSIG_SATURA         int                  null,
   GHSIG_PESO           decimal(5,2)         null,
   GHSIG_TALLA          decimal(5,2)         null,
   GHSIG_FECHA          datetime             not null,
   constraint PK_GHSIG_SIGNO primary key (GHSIG_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHSIG_SIGNO') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHSIG_SIGNO' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Signos vitales registrados por enfermería.', 
   'user', @CurrentUser, 'table', 'GHSIG_SIGNO'
go

/*==============================================================*/
/* Index: FK_EPI_SIG_FK                                         */
/*==============================================================*/




create nonclustered index FK_EPI_SIG_FK on GHSIG_SIGNO (GHEPI_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHSOL_SOLIC                                           */
/*==============================================================*/
create table GHSOL_SOLIC (
   GHSOL_CODIGO         int                  not null,
   GHEPI_CODIGO         int                  not null,
   PEPRO_CODIGO         int                  not null,
   GHSOL_FECHA          datetime             not null,
   GHSOL_PRIORI         varchar(15)          not null,
   GHSOL_INDICA         varchar(300)         null,
   GHSOL_ESTADO         varchar(20)          not null,
   constraint PK_GHSOL_SOLIC primary key (GHSOL_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHSOL_SOLIC') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHSOL_SOLIC' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Solicitud de exámenes de laboratorio.', 
   'user', @CurrentUser, 'table', 'GHSOL_SOLIC'
go

/*==============================================================*/
/* Index: FK_EPI_SOL_FK                                         */
/*==============================================================*/




create nonclustered index FK_EPI_SOL_FK on GHSOL_SOLIC (GHEPI_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_PRO_SOL_FK                                         */
/*==============================================================*/




create nonclustered index FK_PRO_SOL_FK on GHSOL_SOLIC (PEPRO_CODIGO ASC)
go

/*==============================================================*/
/* Table: GHTRA_TRASL                                           */
/*==============================================================*/
create table GHTRA_TRASL (
   GHTRA_CODIGO         int                  not null,
   GHHOS_CODIGO         int                  not null,
   GHCAM_CODIGO         int                  not null,
   GHTRA_FECHA          datetime             not null,
   GHTRA_MOTIVO         varchar(200)         not null,
   constraint PK_GHTRA_TRASL primary key (GHTRA_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('GHTRA_TRASL') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'GHTRA_TRASL' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Traslados de cama o servicio.', 
   'user', @CurrentUser, 'table', 'GHTRA_TRASL'
go

/*==============================================================*/
/* Index: FK_HOS_TRA_FK                                         */
/*==============================================================*/




create nonclustered index FK_HOS_TRA_FK on GHTRA_TRASL (GHHOS_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_CAM_TRA_FK                                         */
/*==============================================================*/




create nonclustered index FK_CAM_TRA_FK on GHTRA_TRASL (GHCAM_CODIGO ASC)
go

/*==============================================================*/
/* Table: PECAR_CARGO                                           */
/*==============================================================*/
create table PECAR_CARGO (
   PECAR_CODIGO         char(3)              not null,
   PEDEP_CODIGO         char(3)              not null,
   PECAR_DESCRI         varchar(50)          not null,
   constraint PK_PECAR_CARGO primary key (PECAR_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('PECAR_CARGO') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'PECAR_CARGO' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Cargos que pertenecen a un departamento.', 
   'user', @CurrentUser, 'table', 'PECAR_CARGO'
go

/*==============================================================*/
/* Index: FK_DEP_CAR_FK                                         */
/*==============================================================*/




create nonclustered index FK_DEP_CAR_FK on PECAR_CARGO (PEDEP_CODIGO ASC)
go

/*==============================================================*/
/* Table: PEDEP_DEPAR                                           */
/*==============================================================*/
create table PEDEP_DEPAR (
   PEDEP_CODIGO         char(3)              not null,
   PEDEP_DESCRI         varchar(50)          not null,
   constraint PK_PEDEP_DEPAR primary key (PEDEP_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('PEDEP_DEPAR') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'PEDEP_DEPAR' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Departamentos o servicios del hospital.', 
   'user', @CurrentUser, 'table', 'PEDEP_DEPAR'
go

/*==============================================================*/
/* Table: PEESC_ESTCI                                           */
/*==============================================================*/
create table PEESC_ESTCI (
   PEESC_CODIGO         char(1)              not null,
   PEESC_DESCRI         varchar(50)          not null,
   constraint PK_PEESC_ESTCI primary key (PEESC_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('PEESC_ESTCI') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'PEESC_ESTCI' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Catálogo del estado civil de una persona.', 
   'user', @CurrentUser, 'table', 'PEESC_ESTCI'
go

/*==============================================================*/
/* Table: PEESP_ESPEC                                           */
/*==============================================================*/
create table PEESP_ESPEC (
   PEESP_CODIGO         char(4)              not null,
   PEESP_DESCRI         varchar(80)          not null,
   PEESP_ESTADO         char(1)              not null,
   constraint PK_PEESP_ESPEC primary key (PEESP_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('PEESP_ESPEC') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'PEESP_ESPEC' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Catálogo de especialidades médicas.', 
   'user', @CurrentUser, 'table', 'PEESP_ESPEC'
go

/*==============================================================*/
/* Table: PEGEN_GENER                                           */
/*==============================================================*/
create table PEGEN_GENER (
   PEGEN_CODIGO         char(1)              not null,
   PEGEN_DESCRI         varchar(50)          not null,
   constraint PK_PEGEN_GENER primary key (PEGEN_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('PEGEN_GENER') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'PEGEN_GENER' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Catálogo del género o sexo de una persona.', 
   'user', @CurrentUser, 'table', 'PEGEN_GENER'
go

/*==============================================================*/
/* Table: PEPER_PERSO                                           */
/*==============================================================*/
create table PEPER_PERSO (
   PEPER_CODIGO         char(10)             not null,
   PEGEN_CODIGO         char(1)              not null,
   PEESC_CODIGO         char(1)              not null,
   PECAR_CODIGO         char(3)              null,
   PEPER_CEDULA         varchar(10)          not null,
   PEPER_PASAPO         varchar(15)          null,
   PEPER_NOMBRE         varchar(50)          not null,
   PEPER_APELLI         varchar(50)          not null,
   PEPER_FECNAC         datetime             not null,
   PEPER_EMAIL          varchar(80)          not null,
   PEPER_TELEFO         varchar(15)          null,
   PEPER_DIRECC         varchar(150)         null,
   PEPER_FOTO           varchar(200)         null,
   PEPER_CARFAM         int                  null,
   PEPER_DISCAP         bit                  null,
   constraint PK_PEPER_PERSO primary key (PEPER_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('PEPER_PERSO') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'PEPER_PERSO' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Entidad utilizada para gestionar las personas (empleados) que harán uso del sistema.', 
   'user', @CurrentUser, 'table', 'PEPER_PERSO'
go

/*==============================================================*/
/* Index: FK_GEN_PRS_FK                                         */
/*==============================================================*/




create nonclustered index FK_GEN_PRS_FK on PEPER_PERSO (PEGEN_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_ESC_PRS_FK                                         */
/*==============================================================*/




create nonclustered index FK_ESC_PRS_FK on PEPER_PERSO (PEESC_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_CAR_PRS_FK                                         */
/*==============================================================*/




create nonclustered index FK_CAR_PRS_FK on PEPER_PERSO (PECAR_CODIGO ASC)
go

/*==============================================================*/
/* Table: PEPRO_PROFE                                           */
/*==============================================================*/
create table PEPRO_PROFE (
   PEPRO_CODIGO         int                  not null,
   PEPER_CODIGO         char(10)             not null,
   PEPRO_REGPRO         varchar(20)          not null,
   PEPRO_TIPO           varchar(30)          not null,
   constraint PK_PEPRO_PROFE primary key (PEPRO_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('PEPRO_PROFE') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'PEPRO_PROFE' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Profesional de la salud (médico, enfermero, laboratorista, etc.) asociado a una persona.', 
   'user', @CurrentUser, 'table', 'PEPRO_PROFE'
go

/*==============================================================*/
/* Index: FK_PRS_PRO_FK                                         */
/*==============================================================*/




create nonclustered index FK_PRS_PRO_FK on PEPRO_PROFE (PEPER_CODIGO ASC)
go

/*==============================================================*/
/* Table: PEPXE_PROES                                           */
/*==============================================================*/
create table PEPXE_PROES (
   PEESP_CODIGO         char(4)              not null,
   PEPRO_CODIGO         int                  not null,
   PEPXE_FECREG         datetime             not null,
   constraint PK_PEPXE_PROES primary key (PEESP_CODIGO, PEPRO_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('PEPXE_PROES') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'PEPXE_PROES' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Especialidades que tiene cada profesional.', 
   'user', @CurrentUser, 'table', 'PEPXE_PROES'
go

/*==============================================================*/
/* Index: FK_PRO_PXE_FK                                         */
/*==============================================================*/




create nonclustered index FK_PRO_PXE_FK on PEPXE_PROES (PEPRO_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_ESP_PXE_FK                                         */
/*==============================================================*/




create nonclustered index FK_ESP_PXE_FK on PEPXE_PROES (PEESP_CODIGO ASC)
go

/*==============================================================*/
/* Table: XEAUD_AUDIT                                           */
/*==============================================================*/
create table XEAUD_AUDIT (
   XEAUD_CODIGO         int                  not null,
   XEUSU_CODIGO         varchar(30)          not null,
   XEAUD_FECHA          datetime             not null,
   XEAUD_MODULO         varchar(50)          not null,
   XEAUD_OPERAC         varchar(50)          not null,
   XEAUD_OBJETO         varchar(100)         not null,
   XEAUD_RESULT         varchar(20)          not null,
   XEAUD_IPORIG         varchar(45)          null,
   constraint PK_XEAUD_AUDIT primary key (XEAUD_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('XEAUD_AUDIT') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'XEAUD_AUDIT' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Registro inalterable de eventos relevantes del sistema.', 
   'user', @CurrentUser, 'table', 'XEAUD_AUDIT'
go

/*==============================================================*/
/* Index: FK_USU_AUD_FK                                         */
/*==============================================================*/




create nonclustered index FK_USU_AUD_FK on XEAUD_AUDIT (XEUSU_CODIGO ASC)
go

/*==============================================================*/
/* Table: XEEST_ESTAD                                           */
/*==============================================================*/
create table XEEST_ESTAD (
   XEEST_CODIGO         char(1)              not null,
   XEEST_DESCRI         varchar(50)          not null,
   constraint PK_XEEST_ESTAD primary key (XEEST_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('XEEST_ESTAD') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'XEEST_ESTAD' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Estados de los registros (activo, inactivo, bloqueado).', 
   'user', @CurrentUser, 'table', 'XEEST_ESTAD'
go

/*==============================================================*/
/* Table: XEOPC_OPCIO                                           */
/*==============================================================*/
create table XEOPC_OPCIO (
   XEOPC_CODIGO         char(5)              not null,
   XESIS_CODIGO         char(3)              not null,
   XEOPC_DESCRI         varchar(100)         not null,
   XEOPC_URL            varchar(150)         null,
   constraint PK_XEOPC_OPCIO primary key (XEOPC_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('XEOPC_OPCIO') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'XEOPC_OPCIO' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Opciones (menús/operaciones) de un subsistema.', 
   'user', @CurrentUser, 'table', 'XEOPC_OPCIO'
go

/*==============================================================*/
/* Index: FK_SIS_OPC_FK                                         */
/*==============================================================*/




create nonclustered index FK_SIS_OPC_FK on XEOPC_OPCIO (XESIS_CODIGO ASC)
go

/*==============================================================*/
/* Table: XEOXP_OPCPE                                           */
/*==============================================================*/
create table XEOXP_OPCPE (
   XEOPC_CODIGO         char(5)              not null,
   XEPER_CODIGO         char(8)              not null,
   XEOXP_FECASI         datetime             not null,
   XEOXP_FECRET         datetime             null,
   constraint PK_XEOXP_OPCPE primary key (XEOPC_CODIGO, XEPER_CODIGO, XEOXP_FECASI)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('XEOXP_OPCPE') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'XEOXP_OPCPE' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Opciones permitidas para cada perfil.', 
   'user', @CurrentUser, 'table', 'XEOXP_OPCPE'
go

/*==============================================================*/
/* Index: FK_PER_OXP_FK                                         */
/*==============================================================*/




create nonclustered index FK_PER_OXP_FK on XEOXP_OPCPE (XEPER_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_OPC_OXP_FK                                         */
/*==============================================================*/




create nonclustered index FK_OPC_OXP_FK on XEOXP_OPCPE (XEOPC_CODIGO ASC)
go

/*==============================================================*/
/* Table: XEPAR_PARAM                                           */
/*==============================================================*/
create table XEPAR_PARAM (
   XEPAR_CLAVE          varchar(50)          not null,
   XEPAR_VALOR          varchar(200)         not null,
   XEPAR_DESCRI         varchar(200)         null,
   XEPAR_FECMOD         datetime             not null,
   constraint PK_XEPAR_PARAM primary key (XEPAR_CLAVE)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('XEPAR_PARAM') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'XEPAR_PARAM' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Parámetros de configuración del sistema.', 
   'user', @CurrentUser, 'table', 'XEPAR_PARAM'
go

/*==============================================================*/
/* Table: XEPER_PERFI                                           */
/*==============================================================*/
create table XEPER_PERFI (
   XEPER_CODIGO         char(8)              not null,
   XEPER_DESCRI         varchar(100)         not null,
   XEPER_OBSER          varchar(500)         null,
   constraint PK_XEPER_PERFI primary key (XEPER_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('XEPER_PERFI') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'XEPER_PERFI' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Perfiles o roles de usuario.', 
   'user', @CurrentUser, 'table', 'XEPER_PERFI'
go

/*==============================================================*/
/* Table: XESES_SESIO                                           */
/*==============================================================*/
create table XESES_SESIO (
   XESES_CODIGO         int                  not null,
   XEUSU_CODIGO         varchar(30)          not null,
   XESES_FECINI         datetime             not null,
   XESES_FECFIN         datetime             null,
   XESES_DIRIP          varchar(45)          null,
   XESES_ESTADO         char(1)              not null,
   constraint PK_XESES_SESIO primary key (XESES_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('XESES_SESIO') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'XESES_SESIO' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Sesiones de trabajo de los usuarios en el sistema (inicio, cierre e IP de origen).', 
   'user', @CurrentUser, 'table', 'XESES_SESIO'
go

/*==============================================================*/
/* Index: FK_USU_SES_FK                                         */
/*==============================================================*/




create nonclustered index FK_USU_SES_FK on XESES_SESIO (XEUSU_CODIGO ASC)
go

/*==============================================================*/
/* Table: XESIS_SISTE                                           */
/*==============================================================*/
create table XESIS_SISTE (
   XESIS_CODIGO         char(3)              not null,
   XESIS_DESCRI         varchar(50)          not null,
   constraint PK_XESIS_SISTE primary key (XESIS_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('XESIS_SISTE') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'XESIS_SISTE' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Subsistemas del SIGH.', 
   'user', @CurrentUser, 'table', 'XESIS_SISTE'
go

/*==============================================================*/
/* Table: XEUSU_USUAR                                           */
/*==============================================================*/
create table XEUSU_USUAR (
   XEUSU_CODIGO         varchar(30)          not null,
   PEPER_CODIGO         char(10)             not null,
   XEEST_CODIGO         char(1)              not null,
   XEUSU_PASWD          varchar(255)         not null,
   XEUSU_FECCRE         datetime             not null,
   XEUSU_FECMOD         datetime             null,
   XEUSU_INTFAL         int                  not null,
   XEUSU_ULTACC         datetime             null,
   XEUSU_PIEFIR         varchar(100)         null,
   constraint PK_XEUSU_USUAR primary key (XEUSU_CODIGO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('XEUSU_USUAR') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'XEUSU_USUAR' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Cuentas individuales de acceso al sistema.', 
   'user', @CurrentUser, 'table', 'XEUSU_USUAR'
go

/*==============================================================*/
/* Index: FK_PRS_USU_FK                                         */
/*==============================================================*/




create nonclustered index FK_PRS_USU_FK on XEUSU_USUAR (PEPER_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_EST_USU_FK                                         */
/*==============================================================*/




create nonclustered index FK_EST_USU_FK on XEUSU_USUAR (XEEST_CODIGO ASC)
go

/*==============================================================*/
/* Table: XEUXP_USUPE                                           */
/*==============================================================*/
create table XEUXP_USUPE (
   XEPER_CODIGO         char(8)              not null,
   XEUSU_CODIGO         varchar(30)          not null,
   XEUXP_FECASI         datetime             not null,
   XEUXP_FECRET         datetime             null,
   constraint PK_XEUXP_USUPE primary key (XEPER_CODIGO, XEUSU_CODIGO, XEUXP_FECASI)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('XEUXP_USUPE') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'XEUXP_USUPE' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Perfiles asignados a cada usuario.', 
   'user', @CurrentUser, 'table', 'XEUXP_USUPE'
go

/*==============================================================*/
/* Index: FK_USU_UXP_FK                                         */
/*==============================================================*/




create nonclustered index FK_USU_UXP_FK on XEUXP_USUPE (XEUSU_CODIGO ASC)
go

/*==============================================================*/
/* Index: FK_PER_UXP_FK                                         */
/*==============================================================*/




create nonclustered index FK_PER_UXP_FK on XEUXP_USUPE (XEPER_CODIGO ASC)
go

alter table FICAS_CARSE
   add constraint FK_CUE_CAS foreign key (FICUE_CODIGO)
      references FICUE_CUENT (FICUE_CODIGO)
go

alter table FICAS_CARSE
   add constraint FK_SER_CAS foreign key (FISER_CODIGO)
      references FISER_SERVI (FISER_CODIGO)
go

alter table FICUE_CUENT
   add constraint FK_EPI_CUE foreign key (GHEPI_CODIGO)
      references GHEPI_EPISO (GHEPI_CODIGO)
go

alter table FICUE_CUENT
   add constraint FK_PAC_CUE foreign key (GHPAC_CODIGO)
      references GHPAC_PACIE (GHPAC_CODIGO)
go

alter table FIDFA_DETFA
   add constraint FK_CAS_DFA foreign key (FICAS_CODIGO)
      references FICAS_CARSE (FICAS_CODIGO)
go

alter table FIDFA_DETFA
   add constraint FK_FAC_DFA foreign key (FIFAC_CODIGO)
      references FIFAC_FACTU (FIFAC_CODIGO)
go

alter table FIFAC_FACTU
   add constraint FK_CUE_FAC foreign key (FICUE_CODIGO)
      references FICUE_CUENT (FICUE_CODIGO)
go

alter table FIPAG_PAGO
   add constraint FK_FAC_PAG foreign key (FIFAC_CODIGO)
      references FIFAC_FACTU (FIFAC_CODIGO)
go

alter table FIPAG_PAGO
   add constraint FK_USU_PAG foreign key (XEUSU_CODIGO)
      references XEUSU_USUAR (XEUSU_CODIGO)
go

alter table GHADM_ADMIS
   add constraint FK_CIT_ADM foreign key (GHCIT_CODIGO)
      references GHCIT_CITA (GHCIT_CODIGO)
go

alter table GHADM_ADMIS
   add constraint FK_PAC_ADM foreign key (GHPAC_CODIGO)
      references GHPAC_PACIE (GHPAC_CODIGO)
go

alter table GHAGE_AGEND
   add constraint FK_ESP_AGE foreign key (PEESP_CODIGO)
      references PEESP_ESPEC (PEESP_CODIGO)
go

alter table GHAGE_AGEND
   add constraint FK_PRO_AGE foreign key (PEPRO_CODIGO)
      references PEPRO_PROFE (PEPRO_CODIGO)
go

alter table GHALE_ALERG
   add constraint FK_HIS_ALE foreign key (GHHIS_CODIGO)
      references GHHIS_HISTO (GHHIS_CODIGO)
go

alter table GHALT_ALTA
   add constraint FK_HOS_ALT foreign key (GHHOS_CODIGO)
      references GHHOS_HOSPI (GHHOS_CODIGO)
go

alter table GHCAM_CAMA
   add constraint FK_HAB_CAM foreign key (GHHAB_CODIGO)
      references GHHAB_HABIT (GHHAB_CODIGO)
go

alter table GHCIR_CIRUG
   add constraint FK_EPI_CIR foreign key (GHEPI_CODIGO)
      references GHEPI_EPISO (GHEPI_CODIGO)
go

alter table GHCIR_CIRUG
   add constraint FK_PRO_CIR foreign key (PEPRO_CODIGO)
      references PEPRO_PROFE (PEPRO_CODIGO)
go

alter table GHCIR_CIRUG
   add constraint FK_QUI_CIR foreign key (GHQUI_CODIGO)
      references GHQUI_QUIRO (GHQUI_CODIGO)
go

alter table GHCIT_CITA
   add constraint FK_AGE_CIT foreign key (GHAGE_CODIGO)
      references GHAGE_AGEND (GHAGE_CODIGO)
go

alter table GHCIT_CITA
   add constraint FK_PAC_CIT foreign key (GHPAC_CODIGO)
      references GHPAC_PACIE (GHPAC_CODIGO)
go

alter table GHCON_CONTA
   add constraint FK_PAC_CON foreign key (GHPAC_CODIGO)
      references GHPAC_PACIE (GHPAC_CODIGO)
go

alter table GHDIA_DIAGN
   add constraint FK_EPI_DIA foreign key (GHEPI_CODIGO)
      references GHEPI_EPISO (GHEPI_CODIGO)
go

alter table GHDIS_DISPE
   add constraint FK_DPR_DIS foreign key (GHDPR_CODIGO)
      references GHDPR_DETPR (GHDPR_CODIGO)
go

alter table GHDIS_DISPE
   add constraint FK_LOT_DIS foreign key (GHLOT_CODIGO)
      references GHLOT_LOTE (GHLOT_CODIGO)
go

alter table GHDOC_DOCUM
   add constraint FK_EPI_DOC foreign key (GHEPI_CODIGO)
      references GHEPI_EPISO (GHEPI_CODIGO)
go

alter table GHDPR_DETPR
   add constraint FK_MED_DPR foreign key (GHMED_CODIGO)
      references GHMED_MEDIC (GHMED_CODIGO)
go

alter table GHDPR_DETPR
   add constraint FK_PRE_DPR foreign key (GHPRE_CODIGO)
      references GHPRE_PRESC (GHPRE_CODIGO)
go

alter table GHDSO_DETSO
   add constraint FK_EXA_DSO foreign key (GHEXA_CODIGO)
      references GHEXA_EXAME (GHEXA_CODIGO)
go

alter table GHDSO_DETSO
   add constraint FK_SOL_DSO foreign key (GHSOL_CODIGO)
      references GHSOL_SOLIC (GHSOL_CODIGO)
go

alter table GHEPI_EPISO
   add constraint FK_ADM_EPI foreign key (GHADM_CODIGO)
      references GHADM_ADMIS (GHADM_CODIGO)
go

alter table GHEPI_EPISO
   add constraint FK_HIS_EPI foreign key (GHHIS_CODIGO)
      references GHHIS_HISTO (GHHIS_CODIGO)
go

alter table GHEPI_EPISO
   add constraint FK_PRO_EPI foreign key (PEPRO_CODIGO)
      references PEPRO_PROFE (PEPRO_CODIGO)
go

alter table GHEST_ESTUD
   add constraint FK_EPI_ETI foreign key (GHEPI_CODIGO)
      references GHEPI_EPISO (GHEPI_CODIGO)
go

alter table GHHIS_HISTO
   add constraint FK_PAC_HIS foreign key (GHPAC_CODIGO)
      references GHPAC_PACIE (GHPAC_CODIGO)
go

alter table GHHOS_HOSPI
   add constraint FK_CAM_HOS foreign key (GHCAM_CODIGO)
      references GHCAM_CAMA (GHCAM_CODIGO)
go

alter table GHHOS_HOSPI
   add constraint FK_EPI_HOS foreign key (GHEPI_CODIGO)
      references GHEPI_EPISO (GHEPI_CODIGO)
go

alter table GHINF_INFOR
   add constraint FK_ETI_INF foreign key (GHEST_CODIGO)
      references GHEST_ESTUD (GHEST_CODIGO)
go

alter table GHLOT_LOTE
   add constraint FK_MED_LOT foreign key (GHMED_CODIGO)
      references GHMED_MEDIC (GHMED_CODIGO)
go

alter table GHMOV_MOVIM
   add constraint FK_LOT_MOV foreign key (GHLOT_CODIGO)
      references GHLOT_LOTE (GHLOT_CODIGO)
go

alter table GHMOV_MOVIM
   add constraint FK_USU_MOV foreign key (XEUSU_CODIGO)
      references XEUSU_USUAR (XEUSU_CODIGO)
go

alter table GHNOT_NOTA
   add constraint FK_EPI_NOT foreign key (GHEPI_CODIGO)
      references GHEPI_EPISO (GHEPI_CODIGO)
go

alter table GHNOT_NOTA
   add constraint FK_PRO_NOT foreign key (PEPRO_CODIGO)
      references PEPRO_PROFE (PEPRO_CODIGO)
go

alter table GHPRE_PRESC
   add constraint FK_EPI_PRE foreign key (GHEPI_CODIGO)
      references GHEPI_EPISO (GHEPI_CODIGO)
go

alter table GHPRE_PRESC
   add constraint FK_PRO_PRE foreign key (PEPRO_CODIGO)
      references PEPRO_PROFE (PEPRO_CODIGO)
go

alter table GHRES_RESUL
   add constraint FK_EXA_RES foreign key (GHEXA_CODIGO)
      references GHEXA_EXAME (GHEXA_CODIGO)
go

alter table GHRES_RESUL
   add constraint FK_SOL_RES foreign key (GHSOL_CODIGO)
      references GHSOL_SOLIC (GHSOL_CODIGO)
go

alter table GHSIG_SIGNO
   add constraint FK_EPI_SIG foreign key (GHEPI_CODIGO)
      references GHEPI_EPISO (GHEPI_CODIGO)
go

alter table GHSOL_SOLIC
   add constraint FK_EPI_SOL foreign key (GHEPI_CODIGO)
      references GHEPI_EPISO (GHEPI_CODIGO)
go

alter table GHSOL_SOLIC
   add constraint FK_PRO_SOL foreign key (PEPRO_CODIGO)
      references PEPRO_PROFE (PEPRO_CODIGO)
go

alter table GHTRA_TRASL
   add constraint FK_CAM_TRA foreign key (GHCAM_CODIGO)
      references GHCAM_CAMA (GHCAM_CODIGO)
go

alter table GHTRA_TRASL
   add constraint FK_HOS_TRA foreign key (GHHOS_CODIGO)
      references GHHOS_HOSPI (GHHOS_CODIGO)
go

alter table PECAR_CARGO
   add constraint FK_DEP_CAR foreign key (PEDEP_CODIGO)
      references PEDEP_DEPAR (PEDEP_CODIGO)
go

alter table PEPER_PERSO
   add constraint FK_CAR_PRS foreign key (PECAR_CODIGO)
      references PECAR_CARGO (PECAR_CODIGO)
go

alter table PEPER_PERSO
   add constraint FK_ESC_PRS foreign key (PEESC_CODIGO)
      references PEESC_ESTCI (PEESC_CODIGO)
go

alter table PEPER_PERSO
   add constraint FK_GEN_PRS foreign key (PEGEN_CODIGO)
      references PEGEN_GENER (PEGEN_CODIGO)
go

alter table PEPRO_PROFE
   add constraint FK_PRS_PRO foreign key (PEPER_CODIGO)
      references PEPER_PERSO (PEPER_CODIGO)
go

alter table PEPXE_PROES
   add constraint FK_ESP_PXE foreign key (PEESP_CODIGO)
      references PEESP_ESPEC (PEESP_CODIGO)
go

alter table PEPXE_PROES
   add constraint FK_PRO_PXE foreign key (PEPRO_CODIGO)
      references PEPRO_PROFE (PEPRO_CODIGO)
go

alter table XEAUD_AUDIT
   add constraint FK_USU_AUD foreign key (XEUSU_CODIGO)
      references XEUSU_USUAR (XEUSU_CODIGO)
go

alter table XEOPC_OPCIO
   add constraint FK_SIS_OPC foreign key (XESIS_CODIGO)
      references XESIS_SISTE (XESIS_CODIGO)
go

alter table XEOXP_OPCPE
   add constraint FK_OPC_OXP foreign key (XEOPC_CODIGO)
      references XEOPC_OPCIO (XEOPC_CODIGO)
go

alter table XEOXP_OPCPE
   add constraint FK_PER_OXP foreign key (XEPER_CODIGO)
      references XEPER_PERFI (XEPER_CODIGO)
go

alter table XESES_SESIO
   add constraint FK_USU_SES foreign key (XEUSU_CODIGO)
      references XEUSU_USUAR (XEUSU_CODIGO)
go

alter table XEUSU_USUAR
   add constraint FK_EST_USU foreign key (XEEST_CODIGO)
      references XEEST_ESTAD (XEEST_CODIGO)
go

alter table XEUSU_USUAR
   add constraint FK_PRS_USU foreign key (PEPER_CODIGO)
      references PEPER_PERSO (PEPER_CODIGO)
go

alter table XEUXP_USUPE
   add constraint FK_PER_UXP foreign key (XEPER_CODIGO)
      references XEPER_PERFI (XEPER_CODIGO)
go

alter table XEUXP_USUPE
   add constraint FK_USU_UXP foreign key (XEUSU_CODIGO)
      references XEUSU_USUAR (XEUSU_CODIGO)
go

