.class final Lio/opencensus/trace/SpanBuilder$NoopSpanBuilder;
.super Lio/opencensus/trace/SpanBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/SpanBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoopSpanBuilder"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lio/opencensus/trace/SpanBuilder;-><init>()V

    const-string v0, "name"

    invoke-static {p1, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static createWithParent(Ljava/lang/String;Lio/opencensus/trace/Span;)Lio/opencensus/trace/SpanBuilder$NoopSpanBuilder;
    .locals 0

    new-instance p1, Lio/opencensus/trace/SpanBuilder$NoopSpanBuilder;

    invoke-direct {p1, p0}, Lio/opencensus/trace/SpanBuilder$NoopSpanBuilder;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static createWithRemoteParent(Ljava/lang/String;Lio/opencensus/trace/SpanContext;)Lio/opencensus/trace/SpanBuilder$NoopSpanBuilder;
    .locals 0

    new-instance p1, Lio/opencensus/trace/SpanBuilder$NoopSpanBuilder;

    invoke-direct {p1, p0}, Lio/opencensus/trace/SpanBuilder$NoopSpanBuilder;-><init>(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public setParentLinks(Ljava/util/List;)Lio/opencensus/trace/SpanBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/opencensus/trace/Span;",
            ">;)",
            "Lio/opencensus/trace/SpanBuilder;"
        }
    .end annotation

    return-object p0
.end method

.method public setRecordEvents(Z)Lio/opencensus/trace/SpanBuilder;
    .locals 0

    return-object p0
.end method

.method public setSampler(Lio/opencensus/trace/Sampler;)Lio/opencensus/trace/SpanBuilder;
    .locals 0

    return-object p0
.end method

.method public setSpanKind(Lio/opencensus/trace/Span$Kind;)Lio/opencensus/trace/SpanBuilder;
    .locals 0

    return-object p0
.end method

.method public startSpan()Lio/opencensus/trace/Span;
    .locals 1

    sget-object v0, Lio/opencensus/trace/BlankSpan;->INSTANCE:Lio/opencensus/trace/BlankSpan;

    return-object v0
.end method
