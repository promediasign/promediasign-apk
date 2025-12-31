.class Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Worker"
.end annotation


# instance fields
.field private volatile completedTaskCount:J

.field final synthetic this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

.field private thread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;-><init>(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)V

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->completedTaskCount:J

    return-wide v0
.end method

.method private fetchTask()Ljava/lang/Runnable;
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v2, v0

    const/4 v4, 0x0

    :goto_0
    sub-long v5, v2, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gtz v9, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget-object v7, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-virtual {v7}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v5, v6, v8}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    move-object v4, v5

    goto :goto_0

    :cond_1
    :goto_1
    move-object v4, v5

    :goto_2
    return-object v4

    :catchall_0
    move-exception v5

    if-nez v4, :cond_2

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_3

    :catch_1
    nop

    goto :goto_0

    :cond_2
    :goto_3
    throw v5
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method private runTask(Ljava/lang/Runnable;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    invoke-static {v0, v1, p1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$800(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Ljava/lang/Thread;Ljava/lang/Runnable;)V

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$900(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    iget-wide v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->completedTaskCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->completedTaskCount:J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v0, p1, v1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$1000(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    :cond_0
    throw v1
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->fetchTask()Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$200(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v3}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$400(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)I

    move-result v3

    if-le v2, v3, :cond_0

    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_1
    :goto_2
    invoke-static {}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$500()Ljava/lang/Runnable;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v1, :cond_2

    :goto_3
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    iget-wide v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->completedTaskCount:J

    invoke-static {v0, v2, v3}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$714(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;J)J

    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_2
    if-eqz v0, :cond_3

    :try_start_4
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    move-object v3, v0

    check-cast v3, Lorg/apache/mina/core/session/IoEvent;

    invoke-interface {v1, v2, v3}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->runTask(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$200(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    throw v0

    :cond_3
    :goto_4
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$200(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    :goto_5
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    iget-wide v3, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->completedTaskCount:J

    invoke-static {v2, v3, v4}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$714(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;J)J

    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0
.end method
