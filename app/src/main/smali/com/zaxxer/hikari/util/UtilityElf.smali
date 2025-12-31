.class public abstract Lcom/zaxxer/hikari/util/UtilityElf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IS_JAVA7:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    const-string v2, "hasQueuedPredecessors"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    sput-boolean v0, Lcom/zaxxer/hikari/util/UtilityElf;->IS_JAVA7:Z

    return-void
.end method

.method public static varargs createInstance(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    const-class p1, Lcom/zaxxer/hikari/util/UtilityElf;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    array-length p1, p2

    new-array p1, p1, [Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    array-length v0, p2

    if-lez v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static createThreadPoolExecutor(ILjava/lang/String;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    const/4 v0, 0x1

    if-nez p2, :cond_0

    new-instance p2, Lcom/zaxxer/hikari/util/DefaultThreadFactory;

    invoke-direct {p2, p1, v0}, Lcom/zaxxer/hikari/util/DefaultThreadFactory;-><init>(Ljava/lang/String;Z)V

    :cond_0
    move-object v8, p2

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7, p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v1, p0

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-object p0
.end method

.method public static elapsedTimeMs(J)J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public static getTransactionIsolation(Ljava/lang/String;)I
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    const-class v0, Ljava/sql/Connection;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid transaction isolation value: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static quietlySleep(J)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setRemoveOnCancelPolicy(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V
    .locals 1

    sget-boolean v0, Lcom/zaxxer/hikari/util/UtilityElf;->IS_JAVA7:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRemoveOnCancelPolicy(Z)V

    :cond_0
    return-void
.end method
