/* This file was generated by upbc (the upb compiler) from the input
 * file:
 *
 *     src/proto/grpc/gcp/transport_security_common.proto
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
  #include  "src/core/ext/upb-generated/src/proto/grpc/gcp/transport_security_common.upb.h"
#else
  #include  "src/proto/grpc/gcp/transport_security_common.upb.h"
#endif

#if COCOAPODS==1
  #include  "third_party/upb/upb/port_def.inc"
#else
  #include  "upb/port_def.inc"
#endif

static const upb_msglayout *const grpc_gcp_RpcProtocolVersions_submsgs[1] = {
  &grpc_gcp_RpcProtocolVersions_Version_msginit,
};

static const upb_msglayout_field grpc_gcp_RpcProtocolVersions__fields[2] = {
  {1, UPB_SIZE(4, 8), 1, 0, 11, 1},
  {2, UPB_SIZE(8, 16), 2, 0, 11, 1},
};

const upb_msglayout grpc_gcp_RpcProtocolVersions_msginit = {
  &grpc_gcp_RpcProtocolVersions_submsgs[0],
  &grpc_gcp_RpcProtocolVersions__fields[0],
  UPB_SIZE(16, 24), 2, false, 255,
};

static const upb_msglayout_field grpc_gcp_RpcProtocolVersions_Version__fields[2] = {
  {1, UPB_SIZE(0, 0), 0, 0, 13, 1},
  {2, UPB_SIZE(4, 4), 0, 0, 13, 1},
};

const upb_msglayout grpc_gcp_RpcProtocolVersions_Version_msginit = {
  NULL,
  &grpc_gcp_RpcProtocolVersions_Version__fields[0],
  UPB_SIZE(8, 8), 2, false, 255,
};

#if COCOAPODS==1
  #include  "third_party/upb/upb/port_undef.inc"
#else
  #include  "upb/port_undef.inc"
#endif

