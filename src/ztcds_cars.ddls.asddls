@AbapCatalog.sqlViewName: 'ZTCARS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Cars'

@UI: { headerInfo: { typeName: 'Coche',
                     typeNamePlural: 'Coches',
                     title: { type: #STANDARD, value: 'Marca'} } }
@Search.searchable: true
define view ztcds_cars
  as select from ztrent_cars as Cars
  association [1..*] to ztrent_customers as _Customer on $projection.Matricula = _Customer.matricula
  association [1]    to ztcds_brands     as _Brands   on $projection.Marca = _Brands.Marca

{

      @UI.facet: [{ id: 'Matricula',
                    purpose: #STANDARD,
                    type: #IDENTIFICATION_REFERENCE,
                    label: 'Matricula',
                    position:  10 }]

      @UI: { lineItem:       [{ position: 10, importance: #HIGH }],
             identification: [{ position: 10 }] }

      @Search.defaultSearchElement: true
  key matricula    as Matricula,

      @UI: { lineItem:       [{ position: 20, importance: #HIGH }],
             identification: [{ position: 20 }] }

      @Search.defaultSearchElement: true
      marca        as Marca,

      @UI: { lineItem:       [{ position: 30, importance: #HIGH }],
             identification: [{ position: 30 }] }
      modelo       as Modelo,

      @UI: { lineItem:       [{ position: 40, importance: #HIGH }],
             identification: [{ position: 40 }] }
      color        as Color,

      @UI: { lineItem:       [{ position: 50, importance: #HIGH }],
             identification: [{ position: 50 }] }
      motor        as Motor,

      @UI: { lineItem:       [{ position: 60, importance: #HIGH }],
             identification: [{ position: 60 }] }
      potencia     as Potencia,

      @UI: { lineItem:       [{ position: 61, importance: #HIGH }],
             identification: [{ position: 61 }] }
      und_potencia as Unidad,

      @UI: { lineItem:       [{ position: 70, importance: #HIGH }],
             identification: [{ position: 70 }] }
      combustible  as Combustible,

      @UI: { lineItem:       [{ position: 80, importance: #HIGH }],
             identification: [{ position: 80 }] }
      consumo      as Consumo,

      @UI: { lineItem:       [{ position: 90, importance: #HIGH }],
             identification: [{ position: 90 }] }
      fecha_fabr   as FechaFabricacion,

      @UI: { lineItem:       [{ position: 100, importance: #HIGH }],
             identification: [{ position: 100 }] }
      puertas      as Puertas,

      @UI: { lineItem:       [{ position: 110, importance: #HIGH }],
             identification: [{ position: 110 }] }
      precio,

      @UI: { lineItem:       [{ position: 111, importance: #HIGH }],
             identification: [{ position: 111 }] }
      moneda,

      @UI: { lineItem:       [{ position: 120, importance: #HIGH }],
             identification: [{ position: 120 }] }
      alquilado,

      @UI: { lineItem:       [{ position: 121, importance: #HIGH }],
             identification: [{ position: 121 }] }
      alq_desde,

      @UI: { lineItem:       [{ position: 121, importance: #HIGH }],
             identification: [{ position: 121 }] }
      alq_hasta,

      @UI: { lineItem:       [{ position: 130, importance: #HIGH }],
                                identification: [{ position: 130 }] }
      _Brands.url,

      _Customer
}
