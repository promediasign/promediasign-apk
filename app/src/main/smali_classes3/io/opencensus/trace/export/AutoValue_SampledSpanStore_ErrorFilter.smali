.class final Lio/opencensus/trace/export/AutoValue_SampledSpanStore_ErrorFilter;
.super Lio/opencensus/trace/export/SampledSpanStore$ErrorFilter;
.source "SourceFile"


# instance fields
.field private final canonicalCode:Lio/opencensus/trace/Status$CanonicalCode;

.field private final maxSpansToReturn:I

.field private final spanName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/opencensus/trace/Status$CanonicalCode;I)V
    .locals 0

    invoke-direct {p0}, Lio/opencensus/trace/export/SampledSpanStore$ErrorFilter;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/opencensus/trace/export/AutoValue_SampledSpanStore_ErrorFilter;->spanName:Ljava/lang/String;

    iput-object p2, p0, Lio/opencensus/trace/export/AutoValue_SampledSpanStore_ErrorFilter;->canonicalCode:Lio/opencensus/trace/Status$CanonicalCode;

    iput p3, p0, Lio/opencensus/trace/export/AutoValue_SampledSpanStore_ErrorFilter;->maxSpansToReturn:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null spanName"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/opencensus/trace/export/SampledSpanStore$ErrorFilter;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lio/opencensus/trace/export/SampledSpanStore$ErrorFilter;

    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SampledSpanStore_ErrorFilter;->spanName:Ljava/lang/String;

    invoke-virtual {p1}, Lio/opencensus/trace/export/SampledSpanStore$ErrorFilter;->getSpanName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SampledSpanStore_ErrorFilter;->canonicalCode:Lio/opencensus/trace/Status$CanonicalCode;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lio/opencensus/trace/export/SampledSpanStore$ErrorFilter;->getCanonicalCode()Lio/opencensus/trace/Status$CanonicalCode;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lio/opencensus/trace/export/SampledSpanStore$ErrorFilter;->getCanonicalCode()Lio/opencensus/trace/Status$CanonicalCode;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget v1, p0, Lio/opencensus/trace/export/AutoValue_SampledSpanStore_ErrorFilter;->maxSpansToReturn:I

    invoke-virtual {p1}, Lio/opencensus/trace/export/SampledSpanStore$ErrorFilter;->getMaxSpansToReturn()I

    move-result p1

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public getCanonicalCode()Lio/opencensus/trace/Status$CanonicalCode;
    .locals 1

    iget-object v0, p0, Lio/opencensus/trace/export/AutoValue_SampledSpanStore_ErrorFilter;->canonicalCode:Lio/opencensus/trace/Status$CanonicalCode;

    return-object v0
.end method

.method public getMaxSpansToReturn()I
    .locals 1

    iget v0, p0, Lio/opencensus/trace/export/AutoValue_SampledSpanStore_ErrorFilter;->maxSpansToReturn:I

    return v0
.end method

.method public getSpanName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/opencensus/trace/export/AutoValue_SampledSpanStore_ErrorFilter;->spanName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/opencensus/trace/export/AutoValue_SampledSpanStore_ErrorFilter;->spanName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget-object v2, p0, Lio/opencensus/trace/export/AutoValue_SampledSpanStore_ErrorFilter;->canonicalCode:Lio/opencensus/trace/Status$CanonicalCode;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v1, p0, Lio/opencensus/trace/export/AutoValue_SampledSpanStore_ErrorFilter;->maxSpansToReturn:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ErrorFilter{spanName="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SampledSpanStore_ErrorFilter;->spanName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", canonicalCode="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SampledSpanStore_ErrorFilter;->canonicalCode:Lio/opencensus/trace/Status$CanonicalCode;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", maxSpansToReturn="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lio/opencensus/trace/export/AutoValue_SampledSpanStore_ErrorFilter;->maxSpansToReturn:I

    .line 29
    .line 30
    const-string v2, "}"

    .line 31
    .line 32
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
