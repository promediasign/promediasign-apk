.class final Lio/opencensus/trace/AutoValue_EndSpanOptions$Builder;
.super Lio/opencensus/trace/EndSpanOptions$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/AutoValue_EndSpanOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private sampleToLocalSpanStore:Ljava/lang/Boolean;

.field private status:Lio/opencensus/trace/Status;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/opencensus/trace/EndSpanOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/opencensus/trace/EndSpanOptions;
    .locals 4

    iget-object v0, p0, Lio/opencensus/trace/AutoValue_EndSpanOptions$Builder;->sampleToLocalSpanStore:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, " sampleToLocalSpanStore"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lio/opencensus/trace/AutoValue_EndSpanOptions;

    iget-object v1, p0, Lio/opencensus/trace/AutoValue_EndSpanOptions$Builder;->sampleToLocalSpanStore:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lio/opencensus/trace/AutoValue_EndSpanOptions$Builder;->status:Lio/opencensus/trace/Status;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/opencensus/trace/AutoValue_EndSpanOptions;-><init>(ZLio/opencensus/trace/Status;Lio/opencensus/trace/AutoValue_EndSpanOptions$1;)V

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSampleToLocalSpanStore(Z)Lio/opencensus/trace/EndSpanOptions$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/trace/AutoValue_EndSpanOptions$Builder;->sampleToLocalSpanStore:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setStatus(Lio/opencensus/trace/Status;)Lio/opencensus/trace/EndSpanOptions$Builder;
    .locals 0

    iput-object p1, p0, Lio/opencensus/trace/AutoValue_EndSpanOptions$Builder;->status:Lio/opencensus/trace/Status;

    return-object p0
.end method
