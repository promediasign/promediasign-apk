.class final Lio/opencensus/trace/config/AutoValue_TraceParams;
.super Lio/opencensus/trace/config/TraceParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;
    }
.end annotation


# instance fields
.field private final maxNumberOfAnnotations:I

.field private final maxNumberOfAttributes:I

.field private final maxNumberOfLinks:I

.field private final maxNumberOfMessageEvents:I

.field private final sampler:Lio/opencensus/trace/Sampler;


# direct methods
.method private constructor <init>(Lio/opencensus/trace/Sampler;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/config/TraceParams;-><init>()V

    iput-object p1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->sampler:Lio/opencensus/trace/Sampler;

    iput p2, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->maxNumberOfAttributes:I

    iput p3, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->maxNumberOfAnnotations:I

    iput p4, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->maxNumberOfMessageEvents:I

    iput p5, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->maxNumberOfLinks:I

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/trace/Sampler;IIIILio/opencensus/trace/config/AutoValue_TraceParams$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lio/opencensus/trace/config/AutoValue_TraceParams;-><init>(Lio/opencensus/trace/Sampler;IIII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/opencensus/trace/config/TraceParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lio/opencensus/trace/config/TraceParams;

    iget-object v1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->sampler:Lio/opencensus/trace/Sampler;

    invoke-virtual {p1}, Lio/opencensus/trace/config/TraceParams;->getSampler()Lio/opencensus/trace/Sampler;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->maxNumberOfAttributes:I

    invoke-virtual {p1}, Lio/opencensus/trace/config/TraceParams;->getMaxNumberOfAttributes()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->maxNumberOfAnnotations:I

    invoke-virtual {p1}, Lio/opencensus/trace/config/TraceParams;->getMaxNumberOfAnnotations()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->maxNumberOfMessageEvents:I

    invoke-virtual {p1}, Lio/opencensus/trace/config/TraceParams;->getMaxNumberOfMessageEvents()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->maxNumberOfLinks:I

    invoke-virtual {p1}, Lio/opencensus/trace/config/TraceParams;->getMaxNumberOfLinks()I

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

.method public getMaxNumberOfAnnotations()I
    .locals 1

    iget v0, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->maxNumberOfAnnotations:I

    return v0
.end method

.method public getMaxNumberOfAttributes()I
    .locals 1

    iget v0, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->maxNumberOfAttributes:I

    return v0
.end method

.method public getMaxNumberOfLinks()I
    .locals 1

    iget v0, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->maxNumberOfLinks:I

    return v0
.end method

.method public getMaxNumberOfMessageEvents()I
    .locals 1

    iget v0, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->maxNumberOfMessageEvents:I

    return v0
.end method

.method public getSampler()Lio/opencensus/trace/Sampler;
    .locals 1

    iget-object v0, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->sampler:Lio/opencensus/trace/Sampler;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->sampler:Lio/opencensus/trace/Sampler;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget v2, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->maxNumberOfAttributes:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->maxNumberOfAnnotations:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->maxNumberOfMessageEvents:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->maxNumberOfLinks:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toBuilder()Lio/opencensus/trace/config/TraceParams$Builder;
    .locals 2

    new-instance v0, Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;-><init>(Lio/opencensus/trace/config/TraceParams;Lio/opencensus/trace/config/AutoValue_TraceParams$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TraceParams{sampler="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->sampler:Lio/opencensus/trace/Sampler;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", maxNumberOfAttributes="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->maxNumberOfAttributes:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", maxNumberOfAnnotations="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->maxNumberOfAnnotations:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", maxNumberOfMessageEvents="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->maxNumberOfMessageEvents:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", maxNumberOfLinks="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams;->maxNumberOfLinks:I

    .line 49
    .line 50
    const-string v2, "}"

    .line 51
    .line 52
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method
