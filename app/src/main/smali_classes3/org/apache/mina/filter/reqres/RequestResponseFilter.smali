.class public Lorg/apache/mina/filter/reqres/RequestResponseFilter;
.super Lorg/apache/mina/filter/util/WriteRequestFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final REQUEST_STORE:Lorg/apache/mina/core/session/AttributeKey;

.field private final RESPONSE_INSPECTOR:Lorg/apache/mina/core/session/AttributeKey;

.field private final UNRESPONDED_REQUEST_STORE:Lorg/apache/mina/core/session/AttributeKey;

.field private final responseInspectorFactory:Lorg/apache/mina/filter/reqres/ResponseInspectorFactory;

.field private final timeoutScheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/reqres/ResponseInspector;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/apache/mina/filter/util/WriteRequestFilter;-><init>()V

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "responseInspector"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->RESPONSE_INSPECTOR:Lorg/apache/mina/core/session/AttributeKey;

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "requestStore"

    invoke-direct {v0, v1, v3}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->REQUEST_STORE:Lorg/apache/mina/core/session/AttributeKey;

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "unrespondedRequestStore"

    invoke-direct {v0, v1, v3}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->UNRESPONDED_REQUEST_STORE:Lorg/apache/mina/core/session/AttributeKey;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/filter/reqres/RequestResponseFilter$1;-><init>(Lorg/apache/mina/filter/reqres/RequestResponseFilter;Lorg/apache/mina/filter/reqres/ResponseInspector;)V

    iput-object v0, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->responseInspectorFactory:Lorg/apache/mina/filter/reqres/ResponseInspectorFactory;

    iput-object p2, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->timeoutScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timeoutScheduler"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/mina/filter/reqres/ResponseInspectorFactory;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/apache/mina/filter/util/WriteRequestFilter;-><init>()V

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "responseInspector"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->RESPONSE_INSPECTOR:Lorg/apache/mina/core/session/AttributeKey;

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "requestStore"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->REQUEST_STORE:Lorg/apache/mina/core/session/AttributeKey;

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "unrespondedRequestStore"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->UNRESPONDED_REQUEST_STORE:Lorg/apache/mina/core/session/AttributeKey;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->responseInspectorFactory:Lorg/apache/mina/filter/reqres/ResponseInspectorFactory;

    iput-object p2, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->timeoutScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timeoutScheduler"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "responseInspectorFactory"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$100(Lorg/apache/mina/filter/reqres/RequestResponseFilter;Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->getUnrespondedRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/mina/filter/reqres/RequestResponseFilter;Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->getRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private getRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/apache/mina/filter/reqres/Request;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->REQUEST_STORE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method private getUnrespondedRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/Set<",
            "Lorg/apache/mina/filter/reqres/Request;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->UNRESPONDED_REQUEST_STORE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method


# virtual methods
.method public createRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/apache/mina/filter/reqres/Request;",
            ">;"
        }
    .end annotation

    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p1
.end method

.method public createUnrespondedRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/Set<",
            "Lorg/apache/mina/filter/reqres/Request;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p1
.end method

.method public destroyRequestStore(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/apache/mina/filter/reqres/Request;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public destroyUnrespondedRequestStore(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/apache/mina/filter/reqres/Request;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public doFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)Ljava/lang/Object;
    .locals 7

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object p3

    instance-of v0, p3, Lorg/apache/mina/filter/reqres/Request;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast p3, Lorg/apache/mina/filter/reqres/Request;

    invoke-virtual {p3}, Lorg/apache/mina/filter/reqres/Request;->getTimeoutFuture()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-direct {p0, p2}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->getRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3}, Lorg/apache/mina/filter/reqres/Request;->getId()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    new-instance v6, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;-><init>(Lorg/apache/mina/filter/reqres/RequestResponseFilter;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/reqres/Request;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/reqres/RequestResponseFilter$1;)V

    iget-object p1, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->timeoutScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p3}, Lorg/apache/mina/filter/reqres/Request;->getTimeoutMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v6, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-virtual {p3, v6}, Lorg/apache/mina/filter/reqres/Request;->setTimeoutTask(Ljava/lang/Runnable;)V

    invoke-virtual {p3, p1}, Lorg/apache/mina/filter/reqres/Request;->setTimeoutFuture(Ljava/util/concurrent/ScheduledFuture;)V

    invoke-direct {p0, p2}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->getUnrespondedRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p3}, Lorg/apache/mina/filter/reqres/Request;->getMessage()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception p2

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Duplicate request ID: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/apache/mina/filter/reqres/Request;->getId()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Request can not be reused."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->RESPONSE_INSPECTOR:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/reqres/ResponseInspector;

    invoke-interface {v0, p3}, Lorg/apache/mina/filter/reqres/ResponseInspector;->getRequestId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {v0, p3}, Lorg/apache/mina/filter/reqres/ResponseInspector;->getResponseType(Ljava/lang/Object;)Lorg/apache/mina/filter/reqres/ResponseType;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "#getResponseType() may not return null."

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2, v3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->getRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object v0

    sget-object v3, Lorg/apache/mina/filter/reqres/RequestResponseFilter$2;->$SwitchMap$org$apache$mina$filter$reqres$ResponseType:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/filter/reqres/Request;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1

    :cond_3
    monitor-enter v0

    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/filter/reqres/Request;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    if-nez v3, :cond_4

    sget-object p1, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown request ID \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' for the response message. Timed out already?: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    sget-object v0, Lorg/apache/mina/filter/reqres/ResponseType;->PARTIAL:Lorg/apache/mina/filter/reqres/ResponseType;

    if-eq v2, v0, :cond_5

    invoke-virtual {v3}, Lorg/apache/mina/filter/reqres/Request;->getTimeoutFuture()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    invoke-direct {p0, p2}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->getUnrespondedRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    :try_start_2
    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_5
    :goto_1
    new-instance v0, Lorg/apache/mina/filter/reqres/Response;

    invoke-direct {v0, v3, p3, v2}, Lorg/apache/mina/filter/reqres/Response;-><init>(Lorg/apache/mina/filter/reqres/Request;Ljava/lang/Object;Lorg/apache/mina/filter/reqres/ResponseType;)V

    invoke-virtual {v3, v0}, Lorg/apache/mina/filter/reqres/Request;->signal(Lorg/apache/mina/filter/reqres/Response;)V

    invoke-interface {p1, p2, v0}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void

    :catchall_2
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method public onPostRemove(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 0

    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->getUnrespondedRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->destroyUnrespondedRequestStore(Ljava/util/Set;)V

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->getRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->destroyRequestStore(Ljava/util/Map;)V

    iget-object p2, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->UNRESPONDED_REQUEST_STORE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, p2}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->REQUEST_STORE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, p2}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->RESPONSE_INSPECTOR:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, p2}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Lorg/apache/mina/core/filterchain/IoFilter;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->RESPONSE_INSPECTOR:Lorg/apache/mina/core/session/AttributeKey;

    iget-object p3, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->responseInspectorFactory:Lorg/apache/mina/filter/reqres/ResponseInspectorFactory;

    invoke-interface {p3}, Lorg/apache/mina/filter/reqres/ResponseInspectorFactory;->getResponseInspector()Lorg/apache/mina/filter/reqres/ResponseInspector;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->REQUEST_STORE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->createRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->UNRESPONDED_REQUEST_STORE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->createUnrespondedRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You can\'t add the same filter instance more than once.  Create another instance and add it."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 4

    invoke-direct {p0, p2}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->getUnrespondedRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/reqres/Request;

    invoke-virtual {v1}, Lorg/apache/mina/filter/reqres/Request;->getTimeoutFuture()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/mina/filter/reqres/Request;->getTimeoutTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->getRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
