.class public Lorg/apache/mina/core/service/SimpleIoProcessorPool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/service/IoProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/apache/mina/core/session/AbstractIoSession;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/service/IoProcessor<",
        "TS;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final PROCESSOR:Lorg/apache/mina/core/session/AttributeKey;


# instance fields
.field private final createdExecutor:Z

.field private final disposalLock:Ljava/lang/Object;

.field private volatile disposed:Z

.field private volatile disposing:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private final pool:[Lorg/apache/mina/core/service/IoProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->DEFAULT_SIZE:I

    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "processor"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->PROCESSOR:Lorg/apache/mina/core/session/AttributeKey;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    sget v1, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->DEFAULT_SIZE:I

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;Ljava/util/concurrent/Executor;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;>;I)V"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;Ljava/util/concurrent/Executor;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 3
    sget v0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->DEFAULT_SIZE:I

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;Ljava/util/concurrent/Executor;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/concurrent/Executor;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;>;",
            "Ljava/util/concurrent/Executor;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, " must have a public constructor with one ExecutorService parameter, a public constructor with one Executor parameter or a public default constructor."

    const-string v3, "Failed to create a new instance of "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposalLock:Ljava/lang/Object;

    if-eqz p1, :cond_6

    if-lez p3, :cond_5

    if-nez p2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->createdExecutor:Z

    if-eqz v4, :cond_1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->executor:Ljava/util/concurrent/Executor;

    new-array p2, p3, [Lorg/apache/mina/core/service/IoProcessor;

    iput-object p2, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    const/4 p3, 0x0

    :try_start_0
    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/util/concurrent/ExecutorService;

    aput-object v5, v4, v0

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->executor:Ljava/util/concurrent/Executor;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/core/service/IoProcessor;

    aput-object v5, p2, v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 p2, 0x1

    goto :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :catch_0
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-object v4, p3

    :catch_3
    :try_start_2
    new-array p2, v1, [Ljava/lang/Class;

    const-class v5, Ljava/util/concurrent/Executor;

    aput-object v5, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    iget-object p2, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    iget-object v5, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->executor:Ljava/util/concurrent/Executor;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/core/service/IoProcessor;

    aput-object v5, p2, v0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_4
    :try_start_3
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object p2, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    invoke-virtual {v4, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/core/service/IoProcessor;

    aput-object v5, p2, v0
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    const/4 p2, 0x0

    goto :goto_5

    :catch_5
    nop

    goto :goto_2

    :goto_3
    :try_start_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p3, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p3, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {p3, p1, p2}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :goto_4
    sget-object p2, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->LOGGER:Lorg/slf4j/Logger;

    const-string p3, "Cannot create an IoProcessor :{}"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1

    :catch_6
    nop

    goto :goto_1

    :goto_5
    if-eqz v4, :cond_4

    const/4 p1, 0x1

    :goto_6
    iget-object v2, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    array-length v3, v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ge p1, v3, :cond_3

    if-eqz p2, :cond_2

    :try_start_6
    iget-object v3, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->executor:Ljava/util/concurrent/Executor;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/service/IoProcessor;

    aput-object v3, v2, p1

    goto :goto_7

    :cond_2
    invoke-virtual {v4, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/service/IoProcessor;

    aput-object v3, v2, p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_7
    :goto_7
    add-int/2addr p1, v1

    goto :goto_6

    :cond_3
    return-void

    :cond_4
    :try_start_7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_8
    invoke-virtual {p0}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->dispose()V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size: "

    const-string v0, " (expected: positive integer)"

    .line 4
    invoke-static {p3, p2, v0}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "processorType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getProcessor(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/service/IoProcessor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;"
        }
    .end annotation

    sget-object v0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->PROCESSOR:Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/service/IoProcessor;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposed:Z

    const-string v2, "A disposed processor cannot be accessed."

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposing:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getId()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final add(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->getProcessor(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/core/service/IoProcessor;->add(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public bridge synthetic add(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 2
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->add(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method public final dispose()V
    .locals 9

    iget-boolean v0, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposing:Z

    const/4 v2, 0x1

    if-nez v1, :cond_4

    iput-boolean v2, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposing:Z

    iget-object v1, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v5}, Lorg/apache/mina/core/service/IoProcessor;->isDisposing()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-interface {v5}, Lorg/apache/mina/core/service/IoProcessor;->dispose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v6

    :try_start_2
    sget-object v7, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->LOGGER:Lorg/slf4j/Logger;

    const-string v8, "Failed to dispose the {} IoProcessor."

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v8, v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->createdExecutor:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->executor:Ljava/util/concurrent/Executor;

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_4
    iget-object v1, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v2, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposed:Z

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final flush(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->getProcessor(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/core/service/IoProcessor;->flush(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public bridge synthetic flush(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 2
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->flush(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposed:Z

    return v0
.end method

.method public isDisposing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposing:Z

    return v0
.end method

.method public final remove(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->getProcessor(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/core/service/IoProcessor;->remove(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public bridge synthetic remove(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 2
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->remove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method public final updateTrafficControl(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->getProcessor(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/core/service/IoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public bridge synthetic updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 2
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->updateTrafficControl(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method
