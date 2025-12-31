.class Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$TailFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TailFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$TailFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 1

    check-cast p2, Lorg/apache/mina/core/session/AbstractIoSession;

    :try_start_0
    invoke-virtual {p2}, Lorg/apache/mina/core/session/AbstractIoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/service/IoHandler;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Lorg/apache/mina/core/session/AbstractIoSession;->offerFailedReadFuture(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p3}, Lorg/apache/mina/core/session/AbstractIoSession;->offerFailedReadFuture(Ljava/lang/Throwable;)V

    :cond_1
    throw p1
.end method

.method public filterClose(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2

    move-object p1, p2

    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    instance-of v0, p3, Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseReadMessages(J)V

    goto :goto_1

    :cond_0
    move-object v0, p3

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lorg/apache/mina/core/service/IoHandler;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p3}, Lorg/apache/mina/core/session/AbstractIoSession;->offerReadFuture(Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p3}, Lorg/apache/mina/core/session/AbstractIoSession;->offerReadFuture(Ljava/lang/Object;)V

    :cond_3
    throw p2
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object p1

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/service/IoHandler;->messageSent(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2

    move-object p1, p2

    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/mina/core/service/IoHandler;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    :try_start_1
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/mina/core/write/WriteRequestQueue;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getAttributeMap()Lorg/apache/mina/core/session/IoSessionAttributeMap;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_1
    throw p2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_2
    throw v0

    :catchall_2
    move-exception p2

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_3
    throw p2

    :catchall_3
    move-exception v0

    :try_start_5
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getAttributeMap()Lorg/apache/mina/core/session/IoSessionAttributeMap;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_4
    throw v0

    :catchall_4
    move-exception p2

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_5
    throw p2

    :catchall_5
    move-exception v0

    :try_start_7
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_6
    throw v0

    :catchall_6
    move-exception p2

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_7
    throw p2

    :catchall_7
    move-exception v0

    :try_start_8
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/mina/core/write/WriteRequestQueue;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    :try_start_9
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getAttributeMap()Lorg/apache/mina/core/session/IoSessionAttributeMap;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    :try_start_a
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->clear()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_8
    throw v0

    :catchall_8
    move-exception p2

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_9
    throw p2

    :catchall_9
    move-exception v0

    :try_start_b
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_a
    throw v0

    :catchall_a
    move-exception p2

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_b
    throw p2

    :catchall_b
    move-exception v0

    :try_start_c
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getAttributeMap()Lorg/apache/mina/core/session/IoSessionAttributeMap;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    :try_start_d
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->clear()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_c
    throw v0

    :catchall_c
    move-exception p2

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_d
    throw p2

    :catchall_d
    move-exception v0

    :try_start_e
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->clear()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_e
    throw v0

    :catchall_e
    move-exception p2

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_f
    throw p2
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    :try_start_0
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/core/service/IoHandler;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->SESSION_CREATED_FUTURE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, p1}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/future/ConnectFuture;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lorg/apache/mina/core/future/ConnectFuture;->setSession(Lorg/apache/mina/core/session/IoSession;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->SESSION_CREATED_FUTURE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ConnectFuture;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Lorg/apache/mina/core/future/ConnectFuture;->setSession(Lorg/apache/mina/core/session/IoSession;)V

    :cond_1
    throw p1
.end method

.method public sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 0

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/service/IoHandler;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/core/service/IoHandler;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method
