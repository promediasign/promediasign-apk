.class final Lio/opencensus/trace/export/SpanExporter$NoopSpanExporter;
.super Lio/opencensus/trace/export/SpanExporter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/export/SpanExporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoopSpanExporter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/export/SpanExporter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/trace/export/SpanExporter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/trace/export/SpanExporter$NoopSpanExporter;-><init>()V

    return-void
.end method


# virtual methods
.method public registerHandler(Ljava/lang/String;Lio/opencensus/trace/export/SpanExporter$Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterHandler(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
