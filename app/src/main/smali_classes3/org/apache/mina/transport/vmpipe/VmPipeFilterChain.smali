.class Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;
.super Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;
    }
.end annotation


# instance fields
.field private final eventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/session/IoEvent;",
            ">;"
        }
    .end annotation
.end field

.field private volatile flushEnabled:Z

.field private final processor:Lorg/apache/mina/core/service/IoProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/vmpipe/VmPipeSession;",
            ">;"
        }
    .end annotation
.end field

.field private volatile sessionOpened:Z


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;-><init>(Lorg/apache/mina/core/session/AbstractIoSession;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->eventQueue:Ljava/util/Queue;

    new-instance p1, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;-><init>(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$1;)V

    iput-object p1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->processor:Lorg/apache/mina/core/service/IoProcessor;

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;Lorg/apache/mina/core/session/IoEvent;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lorg/apache/mina/core/session/IoEvent;Z)V

    return-void
.end method

.method public static synthetic access$200(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->flushEnabled:Z

    return p0
.end method

.method public static synthetic access$300(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->flushEvents()V

    return-void
.end method

.method public static synthetic access$400(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V
    .locals 0

    invoke-static {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->flushPendingDataQueues(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    return-void
.end method

.method private fireEvent(Lorg/apache/mina/core/session/IoEvent;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEvent;->getType()Lorg/apache/mina/core/session/IoEventType;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->sessionOpened:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->isReadSuspended()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->isReadSuspended()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->receivedMessageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireMessageReceived(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_2

    :goto_1
    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_1
    iget-object v0, v0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->receivedMessageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    if-ne v1, v2, :cond_3

    check-cast p1, Lorg/apache/mina/core/write/WriteRequest;

    invoke-super {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireFilterWrite(Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_2

    :cond_3
    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    if-ne v1, v2, :cond_4

    check-cast p1, Lorg/apache/mina/core/write/WriteRequest;

    invoke-super {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_2

    :cond_4
    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->EXCEPTION_CAUGHT:Lorg/apache/mina/core/session/IoEventType;

    if-ne v1, v2, :cond_5

    check-cast p1, Ljava/lang/Throwable;

    invoke-super {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    if-ne v1, v2, :cond_6

    check-cast p1, Lorg/apache/mina/core/session/IdleStatus;

    invoke-super {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireSessionIdle(Lorg/apache/mina/core/session/IdleStatus;)V

    goto :goto_2

    :cond_6
    sget-object p1, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    if-ne v1, p1, :cond_7

    invoke-super {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireSessionOpened()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->sessionOpened:Z

    goto :goto_2

    :cond_7
    sget-object p1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CREATED:Lorg/apache/mina/core/session/IoEventType;

    if-ne v1, p1, :cond_8

    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1
    invoke-super {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireSessionCreated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_8
    sget-object p1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    if-ne v1, p1, :cond_9

    invoke-static {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->flushPendingDataQueues(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    invoke-super {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireSessionClosed()V

    goto :goto_2

    :cond_9
    sget-object p1, Lorg/apache/mina/core/session/IoEventType;->CLOSE:Lorg/apache/mina/core/session/IoEventType;

    if-ne v1, p1, :cond_a

    invoke-super {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireFilterClose()V

    :cond_a
    :goto_2
    return-void
.end method

.method private flushEvents()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->eventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/IoEvent;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->fireEvent(Lorg/apache/mina/core/session/IoEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static flushPendingDataQueues(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/mina/core/service/IoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V

    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getRemoteSession()Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/mina/core/service/IoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method private pushEvent(Lorg/apache/mina/core/session/IoEvent;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->flushEnabled:Z

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lorg/apache/mina/core/session/IoEvent;Z)V

    return-void
.end method

.method private pushEvent(Lorg/apache/mina/core/session/IoEvent;Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->eventQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->flushEvents()V

    :cond_0
    return-void
.end method


# virtual methods
.method public fireExceptionCaught(Ljava/lang/Throwable;)V
    .locals 3

    new-instance v0, Lorg/apache/mina/core/session/IoEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->EXCEPTION_CAUGHT:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lorg/apache/mina/core/session/IoEvent;)V

    return-void
.end method

.method public fireFilterClose()V
    .locals 4

    new-instance v0, Lorg/apache/mina/core/session/IoEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->CLOSE:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lorg/apache/mina/core/session/IoEvent;)V

    return-void
.end method

.method public fireFilterWrite(Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 3

    new-instance v0, Lorg/apache/mina/core/session/IoEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lorg/apache/mina/core/session/IoEvent;)V

    return-void
.end method

.method public fireMessageReceived(Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lorg/apache/mina/core/session/IoEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lorg/apache/mina/core/session/IoEvent;)V

    return-void
.end method

.method public fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 3

    new-instance v0, Lorg/apache/mina/core/session/IoEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lorg/apache/mina/core/session/IoEvent;)V

    return-void
.end method

.method public fireSessionClosed()V
    .locals 4

    new-instance v0, Lorg/apache/mina/core/session/IoEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lorg/apache/mina/core/session/IoEvent;)V

    return-void
.end method

.method public fireSessionCreated()V
    .locals 4

    new-instance v0, Lorg/apache/mina/core/session/IoEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CREATED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lorg/apache/mina/core/session/IoEvent;)V

    return-void
.end method

.method public fireSessionIdle(Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 3

    new-instance v0, Lorg/apache/mina/core/session/IoEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lorg/apache/mina/core/session/IoEvent;)V

    return-void
.end method

.method public fireSessionOpened()V
    .locals 4

    new-instance v0, Lorg/apache/mina/core/session/IoEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lorg/apache/mina/core/session/IoEvent;)V

    return-void
.end method

.method public getProcessor()Lorg/apache/mina/core/service/IoProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/vmpipe/VmPipeSession;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->processor:Lorg/apache/mina/core/service/IoProcessor;

    return-object v0
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->flushEnabled:Z

    invoke-direct {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->flushEvents()V

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    invoke-static {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->flushPendingDataQueues(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    return-void
.end method
