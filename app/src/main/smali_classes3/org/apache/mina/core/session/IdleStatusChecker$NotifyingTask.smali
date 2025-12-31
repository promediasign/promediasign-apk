.class public Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/session/IdleStatusChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotifyingTask"
.end annotation


# instance fields
.field private volatile cancelled:Z

.field final synthetic this$0:Lorg/apache/mina/core/session/IdleStatusChecker;

.field private volatile thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IdleStatusChecker;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;->this$0:Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private notifySessions(J)V
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;->this$0:Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-static {v0}, Lorg/apache/mina/core/session/IdleStatusChecker;->access$000(Lorg/apache/mina/core/session/IdleStatusChecker;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {v1}, Lorg/apache/mina/core/session/AbstractIoSession;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, p1, p2}, Lorg/apache/mina/core/session/AbstractIoSession;->notifyIdleSession(Lorg/apache/mina/core/session/IoSession;J)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;->cancelled:Z

    iget-object v0, p0, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;->thread:Ljava/lang/Thread;

    :catch_0
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;->cancelled:Z

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;->notifySessions(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iput-object v0, p0, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;->thread:Ljava/lang/Thread;

    return-void

    :goto_1
    iput-object v0, p0, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;->thread:Ljava/lang/Thread;

    throw v1
.end method
