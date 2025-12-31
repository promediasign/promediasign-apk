.class public final enum Lorg/simpleframework/http/Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/simpleframework/http/Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/simpleframework/http/Status;

.field public static final enum ACCEPTED:Lorg/simpleframework/http/Status;

.field public static final enum BAD_GATEWAY:Lorg/simpleframework/http/Status;

.field public static final enum BAD_REQUEST:Lorg/simpleframework/http/Status;

.field public static final enum CONFLICT:Lorg/simpleframework/http/Status;

.field public static final enum CREATED:Lorg/simpleframework/http/Status;

.field public static final enum EXPECTATION_FAILED:Lorg/simpleframework/http/Status;

.field public static final enum FORBIDDEN:Lorg/simpleframework/http/Status;

.field public static final enum FOUND:Lorg/simpleframework/http/Status;

.field public static final enum GATEWAY_TIMEOUT:Lorg/simpleframework/http/Status;

.field public static final enum GONE:Lorg/simpleframework/http/Status;

.field public static final enum INTERNAL_SERVER_ERROR:Lorg/simpleframework/http/Status;

.field public static final enum LENGTH_REQUIRED:Lorg/simpleframework/http/Status;

.field public static final enum METHOD_NOT_ALLOWED:Lorg/simpleframework/http/Status;

.field public static final enum MOVED_PERMANENTLY:Lorg/simpleframework/http/Status;

.field public static final enum MULTIPLE_CHOICES:Lorg/simpleframework/http/Status;

.field public static final enum NOT_ACCEPTABLE:Lorg/simpleframework/http/Status;

.field public static final enum NOT_FOUND:Lorg/simpleframework/http/Status;

.field public static final enum NOT_IMPLEMENTED:Lorg/simpleframework/http/Status;

.field public static final enum NOT_MODIFIED:Lorg/simpleframework/http/Status;

.field public static final enum NO_CONTENT:Lorg/simpleframework/http/Status;

.field public static final enum OK:Lorg/simpleframework/http/Status;

.field public static final enum PARTIAL_CONTENT:Lorg/simpleframework/http/Status;

.field public static final enum PAYMENT_REQUIRED:Lorg/simpleframework/http/Status;

.field public static final enum PRECONDITION_FAILED:Lorg/simpleframework/http/Status;

.field public static final enum PROXY_AUTHENTICATION_REQUIRED:Lorg/simpleframework/http/Status;

.field public static final enum REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/simpleframework/http/Status;

.field public static final enum REQUEST_ENTITY_TOO_LARGE:Lorg/simpleframework/http/Status;

.field public static final enum REQUEST_TIMEOUT:Lorg/simpleframework/http/Status;

.field public static final enum REQUEST_URI_TOO_LONG:Lorg/simpleframework/http/Status;

.field public static final enum RESET_CONTENT:Lorg/simpleframework/http/Status;

.field public static final enum SEE_OTHER:Lorg/simpleframework/http/Status;

.field public static final enum SERVICE_UNAVAILABLE:Lorg/simpleframework/http/Status;

.field public static final enum TEMPORARY_REDIRECT:Lorg/simpleframework/http/Status;

.field public static final enum UNAUTHORIZED:Lorg/simpleframework/http/Status;

.field public static final enum UNSUPPORTED_MEDIA_TYPE:Lorg/simpleframework/http/Status;

.field public static final enum USE_PROXY:Lorg/simpleframework/http/Status;

.field public static final enum VERSION_NOT_SUPPORTED:Lorg/simpleframework/http/Status;


# instance fields
.field private final code:I

.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 41

    new-instance v0, Lorg/simpleframework/http/Status;

    const/4 v1, 0x0

    const/16 v2, 0xc8

    const-string v3, "OK"

    invoke-direct {v0, v3, v1, v2, v3}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->OK:Lorg/simpleframework/http/Status;

    new-instance v2, Lorg/simpleframework/http/Status;

    const/16 v3, 0xc9

    const-string v4, "Created"

    const-string v5, "CREATED"

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/simpleframework/http/Status;->CREATED:Lorg/simpleframework/http/Status;

    new-instance v3, Lorg/simpleframework/http/Status;

    const/16 v4, 0xca

    const-string v5, "Accepted"

    const-string v7, "ACCEPTED"

    const/4 v8, 0x2

    invoke-direct {v3, v7, v8, v4, v5}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/simpleframework/http/Status;->ACCEPTED:Lorg/simpleframework/http/Status;

    new-instance v4, Lorg/simpleframework/http/Status;

    const/16 v5, 0xcc

    const-string v7, "No Content"

    const-string v9, "NO_CONTENT"

    const/4 v10, 0x3

    invoke-direct {v4, v9, v10, v5, v7}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/simpleframework/http/Status;->NO_CONTENT:Lorg/simpleframework/http/Status;

    new-instance v5, Lorg/simpleframework/http/Status;

    const/16 v7, 0xcd

    const-string v9, "Reset Content"

    const-string v11, "RESET_CONTENT"

    const/4 v12, 0x4

    invoke-direct {v5, v11, v12, v7, v9}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/simpleframework/http/Status;->RESET_CONTENT:Lorg/simpleframework/http/Status;

    new-instance v7, Lorg/simpleframework/http/Status;

    const/16 v9, 0xce

    const-string v11, "Partial Content"

    const-string v13, "PARTIAL_CONTENT"

    const/4 v14, 0x5

    invoke-direct {v7, v13, v14, v9, v11}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lorg/simpleframework/http/Status;->PARTIAL_CONTENT:Lorg/simpleframework/http/Status;

    new-instance v9, Lorg/simpleframework/http/Status;

    const/16 v11, 0x12c

    const-string v13, "Multiple Choices"

    const-string v15, "MULTIPLE_CHOICES"

    const/4 v14, 0x6

    invoke-direct {v9, v15, v14, v11, v13}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lorg/simpleframework/http/Status;->MULTIPLE_CHOICES:Lorg/simpleframework/http/Status;

    new-instance v11, Lorg/simpleframework/http/Status;

    const/16 v13, 0x12d

    const-string v15, "Moved Permanently"

    const-string v14, "MOVED_PERMANENTLY"

    const/4 v12, 0x7

    invoke-direct {v11, v14, v12, v13, v15}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lorg/simpleframework/http/Status;->MOVED_PERMANENTLY:Lorg/simpleframework/http/Status;

    new-instance v13, Lorg/simpleframework/http/Status;

    const/16 v14, 0x12e

    const-string v15, "Found"

    const-string v12, "FOUND"

    const/16 v10, 0x8

    invoke-direct {v13, v12, v10, v14, v15}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lorg/simpleframework/http/Status;->FOUND:Lorg/simpleframework/http/Status;

    new-instance v12, Lorg/simpleframework/http/Status;

    const/16 v14, 0x12f

    const-string v15, "See Other"

    const-string v10, "SEE_OTHER"

    const/16 v8, 0x9

    invoke-direct {v12, v10, v8, v14, v15}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lorg/simpleframework/http/Status;->SEE_OTHER:Lorg/simpleframework/http/Status;

    new-instance v10, Lorg/simpleframework/http/Status;

    const/16 v14, 0x130

    const-string v15, "Not Modified"

    const-string v8, "NOT_MODIFIED"

    const/16 v6, 0xa

    invoke-direct {v10, v8, v6, v14, v15}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lorg/simpleframework/http/Status;->NOT_MODIFIED:Lorg/simpleframework/http/Status;

    new-instance v8, Lorg/simpleframework/http/Status;

    const/16 v14, 0x131

    const-string v15, "Use Proxy"

    const-string v6, "USE_PROXY"

    const/16 v1, 0xb

    invoke-direct {v8, v6, v1, v14, v15}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lorg/simpleframework/http/Status;->USE_PROXY:Lorg/simpleframework/http/Status;

    new-instance v6, Lorg/simpleframework/http/Status;

    const/16 v14, 0x133

    const-string v15, "Temporary Redirect"

    const-string v1, "TEMPORARY_REDIRECT"

    move-object/from16 v16, v8

    const/16 v8, 0xc

    invoke-direct {v6, v1, v8, v14, v15}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/simpleframework/http/Status;->TEMPORARY_REDIRECT:Lorg/simpleframework/http/Status;

    new-instance v1, Lorg/simpleframework/http/Status;

    const/16 v14, 0x190

    const-string v15, "Bad Request"

    const-string v8, "BAD_REQUEST"

    move-object/from16 v17, v6

    const/16 v6, 0xd

    invoke-direct {v1, v8, v6, v14, v15}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/simpleframework/http/Status;->BAD_REQUEST:Lorg/simpleframework/http/Status;

    new-instance v8, Lorg/simpleframework/http/Status;

    const/16 v14, 0x191

    const-string v15, "Unauthorized"

    const-string v6, "UNAUTHORIZED"

    move-object/from16 v18, v1

    const/16 v1, 0xe

    invoke-direct {v8, v6, v1, v14, v15}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lorg/simpleframework/http/Status;->UNAUTHORIZED:Lorg/simpleframework/http/Status;

    new-instance v6, Lorg/simpleframework/http/Status;

    const/16 v14, 0x192

    const-string v15, "Payment Required"

    const-string v1, "PAYMENT_REQUIRED"

    move-object/from16 v19, v8

    const/16 v8, 0xf

    invoke-direct {v6, v1, v8, v14, v15}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/simpleframework/http/Status;->PAYMENT_REQUIRED:Lorg/simpleframework/http/Status;

    new-instance v1, Lorg/simpleframework/http/Status;

    const/16 v14, 0x193

    const-string v15, "Forbidden"

    const-string v8, "FORBIDDEN"

    move-object/from16 v20, v6

    const/16 v6, 0x10

    invoke-direct {v1, v8, v6, v14, v15}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/simpleframework/http/Status;->FORBIDDEN:Lorg/simpleframework/http/Status;

    new-instance v8, Lorg/simpleframework/http/Status;

    const/16 v14, 0x194

    const-string v15, "Not Found"

    const-string v6, "NOT_FOUND"

    move-object/from16 v21, v1

    const/16 v1, 0x11

    invoke-direct {v8, v6, v1, v14, v15}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lorg/simpleframework/http/Status;->NOT_FOUND:Lorg/simpleframework/http/Status;

    new-instance v6, Lorg/simpleframework/http/Status;

    const/16 v14, 0x195

    const-string v15, "Method Not Allowed"

    const-string v1, "METHOD_NOT_ALLOWED"

    move-object/from16 v22, v8

    const/16 v8, 0x12

    invoke-direct {v6, v1, v8, v14, v15}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/simpleframework/http/Status;->METHOD_NOT_ALLOWED:Lorg/simpleframework/http/Status;

    new-instance v1, Lorg/simpleframework/http/Status;

    const/16 v14, 0x196

    const-string v15, "Not Acceptable"

    const-string v8, "NOT_ACCEPTABLE"

    move-object/from16 v23, v6

    const/16 v6, 0x13

    invoke-direct {v1, v8, v6, v14, v15}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/simpleframework/http/Status;->NOT_ACCEPTABLE:Lorg/simpleframework/http/Status;

    new-instance v8, Lorg/simpleframework/http/Status;

    const/16 v14, 0x197

    const-string v15, "Proxy Authentication Required"

    const-string v6, "PROXY_AUTHENTICATION_REQUIRED"

    move-object/from16 v24, v1

    const/16 v1, 0x14

    invoke-direct {v8, v6, v1, v14, v15}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lorg/simpleframework/http/Status;->PROXY_AUTHENTICATION_REQUIRED:Lorg/simpleframework/http/Status;

    new-instance v6, Lorg/simpleframework/http/Status;

    const/16 v14, 0x198

    const-string v15, "Request Timeout"

    const-string v1, "REQUEST_TIMEOUT"

    move-object/from16 v25, v8

    const/16 v8, 0x15

    invoke-direct {v6, v1, v8, v14, v15}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/simpleframework/http/Status;->REQUEST_TIMEOUT:Lorg/simpleframework/http/Status;

    new-instance v1, Lorg/simpleframework/http/Status;

    const/16 v14, 0x199

    const-string v15, "Conflict"

    const-string v8, "CONFLICT"

    move-object/from16 v26, v6

    const/16 v6, 0x16

    invoke-direct {v1, v8, v6, v14, v15}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/simpleframework/http/Status;->CONFLICT:Lorg/simpleframework/http/Status;

    new-instance v6, Lorg/simpleframework/http/Status;

    const/16 v8, 0x19a

    const-string v14, "Gone"

    const-string v15, "GONE"

    move-object/from16 v27, v1

    const/16 v1, 0x17

    invoke-direct {v6, v15, v1, v8, v14}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/simpleframework/http/Status;->GONE:Lorg/simpleframework/http/Status;

    new-instance v1, Lorg/simpleframework/http/Status;

    const/16 v8, 0x19b

    const-string v14, "Length Required"

    const-string v15, "LENGTH_REQUIRED"

    move-object/from16 v28, v6

    const/16 v6, 0x18

    invoke-direct {v1, v15, v6, v8, v14}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/simpleframework/http/Status;->LENGTH_REQUIRED:Lorg/simpleframework/http/Status;

    new-instance v6, Lorg/simpleframework/http/Status;

    const/16 v8, 0x19c

    const-string v14, "Precondition Failed"

    const-string v15, "PRECONDITION_FAILED"

    move-object/from16 v29, v1

    const/16 v1, 0x19

    invoke-direct {v6, v15, v1, v8, v14}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/simpleframework/http/Status;->PRECONDITION_FAILED:Lorg/simpleframework/http/Status;

    new-instance v1, Lorg/simpleframework/http/Status;

    const/16 v8, 0x19d

    const-string v14, "Request Entity Too Large"

    const-string v15, "REQUEST_ENTITY_TOO_LARGE"

    move-object/from16 v30, v6

    const/16 v6, 0x1a

    invoke-direct {v1, v15, v6, v8, v14}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/simpleframework/http/Status;->REQUEST_ENTITY_TOO_LARGE:Lorg/simpleframework/http/Status;

    new-instance v6, Lorg/simpleframework/http/Status;

    const/16 v8, 0x19e

    const-string v14, "Request-URI Too Long"

    const-string v15, "REQUEST_URI_TOO_LONG"

    move-object/from16 v31, v1

    const/16 v1, 0x1b

    invoke-direct {v6, v15, v1, v8, v14}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/simpleframework/http/Status;->REQUEST_URI_TOO_LONG:Lorg/simpleframework/http/Status;

    new-instance v1, Lorg/simpleframework/http/Status;

    const/16 v8, 0x19f

    const-string v14, "Unsupported Media Type"

    const-string v15, "UNSUPPORTED_MEDIA_TYPE"

    move-object/from16 v32, v6

    const/16 v6, 0x1c

    invoke-direct {v1, v15, v6, v8, v14}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/simpleframework/http/Status;->UNSUPPORTED_MEDIA_TYPE:Lorg/simpleframework/http/Status;

    new-instance v6, Lorg/simpleframework/http/Status;

    const/16 v8, 0x1a0

    const-string v14, "Requested Range Not Satisfiable"

    const-string v15, "REQUESTED_RANGE_NOT_SATISFIABLE"

    move-object/from16 v33, v1

    const/16 v1, 0x1d

    invoke-direct {v6, v15, v1, v8, v14}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/simpleframework/http/Status;->REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/simpleframework/http/Status;

    new-instance v1, Lorg/simpleframework/http/Status;

    const/16 v8, 0x1a1

    const-string v14, "Expectation Failed"

    const-string v15, "EXPECTATION_FAILED"

    move-object/from16 v34, v6

    const/16 v6, 0x1e

    invoke-direct {v1, v15, v6, v8, v14}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/simpleframework/http/Status;->EXPECTATION_FAILED:Lorg/simpleframework/http/Status;

    new-instance v6, Lorg/simpleframework/http/Status;

    const/16 v8, 0x1f4

    const-string v14, "Internal Server Error"

    const-string v15, "INTERNAL_SERVER_ERROR"

    move-object/from16 v35, v1

    const/16 v1, 0x1f

    invoke-direct {v6, v15, v1, v8, v14}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/simpleframework/http/Status;->INTERNAL_SERVER_ERROR:Lorg/simpleframework/http/Status;

    new-instance v1, Lorg/simpleframework/http/Status;

    const/16 v8, 0x1f5

    const-string v14, "Not Implemented"

    const-string v15, "NOT_IMPLEMENTED"

    move-object/from16 v36, v6

    const/16 v6, 0x20

    invoke-direct {v1, v15, v6, v8, v14}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/simpleframework/http/Status;->NOT_IMPLEMENTED:Lorg/simpleframework/http/Status;

    new-instance v6, Lorg/simpleframework/http/Status;

    const/16 v8, 0x1f6

    const-string v14, "Bad Gateway"

    const-string v15, "BAD_GATEWAY"

    move-object/from16 v37, v1

    const/16 v1, 0x21

    invoke-direct {v6, v15, v1, v8, v14}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/simpleframework/http/Status;->BAD_GATEWAY:Lorg/simpleframework/http/Status;

    new-instance v1, Lorg/simpleframework/http/Status;

    const/16 v8, 0x1f7

    const-string v14, "Service Unavailable"

    const-string v15, "SERVICE_UNAVAILABLE"

    move-object/from16 v38, v6

    const/16 v6, 0x22

    invoke-direct {v1, v15, v6, v8, v14}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/simpleframework/http/Status;->SERVICE_UNAVAILABLE:Lorg/simpleframework/http/Status;

    new-instance v6, Lorg/simpleframework/http/Status;

    const/16 v8, 0x1f8

    const-string v14, "Gateway Timeout"

    const-string v15, "GATEWAY_TIMEOUT"

    move-object/from16 v39, v1

    const/16 v1, 0x23

    invoke-direct {v6, v15, v1, v8, v14}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/simpleframework/http/Status;->GATEWAY_TIMEOUT:Lorg/simpleframework/http/Status;

    new-instance v1, Lorg/simpleframework/http/Status;

    const/16 v8, 0x1f9

    const-string v14, "Version Not Supported"

    const-string v15, "VERSION_NOT_SUPPORTED"

    move-object/from16 v40, v6

    const/16 v6, 0x24

    invoke-direct {v1, v15, v6, v8, v14}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/simpleframework/http/Status;->VERSION_NOT_SUPPORTED:Lorg/simpleframework/http/Status;

    const/16 v6, 0x25

    new-array v6, v6, [Lorg/simpleframework/http/Status;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const/4 v0, 0x1

    aput-object v2, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v4, v6, v0

    const/4 v0, 0x4

    aput-object v5, v6, v0

    const/4 v0, 0x5

    aput-object v7, v6, v0

    const/4 v0, 0x6

    aput-object v9, v6, v0

    const/4 v0, 0x7

    aput-object v11, v6, v0

    const/16 v0, 0x8

    aput-object v13, v6, v0

    const/16 v0, 0x9

    aput-object v12, v6, v0

    const/16 v0, 0xa

    aput-object v10, v6, v0

    const/16 v0, 0xb

    aput-object v16, v6, v0

    const/16 v0, 0xc

    aput-object v17, v6, v0

    const/16 v0, 0xd

    aput-object v18, v6, v0

    const/16 v0, 0xe

    aput-object v19, v6, v0

    const/16 v0, 0xf

    aput-object v20, v6, v0

    const/16 v0, 0x10

    aput-object v21, v6, v0

    const/16 v0, 0x11

    aput-object v22, v6, v0

    const/16 v0, 0x12

    aput-object v23, v6, v0

    const/16 v0, 0x13

    aput-object v24, v6, v0

    const/16 v0, 0x14

    aput-object v25, v6, v0

    const/16 v0, 0x15

    aput-object v26, v6, v0

    const/16 v0, 0x16

    aput-object v27, v6, v0

    const/16 v0, 0x17

    aput-object v28, v6, v0

    const/16 v0, 0x18

    aput-object v29, v6, v0

    const/16 v0, 0x19

    aput-object v30, v6, v0

    const/16 v0, 0x1a

    aput-object v31, v6, v0

    const/16 v0, 0x1b

    aput-object v32, v6, v0

    const/16 v0, 0x1c

    aput-object v33, v6, v0

    const/16 v0, 0x1d

    aput-object v34, v6, v0

    const/16 v0, 0x1e

    aput-object v35, v6, v0

    const/16 v0, 0x1f

    aput-object v36, v6, v0

    const/16 v0, 0x20

    aput-object v37, v6, v0

    const/16 v0, 0x21

    aput-object v38, v6, v0

    const/16 v0, 0x22

    aput-object v39, v6, v0

    const/16 v0, 0x23

    aput-object v40, v6, v0

    const/16 v0, 0x24

    aput-object v1, v6, v0

    sput-object v6, Lorg/simpleframework/http/Status;->$VALUES:[Lorg/simpleframework/http/Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lorg/simpleframework/http/Status;->description:Ljava/lang/String;

    iput p3, p0, Lorg/simpleframework/http/Status;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/simpleframework/http/Status;
    .locals 1

    const-class v0, Lorg/simpleframework/http/Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/http/Status;

    return-object p0
.end method

.method public static final values()[Lorg/simpleframework/http/Status;
    .locals 1

    sget-object v0, Lorg/simpleframework/http/Status;->$VALUES:[Lorg/simpleframework/http/Status;

    invoke-virtual {v0}, [Lorg/simpleframework/http/Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/simpleframework/http/Status;

    return-object v0
.end method
