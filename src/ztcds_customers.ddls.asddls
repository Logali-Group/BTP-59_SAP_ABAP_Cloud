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
      nombres   as Nombre,
      apellidos as Apellidos,
      email     as CorreoElectronico,
      cntr_type as TipoContrato,
      case cntr_type
         when 'A1' then 1
         when 'A2' then 2
         when 'A3' then 3
         when 'A4' then 0
         else 0
      end       as TipoContrCriticidad
}
