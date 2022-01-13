@AbapCatalog.sqlViewName: 'Z_C_FSHED'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Flight Shedule Consumption'
@OData.publish: true
@Metadata.allowExtensions: true

@ObjectModel.transactionalProcessingDelegated: true
@ObjectModel.createEnabled: true
@ObjectModel.updateEnabled: true
@ObjectModel.deleteEnabled: true

define view ZAPF_C_FLIGHT_SHED as select from ZAPF_I_FLIGHT_SHED 

association [1..*] to ZAPF_C_FLIGHTS as _Flight on $projection.Carrid = _Flight.Carrid
                                               and $projection.Connid = _Flight.Connid
                                               
association [1] to ZAPF_C_AIRLINE as _Airlines on $projection.Carrid = _Airlines.Carrid

{   
    key mandt, 
    key Carrid,
    key Connid,
    Countryfr,
    Cityfrom,
    Airpfrom,
    Countryto,
    Cityto,
    Airpto,
    Fltime,
    Deptime,
    Arrtime,
    Distance,
    Distid,
    Fltype,
    Period,
    /* Associations */
    _Airline,
    _Flights,
    _Flight,
    _Airlines
}
