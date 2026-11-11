/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2/11/2026 20:23:40                           */
/*==============================================================*/


drop table if exists FICAS_CARSE;

drop table if exists FICUE_CUENT;

drop table if exists FIDFA_DETFA;

drop table if exists FIFAC_FACTU;

drop table if exists FIPAG_PAGO;

drop table if exists FISER_SERVI;

drop table if exists GHADM_ADMIS;

drop table if exists GHAGE_AGEND;

drop table if exists GHALE_ALERG;

drop table if exists GHALT_ALTA;

drop table if exists GHCAM_CAMA;

drop table if exists GHCIR_CIRUG;

drop table if exists GHCIT_CITA;

drop table if exists GHCON_CONTA;

drop table if exists GHDIA_DIAGN;

drop table if exists GHDIS_DISPE;

drop table if exists GHDOC_DOCUM;

drop table if exists GHDPR_DETPR;

drop table if exists GHDSO_DETSO;

drop table if exists GHEPI_EPISO;

drop table if exists GHEST_ESTUD;

drop table if exists GHEXA_EXAME;

drop table if exists GHHAB_HABIT;

drop table if exists GHHIS_HISTO;

drop table if exists GHHOS_HOSPI;

drop table if exists GHINF_INFOR;

drop table if exists GHLOT_LOTE;

drop table if exists GHMED_MEDIC;

drop table if exists GHMOV_MOVIM;

drop table if exists GHNOT_NOTA;

drop table if exists GHPAC_PACIE;

drop table if exists GHPRE_PRESC;

drop table if exists GHQUI_QUIRO;

drop table if exists GHRES_RESUL;

drop table if exists GHSIG_SIGNO;

drop table if exists GHSOL_SOLIC;

drop table if exists GHTRA_TRASL;

drop table if exists PECAR_CARGO;

drop table if exists PEDEP_DEPAR;

drop table if exists PEESC_ESTCI;

drop table if exists PEESP_ESPEC;

drop table if exists PEGEN_GENER;

drop table if exists PEPER_PERSO;

drop table if exists PEPRO_PROFE;

drop table if exists PEPXE_PROES;

drop table if exists XEAUD_AUDIT;

drop table if exists XEEST_ESTAD;

drop table if exists XEOPC_OPCIO;

drop table if exists XEOXP_OPCPE;

drop table if exists XEPAR_PARAM;

drop table if exists XEPER_PERFI;

drop table if exists XESES_SESIO;

drop table if exists XESIS_SISTE;

drop table if exists XEUSU_USUAR;

drop table if exists XEUXP_USUPE;

/*==============================================================*/
/* Table: FICAS_CARSE                                           */
/*==============================================================*/
create table FICAS_CARSE
(
   FICAS_CODIGO         int not null,
   FICUE_CODIGO         int not null,
   FISER_CODIGO         char(8) not null,
   FICAS_CANTID         int not null,
   FICAS_VALUNI         decimal(10,2) not null,
   FICAS_ORIGEN         varchar(50) not null,
   FICAS_FECHA          datetime not null,
   primary key (FICAS_CODIGO)
);

alter table FICAS_CARSE comment 'Cargos generados por servicios o productos prestados.';

/*==============================================================*/
/* Table: FICUE_CUENT                                           */
/*==============================================================*/
create table FICUE_CUENT
(
   FICUE_CODIGO         int not null,
   GHPAC_CODIGO         int not null,
   GHEPI_CODIGO         int,
   FICUE_FECAPE         datetime not null,
   FICUE_SALDO          decimal(12,2) not null,
   FICUE_ESTADO         varchar(15) not null,
   primary key (FICUE_CODIGO)
);

alter table FICUE_CUENT comment 'Cuenta de facturación del paciente.';

/*==============================================================*/
/* Table: FIDFA_DETFA                                           */
/*==============================================================*/
create table FIDFA_DETFA
(
   FIDFA_CODIGO         int not null,
   FIFAC_CODIGO         int not null,
   FICAS_CODIGO         int not null,
   FIDFA_DESCRI         varchar(150) not null,
   FIDFA_CANTID         int not null,
   FIDFA_VALUNI         decimal(10,2) not null,
   FIDFA_VALTOT         decimal(12,2) not null,
   primary key (FIDFA_CODIGO)
);

alter table FIDFA_DETFA comment 'Líneas de una factura.';

/*==============================================================*/
/* Table: FIFAC_FACTU                                           */
/*==============================================================*/
create table FIFAC_FACTU
(
   FIFAC_CODIGO         int not null,
   FICUE_CODIGO         int not null,
   FIFAC_NUMERO         varchar(20) not null,
   FIFAC_FECEMI         datetime not null,
   FIFAC_SUBTOT         decimal(12,2) not null,
   FIFAC_DESCUE         decimal(12,2) not null,
   FIFAC_IVA            decimal(12,2) not null,
   FIFAC_TOTAL          decimal(12,2) not null,
   FIFAC_ESTADO         varchar(15) not null,
   primary key (FIFAC_CODIGO)
);

alter table FIFAC_FACTU comment 'Documento de facturación.';

/*==============================================================*/
/* Table: FIPAG_PAGO                                            */
/*==============================================================*/
create table FIPAG_PAGO
(
   FIPAG_CODIGO         int not null,
   FIFAC_CODIGO         int not null,
   XEUSU_CODIGO         varchar(30) not null,
   FIPAG_FECHA          datetime not null,
   FIPAG_IMPORT         decimal(12,2) not null,
   FIPAG_MEDPAG         varchar(20) not null,
   FIPAG_ESTADO         varchar(15) not null,
   primary key (FIPAG_CODIGO)
);

alter table FIPAG_PAGO comment 'Pagos aplicados a una factura.';

/*==============================================================*/
/* Table: FISER_SERVI                                           */
/*==============================================================*/
create table FISER_SERVI
(
   FISER_CODIGO         char(8) not null,
   FISER_DESCRI         varchar(150) not null,
   FISER_TARIFA         decimal(10,2) not null,
   FISER_VIGENT         bool not null,
   primary key (FISER_CODIGO)
);

alter table FISER_SERVI comment 'Catálogo de servicios con tarifa.';

/*==============================================================*/
/* Table: GHADM_ADMIS                                           */
/*==============================================================*/
create table GHADM_ADMIS
(
   GHADM_CODIGO         int not null,
   GHPAC_CODIGO         int not null,
   GHCIT_CODIGO         int,
   GHADM_FECHA          datetime not null,
   GHADM_TIPATE         varchar(20) not null,
   GHADM_SERVIC         varchar(50) not null,
   GHADM_ESTADO         varchar(15) not null,
   primary key (GHADM_CODIGO)
);

alter table GHADM_ADMIS comment 'Ingreso administrativo del paciente para recibir atención.';

/*==============================================================*/
/* Table: GHAGE_AGEND                                           */
/*==============================================================*/
create table GHAGE_AGEND
(
   GHAGE_CODIGO         int not null,
   PEPRO_CODIGO         int not null,
   PEESP_CODIGO         char(4) not null,
   GHAGE_FECHA          date not null,
   GHAGE_HORINI         varchar(5) not null,
   GHAGE_HORFIN         varchar(5) not null,
   GHAGE_DURCIT         int not null,
   GHAGE_ESTADO         char(1) not null,
   primary key (GHAGE_CODIGO)
);

alter table GHAGE_AGEND comment 'Agenda de atención de un profesional.';

/*==============================================================*/
/* Table: GHALE_ALERG                                           */
/*==============================================================*/
create table GHALE_ALERG
(
   GHALE_CODIGO         int not null,
   GHHIS_CODIGO         int not null,
   GHALE_SUSTAN         varchar(100) not null,
   GHALE_REACCI         varchar(200),
   GHALE_FUENTE         varchar(50) not null,
   GHALE_ESTVER         varchar(15) not null,
   primary key (GHALE_CODIGO)
);

alter table GHALE_ALERG comment 'Alergias y reacciones adversas del paciente.';

/*==============================================================*/
/* Table: GHALT_ALTA                                            */
/*==============================================================*/
create table GHALT_ALTA
(
   GHALT_CODIGO         int not null,
   GHHOS_CODIGO         int not null,
   GHALT_FECHA          datetime not null,
   GHALT_TIPO           varchar(20) not null,
   GHALT_DIAEGR         varchar(200) not null,
   GHALT_INDSAL         text not null,
   primary key (GHALT_CODIGO)
);

alter table GHALT_ALTA comment 'Alta médica de la hospitalización.';

/*==============================================================*/
/* Table: GHCAM_CAMA                                            */
/*==============================================================*/
create table GHCAM_CAMA
(
   GHCAM_CODIGO         int not null,
   GHHAB_CODIGO         int not null,
   GHCAM_NUMERO         varchar(10) not null,
   GHCAM_ESTADO         varchar(20) not null,
   primary key (GHCAM_CODIGO)
);

alter table GHCAM_CAMA comment 'Camas hospitalarias y su estado.';

/*==============================================================*/
/* Table: GHCIR_CIRUG                                           */
/*==============================================================*/
create table GHCIR_CIRUG
(
   GHCIR_CODIGO         int not null,
   GHEPI_CODIGO         int not null,
   GHQUI_CODIGO         char(4) not null,
   PEPRO_CODIGO         int not null,
   GHCIR_PROCED         varchar(200) not null,
   GHCIR_FECPRO         datetime not null,
   GHCIR_HORINI         varchar(5),
   GHCIR_HORFIN         varchar(5),
   GHCIR_LISVER         bool not null,
   GHCIR_ESTADO         varchar(20) not null,
   primary key (GHCIR_CODIGO)
);

alter table GHCIR_CIRUG comment 'Programación y registro de procedimientos quirúrgicos.';

/*==============================================================*/
/* Table: GHCIT_CITA                                            */
/*==============================================================*/
create table GHCIT_CITA
(
   GHCIT_CODIGO         int not null,
   GHAGE_CODIGO         int not null,
   GHPAC_CODIGO         int not null,
   GHCIT_FECHA          date not null,
   GHCIT_HORA           varchar(5) not null,
   GHCIT_MOTIVO         varchar(200) not null,
   GHCIT_ESTADO         varchar(15) not null,
   GHCIT_MOTCAN         varchar(200),
   primary key (GHCIT_CODIGO)
);

alter table GHCIT_CITA comment 'Reserva de atención en consulta externa.';

/*==============================================================*/
/* Table: GHCON_CONTA                                           */
/*==============================================================*/
create table GHCON_CONTA
(
   GHCON_CODIGO         int not null,
   GHPAC_CODIGO         int not null,
   GHCON_NOMBRE         varchar(100) not null,
   GHCON_PARENT         varchar(30) not null,
   GHCON_TELEFO         varchar(15) not null,
   primary key (GHCON_CODIGO)
);

alter table GHCON_CONTA comment 'Contactos de emergencia o representantes del paciente.';

/*==============================================================*/
/* Table: GHDIA_DIAGN                                           */
/*==============================================================*/
create table GHDIA_DIAGN
(
   GHDIA_CODIGO         int not null,
   GHEPI_CODIGO         int not null,
   GHDIA_CIE10          varchar(10) not null,
   GHDIA_DESCRI         varchar(200) not null,
   GHDIA_TIPO           varchar(15) not null,
   primary key (GHDIA_CODIGO)
);

alter table GHDIA_DIAGN comment 'Diagnósticos (CIE-10) del episodio.';

/*==============================================================*/
/* Table: GHDIS_DISPE                                           */
/*==============================================================*/
create table GHDIS_DISPE
(
   GHDIS_CODIGO         int not null,
   GHDPR_CODIGO         int not null,
   GHLOT_CODIGO         int not null,
   GHDIS_FECHA          datetime not null,
   GHDIS_CANENT         int not null,
   GHDIS_CANPEN         int not null,
   GHDIS_ESTADO         varchar(20) not null,
   primary key (GHDIS_CODIGO)
);

alter table GHDIS_DISPE comment 'Entrega de medicamentos por farmacia.';

/*==============================================================*/
/* Table: GHDOC_DOCUM                                           */
/*==============================================================*/
create table GHDOC_DOCUM
(
   GHDOC_CODIGO         int not null,
   GHEPI_CODIGO         int not null,
   GHDOC_TIPO           varchar(30) not null,
   GHDOC_NOMBRE         varchar(150) not null,
   GHDOC_RUTA           varchar(250) not null,
   GHDOC_FECHA          datetime not null,
   primary key (GHDOC_CODIGO)
);

alter table GHDOC_DOCUM comment 'Documentos clínicos adjuntos al episodio.';

/*==============================================================*/
/* Table: GHDPR_DETPR                                           */
/*==============================================================*/
create table GHDPR_DETPR
(
   GHDPR_CODIGO         int not null,
   GHPRE_CODIGO         int not null,
   GHMED_CODIGO         int not null,
   GHDPR_DOSIS          varchar(50) not null,
   GHDPR_VIA            varchar(30) not null,
   GHDPR_FRECUE         varchar(50) not null,
   GHDPR_DURACI         int not null,
   GHDPR_CANTID         int not null,
   primary key (GHDPR_CODIGO)
);

alter table GHDPR_DETPR comment 'Medicamentos prescritos con dosis y frecuencia.';

/*==============================================================*/
/* Table: GHDSO_DETSO                                           */
/*==============================================================*/
create table GHDSO_DETSO
(
   GHEXA_CODIGO         char(6) not null,
   GHSOL_CODIGO         int not null,
   GHDSO_ESTADO         varchar(20) not null,
   primary key (GHEXA_CODIGO, GHSOL_CODIGO)
);

alter table GHDSO_DETSO comment 'Exámenes incluidos en una solicitud.';

/*==============================================================*/
/* Table: GHEPI_EPISO                                           */
/*==============================================================*/
create table GHEPI_EPISO
(
   GHEPI_CODIGO         int not null,
   GHHIS_CODIGO         int not null,
   GHADM_CODIGO         int,
   PEPRO_CODIGO         int not null,
   GHEPI_FECINI         datetime not null,
   GHEPI_TIPATE         varchar(20) not null,
   GHEPI_SERVIC         varchar(50) not null,
   GHEPI_PRIORI         varchar(15),
   GHEPI_DISPOS         varchar(30),
   GHEPI_ESTADO         varchar(15) not null,
   primary key (GHEPI_CODIGO)
);

alter table GHEPI_EPISO comment 'Agrupación de una atención (consulta, emergencia u hospitali';

/*==============================================================*/
/* Table: GHEST_ESTUD                                           */
/*==============================================================*/
create table GHEST_ESTUD
(
   GHEST_CODIGO         int not null,
   GHEPI_CODIGO         int not null,
   GHEST_TIPO           varchar(50) not null,
   GHEST_REGION         varchar(50) not null,
   GHEST_INDICA         varchar(300) not null,
   GHEST_FECPRO         datetime,
   GHEST_ESTADO         varchar(20) not null,
   primary key (GHEST_CODIGO)
);

alter table GHEST_ESTUD comment 'Solicitud y ejecución de estudios de imagen.';

/*==============================================================*/
/* Table: GHEXA_EXAME                                           */
/*==============================================================*/
create table GHEXA_EXAME
(
   GHEXA_CODIGO         char(6) not null,
   GHEXA_NOMBRE         varchar(100) not null,
   GHEXA_TIPMUE         varchar(30) not null,
   GHEXA_UNIDAD         varchar(20),
   GHEXA_RANREF         varchar(50),
   primary key (GHEXA_CODIGO)
);

alter table GHEXA_EXAME comment 'Catálogo de exámenes de laboratorio.';

/*==============================================================*/
/* Table: GHHAB_HABIT                                           */
/*==============================================================*/
create table GHHAB_HABIT
(
   GHHAB_CODIGO         int not null,
   GHHAB_NUMERO         varchar(10) not null,
   GHHAB_AREA           varchar(50) not null,
   GHHAB_SERVIC         varchar(50) not null,
   primary key (GHHAB_CODIGO)
);

alter table GHHAB_HABIT comment 'Habitaciones por área y servicio.';

/*==============================================================*/
/* Table: GHHIS_HISTO                                           */
/*==============================================================*/
create table GHHIS_HISTO
(
   GHHIS_CODIGO         int not null,
   GHPAC_CODIGO         int not null,
   GHHIS_NUMERO         varchar(20) not null,
   GHHIS_FECAPE         date not null,
   primary key (GHHIS_CODIGO)
);

alter table GHHIS_HISTO comment 'Historia clínica electrónica única por paciente.';

/*==============================================================*/
/* Table: GHHOS_HOSPI                                           */
/*==============================================================*/
create table GHHOS_HOSPI
(
   GHHOS_CODIGO         int not null,
   GHEPI_CODIGO         int not null,
   GHCAM_CODIGO         int,
   GHHOS_FECING         datetime not null,
   GHHOS_FECEGR         datetime,
   GHHOS_SERVIC         varchar(50) not null,
   GHHOS_ESTADO         varchar(20) not null,
   primary key (GHHOS_CODIGO)
);

alter table GHHOS_HOSPI comment 'Ingreso hospitalario de un episodio.';

/*==============================================================*/
/* Table: GHINF_INFOR                                           */
/*==============================================================*/
create table GHINF_INFOR
(
   GHINF_CODIGO         int not null,
   GHEST_CODIGO         int not null,
   GHINF_TEXTO          text not null,
   GHINF_ESTADO         varchar(15) not null,
   GHINF_FECEMI         datetime,
   primary key (GHINF_CODIGO)
);

alter table GHINF_INFOR comment 'Informe radiológico de un estudio.';

/*==============================================================*/
/* Table: GHLOT_LOTE                                            */
/*==============================================================*/
create table GHLOT_LOTE
(
   GHLOT_CODIGO         int not null,
   GHMED_CODIGO         int not null,
   GHLOT_NUMERO         varchar(30) not null,
   GHLOT_FECCAD         date not null,
   GHLOT_CANDIS         int not null,
   GHLOT_ESTADO         varchar(15) not null,
   primary key (GHLOT_CODIGO)
);

alter table GHLOT_LOTE comment 'Lotes de medicamento con fecha de caducidad.';

/*==============================================================*/
/* Table: GHMED_MEDIC                                           */
/*==============================================================*/
create table GHMED_MEDIC
(
   GHMED_CODIGO         int not null,
   GHMED_NOMGEN         varchar(100) not null,
   GHMED_PRESEN         varchar(50) not null,
   GHMED_CONCEN         varchar(30) not null,
   GHMED_FORFAR         varchar(30) not null,
   GHMED_UNIMED         varchar(20) not null,
   GHMED_STKMIN         int not null,
   primary key (GHMED_CODIGO)
);

alter table GHMED_MEDIC comment 'Catálogo de medicamentos.';

/*==============================================================*/
/* Table: GHMOV_MOVIM                                           */
/*==============================================================*/
create table GHMOV_MOVIM
(
   GHMOV_CODIGO         int not null,
   GHLOT_CODIGO         int not null,
   XEUSU_CODIGO         varchar(30) not null,
   GHMOV_TIPO           varchar(15) not null,
   GHMOV_CANTID         int not null,
   GHMOV_MOTIVO         varchar(200) not null,
   GHMOV_FECHA          datetime not null,
   GHMOV_DOCRES         varchar(50),
   primary key (GHMOV_CODIGO)
);

alter table GHMOV_MOVIM comment 'Entradas, salidas y ajustes de inventario.';

/*==============================================================*/
/* Table: GHNOT_NOTA                                            */
/*==============================================================*/
create table GHNOT_NOTA
(
   GHNOT_CODIGO         int not null,
   GHEPI_CODIGO         int not null,
   PEPRO_CODIGO         int not null,
   GHNOT_TIPO           varchar(20) not null,
   GHNOT_MOTIVO         varchar(500),
   GHNOT_EXAFIS         text,
   GHNOT_EVALUA         text,
   GHNOT_PLANTR         text,
   GHNOT_FECHA          datetime not null,
   GHNOT_ESTADO         varchar(15) not null,
   primary key (GHNOT_CODIGO)
);

alter table GHNOT_NOTA comment 'Consulta o nota de evolución registrada por un profesional.';

/*==============================================================*/
/* Table: GHPAC_PACIE                                           */
/*==============================================================*/
create table GHPAC_PACIE
(
   GHPAC_CODIGO         int not null,
   GHPAC_IDHOSP         varchar(15) not null,
   GHPAC_TIPDOC         char(3) not null,
   GHPAC_NUMDOC         varchar(20) not null,
   GHPAC_NOMBRE         varchar(80) not null,
   GHPAC_APELLI         varchar(80) not null,
   GHPAC_FECNAC         date not null,
   GHPAC_TELEFO         varchar(15),
   GHPAC_EMAIL          varchar(80),
   GHPAC_DIRECC         varchar(150),
   GHPAC_FECREG         datetime not null,
   GHPAC_ESTREG         char(1) not null,
   primary key (GHPAC_CODIGO)
);

alter table GHPAC_PACIE comment 'Paciente con identificador hospitalario único.';

/*==============================================================*/
/* Table: GHPRE_PRESC                                           */
/*==============================================================*/
create table GHPRE_PRESC
(
   GHPRE_CODIGO         int not null,
   GHEPI_CODIGO         int not null,
   PEPRO_CODIGO         int not null,
   GHPRE_FECHA          datetime not null,
   GHPRE_ESTADO         varchar(20) not null,
   GHPRE_OBSERV         varchar(300),
   primary key (GHPRE_CODIGO)
);

alter table GHPRE_PRESC comment 'Receta médica emitida en un episodio.';

/*==============================================================*/
/* Table: GHQUI_QUIRO                                           */
/*==============================================================*/
create table GHQUI_QUIRO
(
   GHQUI_CODIGO         char(4) not null,
   GHQUI_NOMBRE         varchar(50) not null,
   GHQUI_ESTADO         varchar(15) not null,
   primary key (GHQUI_CODIGO)
);

alter table GHQUI_QUIRO comment 'Quirófanos del hospital.';

/*==============================================================*/
/* Table: GHRES_RESUL                                           */
/*==============================================================*/
create table GHRES_RESUL
(
   GHRES_CODIGO         int not null,
   GHSOL_CODIGO         int not null,
   GHEXA_CODIGO         char(6) not null,
   GHRES_VALOR          varchar(50) not null,
   GHRES_OBSERV         varchar(300),
   GHRES_FECPRO         datetime not null,
   GHRES_ESTADO         varchar(20) not null,
   GHRES_FECVAL         datetime,
   primary key (GHRES_CODIGO)
);

alter table GHRES_RESUL comment 'Resultado de un examen de laboratorio.';

/*==============================================================*/
/* Table: GHSIG_SIGNO                                           */
/*==============================================================*/
create table GHSIG_SIGNO
(
   GHSIG_CODIGO         int not null,
   GHEPI_CODIGO         int not null,
   GHSIG_PRESIO         varchar(10),
   GHSIG_FRECAR         int,
   GHSIG_FRERES         int,
   GHSIG_TEMPER         decimal(4,1),
   GHSIG_SATURA         int,
   GHSIG_PESO           decimal(5,2),
   GHSIG_TALLA          decimal(5,2),
   GHSIG_FECHA          datetime not null,
   primary key (GHSIG_CODIGO)
);

alter table GHSIG_SIGNO comment 'Signos vitales registrados por enfermería.';

/*==============================================================*/
/* Table: GHSOL_SOLIC                                           */
/*==============================================================*/
create table GHSOL_SOLIC
(
   GHSOL_CODIGO         int not null,
   GHEPI_CODIGO         int not null,
   PEPRO_CODIGO         int not null,
   GHSOL_FECHA          datetime not null,
   GHSOL_PRIORI         varchar(15) not null,
   GHSOL_INDICA         varchar(300),
   GHSOL_ESTADO         varchar(20) not null,
   primary key (GHSOL_CODIGO)
);

alter table GHSOL_SOLIC comment 'Solicitud de exámenes de laboratorio.';

/*==============================================================*/
/* Table: GHTRA_TRASL                                           */
/*==============================================================*/
create table GHTRA_TRASL
(
   GHTRA_CODIGO         int not null,
   GHHOS_CODIGO         int not null,
   GHCAM_CODIGO         int not null,
   GHTRA_FECHA          datetime not null,
   GHTRA_MOTIVO         varchar(200) not null,
   primary key (GHTRA_CODIGO)
);

alter table GHTRA_TRASL comment 'Traslados de cama o servicio.';

/*==============================================================*/
/* Table: PECAR_CARGO                                           */
/*==============================================================*/
create table PECAR_CARGO
(
   PECAR_CODIGO         char(3) not null,
   PEDEP_CODIGO         char(3) not null,
   PECAR_DESCRI         varchar(50) not null,
   primary key (PECAR_CODIGO)
);

alter table PECAR_CARGO comment 'Cargos que pertenecen a un departamento.';

/*==============================================================*/
/* Table: PEDEP_DEPAR                                           */
/*==============================================================*/
create table PEDEP_DEPAR
(
   PEDEP_CODIGO         char(3) not null,
   PEDEP_DESCRI         varchar(50) not null,
   primary key (PEDEP_CODIGO)
);

alter table PEDEP_DEPAR comment 'Departamentos o servicios del hospital.';

/*==============================================================*/
/* Table: PEESC_ESTCI                                           */
/*==============================================================*/
create table PEESC_ESTCI
(
   PEESC_CODIGO         char(1) not null,
   PEESC_DESCRI         varchar(50) not null,
   primary key (PEESC_CODIGO)
);

alter table PEESC_ESTCI comment 'Catálogo del estado civil de una persona.';

/*==============================================================*/
/* Table: PEESP_ESPEC                                           */
/*==============================================================*/
create table PEESP_ESPEC
(
   PEESP_CODIGO         char(4) not null,
   PEESP_DESCRI         varchar(80) not null,
   PEESP_ESTADO         char(1) not null,
   primary key (PEESP_CODIGO)
);

alter table PEESP_ESPEC comment 'Catálogo de especialidades médicas.';

/*==============================================================*/
/* Table: PEGEN_GENER                                           */
/*==============================================================*/
create table PEGEN_GENER
(
   PEGEN_CODIGO         char(1) not null,
   PEGEN_DESCRI         varchar(50) not null,
   primary key (PEGEN_CODIGO)
);

alter table PEGEN_GENER comment 'Catálogo del género o sexo de una persona.';

/*==============================================================*/
/* Table: PEPER_PERSO                                           */
/*==============================================================*/
create table PEPER_PERSO
(
   PEPER_CODIGO         char(10) not null,
   PEGEN_CODIGO         char(1) not null,
   PEESC_CODIGO         char(1) not null,
   PECAR_CODIGO         char(3),
   PEPER_CEDULA         varchar(10) not null,
   PEPER_PASAPO         varchar(15),
   PEPER_NOMBRE         varchar(50) not null,
   PEPER_APELLI         varchar(50) not null,
   PEPER_FECNAC         date not null,
   PEPER_EMAIL          varchar(80) not null,
   PEPER_TELEFO         varchar(15),
   PEPER_DIRECC         varchar(150),
   PEPER_FOTO           varchar(200),
   PEPER_CARFAM         int,
   PEPER_DISCAP         bool,
   primary key (PEPER_CODIGO)
);

alter table PEPER_PERSO comment 'Entidad utilizada para gestionar las personas (empleados) qu';

/*==============================================================*/
/* Table: PEPRO_PROFE                                           */
/*==============================================================*/
create table PEPRO_PROFE
(
   PEPRO_CODIGO         int not null,
   PEPER_CODIGO         char(10) not null,
   PEPRO_REGPRO         varchar(20) not null,
   PEPRO_TIPO           varchar(30) not null,
   primary key (PEPRO_CODIGO)
);

alter table PEPRO_PROFE comment 'Profesional de la salud (médico, enfermero, laboratorista, e';

/*==============================================================*/
/* Table: PEPXE_PROES                                           */
/*==============================================================*/
create table PEPXE_PROES
(
   PEESP_CODIGO         char(4) not null,
   PEPRO_CODIGO         int not null,
   PEPXE_FECREG         date not null,
   primary key (PEESP_CODIGO, PEPRO_CODIGO)
);

alter table PEPXE_PROES comment 'Especialidades que tiene cada profesional.';

/*==============================================================*/
/* Table: XEAUD_AUDIT                                           */
/*==============================================================*/
create table XEAUD_AUDIT
(
   XEAUD_CODIGO         int not null,
   XEUSU_CODIGO         varchar(30) not null,
   XEAUD_FECHA          datetime not null,
   XEAUD_MODULO         varchar(50) not null,
   XEAUD_OPERAC         varchar(50) not null,
   XEAUD_OBJETO         varchar(100) not null,
   XEAUD_RESULT         varchar(20) not null,
   XEAUD_IPORIG         varchar(45),
   primary key (XEAUD_CODIGO)
);

alter table XEAUD_AUDIT comment 'Registro inalterable de eventos relevantes del sistema.';

/*==============================================================*/
/* Table: XEEST_ESTAD                                           */
/*==============================================================*/
create table XEEST_ESTAD
(
   XEEST_CODIGO         char(1) not null,
   XEEST_DESCRI         varchar(50) not null,
   primary key (XEEST_CODIGO)
);

alter table XEEST_ESTAD comment 'Estados de los registros (activo, inactivo, bloqueado).';

/*==============================================================*/
/* Table: XEOPC_OPCIO                                           */
/*==============================================================*/
create table XEOPC_OPCIO
(
   XEOPC_CODIGO         char(5) not null,
   XESIS_CODIGO         char(3) not null,
   XEOPC_DESCRI         varchar(100) not null,
   XEOPC_URL            varchar(150),
   primary key (XEOPC_CODIGO)
);

alter table XEOPC_OPCIO comment 'Opciones (menús/operaciones) de un subsistema.';

/*==============================================================*/
/* Table: XEOXP_OPCPE                                           */
/*==============================================================*/
create table XEOXP_OPCPE
(
   XEOPC_CODIGO         char(5) not null,
   XEPER_CODIGO         char(8) not null,
   XEOXP_FECASI         date not null,
   XEOXP_FECRET         date,
   primary key (XEOPC_CODIGO, XEPER_CODIGO, XEOXP_FECASI)
);

alter table XEOXP_OPCPE comment 'Opciones permitidas para cada perfil.';

/*==============================================================*/
/* Table: XEPAR_PARAM                                           */
/*==============================================================*/
create table XEPAR_PARAM
(
   XEPAR_CLAVE          varchar(50) not null,
   XEPAR_VALOR          varchar(200) not null,
   XEPAR_DESCRI         varchar(200),
   XEPAR_FECMOD         datetime not null,
   primary key (XEPAR_CLAVE)
);

alter table XEPAR_PARAM comment 'Parámetros de configuración del sistema.';

/*==============================================================*/
/* Table: XEPER_PERFI                                           */
/*==============================================================*/
create table XEPER_PERFI
(
   XEPER_CODIGO         char(8) not null,
   XEPER_DESCRI         varchar(100) not null,
   XEPER_OBSER          varchar(500),
   primary key (XEPER_CODIGO)
);

alter table XEPER_PERFI comment 'Perfiles o roles de usuario.';

/*==============================================================*/
/* Table: XESES_SESIO                                           */
/*==============================================================*/
create table XESES_SESIO
(
   XESES_CODIGO         int not null,
   XEUSU_CODIGO         varchar(30) not null,
   XESES_FECINI         datetime not null,
   XESES_FECFIN         datetime,
   XESES_DIRIP          varchar(45),
   XESES_ESTADO         char(1) not null,
   primary key (XESES_CODIGO)
);

alter table XESES_SESIO comment 'Sesiones de trabajo de los usuarios en el sistema (inicio, c';

/*==============================================================*/
/* Table: XESIS_SISTE                                           */
/*==============================================================*/
create table XESIS_SISTE
(
   XESIS_CODIGO         char(3) not null,
   XESIS_DESCRI         varchar(50) not null,
   primary key (XESIS_CODIGO)
);

alter table XESIS_SISTE comment 'Subsistemas del SIGH.';

/*==============================================================*/
/* Table: XEUSU_USUAR                                           */
/*==============================================================*/
create table XEUSU_USUAR
(
   XEUSU_CODIGO         varchar(30) not null,
   PEPER_CODIGO         char(10) not null,
   XEEST_CODIGO         char(1) not null,
   XEUSU_PASWD          varchar(255) not null,
   XEUSU_FECCRE         datetime not null,
   XEUSU_FECMOD         datetime,
   XEUSU_INTFAL         int not null,
   XEUSU_ULTACC         datetime,
   XEUSU_PIEFIR         varchar(100),
   primary key (XEUSU_CODIGO)
);

alter table XEUSU_USUAR comment 'Cuentas individuales de acceso al sistema.';

/*==============================================================*/
/* Table: XEUXP_USUPE                                           */
/*==============================================================*/
create table XEUXP_USUPE
(
   XEPER_CODIGO         char(8) not null,
   XEUSU_CODIGO         varchar(30) not null,
   XEUXP_FECASI         date not null,
   XEUXP_FECRET         date,
   primary key (XEPER_CODIGO, XEUSU_CODIGO, XEUXP_FECASI)
);

alter table XEUXP_USUPE comment 'Perfiles asignados a cada usuario.';

alter table FICAS_CARSE add constraint FK_CUE_CAS foreign key (FICUE_CODIGO)
      references FICUE_CUENT (FICUE_CODIGO) on delete restrict on update restrict;

alter table FICAS_CARSE add constraint FK_SER_CAS foreign key (FISER_CODIGO)
      references FISER_SERVI (FISER_CODIGO) on delete restrict on update restrict;

alter table FICUE_CUENT add constraint FK_EPI_CUE foreign key (GHEPI_CODIGO)
      references GHEPI_EPISO (GHEPI_CODIGO) on delete restrict on update restrict;

alter table FICUE_CUENT add constraint FK_PAC_CUE foreign key (GHPAC_CODIGO)
      references GHPAC_PACIE (GHPAC_CODIGO) on delete restrict on update restrict;

alter table FIDFA_DETFA add constraint FK_CAS_DFA foreign key (FICAS_CODIGO)
      references FICAS_CARSE (FICAS_CODIGO) on delete restrict on update restrict;

alter table FIDFA_DETFA add constraint FK_FAC_DFA foreign key (FIFAC_CODIGO)
      references FIFAC_FACTU (FIFAC_CODIGO) on delete restrict on update restrict;

alter table FIFAC_FACTU add constraint FK_CUE_FAC foreign key (FICUE_CODIGO)
      references FICUE_CUENT (FICUE_CODIGO) on delete restrict on update restrict;

alter table FIPAG_PAGO add constraint FK_FAC_PAG foreign key (FIFAC_CODIGO)
      references FIFAC_FACTU (FIFAC_CODIGO) on delete restrict on update restrict;

alter table FIPAG_PAGO add constraint FK_USU_PAG foreign key (XEUSU_CODIGO)
      references XEUSU_USUAR (XEUSU_CODIGO) on delete restrict on update restrict;

alter table GHADM_ADMIS add constraint FK_CIT_ADM foreign key (GHCIT_CODIGO)
      references GHCIT_CITA (GHCIT_CODIGO) on delete restrict on update restrict;

alter table GHADM_ADMIS add constraint FK_PAC_ADM foreign key (GHPAC_CODIGO)
      references GHPAC_PACIE (GHPAC_CODIGO) on delete restrict on update restrict;

alter table GHAGE_AGEND add constraint FK_ESP_AGE foreign key (PEESP_CODIGO)
      references PEESP_ESPEC (PEESP_CODIGO) on delete restrict on update restrict;

alter table GHAGE_AGEND add constraint FK_PRO_AGE foreign key (PEPRO_CODIGO)
      references PEPRO_PROFE (PEPRO_CODIGO) on delete restrict on update restrict;

alter table GHALE_ALERG add constraint FK_HIS_ALE foreign key (GHHIS_CODIGO)
      references GHHIS_HISTO (GHHIS_CODIGO) on delete restrict on update restrict;

alter table GHALT_ALTA add constraint FK_HOS_ALT foreign key (GHHOS_CODIGO)
      references GHHOS_HOSPI (GHHOS_CODIGO) on delete restrict on update restrict;

alter table GHCAM_CAMA add constraint FK_HAB_CAM foreign key (GHHAB_CODIGO)
      references GHHAB_HABIT (GHHAB_CODIGO) on delete restrict on update restrict;

alter table GHCIR_CIRUG add constraint FK_EPI_CIR foreign key (GHEPI_CODIGO)
      references GHEPI_EPISO (GHEPI_CODIGO) on delete restrict on update restrict;

alter table GHCIR_CIRUG add constraint FK_PRO_CIR foreign key (PEPRO_CODIGO)
      references PEPRO_PROFE (PEPRO_CODIGO) on delete restrict on update restrict;

alter table GHCIR_CIRUG add constraint FK_QUI_CIR foreign key (GHQUI_CODIGO)
      references GHQUI_QUIRO (GHQUI_CODIGO) on delete restrict on update restrict;

alter table GHCIT_CITA add constraint FK_AGE_CIT foreign key (GHAGE_CODIGO)
      references GHAGE_AGEND (GHAGE_CODIGO) on delete restrict on update restrict;

alter table GHCIT_CITA add constraint FK_PAC_CIT foreign key (GHPAC_CODIGO)
      references GHPAC_PACIE (GHPAC_CODIGO) on delete restrict on update restrict;

alter table GHCON_CONTA add constraint FK_PAC_CON foreign key (GHPAC_CODIGO)
      references GHPAC_PACIE (GHPAC_CODIGO) on delete restrict on update restrict;

alter table GHDIA_DIAGN add constraint FK_EPI_DIA foreign key (GHEPI_CODIGO)
      references GHEPI_EPISO (GHEPI_CODIGO) on delete restrict on update restrict;

alter table GHDIS_DISPE add constraint FK_DPR_DIS foreign key (GHDPR_CODIGO)
      references GHDPR_DETPR (GHDPR_CODIGO) on delete restrict on update restrict;

alter table GHDIS_DISPE add constraint FK_LOT_DIS foreign key (GHLOT_CODIGO)
      references GHLOT_LOTE (GHLOT_CODIGO) on delete restrict on update restrict;

alter table GHDOC_DOCUM add constraint FK_EPI_DOC foreign key (GHEPI_CODIGO)
      references GHEPI_EPISO (GHEPI_CODIGO) on delete restrict on update restrict;

alter table GHDPR_DETPR add constraint FK_MED_DPR foreign key (GHMED_CODIGO)
      references GHMED_MEDIC (GHMED_CODIGO) on delete restrict on update restrict;

alter table GHDPR_DETPR add constraint FK_PRE_DPR foreign key (GHPRE_CODIGO)
      references GHPRE_PRESC (GHPRE_CODIGO) on delete restrict on update restrict;

alter table GHDSO_DETSO add constraint FK_EXA_DSO foreign key (GHEXA_CODIGO)
      references GHEXA_EXAME (GHEXA_CODIGO) on delete restrict on update restrict;

alter table GHDSO_DETSO add constraint FK_SOL_DSO foreign key (GHSOL_CODIGO)
      references GHSOL_SOLIC (GHSOL_CODIGO) on delete restrict on update restrict;

alter table GHEPI_EPISO add constraint FK_ADM_EPI foreign key (GHADM_CODIGO)
      references GHADM_ADMIS (GHADM_CODIGO) on delete restrict on update restrict;

alter table GHEPI_EPISO add constraint FK_HIS_EPI foreign key (GHHIS_CODIGO)
      references GHHIS_HISTO (GHHIS_CODIGO) on delete restrict on update restrict;

alter table GHEPI_EPISO add constraint FK_PRO_EPI foreign key (PEPRO_CODIGO)
      references PEPRO_PROFE (PEPRO_CODIGO) on delete restrict on update restrict;

alter table GHEST_ESTUD add constraint FK_EPI_ETI foreign key (GHEPI_CODIGO)
      references GHEPI_EPISO (GHEPI_CODIGO) on delete restrict on update restrict;

alter table GHHIS_HISTO add constraint FK_PAC_HIS foreign key (GHPAC_CODIGO)
      references GHPAC_PACIE (GHPAC_CODIGO) on delete restrict on update restrict;

alter table GHHOS_HOSPI add constraint FK_CAM_HOS foreign key (GHCAM_CODIGO)
      references GHCAM_CAMA (GHCAM_CODIGO) on delete restrict on update restrict;

alter table GHHOS_HOSPI add constraint FK_EPI_HOS foreign key (GHEPI_CODIGO)
      references GHEPI_EPISO (GHEPI_CODIGO) on delete restrict on update restrict;

alter table GHINF_INFOR add constraint FK_ETI_INF foreign key (GHEST_CODIGO)
      references GHEST_ESTUD (GHEST_CODIGO) on delete restrict on update restrict;

alter table GHLOT_LOTE add constraint FK_MED_LOT foreign key (GHMED_CODIGO)
      references GHMED_MEDIC (GHMED_CODIGO) on delete restrict on update restrict;

alter table GHMOV_MOVIM add constraint FK_LOT_MOV foreign key (GHLOT_CODIGO)
      references GHLOT_LOTE (GHLOT_CODIGO) on delete restrict on update restrict;

alter table GHMOV_MOVIM add constraint FK_USU_MOV foreign key (XEUSU_CODIGO)
      references XEUSU_USUAR (XEUSU_CODIGO) on delete restrict on update restrict;

alter table GHNOT_NOTA add constraint FK_EPI_NOT foreign key (GHEPI_CODIGO)
      references GHEPI_EPISO (GHEPI_CODIGO) on delete restrict on update restrict;

alter table GHNOT_NOTA add constraint FK_PRO_NOT foreign key (PEPRO_CODIGO)
      references PEPRO_PROFE (PEPRO_CODIGO) on delete restrict on update restrict;

alter table GHPRE_PRESC add constraint FK_EPI_PRE foreign key (GHEPI_CODIGO)
      references GHEPI_EPISO (GHEPI_CODIGO) on delete restrict on update restrict;

alter table GHPRE_PRESC add constraint FK_PRO_PRE foreign key (PEPRO_CODIGO)
      references PEPRO_PROFE (PEPRO_CODIGO) on delete restrict on update restrict;

alter table GHRES_RESUL add constraint FK_EXA_RES foreign key (GHEXA_CODIGO)
      references GHEXA_EXAME (GHEXA_CODIGO) on delete restrict on update restrict;

alter table GHRES_RESUL add constraint FK_SOL_RES foreign key (GHSOL_CODIGO)
      references GHSOL_SOLIC (GHSOL_CODIGO) on delete restrict on update restrict;

alter table GHSIG_SIGNO add constraint FK_EPI_SIG foreign key (GHEPI_CODIGO)
      references GHEPI_EPISO (GHEPI_CODIGO) on delete restrict on update restrict;

alter table GHSOL_SOLIC add constraint FK_EPI_SOL foreign key (GHEPI_CODIGO)
      references GHEPI_EPISO (GHEPI_CODIGO) on delete restrict on update restrict;

alter table GHSOL_SOLIC add constraint FK_PRO_SOL foreign key (PEPRO_CODIGO)
      references PEPRO_PROFE (PEPRO_CODIGO) on delete restrict on update restrict;

alter table GHTRA_TRASL add constraint FK_CAM_TRA foreign key (GHCAM_CODIGO)
      references GHCAM_CAMA (GHCAM_CODIGO) on delete restrict on update restrict;

alter table GHTRA_TRASL add constraint FK_HOS_TRA foreign key (GHHOS_CODIGO)
      references GHHOS_HOSPI (GHHOS_CODIGO) on delete restrict on update restrict;

alter table PECAR_CARGO add constraint FK_DEP_CAR foreign key (PEDEP_CODIGO)
      references PEDEP_DEPAR (PEDEP_CODIGO) on delete restrict on update restrict;

alter table PEPER_PERSO add constraint FK_CAR_PRS foreign key (PECAR_CODIGO)
      references PECAR_CARGO (PECAR_CODIGO) on delete restrict on update restrict;

alter table PEPER_PERSO add constraint FK_ESC_PRS foreign key (PEESC_CODIGO)
      references PEESC_ESTCI (PEESC_CODIGO) on delete restrict on update restrict;

alter table PEPER_PERSO add constraint FK_GEN_PRS foreign key (PEGEN_CODIGO)
      references PEGEN_GENER (PEGEN_CODIGO) on delete restrict on update restrict;

alter table PEPRO_PROFE add constraint FK_PRS_PRO foreign key (PEPER_CODIGO)
      references PEPER_PERSO (PEPER_CODIGO) on delete restrict on update restrict;

alter table PEPXE_PROES add constraint FK_ESP_PXE foreign key (PEESP_CODIGO)
      references PEESP_ESPEC (PEESP_CODIGO) on delete restrict on update restrict;

alter table PEPXE_PROES add constraint FK_PRO_PXE foreign key (PEPRO_CODIGO)
      references PEPRO_PROFE (PEPRO_CODIGO) on delete restrict on update restrict;

alter table XEAUD_AUDIT add constraint FK_USU_AUD foreign key (XEUSU_CODIGO)
      references XEUSU_USUAR (XEUSU_CODIGO) on delete restrict on update restrict;

alter table XEOPC_OPCIO add constraint FK_SIS_OPC foreign key (XESIS_CODIGO)
      references XESIS_SISTE (XESIS_CODIGO) on delete restrict on update restrict;

alter table XEOXP_OPCPE add constraint FK_OPC_OXP foreign key (XEOPC_CODIGO)
      references XEOPC_OPCIO (XEOPC_CODIGO) on delete restrict on update restrict;

alter table XEOXP_OPCPE add constraint FK_PER_OXP foreign key (XEPER_CODIGO)
      references XEPER_PERFI (XEPER_CODIGO) on delete restrict on update restrict;

alter table XESES_SESIO add constraint FK_USU_SES foreign key (XEUSU_CODIGO)
      references XEUSU_USUAR (XEUSU_CODIGO) on delete restrict on update restrict;

alter table XEUSU_USUAR add constraint FK_EST_USU foreign key (XEEST_CODIGO)
      references XEEST_ESTAD (XEEST_CODIGO) on delete restrict on update restrict;

alter table XEUSU_USUAR add constraint FK_PRS_USU foreign key (PEPER_CODIGO)
      references PEPER_PERSO (PEPER_CODIGO) on delete restrict on update restrict;

alter table XEUXP_USUPE add constraint FK_PER_UXP foreign key (XEPER_CODIGO)
      references XEPER_PERFI (XEPER_CODIGO) on delete restrict on update restrict;

alter table XEUXP_USUPE add constraint FK_USU_UXP foreign key (XEUSU_CODIGO)
      references XEUSU_USUAR (XEUSU_CODIGO) on delete restrict on update restrict;

