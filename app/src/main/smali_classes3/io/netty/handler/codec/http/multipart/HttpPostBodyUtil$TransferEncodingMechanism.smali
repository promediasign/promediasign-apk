.class public final enum Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

.field public static final enum BINARY:Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

.field public static final enum BIT7:Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

.field public static final enum BIT8:Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    const/4 v1, 0x0

    const-string v2, "7bit"

    const-string v3, "BIT7"

    invoke-direct {v0, v3, v1, v2}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BIT7:Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    new-instance v2, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    const/4 v3, 0x1

    const-string v4, "8bit"

    const-string v5, "BIT8"

    invoke-direct {v2, v5, v3, v4}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BIT8:Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    new-instance v4, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    const/4 v5, 0x2

    const-string v6, "binary"

    const-string v7, "BINARY"

    invoke-direct {v4, v7, v5, v6}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BINARY:Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    const/4 v6, 0x3

    new-array v6, v6, [Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    aput-object v0, v6, v1

    aput-object v2, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->$VALUES:[Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

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

    iput-object p3, p0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;
    .locals 1

    const-class v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->$VALUES:[Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    invoke-virtual {v0}, [Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->value:Ljava/lang/String;

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->value:Ljava/lang/String;

    return-object v0
.end method
