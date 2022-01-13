@AbapCatalog.sqlViewName: 'ZAPF_SCARR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Airline Basic View'
define view ZAPF_I_SCARR as select from scarr 

association [1..*] to ZAPF_I_SPFLI as _Fli_s on $projection.Carrid = _Fli_s.Carrid

association [1..*] to ZAPF_I_SFLIGHT as _Flig on $projection.Carrid = _Flig.Carrid

{

    key mandt as Mandt,
    key carrid as Carrid,
    carrname as Carrname,
    currcode as Currcode,
    url as Url,
    _Fli_s,
    _Flig

}
