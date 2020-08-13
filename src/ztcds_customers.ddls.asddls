@AbapCatalog.sqlViewName: 'ZTCUST'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Customers'

@UI: { headerInfo: { typeName: 'Cliente',
                     typeNamePlural: 'Clientes',
                     title: { type: #STANDARD, value: 'Nombre'} } }
@Search.searchable: true
define view ztcds_customers
  as select from ztrent_customers as Customers
  
{

      @UI.facet: [{ id: 'IdDocumento',
                    purpose: #STANDARD,
                    type: #IDENTIFICATION_REFERENCE,
                    label: 'Cliente',
                    position:  10 },

                   { id: 'Matricula',
                    purpose: #STANDARD,
                    type: #LINEITEM_REFERENCE,
                    label: 'Cliente',
                    position:  20 }]

      @UI: { lineItem:       [{ position: 10, importance: #HIGH }],
             identification: [{ position: 10 }] }

      @Search.defaultSearchElement: true
  key doc_id    as IdDocumento,

      @UI: { lineItem:       [{ position: 20, importance: #HIGH }],
             identification: [{ position: 20 }],
             selectionField: [{ position: 20 }] }

      @Consumption.valueHelpDefinition: [{ entity: { name: 'ztcds_brands', element: 'Marca' } }]
      @EndUserText.label: 'Matricula'
      @Search.defaultSearchElement: true
  key matricula as Matricula,

      @UI: { lineItem:       [{ position: 30, importance: #MEDIUM }],
             identification: [{ position: 30 }],
             selectionField: [{ position: 30 }] }
      nombres   as Nombre,

      @UI: { lineItem:       [{ position: 40, importance: #MEDIUM }],
             identification: [{ position: 40 }],
             selectionField: [{ position: 40 }] }
      apellidos as Appellidos,

      @UI: { lineItem:       [{ position: 50, importance: #MEDIUM }],
             identification: [{ position: 50 }],
             selectionField: [{ position: 50 }] }
      email     as CorreoElectronico,

      @UI: { lineItem:       [{ position: 60, importance: #HIGH, criticality: 'TipoContrCriticidad' }],
             identification: [{ position: 60 }],
             selectionField: [{ position: 60 }] }
      cntr_type as TipoContrato,

      case cntr_type
         when 'A1' then 1
         when 'A2' then 2
         when 'A3' then 3
         when 'A4' then 0
         else 0
      end       as TipoContrCriticidad

}
