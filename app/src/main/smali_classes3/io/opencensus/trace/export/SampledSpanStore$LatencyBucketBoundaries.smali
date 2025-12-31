.class public final enum Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/export/SampledSpanStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LatencyBucketBoundaries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

.field public static final enum MICROSx100_MILLIx1:Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

.field public static final enum MICROSx10_MICROSx100:Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

.field public static final enum MILLIx100_SECONDx1:Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

.field public static final enum MILLIx10_MILLIx100:Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

.field public static final enum MILLIx1_MILLIx10:Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

.field public static final enum SECONDx100_MAX:Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

.field public static final enum SECONDx10_SECONDx100:Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

.field public static final enum SECONDx1_SECONDx10:Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

.field public static final enum ZERO_MICROSx10:Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;


# instance fields
.field private final latencyLowerNs:J

.field private final latencyUpperNs:J


# direct methods
.method static constructor <clinit>()V
    .locals 34

    new-instance v7, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0xa

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    const-string v1, "ZERO_MICROSx10"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;-><init>(Ljava/lang/String;IJJ)V

    sput-object v7, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;->ZERO_MICROSx10:Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

    new-instance v0, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v14

    const-wide/16 v1, 0x64

    invoke-virtual {v8, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v16

    const-string v12, "MICROSx10_MICROSx100"

    const/4 v13, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;-><init>(Ljava/lang/String;IJJ)V

    sput-object v0, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;->MICROSx10_MICROSx100:Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

    new-instance v3, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

    invoke-virtual {v8, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v21

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v23

    const-string v19, "MICROSx100_MILLIx1"

    const/16 v20, 0x2

    move-object/from16 v18, v3

    invoke-direct/range {v18 .. v24}, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;-><init>(Ljava/lang/String;IJJ)V

    sput-object v3, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;->MICROSx100_MILLIx1:Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

    new-instance v8, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v14

    invoke-virtual {v4, v9, v10}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v16

    const-string v12, "MILLIx1_MILLIx10"

    const/4 v13, 0x3

    move-object v11, v8

    invoke-direct/range {v11 .. v17}, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;-><init>(Ljava/lang/String;IJJ)V

    sput-object v8, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;->MILLIx1_MILLIx10:Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

    new-instance v11, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

    invoke-virtual {v4, v9, v10}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v21

    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v23

    const-string v19, "MILLIx10_MILLIx100"

    const/16 v20, 0x4

    move-object/from16 v18, v11

    invoke-direct/range {v18 .. v24}, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;-><init>(Ljava/lang/String;IJJ)V

    sput-object v11, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;->MILLIx10_MILLIx100:Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

    new-instance v19, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v15

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v17

    const-string v13, "MILLIx100_SECONDx1"

    const/4 v14, 0x5

    move-object/from16 v12, v19

    invoke-direct/range {v12 .. v18}, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;-><init>(Ljava/lang/String;IJJ)V

    sput-object v19, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;->MILLIx100_SECONDx1:Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

    new-instance v12, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v23

    invoke-virtual {v4, v9, v10}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v25

    const-string v21, "SECONDx1_SECONDx10"

    const/16 v22, 0x6

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v26}, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;-><init>(Ljava/lang/String;IJJ)V

    sput-object v12, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;->SECONDx1_SECONDx10:Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

    new-instance v5, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

    invoke-virtual {v4, v9, v10}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v30

    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v32

    const-string v28, "SECONDx10_SECONDx100"

    const/16 v29, 0x7

    move-object/from16 v27, v5

    invoke-direct/range {v27 .. v33}, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;-><init>(Ljava/lang/String;IJJ)V

    sput-object v5, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;->SECONDx10_SECONDx100:Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

    new-instance v6, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v23

    const-wide v25, 0x7fffffffffffffffL

    const-string v21, "SECONDx100_MAX"

    const/16 v22, 0x8

    move-object/from16 v20, v6

    invoke-direct/range {v20 .. v26}, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;-><init>(Ljava/lang/String;IJJ)V

    sput-object v6, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;->SECONDx100_MAX:Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

    const/16 v1, 0x9

    new-array v1, v1, [Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    aput-object v3, v1, v0

    const/4 v0, 0x3

    aput-object v8, v1, v0

    const/4 v0, 0x4

    aput-object v11, v1, v0

    const/4 v0, 0x5

    aput-object v19, v1, v0

    const/4 v0, 0x6

    aput-object v12, v1, v0

    const/4 v0, 0x7

    aput-object v5, v1, v0

    const/16 v0, 0x8

    aput-object v6, v1, v0

    sput-object v1, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;->$VALUES:[Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;->latencyLowerNs:J

    iput-wide p5, p0, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;->latencyUpperNs:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;
    .locals 1

    const-class v0, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

    return-object p0
.end method

.method public static values()[Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;
    .locals 1

    sget-object v0, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;->$VALUES:[Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

    invoke-virtual {v0}, [Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;

    return-object v0
.end method


# virtual methods
.method public getLatencyLowerNs()J
    .locals 2

    iget-wide v0, p0, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;->latencyLowerNs:J

    return-wide v0
.end method

.method public getLatencyUpperNs()J
    .locals 2

    iget-wide v0, p0, Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;->latencyUpperNs:J

    return-wide v0
.end method
