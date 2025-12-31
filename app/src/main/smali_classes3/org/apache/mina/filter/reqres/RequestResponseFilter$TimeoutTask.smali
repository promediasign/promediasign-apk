.class Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/reqres/RequestResponseFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeoutTask"
.end annotation


# instance fields
.field private final filter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

.field private final request:Lorg/apache/mina/filter/reqres/Request;

.field private final session:Lorg/apache/mina/core/session/IoSession;

.field final synthetic this$0:Lorg/apache/mina/filter/reqres/RequestResponseFilter;


# direct methods
.method private constructor <init>(Lorg/apache/mina/filter/reqres/RequestResponseFilter;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/reqres/Request;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->this$0:Lorg/apache/mina/filter/reqres/RequestResponseFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->filter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    iput-object p3, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->request:Lorg/apache/mina/filter/reqres/Request;

    iput-object p4, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->session:Lorg/apache/mina/core/session/IoSession;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/mina/filter/reqres/RequestResponseFilter;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/reqres/Request;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/reqres/RequestResponseFilter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;-><init>(Lorg/apache/mina/filter/reqres/RequestResponseFilter;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/reqres/Request;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->this$0:Lorg/apache/mina/filter/reqres/RequestResponseFilter;

    iget-object v1, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-static {v0, v1}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->access$100(Lorg/apache/mina/filter/reqres/RequestResponseFilter;Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->request:Lorg/apache/mina/filter/reqres/Request;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->this$0:Lorg/apache/mina/filter/reqres/RequestResponseFilter;

    iget-object v1, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-static {v0, v1}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->access$200(Lorg/apache/mina/filter/reqres/RequestResponseFilter;Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->request:Lorg/apache/mina/filter/reqres/Request;

    invoke-virtual {v1}, Lorg/apache/mina/filter/reqres/Request;->getId()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v0

    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->request:Lorg/apache/mina/filter/reqres/Request;

    if-ne v2, v3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    new-instance v0, Lorg/apache/mina/filter/reqres/RequestTimeoutException;

    iget-object v1, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->request:Lorg/apache/mina/filter/reqres/Request;

    invoke-direct {v0, v1}, Lorg/apache/mina/filter/reqres/RequestTimeoutException;-><init>(Lorg/apache/mina/filter/reqres/Request;)V

    iget-object v1, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->request:Lorg/apache/mina/filter/reqres/Request;

    invoke-virtual {v1, v0}, Lorg/apache/mina/filter/reqres/Request;->signal(Lorg/apache/mina/filter/reqres/RequestTimeoutException;)V

    iget-object v1, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->filter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    iget-object v2, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v1, v2, v0}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    :cond_2
    return-void

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
