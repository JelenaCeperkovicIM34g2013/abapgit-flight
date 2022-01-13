@AbapCatalog.sqlViewName: 'ZAPF_ISPFLI'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Flight Shedule Composite View'

@ObjectModel.writeActivePersistence: 'SPFLI'
@ObjectModel.createEnabled: true
@ObjectModel.updateEnabled: true
@ObjectModel.deleteEnabled: true

define view ZAPF_I_FLIGHT_SHED as select from ZAPF_I_SPFLI 

association [1..*] to ZAPF_I_FLIGHTS as _Flights on $projection.Carrid = _Flights.Carrid
                                                and $projection.Connid = _Flights.Connid
                                                
association [1] to ZAPF_I_AIRLINE as _Airline on $projection.Carrid = _Airline.Carrid

{   
    key ZAPF_I_SPFLI.Mandt,
    key ZAPF_I_SPFLI.Carrid,
    key ZAPF_I_SPFLI.Connid,
    ZAPF_I_SPFLI.Countryfr,
    ZAPF_I_SPFLI.Cityfrom,
    ZAPF_I_SPFLI.Airpfrom,
    ZAPF_I_SPFLI.Countryto,
    ZAPF_I_SPFLI.Cityto,
    ZAPF_I_SPFLI.Airpto,
    ZAPF_I_SPFLI.Fltime,
    ZAPF_I_SPFLI.Deptime,
    ZAPF_I_SPFLI.Arrtime,
    ZAPF_I_SPFLI.Distance,
    ZAPF_I_SPFLI.Distid,
    ZAPF_I_SPFLI.Fltype,
    ZAPF_I_SPFLI.Period,
    /* Associations */
    ZAPF_I_SPFLI._Air,
    ZAPF_I_SPFLI._Fli,
    _Flights,
    @ObjectModel.association.type: [#TO_COMPOSITION_PARENT,#TO_COMPOSITION_ROOT]
    _Airline
}

