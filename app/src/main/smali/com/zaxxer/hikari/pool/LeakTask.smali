.class public Lcom/zaxxer/hikari/pool/LeakTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field public static final NO_LEAK:Lcom/zaxxer/hikari/pool/LeakTask;


# instance fields
.field private bagEntry:Lcom/zaxxer/hikari/pool/PoolBagEntry;

.field private exception:Ljava/lang/Exception;

.field private executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private leakDetectionThreshold:J

.field private scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/zaxxer/hikari/pool/LeakTask;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/zaxxer/hikari/pool/LeakTask;->LOGGER:Lorg/slf4j/Logger;

    new-instance v0, Lcom/zaxxer/hikari/pool/LeakTask$1;

    invoke-direct {v0}, Lcom/zaxxer/hikari/pool/LeakTask$1;-><init>()V

    sput-object v0, Lcom/zaxxer/hikari/pool/LeakTask;->NO_LEAK:Lcom/zaxxer/hikari/pool/LeakTask;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/zaxxer/hikari/pool/LeakTask;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iput-wide p1, p0, Lcom/zaxxer/hikari/pool/LeakTask;->leakDetectionThreshold:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/zaxxer/hikari/pool/LeakTask$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/zaxxer/hikari/pool/LeakTask;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/zaxxer/hikari/pool/LeakTask;Lcom/zaxxer/hikari/pool/PoolBagEntry;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Apparent connection leak detected"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zaxxer/hikari/pool/LeakTask;->exception:Ljava/lang/Exception;

    iput-object p2, p0, Lcom/zaxxer/hikari/pool/LeakTask;->bagEntry:Lcom/zaxxer/hikari/pool/PoolBagEntry;

    iget-object p2, p1, Lcom/zaxxer/hikari/pool/LeakTask;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v0, p1, Lcom/zaxxer/hikari/pool/LeakTask;->leakDetectionThreshold:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, p0, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/zaxxer/hikari/pool/LeakTask;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/LeakTask;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/LeakTask;->exception:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x5

    sub-int/2addr v1, v2

    new-array v3, v1, [Ljava/lang/StackTraceElement;

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/LeakTask;->exception:Ljava/lang/Exception;

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    sget-object v0, Lcom/zaxxer/hikari/pool/LeakTask;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lcom/zaxxer/hikari/pool/LeakTask;->bagEntry:Lcom/zaxxer/hikari/pool/PoolBagEntry;

    iget-object v1, v1, Lcom/zaxxer/hikari/pool/PoolBagEntry;->connection:Ljava/sql/Connection;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zaxxer/hikari/pool/LeakTask;->exception:Ljava/lang/Exception;

    const-string v3, "Connection leak detection triggered for connection {}, stack trace follows"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public start(Lcom/zaxxer/hikari/pool/PoolBagEntry;)Lcom/zaxxer/hikari/pool/LeakTask;
    .locals 1

    new-instance v0, Lcom/zaxxer/hikari/pool/LeakTask;

    invoke-direct {v0, p0, p1}, Lcom/zaxxer/hikari/pool/LeakTask;-><init>(Lcom/zaxxer/hikari/pool/LeakTask;Lcom/zaxxer/hikari/pool/PoolBagEntry;)V

    return-object v0
.end method
