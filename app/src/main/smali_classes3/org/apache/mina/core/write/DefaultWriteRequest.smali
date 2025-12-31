.class public Lorg/apache/mina/core/write/DefaultWriteRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/write/WriteRequest;


# static fields
.field private static final UNUSED_FUTURE:Lorg/apache/mina/core/future/WriteFuture;


# instance fields
.field private final destination:Ljava/net/SocketAddress;

.field private final future:Lorg/apache/mina/core/future/WriteFuture;

.field private final message:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/mina/core/write/DefaultWriteRequest$1;

    invoke-direct {v0}, Lorg/apache/mina/core/write/DefaultWriteRequest$1;-><init>()V

    sput-object v0, Lorg/apache/mina/core/write/DefaultWriteRequest;->UNUSED_FUTURE:Lorg/apache/mina/core/future/WriteFuture;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    sget-object p2, Lorg/apache/mina/core/write/DefaultWriteRequest;->UNUSED_FUTURE:Lorg/apache/mina/core/future/WriteFuture;

    :cond_0
    iput-object p1, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->message:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->future:Lorg/apache/mina/core/future/WriteFuture;

    iput-object p3, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->destination:Ljava/net/SocketAddress;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "message"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDestination()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->destination:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getFuture()Lorg/apache/mina/core/future/WriteFuture;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->future:Lorg/apache/mina/core/future/WriteFuture;

    return-object v0
.end method

.method public getMessage()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->message:Ljava/lang/Object;

    return-object v0
.end method

.method public getOriginalRequest()Lorg/apache/mina/core/write/WriteRequest;
    .locals 0

    return-object p0
.end method

.method public isEncoded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WriteRequest: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->message:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CLOSE_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/write/DefaultWriteRequest;->getDestination()Ljava/net/SocketAddress;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->message:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->message:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/write/DefaultWriteRequest;->getDestination()Ljava/net/SocketAddress;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
