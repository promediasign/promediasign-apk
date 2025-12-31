.class Lorg/h2/engine/DatabaseCloser;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private volatile databaseRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/h2/engine/Database;",
            ">;"
        }
    .end annotation
.end field

.field private delayInMillis:I

.field private final shutdownHook:Z

.field private final trace:Lorg/h2/message/Trace;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/h2/engine/DatabaseCloser;->databaseRef:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lorg/h2/engine/DatabaseCloser;->delayInMillis:I

    iput-boolean p3, p0, Lorg/h2/engine/DatabaseCloser;->shutdownHook:Z

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/h2/engine/Database;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/DatabaseCloser;->trace:Lorg/h2/message/Trace;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/h2/engine/DatabaseCloser;->databaseRef:Ljava/lang/ref/WeakReference;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    :cond_0
    iget v0, p0, Lorg/h2/engine/DatabaseCloser;->delayInMillis:I

    if-lez v0, :cond_1

    const/16 v0, 0x64

    int-to-long v1, v0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    iget v1, p0, Lorg/h2/engine/DatabaseCloser;->delayInMillis:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/h2/engine/DatabaseCloser;->delayInMillis:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget-object v0, p0, Lorg/h2/engine/DatabaseCloser;->databaseRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_1
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/h2/engine/DatabaseCloser;->databaseRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/engine/DatabaseCloser;->databaseRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/engine/Database;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    :try_start_2
    iget-boolean v1, p0, Lorg/h2/engine/DatabaseCloser;->shutdownHook:Z

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->close(Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lorg/h2/engine/DatabaseCloser;->trace:Lorg/h2/message/Trace;

    const-string v2, "could not close the database"

    invoke-virtual {v1, v0, v2}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    throw v0

    :cond_3
    :goto_2
    return-void

    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
