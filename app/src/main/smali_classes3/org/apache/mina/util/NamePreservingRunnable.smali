.class public Lorg/apache/mina/util/NamePreservingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final newName:Ljava/lang/String;

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/mina/util/NamePreservingRunnable;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/util/NamePreservingRunnable;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/util/NamePreservingRunnable;->runnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lorg/apache/mina/util/NamePreservingRunnable;->newName:Ljava/lang/String;

    return-void
.end method

.method private setName(Ljava/lang/Thread;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lorg/apache/mina/util/NamePreservingRunnable;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p2}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lorg/apache/mina/util/NamePreservingRunnable;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Failed to set the thread name."

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/util/NamePreservingRunnable;->newName:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v2}, Lorg/apache/mina/util/NamePreservingRunnable;->setName(Ljava/lang/Thread;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/util/NamePreservingRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/util/NamePreservingRunnable;->setName(Ljava/lang/Thread;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/util/NamePreservingRunnable;->setName(Ljava/lang/Thread;Ljava/lang/String;)V

    throw v2
.end method
