/* This file was generated by upbc (the upb compiler) from the input
 * file:
 *
 *     envoy/extensions/filters/http/router/v3/router.proto
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
  #include  "src/core/ext/upb-generated/envoy/extensions/filters/http/router/v3/router.upb.h"
#else
  #include  "envoy/extensions/filters/http/router/v3/router.upb.h"
#endif
#if COCOAPODS==1
  #include  "src/core/ext/upb-generated/envoy/config/accesslog/v3/accesslog.upb.h"
#else
  #include  "envoy/config/accesslog/v3/accesslog.upb.h"
#endif
#if COCOAPODS==1
  #include  "src/core/ext/upb-generated/google/protobuf/wrappers.upb.h"
#else
  #include  "google/protobuf/wrappers.upb.h"
#endif
#if COCOAPODS==1
  #include  "src/core/ext/upb-generated/udpa/annotations/status.upb.h"
#else
  #include  "udpa/annotations/status.upb.h"
#endif
#if COCOAPODS==1
  #include  "src/core/ext/upb-generated/udpa/annotations/versioning.upb.h"
#else
  #include  "udpa/annotations/versioning.upb.h"
#endif
#if COCOAPODS==1
  #include  "src/core/ext/upb-generated/validate/validate.upb.h"
#else
  #include  "validate/validate.upb.h"
#endif

#if COCOAPODS==1
  #include  "third_party/upb/upb/port_def.inc"
#else
  #include  "upb/port_def.inc"
#endif

static const upb_msglayout *const envoy_extensions_filters_http_router_v3_Router_submsgs[2] = {
  &envoy_config_accesslog_v3_AccessLog_msginit,
  &google_protobuf_BoolValue_msginit,
};

static const upb_msglayout_field envoy_extensions_filters_http_router_v3_Router__fields[7] = {
  {1, UPB_SIZE(8, 8), 1, 1, 11, 1},
  {2, UPB_SIZE(1, 1), 0, 0, 8, 1},
  {3, UPB_SIZE(12, 16), 0, 0, 11, 3},
  {4, UPB_SIZE(2, 2), 0, 0, 8, 1},
  {5, UPB_SIZE(16, 24), 0, 0, 9, 3},
  {6, UPB_SIZE(3, 3), 0, 0, 8, 1},
  {7, UPB_SIZE(4, 4), 0, 0, 8, 1},
};

const upb_msglayout envoy_extensions_filters_http_router_v3_Router_msginit = {
  &envoy_extensions_filters_http_router_v3_Router_submsgs[0],
  &envoy_extensions_filters_http_router_v3_Router__fields[0],
  UPB_SIZE(24, 32), 7, false, 255,
};

#if COCOAPODS==1
  #include  "third_party/upb/upb/port_undef.inc"
#else
  #include  "upb/port_undef.inc"
#endif

