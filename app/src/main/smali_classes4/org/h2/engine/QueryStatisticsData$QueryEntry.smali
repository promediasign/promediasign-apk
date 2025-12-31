.class public final Lorg/h2/engine/QueryStatisticsData$QueryEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/engine/QueryStatisticsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueryEntry"
.end annotation


# instance fields
.field public count:I

.field public executionTimeCumulativeNanos:J

.field private executionTimeM2Nanos:D

.field public executionTimeMaxNanos:J

.field public executionTimeMeanNanos:D

.field public executionTimeMinNanos:J

.field public lastUpdateTime:J

.field public rowCountCumulative:J

.field private rowCountM2:D

.field public rowCountMax:I

.field public rowCountMean:D

.field public rowCountMin:I

.field public final sqlStatement:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->sqlStatement:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExecutionTimeStandardDeviation()D
    .locals 4

    iget-wide v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeM2Nanos:D

    iget v2, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->count:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCountStandardDeviation()D
    .locals 4

    iget-wide v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountM2:D

    iget v2, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->count:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public update(JI)V
    .locals 9

    iget v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->count:I

    iget-wide v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeMinNanos:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeMinNanos:J

    iget-wide v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeMaxNanos:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeMaxNanos:J

    iget v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountMin:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountMin:I

    iget v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountMax:I

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountMax:I

    int-to-double v0, p3

    iget-wide v2, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountMean:D

    sub-double v4, v0, v2

    iget v6, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->count:I

    int-to-double v7, v6

    div-double v7, v4, v7

    add-double/2addr v7, v2

    iput-wide v7, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountMean:D

    iget-wide v2, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountM2:D

    sub-double/2addr v0, v7

    mul-double v0, v0, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountM2:D

    long-to-double v0, p1

    iget-wide v2, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeMeanNanos:D

    sub-double v4, v0, v2

    int-to-double v6, v6

    div-double v6, v4, v6

    add-double/2addr v6, v2

    iput-wide v6, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeMeanNanos:D

    iget-wide v2, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeM2Nanos:D

    sub-double/2addr v0, v6

    mul-double v0, v0, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeM2Nanos:D

    iget-wide v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeCumulativeNanos:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeCumulativeNanos:J

    iget-wide p1, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountCumulative:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountCumulative:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->lastUpdateTime:J

    return-void
.end method
