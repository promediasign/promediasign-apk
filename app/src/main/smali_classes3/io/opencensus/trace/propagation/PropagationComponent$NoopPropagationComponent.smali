.class final Lio/opencensus/trace/propagation/PropagationComponent$NoopPropagationComponent;
.super Lio/opencensus/trace/propagation/PropagationComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/propagation/PropagationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoopPropagationComponent"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/propagation/PropagationComponent;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/trace/propagation/PropagationComponent$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/trace/propagation/PropagationComponent$NoopPropagationComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public getB3Format()Lio/opencensus/trace/propagation/TextFormat;
    .locals 1

    invoke-static {}, Lio/opencensus/trace/propagation/TextFormat;->getNoopTextFormat()Lio/opencensus/trace/propagation/TextFormat;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryFormat()Lio/opencensus/trace/propagation/BinaryFormat;
    .locals 1

    invoke-static {}, Lio/opencensus/trace/propagation/BinaryFormat;->getNoopBinaryFormat()Lio/opencensus/trace/propagation/BinaryFormat;

    move-result-object v0

    return-object v0
.end method

.method public getTraceContextFormat()Lio/opencensus/trace/propagation/TextFormat;
    .locals 1

    invoke-static {}, Lio/opencensus/trace/propagation/TextFormat;->getNoopTextFormat()Lio/opencensus/trace/propagation/TextFormat;

    move-result-object v0

    return-object v0
.end method
