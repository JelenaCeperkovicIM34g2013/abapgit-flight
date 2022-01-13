@AbapCatalog.sqlViewName: 'ZAPF_SPFLI'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Flight Shedule Basic View'

define view ZAPF_I_SPFLI as select from spfli 

association [1..*] to ZAPF_I_SFLIGHT as _Fli on $projection.Carrid = _Fli.Carrid
                                                and $projection.Connid = _Fli.Connid
                                                
association [1] to ZAPF_I_SCARR as _Air on $projection.Carrid = _Air.Carrid

{
    
    key mandt as Mandt,
    key carrid as Carrid,
    key connid as Connid,
    countryfr as Countryfr,
    cityfrom as Cityfrom,
    airpfrom as Airpfrom,
    countryto as Countryto,
    cityto as Cityto,
    airpto as Airpto,
    fltime as Fltime,
    deptime as Deptime,
    arrtime as Arrtime,
    distance as Distance,
    distid as Distid,
    fltype as Fltype,
    period as Period,
    _Fli,
    _Air
    
 }
