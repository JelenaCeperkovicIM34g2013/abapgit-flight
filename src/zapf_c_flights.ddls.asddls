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
    key ZAPF_I_FLIGHTS.Mandt,
    key ZAPF_I_FLIGHTS.Carrid,
    key ZAPF_I_FLIGHTS.Connid,
    key ZAPF_I_FLIGHTS.Fldate,
    ZAPF_I_FLIGHTS.Price,
    ZAPF_I_FLIGHTS.Currency,
    ZAPF_I_FLIGHTS.Planetype,
    ZAPF_I_FLIGHTS.Seatsmax,
    ZAPF_I_FLIGHTS.Seatsocc,
    ZAPF_I_FLIGHTS.Paymentsum,
    ZAPF_I_FLIGHTS.SeatsmaxB,
    ZAPF_I_FLIGHTS.SeatsoccB,
    ZAPF_I_FLIGHTS.SeatsmaxF,
    ZAPF_I_FLIGHTS.SeatsoccF,
    /* Associations */
    ZAPF_I_FLIGHTS._Airl,
    ZAPF_I_FLIGHTS._Airline,
    ZAPF_I_FLIGHTS._Fli_s,
    ZAPF_I_FLIGHTS._Fli_shed,
    
    /* Associations */
    _Fshed,
    _Airlines
}
