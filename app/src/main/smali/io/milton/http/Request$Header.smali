.class public final enum Lio/milton/http/Request$Header;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Header"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/milton/http/Request$Header;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/milton/http/Request$Header;

.field public static final enum ACCEPT:Lio/milton/http/Request$Header;

.field public static final enum ACCEPT_ENCODING:Lio/milton/http/Request$Header;

.field public static final enum ACCEPT_LANGUAGE:Lio/milton/http/Request$Header;

.field public static final enum AUTHORIZATION:Lio/milton/http/Request$Header;

.field public static final enum CACHE_CONTROL:Lio/milton/http/Request$Header;

.field public static final enum CONTENT_LENGTH:Lio/milton/http/Request$Header;

.field public static final enum CONTENT_RANGE:Lio/milton/http/Request$Header;

.field public static final enum CONTENT_TYPE:Lio/milton/http/Request$Header;

.field public static final enum DEPTH:Lio/milton/http/Request$Header;

.field public static final enum DESTINATION:Lio/milton/http/Request$Header;

.field public static final enum EXPECT:Lio/milton/http/Request$Header;

.field public static final enum HOST:Lio/milton/http/Request$Header;

.field public static final enum IF:Lio/milton/http/Request$Header;

.field public static final enum IF_MATCH:Lio/milton/http/Request$Header;

.field public static final enum IF_MODIFIED:Lio/milton/http/Request$Header;

.field public static final enum IF_NONE_MATCH:Lio/milton/http/Request$Header;

.field public static final enum IF_NOT_MODIFIED:Lio/milton/http/Request$Header;

.field public static final enum IF_RANGE:Lio/milton/http/Request$Header;

.field public static final enum LOCK_TOKEN:Lio/milton/http/Request$Header;

.field public static final enum ORIGIN:Lio/milton/http/Request$Header;

.field public static final enum OVERWRITE:Lio/milton/http/Request$Header;

.field public static final enum RANGE:Lio/milton/http/Request$Header;

.field public static final enum REFERER:Lio/milton/http/Request$Header;

.field public static final enum TIMEOUT:Lio/milton/http/Request$Header;

.field public static final enum USER_AGENT:Lio/milton/http/Request$Header;

.field public static final enum WWW_AUTHENTICATE:Lio/milton/http/Request$Header;

.field public static final enum X_EXPECTED_ENTITY_LENGTH:Lio/milton/http/Request$Header;


# instance fields
.field public code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    new-instance v0, Lio/milton/http/Request$Header;

    const/4 v1, 0x0

    const-string v2, "Cache-Control"

    const-string v3, "CACHE_CONTROL"

    invoke-direct {v0, v3, v1, v2}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/milton/http/Request$Header;->CACHE_CONTROL:Lio/milton/http/Request$Header;

    new-instance v2, Lio/milton/http/Request$Header;

    const/4 v3, 0x1

    const-string v4, "WWW-Authenticate"

    const-string v5, "WWW_AUTHENTICATE"

    invoke-direct {v2, v5, v3, v4}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/milton/http/Request$Header;->WWW_AUTHENTICATE:Lio/milton/http/Request$Header;

    new-instance v4, Lio/milton/http/Request$Header;

    const/4 v5, 0x2

    const-string v6, "If"

    const-string v7, "IF"

    invoke-direct {v4, v7, v5, v6}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/milton/http/Request$Header;->IF:Lio/milton/http/Request$Header;

    new-instance v6, Lio/milton/http/Request$Header;

    const/4 v7, 0x3

    const-string v8, "If-Range"

    const-string v9, "IF_RANGE"

    invoke-direct {v6, v9, v7, v8}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lio/milton/http/Request$Header;->IF_RANGE:Lio/milton/http/Request$Header;

    new-instance v8, Lio/milton/http/Request$Header;

    const/4 v9, 0x4

    const-string v10, "If-Match"

    const-string v11, "IF_MATCH"

    invoke-direct {v8, v11, v9, v10}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lio/milton/http/Request$Header;->IF_MATCH:Lio/milton/http/Request$Header;

    new-instance v10, Lio/milton/http/Request$Header;

    const/4 v11, 0x5

    const-string v12, "If-None-Match"

    const-string v13, "IF_NONE_MATCH"

    invoke-direct {v10, v13, v11, v12}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lio/milton/http/Request$Header;->IF_NONE_MATCH:Lio/milton/http/Request$Header;

    new-instance v12, Lio/milton/http/Request$Header;

    const/4 v13, 0x6

    const-string v14, "If-Modified-Since"

    const-string v15, "IF_MODIFIED"

    invoke-direct {v12, v15, v13, v14}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lio/milton/http/Request$Header;->IF_MODIFIED:Lio/milton/http/Request$Header;

    new-instance v14, Lio/milton/http/Request$Header;

    const/4 v15, 0x7

    const-string v13, "If-Unmodified-Since"

    const-string v11, "IF_NOT_MODIFIED"

    invoke-direct {v14, v11, v15, v13}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lio/milton/http/Request$Header;->IF_NOT_MODIFIED:Lio/milton/http/Request$Header;

    new-instance v11, Lio/milton/http/Request$Header;

    const/16 v13, 0x8

    const-string v15, "Content-Length"

    const-string v9, "CONTENT_LENGTH"

    invoke-direct {v11, v9, v13, v15}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lio/milton/http/Request$Header;->CONTENT_LENGTH:Lio/milton/http/Request$Header;

    new-instance v9, Lio/milton/http/Request$Header;

    const/16 v15, 0x9

    const-string v13, "Content-Type"

    const-string v7, "CONTENT_TYPE"

    invoke-direct {v9, v7, v15, v13}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lio/milton/http/Request$Header;->CONTENT_TYPE:Lio/milton/http/Request$Header;

    new-instance v7, Lio/milton/http/Request$Header;

    const/16 v13, 0xa

    const-string v15, "Content-Range"

    const-string v5, "CONTENT_RANGE"

    invoke-direct {v7, v5, v13, v15}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lio/milton/http/Request$Header;->CONTENT_RANGE:Lio/milton/http/Request$Header;

    new-instance v5, Lio/milton/http/Request$Header;

    const/16 v15, 0xb

    const-string v13, "Depth"

    const-string v3, "DEPTH"

    invoke-direct {v5, v3, v15, v13}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lio/milton/http/Request$Header;->DEPTH:Lio/milton/http/Request$Header;

    new-instance v3, Lio/milton/http/Request$Header;

    const/16 v13, 0xc

    const-string v15, "Host"

    const-string v1, "HOST"

    invoke-direct {v3, v1, v13, v15}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/milton/http/Request$Header;->HOST:Lio/milton/http/Request$Header;

    new-instance v1, Lio/milton/http/Request$Header;

    const/16 v15, 0xd

    const-string v13, "Destination"

    move-object/from16 v16, v3

    const-string v3, "DESTINATION"

    invoke-direct {v1, v3, v15, v13}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/milton/http/Request$Header;->DESTINATION:Lio/milton/http/Request$Header;

    new-instance v3, Lio/milton/http/Request$Header;

    const/16 v13, 0xe

    const-string v15, "Referer"

    move-object/from16 v17, v1

    const-string v1, "REFERER"

    invoke-direct {v3, v1, v13, v15}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/milton/http/Request$Header;->REFERER:Lio/milton/http/Request$Header;

    new-instance v1, Lio/milton/http/Request$Header;

    const/16 v15, 0xf

    const-string v13, "Accept"

    move-object/from16 v18, v3

    const-string v3, "ACCEPT"

    invoke-direct {v1, v3, v15, v13}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/milton/http/Request$Header;->ACCEPT:Lio/milton/http/Request$Header;

    new-instance v3, Lio/milton/http/Request$Header;

    const/16 v13, 0x10

    const-string v15, "Accept-Language"

    move-object/from16 v19, v1

    const-string v1, "ACCEPT_LANGUAGE"

    invoke-direct {v3, v1, v13, v15}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/milton/http/Request$Header;->ACCEPT_LANGUAGE:Lio/milton/http/Request$Header;

    new-instance v1, Lio/milton/http/Request$Header;

    const/16 v15, 0x11

    const-string v13, "Range"

    move-object/from16 v20, v3

    const-string v3, "RANGE"

    invoke-direct {v1, v3, v15, v13}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/milton/http/Request$Header;->RANGE:Lio/milton/http/Request$Header;

    new-instance v3, Lio/milton/http/Request$Header;

    const/16 v13, 0x12

    const-string v15, "Accept-Encoding"

    move-object/from16 v21, v1

    const-string v1, "ACCEPT_ENCODING"

    invoke-direct {v3, v1, v13, v15}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/milton/http/Request$Header;->ACCEPT_ENCODING:Lio/milton/http/Request$Header;

    new-instance v1, Lio/milton/http/Request$Header;

    const/16 v15, 0x13

    const-string v13, "Timeout"

    move-object/from16 v22, v3

    const-string v3, "TIMEOUT"

    invoke-direct {v1, v3, v15, v13}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/milton/http/Request$Header;->TIMEOUT:Lio/milton/http/Request$Header;

    new-instance v3, Lio/milton/http/Request$Header;

    const/16 v13, 0x14

    const-string v15, "Lock-Token"

    move-object/from16 v23, v1

    const-string v1, "LOCK_TOKEN"

    invoke-direct {v3, v1, v13, v15}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/milton/http/Request$Header;->LOCK_TOKEN:Lio/milton/http/Request$Header;

    new-instance v1, Lio/milton/http/Request$Header;

    const/16 v15, 0x15

    const-string v13, "Expect"

    move-object/from16 v24, v3

    const-string v3, "EXPECT"

    invoke-direct {v1, v3, v15, v13}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/milton/http/Request$Header;->EXPECT:Lio/milton/http/Request$Header;

    new-instance v3, Lio/milton/http/Request$Header;

    const/16 v13, 0x16

    const-string v15, "Overwrite"

    move-object/from16 v25, v1

    const-string v1, "OVERWRITE"

    invoke-direct {v3, v1, v13, v15}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/milton/http/Request$Header;->OVERWRITE:Lio/milton/http/Request$Header;

    new-instance v1, Lio/milton/http/Request$Header;

    const/16 v13, 0x17

    const-string v15, "Origin"

    move-object/from16 v26, v3

    const-string v3, "ORIGIN"

    invoke-direct {v1, v3, v13, v15}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/milton/http/Request$Header;->ORIGIN:Lio/milton/http/Request$Header;

    new-instance v3, Lio/milton/http/Request$Header;

    const/16 v13, 0x18

    const-string v15, "User-Agent"

    move-object/from16 v27, v1

    const-string v1, "USER_AGENT"

    invoke-direct {v3, v1, v13, v15}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/milton/http/Request$Header;->USER_AGENT:Lio/milton/http/Request$Header;

    new-instance v1, Lio/milton/http/Request$Header;

    const/16 v13, 0x19

    const-string v15, "X-Expected-Entity-Length"

    move-object/from16 v28, v3

    const-string v3, "X_EXPECTED_ENTITY_LENGTH"

    invoke-direct {v1, v3, v13, v15}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/milton/http/Request$Header;->X_EXPECTED_ENTITY_LENGTH:Lio/milton/http/Request$Header;

    new-instance v3, Lio/milton/http/Request$Header;

    const/16 v13, 0x1a

    const-string v15, "Authorization"

    move-object/from16 v29, v1

    const-string v1, "AUTHORIZATION"

    invoke-direct {v3, v1, v13, v15}, Lio/milton/http/Request$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/milton/http/Request$Header;->AUTHORIZATION:Lio/milton/http/Request$Header;

    const/16 v1, 0x1b

    new-array v1, v1, [Lio/milton/http/Request$Header;

    const/4 v13, 0x0

    aput-object v0, v1, v13

    const/4 v0, 0x1

    aput-object v2, v1, v0

    const/4 v0, 0x2

    aput-object v4, v1, v0

    const/4 v0, 0x3

    aput-object v6, v1, v0

    const/4 v0, 0x4

    aput-object v8, v1, v0

    const/4 v0, 0x5

    aput-object v10, v1, v0

    const/4 v0, 0x6

    aput-object v12, v1, v0

    const/4 v0, 0x7

    aput-object v14, v1, v0

    const/16 v0, 0x8

    aput-object v11, v1, v0

    const/16 v0, 0x9

    aput-object v9, v1, v0

    const/16 v0, 0xa

    aput-object v7, v1, v0

    const/16 v0, 0xb

    aput-object v5, v1, v0

    const/16 v0, 0xc

    aput-object v16, v1, v0

    const/16 v0, 0xd

    aput-object v17, v1, v0

    const/16 v0, 0xe

    aput-object v18, v1, v0

    const/16 v0, 0xf

    aput-object v19, v1, v0

    const/16 v0, 0x10

    aput-object v20, v1, v0

    const/16 v0, 0x11

    aput-object v21, v1, v0

    const/16 v0, 0x12

    aput-object v22, v1, v0

    const/16 v0, 0x13

    aput-object v23, v1, v0

    const/16 v0, 0x14

    aput-object v24, v1, v0

    const/16 v0, 0x15

    aput-object v25, v1, v0

    const/16 v0, 0x16

    aput-object v26, v1, v0

    const/16 v0, 0x17

    aput-object v27, v1, v0

    const/16 v0, 0x18

    aput-object v28, v1, v0

    const/16 v0, 0x19

    aput-object v29, v1, v0

    const/16 v0, 0x1a

    aput-object v3, v1, v0

    sput-object v1, Lio/milton/http/Request$Header;->$VALUES:[Lio/milton/http/Request$Header;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/milton/http/Request$Header;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/milton/http/Request$Header;
    .locals 1

    const-class v0, Lio/milton/http/Request$Header;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/milton/http/Request$Header;

    return-object p0
.end method

.method public static values()[Lio/milton/http/Request$Header;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Header;->$VALUES:[Lio/milton/http/Request$Header;

    invoke-virtual {v0}, [Lio/milton/http/Request$Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/milton/http/Request$Header;

    return-object v0
.end method
