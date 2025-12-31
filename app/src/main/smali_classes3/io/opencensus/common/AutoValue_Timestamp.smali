.class final Lio/opencensus/common/AutoValue_Timestamp;
.super Lio/opencensus/common/Timestamp;
.source "SourceFile"


# instance fields
.field private final nanos:I

.field private final seconds:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Lio/opencensus/common/Timestamp;-><init>()V

    iput-wide p1, p0, Lio/opencensus/common/AutoValue_Timestamp;->seconds:J

    iput p3, p0, Lio/opencensus/common/AutoValue_Timestamp;->nanos:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/opencensus/common/Timestamp;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lio/opencensus/common/Timestamp;

    iget-wide v3, p0, Lio/opencensus/common/AutoValue_Timestamp;->seconds:J

    invoke-virtual {p1}, Lio/opencensus/common/Timestamp;->getSeconds()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lio/opencensus/common/AutoValue_Timestamp;->nanos:I

    invoke-virtual {p1}, Lio/opencensus/common/Timestamp;->getNanos()I

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

.method public getNanos()I
    .locals 1

    iget v0, p0, Lio/opencensus/common/AutoValue_Timestamp;->nanos:I

    return v0
.end method

.method public getSeconds()J
    .locals 2

    iget-wide v0, p0, Lio/opencensus/common/AutoValue_Timestamp;->seconds:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    const v0, 0xf4243

    int-to-long v1, v0

    iget-wide v3, p0, Lio/opencensus/common/AutoValue_Timestamp;->seconds:J

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v2, v1

    mul-int v2, v2, v0

    iget v0, p0, Lio/opencensus/common/AutoValue_Timestamp;->nanos:I

    xor-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Timestamp{seconds="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lio/opencensus/common/AutoValue_Timestamp;->seconds:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", nanos="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lio/opencensus/common/AutoValue_Timestamp;->nanos:I

    .line 19
    .line 20
    const-string v2, "}"

    .line 21
    .line 22
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
