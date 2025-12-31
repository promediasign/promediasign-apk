.class Lorg/apache/mina/transport/vmpipe/VmPipeConnector$LocalAddressReclaimer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/future/IoFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/transport/vmpipe/VmPipeConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalAddressReclaimer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/future/IoFutureListener<",
        "Lorg/apache/mina/core/future/IoFuture;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/mina/transport/vmpipe/VmPipeConnector$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector$LocalAddressReclaimer;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/apache/mina/core/future/IoFuture;)V
    .locals 2

    invoke-static {}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->access$100()Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->access$100()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/mina/core/future/IoFuture;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
