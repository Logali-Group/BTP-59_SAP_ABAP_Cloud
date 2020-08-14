@AbapCatalog.sqlViewName: 'ZTCARS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cars'
@Metadata.allowExtensions: true
@Search.searchable: true
@UI.headerInfo: { typeName       : 'Vehiculo',
                  typeNamePlural : 'Vehiculos',
                  title          : { type: #STANDARD, value: 'Marca'},
                  description    : { type: #STANDARD, value: 'Modelo'},
                  imageUrl       : 'Imagen'}
define view ztcds_cars
  as select from ztrent_cars as Cars
  association [0..*] to ztcds_customers as _Customer on $projection.Matricula = _Customer.Matricula
  association [1]    to ztcds_brands    as _Brands   on $projection.Marca = _Brands.Marca
{
  key matricula    as Matricula,
      marca        as Marca,
      modelo       as Modelo,
      color        as Color,
      motor        as Motor,
      potencia     as Potencia,
      und_potencia as Unidad,
      combustible  as Combustible,
      consumo      as Consumo,
      fecha_fabr   as FechaFabricacion,
      puertas      as Puertas,
      precio       as Precio,
      moneda       as Moneda,
      alquilado    as Alquilado,
      alq_desde    as Desde,
      alq_hasta    as Hasta,
      _Brands.url  as Imagen,
      _Customer
}
