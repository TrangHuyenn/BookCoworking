/* This file was generated by upbc (the upb compiler) from the input
 * file:
 *
 *     udpa/annotations/migrate.proto
 *
 * Do not edit -- your changes will be discarded when the file is
 * regenerated. */

#if COCOAPODS==1
  #include  "third_party/upb/upb/def.h"
#else
  #include  "upb/def.h"
#endif
#if COCOAPODS==1
  #include  "src/core/ext/upbdefs-generated/udpa/annotations/migrate.upbdefs.h"
#else
  #include  "udpa/annotations/migrate.upbdefs.h"
#endif

extern upb_def_init google_protobuf_descriptor_proto_upbdefinit;
extern const upb_msglayout udpa_annotations_MigrateAnnotation_msginit;
extern const upb_msglayout udpa_annotations_FieldMigrateAnnotation_msginit;
extern const upb_msglayout udpa_annotations_FileMigrateAnnotation_msginit;

static const upb_msglayout *layouts[3] = {
  &udpa_annotations_MigrateAnnotation_msginit,
  &udpa_annotations_FieldMigrateAnnotation_msginit,
  &udpa_annotations_FileMigrateAnnotation_msginit,
};

static const char descriptor[855] = {'\n', '\036', 'u', 'd', 'p', 'a', '/', 'a', 'n', 'n', 'o', 't', 'a', 't', 'i', 'o', 'n', 's', '/', 'm', 'i', 'g', 'r', 'a', 't', 
'e', '.', 'p', 'r', 'o', 't', 'o', '\022', '\020', 'u', 'd', 'p', 'a', '.', 'a', 'n', 'n', 'o', 't', 'a', 't', 'i', 'o', 'n', 's', 
'\032', ' ', 'g', 'o', 'o', 'g', 'l', 'e', '/', 'p', 'r', 'o', 't', 'o', 'b', 'u', 'f', '/', 'd', 'e', 's', 'c', 'r', 'i', 'p', 
't', 'o', 'r', '.', 'p', 'r', 'o', 't', 'o', '\"', '+', '\n', '\021', 'M', 'i', 'g', 'r', 'a', 't', 'e', 'A', 'n', 'n', 'o', 't', 
'a', 't', 'i', 'o', 'n', '\022', '\026', '\n', '\006', 'r', 'e', 'n', 'a', 'm', 'e', '\030', '\001', ' ', '\001', '(', '\t', 'R', '\006', 'r', 'e', 
'n', 'a', 'm', 'e', '\"', 'Y', '\n', '\026', 'F', 'i', 'e', 'l', 'd', 'M', 'i', 'g', 'r', 'a', 't', 'e', 'A', 'n', 'n', 'o', 't', 
'a', 't', 'i', 'o', 'n', '\022', '\026', '\n', '\006', 'r', 'e', 'n', 'a', 'm', 'e', '\030', '\001', ' ', '\001', '(', '\t', 'R', '\006', 'r', 'e', 
'n', 'a', 'm', 'e', '\022', '\'', '\n', '\017', 'o', 'n', 'e', 'o', 'f', '_', 'p', 'r', 'o', 'm', 'o', 't', 'i', 'o', 'n', '\030', '\002', 
' ', '\001', '(', '\t', 'R', '\016', 'o', 'n', 'e', 'o', 'f', 'P', 'r', 'o', 'm', 'o', 't', 'i', 'o', 'n', '\"', '?', '\n', '\025', 'F', 
'i', 'l', 'e', 'M', 'i', 'g', 'r', 'a', 't', 'e', 'A', 'n', 'n', 'o', 't', 'a', 't', 'i', 'o', 'n', '\022', '&', '\n', '\017', 'm', 
'o', 'v', 'e', '_', 't', 'o', '_', 'p', 'a', 'c', 'k', 'a', 'g', 'e', '\030', '\002', ' ', '\001', '(', '\t', 'R', '\r', 'm', 'o', 'v', 
'e', 'T', 'o', 'P', 'a', 'c', 'k', 'a', 'g', 'e', ':', 'p', '\n', '\017', 'm', 'e', 's', 's', 'a', 'g', 'e', '_', 'm', 'i', 'g', 
'r', 'a', 't', 'e', '\022', '\037', '.', 'g', 'o', 'o', 'g', 'l', 'e', '.', 'p', 'r', 'o', 't', 'o', 'b', 'u', 'f', '.', 'M', 'e', 
's', 's', 'a', 'g', 'e', 'O', 'p', 't', 'i', 'o', 'n', 's', '\030', '\216', '\343', '\377', 'Q', ' ', '\001', '(', '\013', '2', '#', '.', 'u', 
'd', 'p', 'a', '.', 'a', 'n', 'n', 'o', 't', 'a', 't', 'i', 'o', 'n', 's', '.', 'M', 'i', 'g', 'r', 'a', 't', 'e', 'A', 'n', 
'n', 'o', 't', 'a', 't', 'i', 'o', 'n', 'R', '\016', 'm', 'e', 's', 's', 'a', 'g', 'e', 'M', 'i', 'g', 'r', 'a', 't', 'e', ':', 
'o', '\n', '\r', 'f', 'i', 'e', 'l', 'd', '_', 'm', 'i', 'g', 'r', 'a', 't', 'e', '\022', '\035', '.', 'g', 'o', 'o', 'g', 'l', 'e', 
'.', 'p', 'r', 'o', 't', 'o', 'b', 'u', 'f', '.', 'F', 'i', 'e', 'l', 'd', 'O', 'p', 't', 'i', 'o', 'n', 's', '\030', '\216', '\343', 
'\377', 'Q', ' ', '\001', '(', '\013', '2', '(', '.', 'u', 'd', 'p', 'a', '.', 'a', 'n', 'n', 'o', 't', 'a', 't', 'i', 'o', 'n', 's', 
'.', 'F', 'i', 'e', 'l', 'd', 'M', 'i', 'g', 'r', 'a', 't', 'e', 'A', 'n', 'n', 'o', 't', 'a', 't', 'i', 'o', 'n', 'R', '\014', 
'f', 'i', 'e', 'l', 'd', 'M', 'i', 'g', 'r', 'a', 't', 'e', ':', 'g', '\n', '\014', 'e', 'n', 'u', 'm', '_', 'm', 'i', 'g', 'r', 
'a', 't', 'e', '\022', '\034', '.', 'g', 'o', 'o', 'g', 'l', 'e', '.', 'p', 'r', 'o', 't', 'o', 'b', 'u', 'f', '.', 'E', 'n', 'u', 
'm', 'O', 'p', 't', 'i', 'o', 'n', 's', '\030', '\216', '\343', '\377', 'Q', ' ', '\001', '(', '\013', '2', '#', '.', 'u', 'd', 'p', 'a', '.', 
'a', 'n', 'n', 'o', 't', 'a', 't', 'i', 'o', 'n', 's', '.', 'M', 'i', 'g', 'r', 'a', 't', 'e', 'A', 'n', 'n', 'o', 't', 'a', 
't', 'i', 'o', 'n', 'R', '\013', 'e', 'n', 'u', 'm', 'M', 'i', 'g', 'r', 'a', 't', 'e', ':', 'w', '\n', '\022', 'e', 'n', 'u', 'm', 
'_', 'v', 'a', 'l', 'u', 'e', '_', 'm', 'i', 'g', 'r', 'a', 't', 'e', '\022', '!', '.', 'g', 'o', 'o', 'g', 'l', 'e', '.', 'p', 
'r', 'o', 't', 'o', 'b', 'u', 'f', '.', 'E', 'n', 'u', 'm', 'V', 'a', 'l', 'u', 'e', 'O', 'p', 't', 'i', 'o', 'n', 's', '\030', 
'\216', '\343', '\377', 'Q', ' ', '\001', '(', '\013', '2', '#', '.', 'u', 'd', 'p', 'a', '.', 'a', 'n', 'n', 'o', 't', 'a', 't', 'i', 'o', 
'n', 's', '.', 'M', 'i', 'g', 'r', 'a', 't', 'e', 'A', 'n', 'n', 'o', 't', 'a', 't', 'i', 'o', 'n', 'R', '\020', 'e', 'n', 'u', 
'm', 'V', 'a', 'l', 'u', 'e', 'M', 'i', 'g', 'r', 'a', 't', 'e', ':', 'k', '\n', '\014', 'f', 'i', 'l', 'e', '_', 'm', 'i', 'g', 
'r', 'a', 't', 'e', '\022', '\034', '.', 'g', 'o', 'o', 'g', 'l', 'e', '.', 'p', 'r', 'o', 't', 'o', 'b', 'u', 'f', '.', 'F', 'i', 
'l', 'e', 'O', 'p', 't', 'i', 'o', 'n', 's', '\030', '\216', '\343', '\377', 'Q', ' ', '\001', '(', '\013', '2', '\'', '.', 'u', 'd', 'p', 'a', 
'.', 'a', 'n', 'n', 'o', 't', 'a', 't', 'i', 'o', 'n', 's', '.', 'F', 'i', 'l', 'e', 'M', 'i', 'g', 'r', 'a', 't', 'e', 'A', 
'n', 'n', 'o', 't', 'a', 't', 'i', 'o', 'n', 'R', '\013', 'f', 'i', 'l', 'e', 'M', 'i', 'g', 'r', 'a', 't', 'e', 'b', '\006', 'p', 
'r', 'o', 't', 'o', '3', 
};

static upb_def_init *deps[2] = {
  &google_protobuf_descriptor_proto_upbdefinit,
  NULL
};

upb_def_init udpa_annotations_migrate_proto_upbdefinit = {
  deps,
  layouts,
  "udpa/annotations/migrate.proto",
  UPB_STRVIEW_INIT(descriptor, 855)
};
