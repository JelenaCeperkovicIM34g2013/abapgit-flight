@AbapCatalog.sqlViewName: 'ZAPF_ISCARR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Airline Composite View'

@ObjectModel.modelCategory:#BUSINESS_OBJECT
@ObjectModel.compositionRoot:true
@ObjectModel.transactionalProcessingEnabled: true
@ObjectModel.writeActivePersistence:'SCARR'
@ObjectModel.createEnabled:true
@ObjectModel.deleteEnabled:true
@ObjectModel.updateEnabled:true


define view ZAPF_I_AIRLINE as select from ZAPF_I_SCARR 

association [1..*] to ZAPF_I_FLIGHT_SHED as _Fli_shed on $projection.Carrid = _Fli_shed.Carrid

association [1..*] to ZAPF_I_FLIGHTS as _Flights on $projection.Carrid = _Flights.Carrid

{   
    
    key Carrid,
    Carrname,
    Currcode,
    Url,
    @ObjectModel.association.type: #TO_COMPOSITION_CHILD
    _Fli_shed,
    @ObjectModel.association.type: #TO_COMPOSITION_CHILD
    _Flights
}

