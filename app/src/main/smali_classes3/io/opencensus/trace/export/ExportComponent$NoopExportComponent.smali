.class final Lio/opencensus/trace/export/ExportComponent$NoopExportComponent;
.super Lio/opencensus/trace/export/ExportComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/export/ExportComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoopExportComponent"
.end annotation


# instance fields
.field private final noopSampledSpanStore:Lio/opencensus/trace/export/SampledSpanStore;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/export/ExportComponent;-><init>()V

    invoke-static {}, Lio/opencensus/trace/export/SampledSpanStore;->newNoopSampledSpanStore()Lio/opencensus/trace/export/SampledSpanStore;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/trace/export/ExportComponent$NoopExportComponent;->noopSampledSpanStore:Lio/opencensus/trace/export/SampledSpanStore;

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/trace/export/ExportComponent$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/trace/export/ExportComponent$NoopExportComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public getRunningSpanStore()Lio/opencensus/trace/export/RunningSpanStore;
    .locals 1

    invoke-static {}, Lio/opencensus/trace/export/RunningSpanStore;->getNoopRunningSpanStore()Lio/opencensus/trace/export/RunningSpanStore;

    move-result-object v0

    return-object v0
.end method

.method public getSampledSpanStore()Lio/opencensus/trace/export/SampledSpanStore;
    .locals 1

    iget-object v0, p0, Lio/opencensus/trace/export/ExportComponent$NoopExportComponent;->noopSampledSpanStore:Lio/opencensus/trace/export/SampledSpanStore;

    return-object v0
.end method

.method public getSpanExporter()Lio/opencensus/trace/export/SpanExporter;
    .locals 1

    invoke-static {}, Lio/opencensus/trace/export/SpanExporter;->getNoopSpanExporter()Lio/opencensus/trace/export/SpanExporter;

    move-result-object v0

    return-object v0
.end method
