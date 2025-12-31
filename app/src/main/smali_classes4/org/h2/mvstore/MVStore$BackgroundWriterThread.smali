.class Lorg/h2/mvstore/MVStore$BackgroundWriterThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/MVStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundWriterThread"
.end annotation


# instance fields
.field private final sleep:I

.field private final store:Lorg/h2/mvstore/MVStore;

.field public final sync:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/h2/mvstore/MVStore;ILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "MVStore background writer "

    .line 2
    .line 3
    invoke-static {v0, p3}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-direct {p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance p3, Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p3, p0, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;->sync:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p1, p0, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;->store:Lorg/h2/mvstore/MVStore;

    .line 18
    .line 19
    iput p2, p0, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;->sleep:I

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :goto_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;->store:Lorg/h2/mvstore/MVStore;

    iget-object v0, v0, Lorg/h2/mvstore/MVStore;->backgroundWriterThread:Lorg/h2/mvstore/MVStore$BackgroundWriterThread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;->sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;->sync:Ljava/lang/Object;

    iget v2, p0, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;->sleep:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->writeInBackground()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
