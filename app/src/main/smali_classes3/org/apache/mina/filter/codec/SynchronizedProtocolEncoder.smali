.class public Lorg/apache/mina/filter/codec/SynchronizedProtocolEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolEncoder;


# instance fields
.field private final encoder:Lorg/apache/mina/filter/codec/ProtocolEncoder;


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/codec/ProtocolEncoder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolEncoder;->encoder:Lorg/apache/mina/filter/codec/ProtocolEncoder;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "encoder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolEncoder;->encoder:Lorg/apache/mina/filter/codec/ProtocolEncoder;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolEncoder;->encoder:Lorg/apache/mina/filter/codec/ProtocolEncoder;

    invoke-interface {v1, p1}, Lorg/apache/mina/filter/codec/ProtocolEncoder;->dispose(Lorg/apache/mina/core/session/IoSession;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public encode(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolEncoder;->encoder:Lorg/apache/mina/filter/codec/ProtocolEncoder;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolEncoder;->encoder:Lorg/apache/mina/filter/codec/ProtocolEncoder;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/mina/filter/codec/ProtocolEncoder;->encode(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getEncoder()Lorg/apache/mina/filter/codec/ProtocolEncoder;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolEncoder;->encoder:Lorg/apache/mina/filter/codec/ProtocolEncoder;

    return-object v0
.end method
