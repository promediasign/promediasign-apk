.class Lsk/mimac/slideshow/InitializerImpl$LogExceptionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/InitializerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogExceptionHandler"
.end annotation


# instance fields
.field private counter:I

.field private final startupMillis:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lsk/mimac/slideshow/InitializerImpl$LogExceptionHandler;->startupMillis:J

    const/4 v0, 0x0

    iput v0, p0, Lsk/mimac/slideshow/InitializerImpl$LogExceptionHandler;->counter:I

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/InitializerImpl$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsk/mimac/slideshow/InitializerImpl$LogExceptionHandler;-><init>()V

    return-void
.end method

.method private checkReload()V
    .locals 5

    iget v0, p0, Lsk/mimac/slideshow/InitializerImpl$LogExceptionHandler;->counter:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lsk/mimac/slideshow/InitializerImpl$LogExceptionHandler;->startupMillis:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x337f980

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/utils/Shell;->isRootEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lsk/mimac/slideshow/Initializer;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Reloading application after uncaught exception"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/jakewharton/processphoenix/ProcessPhoenix;->triggerRebirth(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lsk/mimac/slideshow/InitializerImpl$LogExceptionHandler;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsk/mimac/slideshow/InitializerImpl$LogExceptionHandler;->counter:I

    instance-of v0, p2, Ljava/lang/InternalError;

    if-eqz v0, :cond_0

    sget-object v0, Lsk/mimac/slideshow/Initializer;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Exception in thread \'{}\': \'{}\'"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/Initializer;->LOG:Lorg/slf4j/Logger;

    const-string v1, "UNCAUGHT EXCEPTION in thread \'{}\'"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0}, Lsk/mimac/slideshow/InitializerImpl$LogExceptionHandler;->checkReload()V

    return-void
.end method
