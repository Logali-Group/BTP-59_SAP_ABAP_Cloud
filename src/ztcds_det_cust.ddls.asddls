@AbapCatalog.sqlViewName: 'ZTDETCUST'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Customer Detail'
define view ZTCDS_DET_CUST
  as select from ztrent_customers as Customer
{
  key doc_id,
  key matricula as Matricula,
      @UI: { lineItem   : [{position : 10, importance: #HIGH}]}
      nombres   as Nombre,
      @UI: { lineItem   : [{position : 20, importance: #HIGH}]}
      apellidos as Apellidos,
      @UI: { lineItem   : [{position : 30, importance: #HIGH}]}
      email     as Correo,
      @UI: { lineItem   : [{position : 40, importance: #HIGH}]}
      cntr_type as TipoContrato
}
