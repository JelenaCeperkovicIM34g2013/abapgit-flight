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
    _Flights,
    @ObjectModel.association.type: [#TO_COMPOSITION_PARENT,#TO_COMPOSITION_ROOT]
    _Airline
}

