@AbapCatalog.sqlViewName: 'ZAPF_SFLIGHTS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Flight Basic View'

define view ZAPF_I_SFLIGHT as select from sflight {
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
    seatsocc_f as SeatsoccF
}
