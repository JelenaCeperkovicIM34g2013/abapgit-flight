@AbapCatalog.sqlViewName: 'Z_C_FLIGHTS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Flights Consumption'
@OData.publish: true
@Metadata.allowExtensions: true

@ObjectModel.transactionalProcessingDelegated: true
@ObjectModel.createEnabled: true
@ObjectModel.updateEnabled: true
@ObjectModel.deleteEnabled: true

define view ZAPF_C_FLIGHTS as select from ZAPF_I_FLIGHTS 

association [1] to ZAPF_C_FLIGHT_SHED as _Fshed on $projection.Carrid = _Fshed.Carrid
                                               and $projection.Connid = _Fshed.Connid
                                               
association [1] to ZAPF_C_AIRLINE as _Airlines on $projection.Carrid = _Airlines.Carrid

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
    /* Associations */
    _Airline,
    _Fli_shed,
    _Fshed,
    _Airlines
}
