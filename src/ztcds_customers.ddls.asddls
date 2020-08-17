@AbapCatalog.sqlViewName: 'ZTCUST'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customers'
@Metadata.allowExtensions: true
@UI: { headerInfo: { typeName: 'Cliente',
                     typeNamePlural: 'Clientes',
                     title: { type: #STANDARD, value: 'Nombre'}}}
define view ztcds_customers
  as select from ztrent_customers as Customers
{
  key matricula as Matricula,
  key doc_id    as IdDocumento,
      nombres   as Nombre
}
