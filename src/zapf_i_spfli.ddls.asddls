@AbapCatalog.sqlViewName: 'ZAPF_SPFLI'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Flight Shedule Basic View'

define view ZAPF_I_SPFLI as select from spfli {
    
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
    period as Period
    
 }
