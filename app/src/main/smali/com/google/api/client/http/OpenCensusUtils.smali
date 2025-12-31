.class public abstract Lcom/google/api/client/http/OpenCensusUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SPAN_NAME_HTTP_REQUEST_EXECUTE:Ljava/lang/String;

.field private static final idGenerator:Ljava/util/concurrent/atomic/AtomicLong;

.field private static volatile isRecordEvent:Z

.field private static final logger:Ljava/util/logging/Logger;

.field static volatile propagationTextFormat:Lio/opencensus/trace/propagation/TextFormat;

.field static volatile propagationTextFormatSetter:Lio/opencensus/trace/propagation/TextFormat$Setter;

.field private static final tracer:Lio/opencensus/trace/Tracer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/api/client/http/OpenCensusUtils;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/api/client/http/OpenCensusUtils;->logger:Ljava/util/logging/Logger;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "Sent."

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-class v1, Lcom/google/api/client/http/HttpRequest;

    .line 21
    .line 22
    const-string v2, ".execute"

    .line 23
    .line 24
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->k(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/google/api/client/http/OpenCensusUtils;->SPAN_NAME_HTTP_REQUEST_EXECUTE:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {}, Lio/opencensus/trace/Tracing;->getTracer()Lio/opencensus/trace/Tracer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/google/api/client/http/OpenCensusUtils;->tracer:Lio/opencensus/trace/Tracer;

    .line 35
    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/google/api/client/http/OpenCensusUtils;->idGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    sput-boolean v0, Lcom/google/api/client/http/OpenCensusUtils;->isRecordEvent:Z

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    sput-object v0, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormat:Lio/opencensus/trace/propagation/TextFormat;

    .line 48
    .line 49
    sput-object v0, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormatSetter:Lio/opencensus/trace/propagation/TextFormat$Setter;

    .line 50
    .line 51
    :try_start_0
    invoke-static {}, Lio/opencensus/contrib/http/util/HttpPropagationUtil;->getCloudTraceFormat()Lio/opencensus/trace/propagation/TextFormat;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormat:Lio/opencensus/trace/propagation/TextFormat;

    .line 56
    .line 57
    new-instance v0, Lcom/google/api/client/http/OpenCensusUtils$1;

    .line 58
    .line 59
    invoke-direct {v0}, Lcom/google/api/client/http/OpenCensusUtils$1;-><init>()V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormatSetter:Lio/opencensus/trace/propagation/TextFormat$Setter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    sget-object v1, Lcom/google/api/client/http/OpenCensusUtils;->logger:Ljava/util/logging/Logger;

    .line 67
    .line 68
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 69
    .line 70
    const-string v3, "Cannot initialize default OpenCensus HTTP propagation text format."

    .line 71
    .line 72
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    :try_start_1
    invoke-static {}, Lio/opencensus/trace/Tracing;->getExportComponent()Lio/opencensus/trace/export/ExportComponent;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lio/opencensus/trace/export/ExportComponent;->getSampledSpanStore()Lio/opencensus/trace/export/SampledSpanStore;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sget-object v1, Lcom/google/api/client/http/OpenCensusUtils;->SPAN_NAME_HTTP_REQUEST_EXECUTE:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Lio/opencensus/trace/export/SampledSpanStore;->registerSpanNamesForCollection(Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catch_1
    move-exception v0

    .line 94
    sget-object v1, Lcom/google/api/client/http/OpenCensusUtils;->logger:Ljava/util/logging/Logger;

    .line 95
    .line 96
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 97
    .line 98
    const-string v3, "Cannot register default OpenCensus span names for collection."

    .line 99
    .line 100
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    :goto_1
    return-void
.end method

.method public static getEndSpanOptions(Ljava/lang/Integer;)Lio/opencensus/trace/EndSpanOptions;
    .locals 2

    invoke-static {}, Lio/opencensus/trace/EndSpanOptions;->builder()Lio/opencensus/trace/EndSpanOptions$Builder;

    move-result-object v0

    if-nez p0, :cond_0

    :goto_0
    sget-object p0, Lio/opencensus/trace/Status;->UNKNOWN:Lio/opencensus/trace/Status;

    :goto_1
    invoke-virtual {v0, p0}, Lio/opencensus/trace/EndSpanOptions$Builder;->setStatus(Lio/opencensus/trace/Status;)Lio/opencensus/trace/EndSpanOptions$Builder;

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/api/client/http/HttpStatusCodes;->isSuccess(I)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v1, 0x190

    if-eq p0, v1, :cond_6

    const/16 v1, 0x191

    if-eq p0, v1, :cond_5

    const/16 v1, 0x193

    if-eq p0, v1, :cond_4

    const/16 v1, 0x194

    if-eq p0, v1, :cond_3

    const/16 v1, 0x19c

    if-eq p0, v1, :cond_2

    const/16 v1, 0x1f4

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lio/opencensus/trace/Status;->UNAVAILABLE:Lio/opencensus/trace/Status;

    goto :goto_1

    :cond_2
    sget-object p0, Lio/opencensus/trace/Status;->FAILED_PRECONDITION:Lio/opencensus/trace/Status;

    goto :goto_1

    :cond_3
    sget-object p0, Lio/opencensus/trace/Status;->NOT_FOUND:Lio/opencensus/trace/Status;

    goto :goto_1

    :cond_4
    sget-object p0, Lio/opencensus/trace/Status;->PERMISSION_DENIED:Lio/opencensus/trace/Status;

    goto :goto_1

    :cond_5
    sget-object p0, Lio/opencensus/trace/Status;->UNAUTHENTICATED:Lio/opencensus/trace/Status;

    goto :goto_1

    :cond_6
    sget-object p0, Lio/opencensus/trace/Status;->INVALID_ARGUMENT:Lio/opencensus/trace/Status;

    goto :goto_1

    :cond_7
    sget-object p0, Lio/opencensus/trace/Status;->OK:Lio/opencensus/trace/Status;

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Lio/opencensus/trace/EndSpanOptions$Builder;->build()Lio/opencensus/trace/EndSpanOptions;

    move-result-object p0

    return-object p0
.end method

.method public static getTracer()Lio/opencensus/trace/Tracer;
    .locals 1

    sget-object v0, Lcom/google/api/client/http/OpenCensusUtils;->tracer:Lio/opencensus/trace/Tracer;

    return-object v0
.end method

.method public static isRecordEvent()Z
    .locals 1

    sget-boolean v0, Lcom/google/api/client/http/OpenCensusUtils;->isRecordEvent:Z

    return v0
.end method

.method public static propagateTracingContext(Lio/opencensus/trace/Span;Lcom/google/api/client/http/HttpHeaders;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "span should not be null."

    invoke-static {v2, v3}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    const-string v1, "headers should not be null."

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormat:Lio/opencensus/trace/propagation/TextFormat;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormatSetter:Lio/opencensus/trace/propagation/TextFormat$Setter;

    if-eqz v0, :cond_2

    sget-object v0, Lio/opencensus/trace/BlankSpan;->INSTANCE:Lio/opencensus/trace/BlankSpan;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormat:Lio/opencensus/trace/propagation/TextFormat;

    invoke-virtual {p0}, Lio/opencensus/trace/Span;->getContext()Lio/opencensus/trace/SpanContext;

    move-result-object p0

    sget-object v1, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormatSetter:Lio/opencensus/trace/propagation/TextFormat$Setter;

    invoke-virtual {v0, p0, p1, v1}, Lio/opencensus/trace/propagation/TextFormat;->inject(Lio/opencensus/trace/SpanContext;Ljava/lang/Object;Lio/opencensus/trace/propagation/TextFormat$Setter;)V

    :cond_2
    return-void
.end method

.method public static recordMessageEvent(Lio/opencensus/trace/Span;JLio/opencensus/trace/MessageEvent$Type;)V
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "span should not be null."

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    move-wide p1, v0

    :cond_1
    sget-object v0, Lcom/google/api/client/http/OpenCensusUtils;->idGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {p3, v0, v1}, Lio/opencensus/trace/MessageEvent;->builder(Lio/opencensus/trace/MessageEvent$Type;J)Lio/opencensus/trace/MessageEvent$Builder;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lio/opencensus/trace/MessageEvent$Builder;->setUncompressedMessageSize(J)Lio/opencensus/trace/MessageEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/trace/MessageEvent$Builder;->build()Lio/opencensus/trace/MessageEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/opencensus/trace/Span;->addMessageEvent(Lio/opencensus/trace/MessageEvent;)V

    return-void
.end method

.method public static recordReceivedMessageEvent(Lio/opencensus/trace/Span;J)V
    .locals 1

    sget-object v0, Lio/opencensus/trace/MessageEvent$Type;->RECEIVED:Lio/opencensus/trace/MessageEvent$Type;

    invoke-static {p0, p1, p2, v0}, Lcom/google/api/client/http/OpenCensusUtils;->recordMessageEvent(Lio/opencensus/trace/Span;JLio/opencensus/trace/MessageEvent$Type;)V

    return-void
.end method

.method public static recordSentMessageEvent(Lio/opencensus/trace/Span;J)V
    .locals 1

    sget-object v0, Lio/opencensus/trace/MessageEvent$Type;->SENT:Lio/opencensus/trace/MessageEvent$Type;

    invoke-static {p0, p1, p2, v0}, Lcom/google/api/client/http/OpenCensusUtils;->recordMessageEvent(Lio/opencensus/trace/Span;JLio/opencensus/trace/MessageEvent$Type;)V

    return-void
.end method
