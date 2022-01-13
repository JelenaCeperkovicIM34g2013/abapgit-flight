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
    key ZAPF_I_SFLIGHT.Mandt,
    key ZAPF_I_SFLIGHT.Carrid,
    key ZAPF_I_SFLIGHT.Connid,
    key ZAPF_I_SFLIGHT.Fldate,
    ZAPF_I_SFLIGHT.Price,
    ZAPF_I_SFLIGHT.Currency,
    ZAPF_I_SFLIGHT.Planetype,
    ZAPF_I_SFLIGHT.Seatsmax,
    ZAPF_I_SFLIGHT.Seatsocc,
    ZAPF_I_SFLIGHT.Paymentsum,
    ZAPF_I_SFLIGHT.SeatsmaxB,
    ZAPF_I_SFLIGHT.SeatsoccB,
    ZAPF_I_SFLIGHT.SeatsmaxF,
    ZAPF_I_SFLIGHT.SeatsoccF,
    /* Associations */
    ZAPF_I_SFLIGHT._Airl,
    ZAPF_I_SFLIGHT._Fli_s,
    _Fli_shed,
    @ObjectModel.association.type: [#TO_COMPOSITION_PARENT,#TO_COMPOSITION_ROOT]
    _Airline
}

