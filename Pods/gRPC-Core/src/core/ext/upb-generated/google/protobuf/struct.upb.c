/* This file was generated by upbc (the upb compiler) from the input
 * file:
 *
 *     google/protobuf/struct.proto
 *
 * Do not edit -- your changes will be discarded when the file is
 * regenerated. */

#include <stddef.h>
#if COCOAPODS==1
  #include  "third_party/upb/upb/msg.h"
#else
  #include  "upb/msg.h"
#endif
#if COCOAPODS==1
  #include  "src/core/ext/upb-generated/google/protobuf/struct.upb.h"
#else
  #include  "google/protobuf/struct.upb.h"
#endif

#if COCOAPODS==1
  #include  "third_party/upb/upb/port_def.inc"
#else
  #include  "upb/port_def.inc"
#endif

static const upb_msglayout *const google_protobuf_Struct_submsgs[1] = {
  &google_protobuf_Struct_FieldsEntry_msginit,
};

static const upb_msglayout_field google_protobuf_Struct__fields[1] = {
  {1, UPB_SIZE(0, 0), 0, 0, 11, _UPB_LABEL_MAP},
};

const upb_msglayout google_protobuf_Struct_msginit = {
  &google_protobuf_Struct_submsgs[0],
  &google_protobuf_Struct__fields[0],
  UPB_SIZE(8, 8), 1, false, 255,
};

static const upb_msglayout *const google_protobuf_Struct_FieldsEntry_submsgs[1] = {
  &google_protobuf_Value_msginit,
};

static const upb_msglayout_field google_protobuf_Struct_FieldsEntry__fields[2] = {
  {1, UPB_SIZE(0, 0), 0, 0, 9, 1},
  {2, UPB_SIZE(8, 16), 0, 0, 11, 1},
};

const upb_msglayout google_protobuf_Struct_FieldsEntry_msginit = {
  &google_protobuf_Struct_FieldsEntry_submsgs[0],
  &google_protobuf_Struct_FieldsEntry__fields[0],
  UPB_SIZE(16, 32), 2, false, 255,
};

static const upb_msglayout *const google_protobuf_Value_submsgs[2] = {
  &google_protobuf_ListValue_msginit,
  &google_protobuf_Struct_msginit,
};

static const upb_msglayout_field google_protobuf_Value__fields[6] = {
  {1, UPB_SIZE(0, 0), UPB_SIZE(-9, -17), 0, 14, 1},
  {2, UPB_SIZE(0, 0), UPB_SIZE(-9, -17), 0, 1, 1},
  {3, UPB_SIZE(0, 0), UPB_SIZE(-9, -17), 0, 9, 1},
  {4, UPB_SIZE(0, 0), UPB_SIZE(-9, -17), 0, 8, 1},
  {5, UPB_SIZE(0, 0), UPB_SIZE(-9, -17), 1, 11, 1},
  {6, UPB_SIZE(0, 0), UPB_SIZE(-9, -17), 0, 11, 1},
};

const upb_msglayout google_protobuf_Value_msginit = {
  &google_protobuf_Value_submsgs[0],
  &google_protobuf_Value__fields[0],
  UPB_SIZE(16, 32), 6, false, 255,
};

static const upb_msglayout *const google_protobuf_ListValue_submsgs[1] = {
  &google_protobuf_Value_msginit,
};

static const upb_msglayout_field google_protobuf_ListValue__fields[1] = {
  {1, UPB_SIZE(0, 0), 0, 0, 11, 3},
};

const upb_msglayout google_protobuf_ListValue_msginit = {
  &google_protobuf_ListValue_submsgs[0],
  &google_protobuf_ListValue__fields[0],
  UPB_SIZE(8, 8), 1, false, 255,
};

#if COCOAPODS==1
  #include  "third_party/upb/upb/port_undef.inc"
#else
  #include  "upb/port_undef.inc"
#endif

