@AbapCatalog.sqlViewName: 'Z_C_AIRLINE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Airline Consumption'
@OData.publish: true
@Metadata.allowExtensions: true

@ObjectModel.transactionalProcessingDelegated: true
@ObjectModel.compositionRoot: true
@ObjectModel.createEnabled: true
@ObjectModel.updateEnabled: true
@ObjectModel.deleteEnabled: true

define view ZAPF_C_AIRLINE as select from ZAPF_I_AIRLINE 

association [1..*] to ZAPF_C_FLIGHT_SHED as _Fshed on $projection.Carrid = _Fshed.Carrid

association [1..*] to ZAPF_C_FLIGHTS as _Flight on $projection.Carrid = _Flight.Carrid

{  
    key mandt,
    key Carrid,
    Carrname,
    Currcode,
    Url,
    /* Associations */
   // _Flights,
    //_Fli_shed,
    _Fshed,
    _Flight
}
