.class public final enum Lfi/iki/elonen/NanoHTTPD$Method;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfi/iki/elonen/NanoHTTPD$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum CONNECT:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum COPY:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum DELETE:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum GET:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum HEAD:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum LOCK:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum MKCOL:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum MOVE:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum OPTIONS:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum PATCH:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum POST:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum PROPFIND:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum PROPPATCH:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum PUT:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum TRACE:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum UNLOCK:Lfi/iki/elonen/NanoHTTPD$Method;


# direct methods
.method private static synthetic $values()[Lfi/iki/elonen/NanoHTTPD$Method;
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [Lfi/iki/elonen/NanoHTTPD$Method;

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->GET:Lfi/iki/elonen/NanoHTTPD$Method;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->PUT:Lfi/iki/elonen/NanoHTTPD$Method;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->DELETE:Lfi/iki/elonen/NanoHTTPD$Method;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->HEAD:Lfi/iki/elonen/NanoHTTPD$Method;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->OPTIONS:Lfi/iki/elonen/NanoHTTPD$Method;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->TRACE:Lfi/iki/elonen/NanoHTTPD$Method;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->CONNECT:Lfi/iki/elonen/NanoHTTPD$Method;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->PATCH:Lfi/iki/elonen/NanoHTTPD$Method;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->PROPFIND:Lfi/iki/elonen/NanoHTTPD$Method;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->PROPPATCH:Lfi/iki/elonen/NanoHTTPD$Method;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->MKCOL:Lfi/iki/elonen/NanoHTTPD$Method;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->MOVE:Lfi/iki/elonen/NanoHTTPD$Method;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->COPY:Lfi/iki/elonen/NanoHTTPD$Method;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->LOCK:Lfi/iki/elonen/NanoHTTPD$Method;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->UNLOCK:Lfi/iki/elonen/NanoHTTPD$Method;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->GET:Lfi/iki/elonen/NanoHTTPD$Method;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "PUT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->PUT:Lfi/iki/elonen/NanoHTTPD$Method;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "POST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "DELETE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->DELETE:Lfi/iki/elonen/NanoHTTPD$Method;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "HEAD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->HEAD:Lfi/iki/elonen/NanoHTTPD$Method;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "OPTIONS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->OPTIONS:Lfi/iki/elonen/NanoHTTPD$Method;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "TRACE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->TRACE:Lfi/iki/elonen/NanoHTTPD$Method;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "CONNECT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->CONNECT:Lfi/iki/elonen/NanoHTTPD$Method;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "PATCH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->PATCH:Lfi/iki/elonen/NanoHTTPD$Method;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "PROPFIND"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->PROPFIND:Lfi/iki/elonen/NanoHTTPD$Method;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "PROPPATCH"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->PROPPATCH:Lfi/iki/elonen/NanoHTTPD$Method;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "MKCOL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->MKCOL:Lfi/iki/elonen/NanoHTTPD$Method;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "MOVE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->MOVE:Lfi/iki/elonen/NanoHTTPD$Method;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "COPY"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->COPY:Lfi/iki/elonen/NanoHTTPD$Method;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "LOCK"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->LOCK:Lfi/iki/elonen/NanoHTTPD$Method;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "UNLOCK"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->UNLOCK:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-static {}, Lfi/iki/elonen/NanoHTTPD$Method;->$values()[Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->$VALUES:[Lfi/iki/elonen/NanoHTTPD$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static lookup(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Method;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lfi/iki/elonen/NanoHTTPD$Method;->valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Method;
    .locals 1

    const-class v0, Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfi/iki/elonen/NanoHTTPD$Method;

    return-object p0
.end method

.method public static values()[Lfi/iki/elonen/NanoHTTPD$Method;
    .locals 1

    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->$VALUES:[Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v0}, [Lfi/iki/elonen/NanoHTTPD$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi/iki/elonen/NanoHTTPD$Method;

    return-object v0
.end method
