/* This file was generated by upbc (the upb compiler) from the input
 * file:
 *
 *     envoy/type/matcher/v3/number.proto
 *
 * Do not edit -- your changes will be discarded when the file is
 * regenerated. */

#ifndef ENVOY_TYPE_MATCHER_V3_NUMBER_PROTO_UPB_H_
#define ENVOY_TYPE_MATCHER_V3_NUMBER_PROTO_UPB_H_

#if COCOAPODS==1
  #include  "third_party/upb/upb/msg.h"
#else
  #include  "upb/msg.h"
#endif
#if COCOAPODS==1
  #include  "third_party/upb/upb/decode.h"
#else
  #include  "upb/decode.h"
#endif
#if COCOAPODS==1
  #include  "third_party/upb/upb/decode_fast.h"
#else
  #include  "upb/decode_fast.h"
#endif
#if COCOAPODS==1
  #include  "third_party/upb/upb/encode.h"
#else
  #include  "upb/encode.h"
#endif

#if COCOAPODS==1
  #include  "third_party/upb/upb/port_def.inc"
#else
  #include  "upb/port_def.inc"
#endif

#ifdef __cplusplus
extern "C" {
#endif

struct envoy_type_matcher_v3_DoubleMatcher;
typedef struct envoy_type_matcher_v3_DoubleMatcher envoy_type_matcher_v3_DoubleMatcher;
extern const upb_msglayout envoy_type_matcher_v3_DoubleMatcher_msginit;
struct envoy_type_v3_DoubleRange;
extern const upb_msglayout envoy_type_v3_DoubleRange_msginit;


/* envoy.type.matcher.v3.DoubleMatcher */

UPB_INLINE envoy_type_matcher_v3_DoubleMatcher *envoy_type_matcher_v3_DoubleMatcher_new(upb_arena *arena) {
  return (envoy_type_matcher_v3_DoubleMatcher *)_upb_msg_new(&envoy_type_matcher_v3_DoubleMatcher_msginit, arena);
}
UPB_INLINE envoy_type_matcher_v3_DoubleMatcher *envoy_type_matcher_v3_DoubleMatcher_parse(const char *buf, size_t size,
                        upb_arena *arena) {
  envoy_type_matcher_v3_DoubleMatcher *ret = envoy_type_matcher_v3_DoubleMatcher_new(arena);
  return (ret && upb_decode(buf, size, ret, &envoy_type_matcher_v3_DoubleMatcher_msginit, arena)) ? ret : NULL;
}
UPB_INLINE envoy_type_matcher_v3_DoubleMatcher *envoy_type_matcher_v3_DoubleMatcher_parse_ex(const char *buf, size_t size,
                           upb_arena *arena, int options) {
  envoy_type_matcher_v3_DoubleMatcher *ret = envoy_type_matcher_v3_DoubleMatcher_new(arena);
  return (ret && _upb_decode(buf, size, ret, &envoy_type_matcher_v3_DoubleMatcher_msginit, arena, options))
      ? ret : NULL;
}
UPB_INLINE char *envoy_type_matcher_v3_DoubleMatcher_serialize(const envoy_type_matcher_v3_DoubleMatcher *msg, upb_arena *arena, size_t *len) {
  return upb_encode(msg, &envoy_type_matcher_v3_DoubleMatcher_msginit, arena, len);
}

typedef enum {
  envoy_type_matcher_v3_DoubleMatcher_match_pattern_range = 1,
  envoy_type_matcher_v3_DoubleMatcher_match_pattern_exact = 2,
  envoy_type_matcher_v3_DoubleMatcher_match_pattern_NOT_SET = 0
} envoy_type_matcher_v3_DoubleMatcher_match_pattern_oneofcases;
UPB_INLINE envoy_type_matcher_v3_DoubleMatcher_match_pattern_oneofcases envoy_type_matcher_v3_DoubleMatcher_match_pattern_case(const envoy_type_matcher_v3_DoubleMatcher* msg) { return (envoy_type_matcher_v3_DoubleMatcher_match_pattern_oneofcases)*UPB_PTR_AT(msg, UPB_SIZE(8, 8), int32_t); }

UPB_INLINE bool envoy_type_matcher_v3_DoubleMatcher_has_range(const envoy_type_matcher_v3_DoubleMatcher *msg) { return _upb_getoneofcase(msg, UPB_SIZE(8, 8)) == 1; }
UPB_INLINE const struct envoy_type_v3_DoubleRange* envoy_type_matcher_v3_DoubleMatcher_range(const envoy_type_matcher_v3_DoubleMatcher *msg) { return UPB_READ_ONEOF(msg, const struct envoy_type_v3_DoubleRange*, UPB_SIZE(0, 0), UPB_SIZE(8, 8), 1, NULL); }
UPB_INLINE bool envoy_type_matcher_v3_DoubleMatcher_has_exact(const envoy_type_matcher_v3_DoubleMatcher *msg) { return _upb_getoneofcase(msg, UPB_SIZE(8, 8)) == 2; }
UPB_INLINE double envoy_type_matcher_v3_DoubleMatcher_exact(const envoy_type_matcher_v3_DoubleMatcher *msg) { return UPB_READ_ONEOF(msg, double, UPB_SIZE(0, 0), UPB_SIZE(8, 8), 2, 0); }

UPB_INLINE void envoy_type_matcher_v3_DoubleMatcher_set_range(envoy_type_matcher_v3_DoubleMatcher *msg, struct envoy_type_v3_DoubleRange* value) {
  UPB_WRITE_ONEOF(msg, struct envoy_type_v3_DoubleRange*, UPB_SIZE(0, 0), value, UPB_SIZE(8, 8), 1);
}
UPB_INLINE struct envoy_type_v3_DoubleRange* envoy_type_matcher_v3_DoubleMatcher_mutable_range(envoy_type_matcher_v3_DoubleMatcher *msg, upb_arena *arena) {
  struct envoy_type_v3_DoubleRange* sub = (struct envoy_type_v3_DoubleRange*)envoy_type_matcher_v3_DoubleMatcher_range(msg);
  if (sub == NULL) {
    sub = (struct envoy_type_v3_DoubleRange*)_upb_msg_new(&envoy_type_v3_DoubleRange_msginit, arena);
    if (!sub) return NULL;
    envoy_type_matcher_v3_DoubleMatcher_set_range(msg, sub);
  }
  return sub;
}
UPB_INLINE void envoy_type_matcher_v3_DoubleMatcher_set_exact(envoy_type_matcher_v3_DoubleMatcher *msg, double value) {
  UPB_WRITE_ONEOF(msg, double, UPB_SIZE(0, 0), value, UPB_SIZE(8, 8), 2);
}

#ifdef __cplusplus
}  /* extern "C" */
#endif

#if COCOAPODS==1
  #include  "third_party/upb/upb/port_undef.inc"
#else
  #include  "upb/port_undef.inc"
#endif

#endif  /* ENVOY_TYPE_MATCHER_V3_NUMBER_PROTO_UPB_H_ */
