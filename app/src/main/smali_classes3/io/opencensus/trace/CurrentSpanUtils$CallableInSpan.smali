.class final Lio/opencensus/trace/CurrentSpanUtils$CallableInSpan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/CurrentSpanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallableInSpan"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final endSpan:Z

.field private final span:Lio/opencensus/trace/Span;


# direct methods
.method private constructor <init>(Lio/opencensus/trace/Span;Ljava/util/concurrent/Callable;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/opencensus/trace/Span;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/opencensus/trace/CurrentSpanUtils$CallableInSpan;->span:Lio/opencensus/trace/Span;

    iput-object p2, p0, Lio/opencensus/trace/CurrentSpanUtils$CallableInSpan;->callable:Ljava/util/concurrent/Callable;

    iput-boolean p3, p0, Lio/opencensus/trace/CurrentSpanUtils$CallableInSpan;->endSpan:Z

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/trace/Span;Ljava/util/concurrent/Callable;ZLio/opencensus/trace/CurrentSpanUtils$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lio/opencensus/trace/CurrentSpanUtils$CallableInSpan;-><init>(Lio/opencensus/trace/Span;Ljava/util/concurrent/Callable;Z)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object v0

    iget-object v1, p0, Lio/opencensus/trace/CurrentSpanUtils$CallableInSpan;->span:Lio/opencensus/trace/Span;

    invoke-static {v0, v1}, Lio/opencensus/trace/unsafe/ContextUtils;->withValue(Lio/grpc/Context;Lio/opencensus/trace/Span;)Lio/grpc/Context;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lio/opencensus/trace/CurrentSpanUtils$CallableInSpan;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    iget-boolean v0, p0, Lio/opencensus/trace/CurrentSpanUtils$CallableInSpan;->endSpan:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/opencensus/trace/CurrentSpanUtils$CallableInSpan;->span:Lio/opencensus/trace/Span;

    invoke-virtual {v0}, Lio/opencensus/trace/Span;->end()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :goto_0
    :try_start_1
    iget-object v2, p0, Lio/opencensus/trace/CurrentSpanUtils$CallableInSpan;->span:Lio/opencensus/trace/Span;

    invoke-static {v2, v1}, Lio/opencensus/trace/CurrentSpanUtils;->access$300(Lio/opencensus/trace/Span;Ljava/lang/Throwable;)V

    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/Error;

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "unexpected"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_1
    iget-object v2, p0, Lio/opencensus/trace/CurrentSpanUtils$CallableInSpan;->span:Lio/opencensus/trace/Span;

    invoke-static {v2, v1}, Lio/opencensus/trace/CurrentSpanUtils;->access$300(Lio/opencensus/trace/Span;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    iget-boolean v0, p0, Lio/opencensus/trace/CurrentSpanUtils$CallableInSpan;->endSpan:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/opencensus/trace/CurrentSpanUtils$CallableInSpan;->span:Lio/opencensus/trace/Span;

    invoke-virtual {v0}, Lio/opencensus/trace/Span;->end()V

    :cond_2
    throw v1
.end method
