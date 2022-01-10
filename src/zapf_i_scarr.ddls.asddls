@AbapCatalog.sqlViewName: 'ZAPF_SCARR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Airline Basic View'
define view ZAPF_I_SCARR as select from scarr {

    key mandt as Mandt,
    key carrid as Carrid,
    carrname as Carrname,
    currcode as Currcode,
    url as Url

}
