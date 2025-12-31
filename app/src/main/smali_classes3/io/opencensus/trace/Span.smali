.class public abstract Lio/opencensus/trace/Span;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/Span$Kind;,
        Lio/opencensus/trace/Span$Options;
    }
.end annotation


# static fields
.field private static final DEFAULT_OPTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/opencensus/trace/Span$Options;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ATTRIBUTES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/opencensus/trace/AttributeValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Lio/opencensus/trace/SpanContext;

.field private final options:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/opencensus/trace/Span$Options;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Span;->EMPTY_ATTRIBUTES:Ljava/util/Map;

    const-class v0, Lio/opencensus/trace/Span$Options;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Span;->DEFAULT_OPTIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lio/opencensus/trace/SpanContext;Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/opencensus/trace/SpanContext;",
            "Ljava/util/EnumSet<",
            "Lio/opencensus/trace/Span$Options;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context"

    invoke-static {p1, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/opencensus/trace/SpanContext;

    iput-object v0, p0, Lio/opencensus/trace/Span;->context:Lio/opencensus/trace/SpanContext;

    if-nez p2, :cond_0

    sget-object p2, Lio/opencensus/trace/Span;->DEFAULT_OPTIONS:Ljava/util/Set;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lio/opencensus/trace/Span;->options:Ljava/util/Set;

    invoke-virtual {p1}, Lio/opencensus/trace/SpanContext;->getTraceOptions()Lio/opencensus/trace/TraceOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/trace/TraceOptions;->isSampled()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lio/opencensus/trace/Span$Options;->RECORD_EVENTS:Lio/opencensus/trace/Span$Options;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    const-string p2, "Span is sampled, but does not have RECORD_EVENTS set."

    invoke-static {p1, p2}, Lio/opencensus/internal/Utils;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract addAnnotation(Lio/opencensus/trace/Annotation;)V
.end method

.method public final addAnnotation(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "description"

    invoke-static {p1, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lio/opencensus/trace/Span;->EMPTY_ATTRIBUTES:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lio/opencensus/trace/Span;->addAnnotation(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public abstract addAnnotation(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/opencensus/trace/AttributeValue;",
            ">;)V"
        }
    .end annotation
.end method

.method public addAttributes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/opencensus/trace/AttributeValue;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lio/opencensus/trace/Span;->putAttributes(Ljava/util/Map;)V

    return-void
.end method

.method public abstract addLink(Lio/opencensus/trace/Link;)V
.end method

.method public addMessageEvent(Lio/opencensus/trace/MessageEvent;)V
    .locals 1

    const-string v0, "messageEvent"

    invoke-static {p1, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lio/opencensus/trace/internal/BaseMessageEventUtils;->asNetworkEvent(Lio/opencensus/trace/BaseMessageEvent;)Lio/opencensus/trace/NetworkEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/opencensus/trace/Span;->addNetworkEvent(Lio/opencensus/trace/NetworkEvent;)V

    return-void
.end method

.method public addNetworkEvent(Lio/opencensus/trace/NetworkEvent;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lio/opencensus/trace/internal/BaseMessageEventUtils;->asMessageEvent(Lio/opencensus/trace/BaseMessageEvent;)Lio/opencensus/trace/MessageEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/opencensus/trace/Span;->addMessageEvent(Lio/opencensus/trace/MessageEvent;)V

    return-void
.end method

.method public final end()V
    .locals 1

    .line 1
    sget-object v0, Lio/opencensus/trace/EndSpanOptions;->DEFAULT:Lio/opencensus/trace/EndSpanOptions;

    invoke-virtual {p0, v0}, Lio/opencensus/trace/Span;->end(Lio/opencensus/trace/EndSpanOptions;)V

    return-void
.end method

.method public abstract end(Lio/opencensus/trace/EndSpanOptions;)V
.end method

.method public final getContext()Lio/opencensus/trace/SpanContext;
    .locals 1

    iget-object v0, p0, Lio/opencensus/trace/Span;->context:Lio/opencensus/trace/SpanContext;

    return-object v0
.end method

.method public final getOptions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/opencensus/trace/Span$Options;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/opencensus/trace/Span;->options:Ljava/util/Set;

    return-object v0
.end method

.method public putAttribute(Ljava/lang/String;Lio/opencensus/trace/AttributeValue;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    invoke-static {p2, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/opencensus/trace/Span;->putAttributes(Ljava/util/Map;)V

    return-void
.end method

.method public putAttributes(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/opencensus/trace/AttributeValue;",
            ">;)V"
        }
    .end annotation

    const-string v0, "attributes"

    invoke-static {p1, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lio/opencensus/trace/Span;->addAttributes(Ljava/util/Map;)V

    return-void
.end method

.method public setStatus(Lio/opencensus/trace/Status;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
