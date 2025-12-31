.class public Lorg/apache/mina/filter/executor/WriteRequestFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "SourceFile"


# instance fields
.field private final queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;

    invoke-direct {v0}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/executor/WriteRequestFilter;-><init>(Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "queueHandler"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lorg/apache/mina/filter/executor/WriteRequestFilter;)Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-object p0
.end method


# virtual methods
.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2

    new-instance v0, Lorg/apache/mina/core/session/IoEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v0, v1, p2, p3}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    invoke-interface {v1, p0, v0}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->accept(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    invoke-interface {p2, p0, v0}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->offered(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    new-instance p2, Lorg/apache/mina/filter/executor/WriteRequestFilter$1;

    invoke-direct {p2, p0, v0}, Lorg/apache/mina/filter/executor/WriteRequestFilter$1;-><init>(Lorg/apache/mina/filter/executor/WriteRequestFilter;Lorg/apache/mina/core/session/IoEvent;)V

    invoke-interface {p1, p2}, Lorg/apache/mina/core/future/WriteFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;

    :cond_1
    return-void
.end method

.method public getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-object v0
.end method
