.class final Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;
.super Lio/opencensus/trace/config/TraceParams$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/config/AutoValue_TraceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private maxNumberOfAnnotations:Ljava/lang/Integer;

.field private maxNumberOfAttributes:Ljava/lang/Integer;

.field private maxNumberOfLinks:Ljava/lang/Integer;

.field private maxNumberOfMessageEvents:Ljava/lang/Integer;

.field private sampler:Lio/opencensus/trace/Sampler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/config/TraceParams$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lio/opencensus/trace/config/TraceParams;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lio/opencensus/trace/config/TraceParams$Builder;-><init>()V

    invoke-virtual {p1}, Lio/opencensus/trace/config/TraceParams;->getSampler()Lio/opencensus/trace/Sampler;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;->sampler:Lio/opencensus/trace/Sampler;

    invoke-virtual {p1}, Lio/opencensus/trace/config/TraceParams;->getMaxNumberOfAttributes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;->maxNumberOfAttributes:Ljava/lang/Integer;

    invoke-virtual {p1}, Lio/opencensus/trace/config/TraceParams;->getMaxNumberOfAnnotations()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;->maxNumberOfAnnotations:Ljava/lang/Integer;

    invoke-virtual {p1}, Lio/opencensus/trace/config/TraceParams;->getMaxNumberOfMessageEvents()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;->maxNumberOfMessageEvents:Ljava/lang/Integer;

    invoke-virtual {p1}, Lio/opencensus/trace/config/TraceParams;->getMaxNumberOfLinks()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;->maxNumberOfLinks:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/trace/config/TraceParams;Lio/opencensus/trace/config/AutoValue_TraceParams$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;-><init>(Lio/opencensus/trace/config/TraceParams;)V

    return-void
.end method


# virtual methods
.method public autoBuild()Lio/opencensus/trace/config/TraceParams;
    .locals 9

    .line 1
    iget-object v0, p0, Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;->sampler:Lio/opencensus/trace/Sampler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, " sampler"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, ""

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;->maxNumberOfAttributes:Ljava/lang/Integer;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const-string v1, " maxNumberOfAttributes"

    .line 15
    .line 16
    invoke-static {v0, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    iget-object v1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;->maxNumberOfAnnotations:Ljava/lang/Integer;

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    const-string v1, " maxNumberOfAnnotations"

    .line 25
    .line 26
    invoke-static {v0, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_2
    iget-object v1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;->maxNumberOfMessageEvents:Ljava/lang/Integer;

    .line 31
    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    const-string v1, " maxNumberOfMessageEvents"

    .line 35
    .line 36
    invoke-static {v0, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_3
    iget-object v1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;->maxNumberOfLinks:Ljava/lang/Integer;

    .line 41
    .line 42
    if-nez v1, :cond_4

    .line 43
    .line 44
    const-string v1, " maxNumberOfLinks"

    .line 45
    .line 46
    invoke-static {v0, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_5

    .line 55
    .line 56
    new-instance v0, Lio/opencensus/trace/config/AutoValue_TraceParams;

    .line 57
    .line 58
    iget-object v3, p0, Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;->sampler:Lio/opencensus/trace/Sampler;

    .line 59
    .line 60
    iget-object v1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;->maxNumberOfAttributes:Ljava/lang/Integer;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    iget-object v1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;->maxNumberOfAnnotations:Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    iget-object v1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;->maxNumberOfMessageEvents:Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    iget-object v1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;->maxNumberOfLinks:Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    const/4 v8, 0x0

    .line 85
    move-object v2, v0

    .line 86
    invoke-direct/range {v2 .. v8}, Lio/opencensus/trace/config/AutoValue_TraceParams;-><init>(Lio/opencensus/trace/Sampler;IIIILio/opencensus/trace/config/AutoValue_TraceParams$1;)V

    .line 87
    .line 88
    .line 89
    return-object v0

    .line 90
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    const-string v2, "Missing required properties:"

    .line 93
    .line 94
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v1
.end method

.method public setMaxNumberOfAnnotations(I)Lio/opencensus/trace/config/TraceParams$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;->maxNumberOfAnnotations:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMaxNumberOfAttributes(I)Lio/opencensus/trace/config/TraceParams$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;->maxNumberOfAttributes:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMaxNumberOfLinks(I)Lio/opencensus/trace/config/TraceParams$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;->maxNumberOfLinks:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMaxNumberOfMessageEvents(I)Lio/opencensus/trace/config/TraceParams$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;->maxNumberOfMessageEvents:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSampler(Lio/opencensus/trace/Sampler;)Lio/opencensus/trace/config/TraceParams$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/opencensus/trace/config/AutoValue_TraceParams$Builder;->sampler:Lio/opencensus/trace/Sampler;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null sampler"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
