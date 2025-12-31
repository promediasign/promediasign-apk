.class public final enum Lio/milton/http/Response$Header;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Header"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/milton/http/Response$Header;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/milton/http/Response$Header;

.field public static final enum ACCEPT_RANGES:Lio/milton/http/Response$Header;

.field public static final enum ACCESS_CONTROL_ALLOW_ORIGIN:Lio/milton/http/Response$Header;

.field public static final enum ALLOW:Lio/milton/http/Response$Header;

.field public static final enum CACHE_CONTROL:Lio/milton/http/Response$Header;

.field public static final enum CONTENT_ENCODING:Lio/milton/http/Response$Header;

.field public static final enum CONTENT_LENGTH:Lio/milton/http/Response$Header;

.field public static final enum CONTENT_RANGE:Lio/milton/http/Response$Header;

.field public static final enum CONTENT_TYPE:Lio/milton/http/Response$Header;

.field public static final enum DATE:Lio/milton/http/Response$Header;

.field public static final enum DAV:Lio/milton/http/Response$Header;

.field public static final enum ETAG:Lio/milton/http/Response$Header;

.field public static final enum EXPIRES:Lio/milton/http/Response$Header;

.field public static final enum LAST_MODIFIED:Lio/milton/http/Response$Header;

.field public static final enum LOCATION:Lio/milton/http/Response$Header;

.field public static final enum LOCK_TOKEN:Lio/milton/http/Response$Header;

.field public static final enum VARY:Lio/milton/http/Response$Header;

.field public static final enum WWW_AUTHENTICATE:Lio/milton/http/Response$Header;


# instance fields
.field public code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lio/milton/http/Response$Header;

    const/4 v1, 0x0

    const-string v2, "Cache-Control"

    const-string v3, "CACHE_CONTROL"

    invoke-direct {v0, v3, v1, v2}, Lio/milton/http/Response$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/milton/http/Response$Header;->CACHE_CONTROL:Lio/milton/http/Response$Header;

    new-instance v2, Lio/milton/http/Response$Header;

    const/4 v3, 0x1

    const-string v4, "WWW-Authenticate"

    const-string v5, "WWW_AUTHENTICATE"

    invoke-direct {v2, v5, v3, v4}, Lio/milton/http/Response$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/milton/http/Response$Header;->WWW_AUTHENTICATE:Lio/milton/http/Response$Header;

    new-instance v4, Lio/milton/http/Response$Header;

    const/4 v5, 0x2

    const-string v6, "Content-Length"

    const-string v7, "CONTENT_LENGTH"

    invoke-direct {v4, v7, v5, v6}, Lio/milton/http/Response$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/milton/http/Response$Header;->CONTENT_LENGTH:Lio/milton/http/Response$Header;

    new-instance v6, Lio/milton/http/Response$Header;

    const/4 v7, 0x3

    const-string v8, "Content-Type"

    const-string v9, "CONTENT_TYPE"

    invoke-direct {v6, v9, v7, v8}, Lio/milton/http/Response$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lio/milton/http/Response$Header;->CONTENT_TYPE:Lio/milton/http/Response$Header;

    new-instance v8, Lio/milton/http/Response$Header;

    const/4 v9, 0x4

    const-string v10, "Content-Encoding"

    const-string v11, "CONTENT_ENCODING"

    invoke-direct {v8, v11, v9, v10}, Lio/milton/http/Response$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lio/milton/http/Response$Header;->CONTENT_ENCODING:Lio/milton/http/Response$Header;

    new-instance v10, Lio/milton/http/Response$Header;

    const/4 v11, 0x5

    const-string v12, "Location"

    const-string v13, "LOCATION"

    invoke-direct {v10, v13, v11, v12}, Lio/milton/http/Response$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lio/milton/http/Response$Header;->LOCATION:Lio/milton/http/Response$Header;

    new-instance v12, Lio/milton/http/Response$Header;

    const/4 v13, 0x6

    const-string v14, "Allow"

    const-string v15, "ALLOW"

    invoke-direct {v12, v15, v13, v14}, Lio/milton/http/Response$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lio/milton/http/Response$Header;->ALLOW:Lio/milton/http/Response$Header;

    new-instance v14, Lio/milton/http/Response$Header;

    const-string v15, "DAV"

    const/4 v13, 0x7

    invoke-direct {v14, v15, v13, v15}, Lio/milton/http/Response$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lio/milton/http/Response$Header;->DAV:Lio/milton/http/Response$Header;

    new-instance v15, Lio/milton/http/Response$Header;

    const/16 v13, 0x8

    const-string v11, "Date"

    const-string v9, "DATE"

    invoke-direct {v15, v9, v13, v11}, Lio/milton/http/Response$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lio/milton/http/Response$Header;->DATE:Lio/milton/http/Response$Header;

    new-instance v9, Lio/milton/http/Response$Header;

    const/16 v11, 0x9

    const-string v13, "Last-Modified"

    const-string v7, "LAST_MODIFIED"

    invoke-direct {v9, v7, v11, v13}, Lio/milton/http/Response$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lio/milton/http/Response$Header;->LAST_MODIFIED:Lio/milton/http/Response$Header;

    new-instance v7, Lio/milton/http/Response$Header;

    const/16 v13, 0xa

    const-string v11, "Lock-Token"

    const-string v5, "LOCK_TOKEN"

    invoke-direct {v7, v5, v13, v11}, Lio/milton/http/Response$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lio/milton/http/Response$Header;->LOCK_TOKEN:Lio/milton/http/Response$Header;

    new-instance v5, Lio/milton/http/Response$Header;

    const/16 v11, 0xb

    const-string v13, "Expires"

    const-string v3, "EXPIRES"

    invoke-direct {v5, v3, v11, v13}, Lio/milton/http/Response$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lio/milton/http/Response$Header;->EXPIRES:Lio/milton/http/Response$Header;

    new-instance v3, Lio/milton/http/Response$Header;

    const/16 v13, 0xc

    const-string v11, "ETag"

    const-string v1, "ETAG"

    invoke-direct {v3, v1, v13, v11}, Lio/milton/http/Response$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/milton/http/Response$Header;->ETAG:Lio/milton/http/Response$Header;

    new-instance v1, Lio/milton/http/Response$Header;

    const/16 v11, 0xd

    const-string v13, "Vary"

    move-object/from16 v16, v3

    const-string v3, "VARY"

    invoke-direct {v1, v3, v11, v13}, Lio/milton/http/Response$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/milton/http/Response$Header;->VARY:Lio/milton/http/Response$Header;

    new-instance v3, Lio/milton/http/Response$Header;

    const/16 v13, 0xe

    const-string v11, "Access-Control-Allow-Origin"

    move-object/from16 v17, v1

    const-string v1, "ACCESS_CONTROL_ALLOW_ORIGIN"

    invoke-direct {v3, v1, v13, v11}, Lio/milton/http/Response$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/milton/http/Response$Header;->ACCESS_CONTROL_ALLOW_ORIGIN:Lio/milton/http/Response$Header;

    new-instance v1, Lio/milton/http/Response$Header;

    const/16 v11, 0xf

    const-string v13, "Accept-Ranges"

    move-object/from16 v18, v3

    const-string v3, "ACCEPT_RANGES"

    invoke-direct {v1, v3, v11, v13}, Lio/milton/http/Response$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/milton/http/Response$Header;->ACCEPT_RANGES:Lio/milton/http/Response$Header;

    new-instance v3, Lio/milton/http/Response$Header;

    const/16 v13, 0x10

    const-string v11, "Content-Range"

    move-object/from16 v19, v1

    const-string v1, "CONTENT_RANGE"

    invoke-direct {v3, v1, v13, v11}, Lio/milton/http/Response$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/milton/http/Response$Header;->CONTENT_RANGE:Lio/milton/http/Response$Header;

    const/16 v1, 0x11

    new-array v1, v1, [Lio/milton/http/Response$Header;

    const/4 v11, 0x0

    aput-object v0, v1, v11

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

    aput-object v15, v1, v0

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

    aput-object v3, v1, v13

    sput-object v1, Lio/milton/http/Response$Header;->$VALUES:[Lio/milton/http/Response$Header;

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

    iput-object p3, p0, Lio/milton/http/Response$Header;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/milton/http/Response$Header;
    .locals 1

    const-class v0, Lio/milton/http/Response$Header;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/milton/http/Response$Header;

    return-object p0
.end method

.method public static values()[Lio/milton/http/Response$Header;
    .locals 1

    sget-object v0, Lio/milton/http/Response$Header;->$VALUES:[Lio/milton/http/Response$Header;

    invoke-virtual {v0}, [Lio/milton/http/Response$Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/milton/http/Response$Header;

    return-object v0
.end method
