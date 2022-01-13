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
    key ZAPF_I_FLIGHT_SHED.Mandt,
    key ZAPF_I_FLIGHT_SHED.Carrid,
    key ZAPF_I_FLIGHT_SHED.Connid,
    ZAPF_I_FLIGHT_SHED.Countryfr,
    ZAPF_I_FLIGHT_SHED.Cityfrom,
    ZAPF_I_FLIGHT_SHED.Airpfrom,
    ZAPF_I_FLIGHT_SHED.Countryto,
    ZAPF_I_FLIGHT_SHED.Cityto,
    ZAPF_I_FLIGHT_SHED.Airpto,
    ZAPF_I_FLIGHT_SHED.Fltime,
    ZAPF_I_FLIGHT_SHED.Deptime,
    ZAPF_I_FLIGHT_SHED.Arrtime,
    ZAPF_I_FLIGHT_SHED.Distance,
    ZAPF_I_FLIGHT_SHED.Distid,
    ZAPF_I_FLIGHT_SHED.Fltype,
    ZAPF_I_FLIGHT_SHED.Period,
    /* Associations */
    ZAPF_I_FLIGHT_SHED._Air,
    ZAPF_I_FLIGHT_SHED._Airline,
    ZAPF_I_FLIGHT_SHED._Fli,
    ZAPF_I_FLIGHT_SHED._Flights,

    /* Associations */
    _Flight,
    _Airlines
}
