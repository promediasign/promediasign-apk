.class public final enum Lio/milton/http/Request$Method;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/milton/http/Request$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/milton/http/Request$Method;

.field public static final enum ACL:Lio/milton/http/Request$Method;

.field public static final enum CONNECT:Lio/milton/http/Request$Method;

.field public static final enum COPY:Lio/milton/http/Request$Method;

.field public static final enum DELETE:Lio/milton/http/Request$Method;

.field public static final enum GET:Lio/milton/http/Request$Method;

.field public static final enum HEAD:Lio/milton/http/Request$Method;

.field public static final enum LOCK:Lio/milton/http/Request$Method;

.field public static final enum MKCALENDAR:Lio/milton/http/Request$Method;

.field public static final enum MKCOL:Lio/milton/http/Request$Method;

.field public static final enum MOVE:Lio/milton/http/Request$Method;

.field public static final enum OPTIONS:Lio/milton/http/Request$Method;

.field public static final enum POST:Lio/milton/http/Request$Method;

.field public static final enum PROPFIND:Lio/milton/http/Request$Method;

.field public static final enum PROPPATCH:Lio/milton/http/Request$Method;

.field public static final enum PUT:Lio/milton/http/Request$Method;

.field public static final enum REPORT:Lio/milton/http/Request$Method;

.field public static final enum TRACE:Lio/milton/http/Request$Method;

.field public static final enum UNLOCK:Lio/milton/http/Request$Method;


# instance fields
.field public code:Ljava/lang/String;

.field public isWrite:Z


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v0, Lio/milton/http/Request$Method;

    const-string v1, "HEAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lio/milton/http/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lio/milton/http/Request$Method;->HEAD:Lio/milton/http/Request$Method;

    new-instance v1, Lio/milton/http/Request$Method;

    const-string v3, "PROPFIND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3, v2}, Lio/milton/http/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lio/milton/http/Request$Method;->PROPFIND:Lio/milton/http/Request$Method;

    new-instance v3, Lio/milton/http/Request$Method;

    const-string v5, "PROPPATCH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5, v4}, Lio/milton/http/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lio/milton/http/Request$Method;->PROPPATCH:Lio/milton/http/Request$Method;

    new-instance v5, Lio/milton/http/Request$Method;

    const-string v7, "MKCOL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7, v4}, Lio/milton/http/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v5, Lio/milton/http/Request$Method;->MKCOL:Lio/milton/http/Request$Method;

    new-instance v7, Lio/milton/http/Request$Method;

    const-string v9, "MKCALENDAR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9, v4}, Lio/milton/http/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v7, Lio/milton/http/Request$Method;->MKCALENDAR:Lio/milton/http/Request$Method;

    new-instance v9, Lio/milton/http/Request$Method;

    const-string v11, "COPY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11, v4}, Lio/milton/http/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v9, Lio/milton/http/Request$Method;->COPY:Lio/milton/http/Request$Method;

    new-instance v11, Lio/milton/http/Request$Method;

    const-string v13, "MOVE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13, v4}, Lio/milton/http/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v11, Lio/milton/http/Request$Method;->MOVE:Lio/milton/http/Request$Method;

    new-instance v13, Lio/milton/http/Request$Method;

    const-string v15, "LOCK"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v15, v4}, Lio/milton/http/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v13, Lio/milton/http/Request$Method;->LOCK:Lio/milton/http/Request$Method;

    new-instance v15, Lio/milton/http/Request$Method;

    const-string v14, "UNLOCK"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v14, v4}, Lio/milton/http/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v15, Lio/milton/http/Request$Method;->UNLOCK:Lio/milton/http/Request$Method;

    new-instance v14, Lio/milton/http/Request$Method;

    const-string v12, "DELETE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v12, v4}, Lio/milton/http/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v14, Lio/milton/http/Request$Method;->DELETE:Lio/milton/http/Request$Method;

    new-instance v12, Lio/milton/http/Request$Method;

    const-string v10, "GET"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v10, v2}, Lio/milton/http/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v12, Lio/milton/http/Request$Method;->GET:Lio/milton/http/Request$Method;

    new-instance v10, Lio/milton/http/Request$Method;

    const-string v8, "OPTIONS"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v8, v2}, Lio/milton/http/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v10, Lio/milton/http/Request$Method;->OPTIONS:Lio/milton/http/Request$Method;

    new-instance v8, Lio/milton/http/Request$Method;

    const-string v6, "POST"

    const/16 v2, 0xc

    invoke-direct {v8, v6, v2, v6, v4}, Lio/milton/http/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v8, Lio/milton/http/Request$Method;->POST:Lio/milton/http/Request$Method;

    new-instance v6, Lio/milton/http/Request$Method;

    const-string v2, "PUT"

    move-object/from16 v16, v8

    const/16 v8, 0xd

    invoke-direct {v6, v2, v8, v2, v4}, Lio/milton/http/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v6, Lio/milton/http/Request$Method;->PUT:Lio/milton/http/Request$Method;

    new-instance v2, Lio/milton/http/Request$Method;

    const-string v8, "TRACE"

    const/16 v4, 0xe

    move-object/from16 v17, v6

    const/4 v6, 0x0

    invoke-direct {v2, v8, v4, v8, v6}, Lio/milton/http/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v2, Lio/milton/http/Request$Method;->TRACE:Lio/milton/http/Request$Method;

    new-instance v6, Lio/milton/http/Request$Method;

    const-string v8, "ACL"

    const/16 v4, 0xf

    move-object/from16 v18, v2

    const/4 v2, 0x1

    invoke-direct {v6, v8, v4, v8, v2}, Lio/milton/http/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v6, Lio/milton/http/Request$Method;->ACL:Lio/milton/http/Request$Method;

    new-instance v8, Lio/milton/http/Request$Method;

    const-string v4, "CONNECT"

    move-object/from16 v19, v6

    const/16 v6, 0x10

    invoke-direct {v8, v4, v6, v4, v2}, Lio/milton/http/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v8, Lio/milton/http/Request$Method;->CONNECT:Lio/milton/http/Request$Method;

    new-instance v4, Lio/milton/http/Request$Method;

    const-string v6, "REPORT"

    const/16 v2, 0x11

    move-object/from16 v20, v8

    const/4 v8, 0x0

    invoke-direct {v4, v6, v2, v6, v8}, Lio/milton/http/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lio/milton/http/Request$Method;->REPORT:Lio/milton/http/Request$Method;

    const/16 v6, 0x12

    new-array v6, v6, [Lio/milton/http/Request$Method;

    aput-object v0, v6, v8

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v16, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    const/16 v0, 0xf

    aput-object v19, v6, v0

    const/16 v0, 0x10

    aput-object v20, v6, v0

    aput-object v4, v6, v2

    sput-object v6, Lio/milton/http/Request$Method;->$VALUES:[Lio/milton/http/Request$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    iput-boolean p4, p0, Lio/milton/http/Request$Method;->isWrite:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/milton/http/Request$Method;
    .locals 1

    const-class v0, Lio/milton/http/Request$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/milton/http/Request$Method;

    return-object p0
.end method

.method public static values()[Lio/milton/http/Request$Method;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Method;->$VALUES:[Lio/milton/http/Request$Method;

    invoke-virtual {v0}, [Lio/milton/http/Request$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/milton/http/Request$Method;

    return-object v0
.end method
