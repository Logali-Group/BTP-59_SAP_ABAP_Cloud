@AbapCatalog.sqlViewName: 'ZTRENT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Renting'
define view ZTCDS_RENTING
  as select from ztrent_cars
{
  key matricula                               as Matricula,
      marca                                   as Marca,
      dats_days_between(alq_desde, alq_hasta) as Dias
}
