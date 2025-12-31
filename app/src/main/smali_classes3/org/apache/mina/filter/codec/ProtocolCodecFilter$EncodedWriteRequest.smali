.class Lorg/apache/mina/filter/codec/ProtocolCodecFilter$EncodedWriteRequest;
.super Lorg/apache/mina/core/write/DefaultWriteRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/codec/ProtocolCodecFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncodedWriteRequest"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V

    return-void
.end method


# virtual methods
.method public isEncoded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
