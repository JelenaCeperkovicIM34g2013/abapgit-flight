@AbapCatalog.sqlViewName: 'ZAPF_SFLIGHTS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Flight Basic View'

define view ZAPF_I_SFLIGHT as select from sflight 

association [1] to ZAPF_I_SPFLI as _Fli_s on $projection.Carrid = _Fli_s.Carrid
                                                  and $projection.Connid = _Fli_s.Connid
                                                  
association [1] to ZAPF_I_SCARR as _Airl on $projection.Carrid = _Airl.Carrid

{
    key mandt as Mandt,
    key carrid as Carrid,
    key connid as Connid,
    key fldate as Fldate,
    price as Price,
    currency as Currency,
    planetype as Planetype,
    seatsmax as Seatsmax,
    seatsocc as Seatsocc,
    paymentsum as Paymentsum,
    seatsmax_b as SeatsmaxB,
    seatsocc_b as SeatsoccB,
    seatsmax_f as SeatsmaxF,
    seatsocc_f as SeatsoccF,
    _Fli_s,
    _Airl
}
