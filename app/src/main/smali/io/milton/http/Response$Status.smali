.class public final enum Lio/milton/http/Response$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/milton/http/Response$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/milton/http/Response$Status;

.field public static final enum SC_ACCEPTED:Lio/milton/http/Response$Status;

.field public static final enum SC_BAD_GATEWAY:Lio/milton/http/Response$Status;

.field public static final enum SC_BAD_REQUEST:Lio/milton/http/Response$Status;

.field public static final enum SC_CONFLICT:Lio/milton/http/Response$Status;

.field public static final enum SC_CONTINUE:Lio/milton/http/Response$Status;

.field public static final enum SC_CREATED:Lio/milton/http/Response$Status;

.field public static final enum SC_EXPECTATION_FAILED:Lio/milton/http/Response$Status;

.field public static final enum SC_FORBIDDEN:Lio/milton/http/Response$Status;

.field public static final enum SC_INSUFFICIENT_STORAGE:Lio/milton/http/Response$Status;

.field public static final enum SC_INTERNAL_SERVER_ERROR:Lio/milton/http/Response$Status;

.field public static final enum SC_LOCKED:Lio/milton/http/Response$Status;

.field public static final enum SC_METHOD_FAILURE:Lio/milton/http/Response$Status;

.field public static final enum SC_METHOD_NOT_ALLOWED:Lio/milton/http/Response$Status;

.field public static final enum SC_MOVED_PERMANENTLY:Lio/milton/http/Response$Status;

.field public static final enum SC_MOVED_TEMPORARILY:Lio/milton/http/Response$Status;

.field public static final enum SC_MULTI_STATUS:Lio/milton/http/Response$Status;

.field public static final enum SC_NOT_FOUND:Lio/milton/http/Response$Status;

.field public static final enum SC_NOT_IMPLEMENTED:Lio/milton/http/Response$Status;

.field public static final enum SC_NOT_MODIFIED:Lio/milton/http/Response$Status;

.field public static final enum SC_NO_CONTENT:Lio/milton/http/Response$Status;

.field public static final enum SC_OK:Lio/milton/http/Response$Status;

.field public static final enum SC_PARTIAL_CONTENT:Lio/milton/http/Response$Status;

.field public static final enum SC_PRECONDITION_FAILED:Lio/milton/http/Response$Status;

.field public static final enum SC_REQUEST_TOO_LONG:Lio/milton/http/Response$Status;

.field public static final enum SC_SERVICE_UNAVAILABLE:Lio/milton/http/Response$Status;

.field public static final enum SC_TEMPORARY_REDIRECT:Lio/milton/http/Response$Status;

.field public static final enum SC_UNAUTHORIZED:Lio/milton/http/Response$Status;

.field public static final enum SC_UNPROCESSABLE_ENTITY:Lio/milton/http/Response$Status;

.field public static final enum SC_UNSUPPORTED_MEDIA_TYPE:Lio/milton/http/Response$Status;


# instance fields
.field public code:I

.field public text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    new-instance v0, Lio/milton/http/Response$Status;

    const/16 v1, 0xc8

    const-string v2, "OK"

    const-string v3, "SC_OK"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/milton/http/Response$Status;->SC_OK:Lio/milton/http/Response$Status;

    new-instance v1, Lio/milton/http/Response$Status;

    const/4 v2, 0x1

    const/16 v3, 0xc9

    const-string v5, "SC_CREATED"

    invoke-direct {v1, v5, v2, v3}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/milton/http/Response$Status;->SC_CREATED:Lio/milton/http/Response$Status;

    new-instance v3, Lio/milton/http/Response$Status;

    const/4 v5, 0x2

    const/16 v6, 0xca

    const-string v7, "SC_ACCEPTED"

    invoke-direct {v3, v7, v5, v6}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/milton/http/Response$Status;->SC_ACCEPTED:Lio/milton/http/Response$Status;

    new-instance v6, Lio/milton/http/Response$Status;

    const/4 v7, 0x3

    const/16 v8, 0xcc

    const-string v9, "SC_NO_CONTENT"

    invoke-direct {v6, v9, v7, v8}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/milton/http/Response$Status;->SC_NO_CONTENT:Lio/milton/http/Response$Status;

    new-instance v8, Lio/milton/http/Response$Status;

    const/16 v9, 0xcf

    const-string v10, "Multi-status"

    const-string v11, "SC_MULTI_STATUS"

    const/4 v12, 0x4

    invoke-direct {v8, v11, v12, v9, v10}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lio/milton/http/Response$Status;->SC_MULTI_STATUS:Lio/milton/http/Response$Status;

    new-instance v9, Lio/milton/http/Response$Status;

    const/4 v10, 0x5

    const/16 v11, 0x12d

    const-string v13, "SC_MOVED_PERMANENTLY"

    invoke-direct {v9, v13, v10, v11}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/milton/http/Response$Status;->SC_MOVED_PERMANENTLY:Lio/milton/http/Response$Status;

    new-instance v11, Lio/milton/http/Response$Status;

    const/4 v13, 0x6

    const/16 v14, 0x12e

    const-string v15, "SC_MOVED_TEMPORARILY"

    invoke-direct {v11, v15, v13, v14}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/milton/http/Response$Status;->SC_MOVED_TEMPORARILY:Lio/milton/http/Response$Status;

    new-instance v14, Lio/milton/http/Response$Status;

    const/4 v15, 0x7

    const/16 v13, 0x133

    const-string v10, "SC_TEMPORARY_REDIRECT"

    invoke-direct {v14, v10, v15, v13}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/milton/http/Response$Status;->SC_TEMPORARY_REDIRECT:Lio/milton/http/Response$Status;

    new-instance v10, Lio/milton/http/Response$Status;

    const/16 v13, 0x8

    const/16 v15, 0x130

    const-string v12, "SC_NOT_MODIFIED"

    invoke-direct {v10, v12, v13, v15}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/milton/http/Response$Status;->SC_NOT_MODIFIED:Lio/milton/http/Response$Status;

    new-instance v12, Lio/milton/http/Response$Status;

    const/16 v15, 0x9

    const/16 v13, 0x190

    const-string v7, "SC_BAD_REQUEST"

    invoke-direct {v12, v7, v15, v13}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/milton/http/Response$Status;->SC_BAD_REQUEST:Lio/milton/http/Response$Status;

    new-instance v7, Lio/milton/http/Response$Status;

    const/16 v13, 0xa

    const/16 v15, 0x191

    const-string v5, "SC_UNAUTHORIZED"

    invoke-direct {v7, v5, v13, v15}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/milton/http/Response$Status;->SC_UNAUTHORIZED:Lio/milton/http/Response$Status;

    new-instance v5, Lio/milton/http/Response$Status;

    const/16 v15, 0xb

    const/16 v13, 0x193

    const-string v2, "SC_FORBIDDEN"

    invoke-direct {v5, v2, v15, v13}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/milton/http/Response$Status;->SC_FORBIDDEN:Lio/milton/http/Response$Status;

    new-instance v2, Lio/milton/http/Response$Status;

    const/16 v13, 0x194

    const-string v15, "Not Found"

    const-string v4, "SC_NOT_FOUND"

    move-object/from16 v16, v5

    const/16 v5, 0xc

    invoke-direct {v2, v4, v5, v13, v15}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lio/milton/http/Response$Status;->SC_NOT_FOUND:Lio/milton/http/Response$Status;

    new-instance v4, Lio/milton/http/Response$Status;

    const/16 v13, 0xd

    const/16 v15, 0x1f4

    const-string v5, "SC_INTERNAL_SERVER_ERROR"

    invoke-direct {v4, v5, v13, v15}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/milton/http/Response$Status;->SC_INTERNAL_SERVER_ERROR:Lio/milton/http/Response$Status;

    new-instance v5, Lio/milton/http/Response$Status;

    const/16 v15, 0xe

    const/16 v13, 0x1f5

    move-object/from16 v17, v4

    const-string v4, "SC_NOT_IMPLEMENTED"

    invoke-direct {v5, v4, v15, v13}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/milton/http/Response$Status;->SC_NOT_IMPLEMENTED:Lio/milton/http/Response$Status;

    new-instance v4, Lio/milton/http/Response$Status;

    const/16 v13, 0xf

    const/16 v15, 0x1f6

    move-object/from16 v18, v5

    const-string v5, "SC_BAD_GATEWAY"

    invoke-direct {v4, v5, v13, v15}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/milton/http/Response$Status;->SC_BAD_GATEWAY:Lio/milton/http/Response$Status;

    new-instance v5, Lio/milton/http/Response$Status;

    const/16 v15, 0x10

    const/16 v13, 0x1f7

    move-object/from16 v19, v4

    const-string v4, "SC_SERVICE_UNAVAILABLE"

    invoke-direct {v5, v4, v15, v13}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/milton/http/Response$Status;->SC_SERVICE_UNAVAILABLE:Lio/milton/http/Response$Status;

    new-instance v4, Lio/milton/http/Response$Status;

    const/16 v13, 0x11

    const/16 v15, 0xce

    move-object/from16 v20, v5

    const-string v5, "SC_PARTIAL_CONTENT"

    invoke-direct {v4, v5, v13, v15}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/milton/http/Response$Status;->SC_PARTIAL_CONTENT:Lio/milton/http/Response$Status;

    new-instance v5, Lio/milton/http/Response$Status;

    const/16 v15, 0x12

    const/16 v13, 0x64

    move-object/from16 v21, v4

    const-string v4, "SC_CONTINUE"

    invoke-direct {v5, v4, v15, v13}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/milton/http/Response$Status;->SC_CONTINUE:Lio/milton/http/Response$Status;

    new-instance v4, Lio/milton/http/Response$Status;

    const/16 v13, 0x13

    const/16 v15, 0x195

    move-object/from16 v22, v5

    const-string v5, "SC_METHOD_NOT_ALLOWED"

    invoke-direct {v4, v5, v13, v15}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/milton/http/Response$Status;->SC_METHOD_NOT_ALLOWED:Lio/milton/http/Response$Status;

    new-instance v5, Lio/milton/http/Response$Status;

    const/16 v15, 0x14

    const/16 v13, 0x199

    move-object/from16 v23, v4

    const-string v4, "SC_CONFLICT"

    invoke-direct {v5, v4, v15, v13}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/milton/http/Response$Status;->SC_CONFLICT:Lio/milton/http/Response$Status;

    new-instance v4, Lio/milton/http/Response$Status;

    const/16 v13, 0x15

    const/16 v15, 0x19c

    move-object/from16 v24, v5

    const-string v5, "SC_PRECONDITION_FAILED"

    invoke-direct {v4, v5, v13, v15}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/milton/http/Response$Status;->SC_PRECONDITION_FAILED:Lio/milton/http/Response$Status;

    new-instance v5, Lio/milton/http/Response$Status;

    const/16 v15, 0x16

    const/16 v13, 0x19d

    move-object/from16 v25, v4

    const-string v4, "SC_REQUEST_TOO_LONG"

    invoke-direct {v5, v4, v15, v13}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/milton/http/Response$Status;->SC_REQUEST_TOO_LONG:Lio/milton/http/Response$Status;

    new-instance v4, Lio/milton/http/Response$Status;

    const/16 v13, 0x17

    const/16 v15, 0x19f

    move-object/from16 v26, v5

    const-string v5, "SC_UNSUPPORTED_MEDIA_TYPE"

    invoke-direct {v4, v5, v13, v15}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/milton/http/Response$Status;->SC_UNSUPPORTED_MEDIA_TYPE:Lio/milton/http/Response$Status;

    new-instance v5, Lio/milton/http/Response$Status;

    const/16 v13, 0x18

    const/16 v15, 0x1a1

    move-object/from16 v27, v4

    const-string v4, "SC_EXPECTATION_FAILED"

    invoke-direct {v5, v4, v13, v15}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/milton/http/Response$Status;->SC_EXPECTATION_FAILED:Lio/milton/http/Response$Status;

    new-instance v4, Lio/milton/http/Response$Status;

    const/16 v13, 0x19

    const/16 v15, 0x1a2

    move-object/from16 v28, v5

    const-string v5, "SC_UNPROCESSABLE_ENTITY"

    invoke-direct {v4, v5, v13, v15}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/milton/http/Response$Status;->SC_UNPROCESSABLE_ENTITY:Lio/milton/http/Response$Status;

    new-instance v5, Lio/milton/http/Response$Status;

    const/16 v13, 0x1a

    const/16 v15, 0x1fb

    move-object/from16 v29, v4

    const-string v4, "SC_INSUFFICIENT_STORAGE"

    invoke-direct {v5, v4, v13, v15}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/milton/http/Response$Status;->SC_INSUFFICIENT_STORAGE:Lio/milton/http/Response$Status;

    new-instance v4, Lio/milton/http/Response$Status;

    const/16 v13, 0x1b

    const/16 v15, 0x1a4

    move-object/from16 v30, v5

    const-string v5, "SC_METHOD_FAILURE"

    invoke-direct {v4, v5, v13, v15}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/milton/http/Response$Status;->SC_METHOD_FAILURE:Lio/milton/http/Response$Status;

    new-instance v5, Lio/milton/http/Response$Status;

    const/16 v13, 0x1c

    const/16 v15, 0x1a7

    move-object/from16 v31, v4

    const-string v4, "SC_LOCKED"

    invoke-direct {v5, v4, v13, v15}, Lio/milton/http/Response$Status;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/milton/http/Response$Status;->SC_LOCKED:Lio/milton/http/Response$Status;

    const/16 v4, 0x1d

    new-array v4, v4, [Lio/milton/http/Response$Status;

    const/4 v13, 0x0

    aput-object v0, v4, v13

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v6, v4, v0

    const/4 v0, 0x4

    aput-object v8, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v14, v4, v0

    const/16 v0, 0x8

    aput-object v10, v4, v0

    const/16 v0, 0x9

    aput-object v12, v4, v0

    const/16 v0, 0xa

    aput-object v7, v4, v0

    const/16 v0, 0xb

    aput-object v16, v4, v0

    const/16 v0, 0xc

    aput-object v2, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v28, v4, v0

    const/16 v0, 0x19

    aput-object v29, v4, v0

    const/16 v0, 0x1a

    aput-object v30, v4, v0

    const/16 v0, 0x1b

    aput-object v31, v4, v0

    const/16 v0, 0x1c

    aput-object v5, v4, v0

    sput-object v4, Lio/milton/http/Response$Status;->$VALUES:[Lio/milton/http/Response$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/milton/http/Response$Status;->code:I

    const/4 p1, 0x0

    iput-object p1, p0, Lio/milton/http/Response$Status;->text:Ljava/lang/String;

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

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/milton/http/Response$Status;->code:I

    iput-object p4, p0, Lio/milton/http/Response$Status;->text:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/milton/http/Response$Status;
    .locals 1

    const-class v0, Lio/milton/http/Response$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/milton/http/Response$Status;

    return-object p0
.end method

.method public static values()[Lio/milton/http/Response$Status;
    .locals 1

    sget-object v0, Lio/milton/http/Response$Status;->$VALUES:[Lio/milton/http/Response$Status;

    invoke-virtual {v0}, [Lio/milton/http/Response$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/milton/http/Response$Status;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lio/milton/http/Response$Status;->text:Ljava/lang/String;

    const-string v1, "HTTP/1.1 "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/milton/http/Response$Status;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/milton/http/Response$Status;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/milton/http/Response$Status;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
