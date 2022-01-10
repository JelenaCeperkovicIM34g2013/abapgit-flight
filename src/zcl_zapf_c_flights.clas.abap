class ZCL_ZAPF_C_FLIGHTS definition
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



CLASS ZCL_ZAPF_C_FLIGHTS IMPLEMENTATION.


  method GET_PATHS.
et_paths = VALUE #(
( |CDS~ZAPF_C_FLIGHTS| )
).
  endmethod.


  method GET_TIMESTAMP.
RV_TIMESTAMP = 20220105134055.
  endmethod.
ENDCLASS.
