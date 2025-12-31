.class final Lio/opencensus/trace/export/AutoValue_RunningSpanStore_PerSpanNameSummary;
.super Lio/opencensus/trace/export/RunningSpanStore$PerSpanNameSummary;
.source "SourceFile"


# instance fields
.field private final numRunningSpans:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lio/opencensus/trace/export/RunningSpanStore$PerSpanNameSummary;-><init>()V

    iput p1, p0, Lio/opencensus/trace/export/AutoValue_RunningSpanStore_PerSpanNameSummary;->numRunningSpans:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/opencensus/trace/export/RunningSpanStore$PerSpanNameSummary;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lio/opencensus/trace/export/RunningSpanStore$PerSpanNameSummary;

    iget v1, p0, Lio/opencensus/trace/export/AutoValue_RunningSpanStore_PerSpanNameSummary;->numRunningSpans:I

    invoke-virtual {p1}, Lio/opencensus/trace/export/RunningSpanStore$PerSpanNameSummary;->getNumRunningSpans()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getNumRunningSpans()I
    .locals 1

    iget v0, p0, Lio/opencensus/trace/export/AutoValue_RunningSpanStore_PerSpanNameSummary;->numRunningSpans:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    const v0, 0xf4243

    iget v1, p0, Lio/opencensus/trace/export/AutoValue_RunningSpanStore_PerSpanNameSummary;->numRunningSpans:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PerSpanNameSummary{numRunningSpans="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lio/opencensus/trace/export/AutoValue_RunningSpanStore_PerSpanNameSummary;->numRunningSpans:I

    .line 9
    .line 10
    const-string v2, "}"

    .line 11
    .line 12
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method
