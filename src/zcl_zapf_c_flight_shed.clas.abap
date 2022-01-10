class ZCL_ZAPF_C_FLIGHT_SHED definition
  public
  inheriting from CL_SADL_GTK_EXPOSURE_MPC
  final
  create public .

public section.
protected section.

  methods GET_PATHS
    redefinition .
  methods GET_TIMESTAMP
    redefinition .
private section.
ENDCLASS.



CLASS ZCL_ZAPF_C_FLIGHT_SHED IMPLEMENTATION.


  method GET_PATHS.
et_paths = VALUE #(
( |CDS~ZAPF_C_FLIGHT_SHED| )
).
  endmethod.


  method GET_TIMESTAMP.
RV_TIMESTAMP = 20220105134057.
  endmethod.
ENDCLASS.
