@AbapCatalog.sqlViewName: 'ZAPF_ISFLIGHT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Flight Composite View'

@ObjectModel.writeActivePersistence: 'SFLIGHT'
@ObjectModel.createEnabled: true
@ObjectModel.updateEnabled: true
@ObjectModel.deleteEnabled: true

define view ZAPF_I_FLIGHTS as select from ZAPF_I_SFLIGHT 

association [1] to ZAPF_I_FLIGHT_SHED as _Fli_shed on $projection.Carrid = _Fli_shed.Carrid
                                                  and $projection.Connid = _Fli_shed.Connid
                                                  
association [1] to ZAPF_I_AIRLINE as _Airline on $projection.Carrid = _Airline.Carrid

{   
    key Carrid,
    key Connid,
    key Fldate,
    Price,
    Currency,
    Planetype,
    Seatsmax,
    Seatsocc,
    Paymentsum,
    SeatsmaxB,
    SeatsoccB,
    SeatsmaxF,
    SeatsoccF,
    _Fli_shed,
    @ObjectModel.association.type: [#TO_COMPOSITION_PARENT,#TO_COMPOSITION_ROOT]
    _Airline
}

