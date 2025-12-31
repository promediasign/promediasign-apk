.class final Lio/opencensus/trace/CurrentSpanUtils$ScopeInSpan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/opencensus/common/Scope;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/CurrentSpanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScopeInSpan"
.end annotation


# instance fields
.field private final endSpan:Z

.field private final origContext:Lio/grpc/Context;

.field private final span:Lio/opencensus/trace/Span;


# direct methods
.method private constructor <init>(Lio/opencensus/trace/Span;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/opencensus/trace/CurrentSpanUtils$ScopeInSpan;->span:Lio/opencensus/trace/Span;

    iput-boolean p2, p0, Lio/opencensus/trace/CurrentSpanUtils$ScopeInSpan;->endSpan:Z

    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lio/opencensus/trace/unsafe/ContextUtils;->withValue(Lio/grpc/Context;Lio/opencensus/trace/Span;)Lio/grpc/Context;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/trace/CurrentSpanUtils$ScopeInSpan;->origContext:Lio/grpc/Context;

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/trace/Span;ZLio/opencensus/trace/CurrentSpanUtils$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/opencensus/trace/CurrentSpanUtils$ScopeInSpan;-><init>(Lio/opencensus/trace/Span;Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object v0

    iget-object v1, p0, Lio/opencensus/trace/CurrentSpanUtils$ScopeInSpan;->origContext:Lio/grpc/Context;

    invoke-virtual {v0, v1}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    iget-boolean v0, p0, Lio/opencensus/trace/CurrentSpanUtils$ScopeInSpan;->endSpan:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/opencensus/trace/CurrentSpanUtils$ScopeInSpan;->span:Lio/opencensus/trace/Span;

    invoke-virtual {v0}, Lio/opencensus/trace/Span;->end()V

    :cond_0
    return-void
.end method
