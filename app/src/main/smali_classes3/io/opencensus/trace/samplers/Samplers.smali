.class public final Lio/opencensus/trace/samplers/Samplers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALWAYS_SAMPLE:Lio/opencensus/trace/Sampler;

.field private static final NEVER_SAMPLE:Lio/opencensus/trace/Sampler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/opencensus/trace/samplers/AlwaysSampleSampler;

    invoke-direct {v0}, Lio/opencensus/trace/samplers/AlwaysSampleSampler;-><init>()V

    sput-object v0, Lio/opencensus/trace/samplers/Samplers;->ALWAYS_SAMPLE:Lio/opencensus/trace/Sampler;

    new-instance v0, Lio/opencensus/trace/samplers/NeverSampleSampler;

    invoke-direct {v0}, Lio/opencensus/trace/samplers/NeverSampleSampler;-><init>()V

    sput-object v0, Lio/opencensus/trace/samplers/Samplers;->NEVER_SAMPLE:Lio/opencensus/trace/Sampler;

    return-void
.end method

.method public static alwaysSample()Lio/opencensus/trace/Sampler;
    .locals 1

    sget-object v0, Lio/opencensus/trace/samplers/Samplers;->ALWAYS_SAMPLE:Lio/opencensus/trace/Sampler;

    return-object v0
.end method

.method public static neverSample()Lio/opencensus/trace/Sampler;
    .locals 1

    sget-object v0, Lio/opencensus/trace/samplers/Samplers;->NEVER_SAMPLE:Lio/opencensus/trace/Sampler;

    return-object v0
.end method

.method public static probabilitySampler(D)Lio/opencensus/trace/Sampler;
    .locals 0

    invoke-static {p0, p1}, Lio/opencensus/trace/samplers/ProbabilitySampler;->create(D)Lio/opencensus/trace/samplers/ProbabilitySampler;

    move-result-object p0

    return-object p0
.end method
