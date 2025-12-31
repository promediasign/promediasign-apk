.class public Lorg/apache/mina/filter/reqres/Request;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile endOfResponses:Z

.field private final id:Ljava/lang/Object;

.field private final message:Ljava/lang/Object;

.field private final responses:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile timeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final timeoutMillis:J

.field private volatile timeoutTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 6

    .line 1
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/filter/reqres/Request;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    .line 2
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/mina/filter/reqres/Request;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ZJ)V
    .locals 7

    .line 3
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/mina/filter/reqres/Request;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ZJLjava/util/concurrent/TimeUnit;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-ltz v2, :cond_3

    if-nez v2, :cond_0

    const-wide p4, 0x7fffffffffffffffL

    :cond_0
    if-eqz p6, :cond_2

    iput-object p1, p0, Lorg/apache/mina/filter/reqres/Request;->id:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/mina/filter/reqres/Request;->message:Ljava/lang/Object;

    if-eqz p3, :cond_1

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/mina/filter/reqres/Request;->responses:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p6, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/mina/filter/reqres/Request;->timeoutMillis:J

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unit"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "timeout: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " (expected: 0+)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "message"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private chechEndOfResponses()V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/reqres/Request;->responses:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/mina/filter/reqres/Request;->endOfResponses:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/filter/reqres/Request;->responses:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "All responses has been retrieved already."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private checkUseResponseQueue()V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/reqres/Request;->responses:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Response queue is not available; useResponseQueue is false."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private convertToResponse(Ljava/lang/Object;)Lorg/apache/mina/filter/reqres/Response;
    .locals 1

    instance-of v0, p1, Lorg/apache/mina/filter/reqres/Response;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/mina/filter/reqres/Response;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    check-cast p1, Lorg/apache/mina/filter/reqres/RequestTimeoutException;

    throw p1
.end method

.method private signal0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/reqres/Request;->responses:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public awaitResponse()Lorg/apache/mina/filter/reqres/Response;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/mina/filter/reqres/Request;->checkUseResponseQueue()V

    invoke-direct {p0}, Lorg/apache/mina/filter/reqres/Request;->chechEndOfResponses()V

    iget-object v0, p0, Lorg/apache/mina/filter/reqres/Request;->responses:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/reqres/Request;->convertToResponse(Ljava/lang/Object;)Lorg/apache/mina/filter/reqres/Response;

    move-result-object v0

    return-object v0
.end method

.method public awaitResponse(JLjava/util/concurrent/TimeUnit;)Lorg/apache/mina/filter/reqres/Response;
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/mina/filter/reqres/Request;->checkUseResponseQueue()V

    invoke-direct {p0}, Lorg/apache/mina/filter/reqres/Request;->chechEndOfResponses()V

    iget-object v0, p0, Lorg/apache/mina/filter/reqres/Request;->responses:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/reqres/Request;->convertToResponse(Ljava/lang/Object;)Lorg/apache/mina/filter/reqres/Response;

    move-result-object p1

    return-object p1
.end method

.method public awaitResponseUninterruptibly()Lorg/apache/mina/filter/reqres/Response;
    .locals 1

    :catch_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/reqres/Request;->awaitResponse()Lorg/apache/mina/filter/reqres/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, Lorg/apache/mina/filter/reqres/Request;

    if-nez v1, :cond_2

    return v0

    :cond_2
    check-cast p1, Lorg/apache/mina/filter/reqres/Request;

    invoke-virtual {p0}, Lorg/apache/mina/filter/reqres/Request;->getId()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/mina/filter/reqres/Request;->getId()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getId()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/reqres/Request;->id:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessage()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/reqres/Request;->message:Ljava/lang/Object;

    return-object v0
.end method

.method public getTimeoutFuture()Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/filter/reqres/Request;->timeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method public getTimeoutMillis()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/mina/filter/reqres/Request;->timeoutMillis:J

    return-wide v0
.end method

.method public getTimeoutTask()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/reqres/Request;->timeoutTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method public hasResponse()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/mina/filter/reqres/Request;->checkUseResponseQueue()V

    iget-object v0, p0, Lorg/apache/mina/filter/reqres/Request;->responses:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/mina/filter/reqres/Request;->getId()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isUseResponseQueue()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/reqres/Request;->responses:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setTimeoutFuture(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/mina/filter/reqres/Request;->timeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public setTimeoutTask(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/reqres/Request;->timeoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method public signal(Lorg/apache/mina/filter/reqres/RequestTimeoutException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/reqres/Request;->signal0(Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/mina/filter/reqres/Request;->endOfResponses:Z

    return-void
.end method

.method public signal(Lorg/apache/mina/filter/reqres/Response;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/reqres/Request;->signal0(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/apache/mina/filter/reqres/Response;->getType()Lorg/apache/mina/filter/reqres/ResponseType;

    move-result-object p1

    sget-object v0, Lorg/apache/mina/filter/reqres/ResponseType;->PARTIAL:Lorg/apache/mina/filter/reqres/ResponseType;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/mina/filter/reqres/Request;->endOfResponses:Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/mina/filter/reqres/Request;->getTimeoutMillis()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "max"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/reqres/Request;->getTimeoutMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request: { id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/mina/filter/reqres/Request;->getId()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", message="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/filter/reqres/Request;->getMessage()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
