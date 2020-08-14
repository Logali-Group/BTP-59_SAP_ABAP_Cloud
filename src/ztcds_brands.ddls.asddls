@AbapCatalog.sqlViewName: 'ZTBRANDS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
define view ztcds_brands as select from ztrent_brands {
    //ztrent_brands
    key marca as Marca,
    'https://img2.freepng.es/20180219/gew/kisspng-mid-size-car-automotive-design-silver-car-rear-5a8a6e2bae7233.9219392815190216117146.jpg' as url
}
