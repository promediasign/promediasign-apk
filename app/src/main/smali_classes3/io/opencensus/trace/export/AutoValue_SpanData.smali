.class final Lio/opencensus/trace/export/AutoValue_SpanData;
.super Lio/opencensus/trace/export/SpanData;
.source "SourceFile"


# instance fields
.field private final annotations:Lio/opencensus/trace/export/SpanData$TimedEvents;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/opencensus/trace/export/SpanData$TimedEvents<",
            "Lio/opencensus/trace/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final attributes:Lio/opencensus/trace/export/SpanData$Attributes;

.field private final childSpanCount:Ljava/lang/Integer;

.field private final context:Lio/opencensus/trace/SpanContext;

.field private final endTimestamp:Lio/opencensus/common/Timestamp;

.field private final hasRemoteParent:Ljava/lang/Boolean;

.field private final kind:Lio/opencensus/trace/Span$Kind;

.field private final links:Lio/opencensus/trace/export/SpanData$Links;

.field private final messageEvents:Lio/opencensus/trace/export/SpanData$TimedEvents;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/opencensus/trace/export/SpanData$TimedEvents<",
            "Lio/opencensus/trace/MessageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final parentSpanId:Lio/opencensus/trace/SpanId;

.field private final startTimestamp:Lio/opencensus/common/Timestamp;

.field private final status:Lio/opencensus/trace/Status;


# direct methods
.method public constructor <init>(Lio/opencensus/trace/SpanContext;Lio/opencensus/trace/SpanId;Ljava/lang/Boolean;Ljava/lang/String;Lio/opencensus/trace/Span$Kind;Lio/opencensus/common/Timestamp;Lio/opencensus/trace/export/SpanData$Attributes;Lio/opencensus/trace/export/SpanData$TimedEvents;Lio/opencensus/trace/export/SpanData$TimedEvents;Lio/opencensus/trace/export/SpanData$Links;Ljava/lang/Integer;Lio/opencensus/trace/Status;Lio/opencensus/common/Timestamp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/opencensus/trace/SpanContext;",
            "Lio/opencensus/trace/SpanId;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lio/opencensus/trace/Span$Kind;",
            "Lio/opencensus/common/Timestamp;",
            "Lio/opencensus/trace/export/SpanData$Attributes;",
            "Lio/opencensus/trace/export/SpanData$TimedEvents<",
            "Lio/opencensus/trace/Annotation;",
            ">;",
            "Lio/opencensus/trace/export/SpanData$TimedEvents<",
            "Lio/opencensus/trace/MessageEvent;",
            ">;",
            "Lio/opencensus/trace/export/SpanData$Links;",
            "Ljava/lang/Integer;",
            "Lio/opencensus/trace/Status;",
            "Lio/opencensus/common/Timestamp;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lio/opencensus/trace/export/SpanData;-><init>()V

    if-eqz p1, :cond_6

    iput-object p1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->context:Lio/opencensus/trace/SpanContext;

    iput-object p2, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->parentSpanId:Lio/opencensus/trace/SpanId;

    iput-object p3, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->hasRemoteParent:Ljava/lang/Boolean;

    if-eqz p4, :cond_5

    iput-object p4, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->name:Ljava/lang/String;

    iput-object p5, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->kind:Lio/opencensus/trace/Span$Kind;

    if-eqz p6, :cond_4

    iput-object p6, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->startTimestamp:Lio/opencensus/common/Timestamp;

    if-eqz p7, :cond_3

    iput-object p7, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->attributes:Lio/opencensus/trace/export/SpanData$Attributes;

    if-eqz p8, :cond_2

    iput-object p8, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->annotations:Lio/opencensus/trace/export/SpanData$TimedEvents;

    if-eqz p9, :cond_1

    iput-object p9, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->messageEvents:Lio/opencensus/trace/export/SpanData$TimedEvents;

    if-eqz p10, :cond_0

    iput-object p10, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->links:Lio/opencensus/trace/export/SpanData$Links;

    iput-object p11, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->childSpanCount:Ljava/lang/Integer;

    iput-object p12, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->status:Lio/opencensus/trace/Status;

    iput-object p13, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->endTimestamp:Lio/opencensus/common/Timestamp;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null links"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null messageEvents"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null annotations"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null attributes"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null startTimestamp"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null name"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null context"

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
    instance-of v1, p1, Lio/opencensus/trace/export/SpanData;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    check-cast p1, Lio/opencensus/trace/export/SpanData;

    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->context:Lio/opencensus/trace/SpanContext;

    invoke-virtual {p1}, Lio/opencensus/trace/export/SpanData;->getContext()Lio/opencensus/trace/SpanContext;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/opencensus/trace/SpanContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->parentSpanId:Lio/opencensus/trace/SpanId;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lio/opencensus/trace/export/SpanData;->getParentSpanId()Lio/opencensus/trace/SpanId;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lio/opencensus/trace/export/SpanData;->getParentSpanId()Lio/opencensus/trace/SpanId;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/opencensus/trace/SpanId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_0
    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->hasRemoteParent:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lio/opencensus/trace/export/SpanData;->getHasRemoteParent()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lio/opencensus/trace/export/SpanData;->getHasRemoteParent()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lio/opencensus/trace/export/SpanData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->kind:Lio/opencensus/trace/Span$Kind;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lio/opencensus/trace/export/SpanData;->getKind()Lio/opencensus/trace/Span$Kind;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lio/opencensus/trace/export/SpanData;->getKind()Lio/opencensus/trace/Span$Kind;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_2
    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->startTimestamp:Lio/opencensus/common/Timestamp;

    invoke-virtual {p1}, Lio/opencensus/trace/export/SpanData;->getStartTimestamp()Lio/opencensus/common/Timestamp;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->attributes:Lio/opencensus/trace/export/SpanData$Attributes;

    invoke-virtual {p1}, Lio/opencensus/trace/export/SpanData;->getAttributes()Lio/opencensus/trace/export/SpanData$Attributes;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->annotations:Lio/opencensus/trace/export/SpanData$TimedEvents;

    invoke-virtual {p1}, Lio/opencensus/trace/export/SpanData;->getAnnotations()Lio/opencensus/trace/export/SpanData$TimedEvents;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->messageEvents:Lio/opencensus/trace/export/SpanData$TimedEvents;

    invoke-virtual {p1}, Lio/opencensus/trace/export/SpanData;->getMessageEvents()Lio/opencensus/trace/export/SpanData$TimedEvents;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->links:Lio/opencensus/trace/export/SpanData$Links;

    invoke-virtual {p1}, Lio/opencensus/trace/export/SpanData;->getLinks()Lio/opencensus/trace/export/SpanData$Links;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->childSpanCount:Ljava/lang/Integer;

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lio/opencensus/trace/export/SpanData;->getChildSpanCount()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lio/opencensus/trace/export/SpanData;->getChildSpanCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_3
    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->status:Lio/opencensus/trace/Status;

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lio/opencensus/trace/export/SpanData;->getStatus()Lio/opencensus/trace/Status;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lio/opencensus/trace/export/SpanData;->getStatus()Lio/opencensus/trace/Status;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/opencensus/trace/Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_4
    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->endTimestamp:Lio/opencensus/common/Timestamp;

    invoke-virtual {p1}, Lio/opencensus/trace/export/SpanData;->getEndTimestamp()Lio/opencensus/common/Timestamp;

    move-result-object p1

    if-nez v1, :cond_6

    if-nez p1, :cond_7

    goto :goto_5

    :cond_6
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_8
    return v2
.end method

.method public getAnnotations()Lio/opencensus/trace/export/SpanData$TimedEvents;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/opencensus/trace/export/SpanData$TimedEvents<",
            "Lio/opencensus/trace/Annotation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->annotations:Lio/opencensus/trace/export/SpanData$TimedEvents;

    return-object v0
.end method

.method public getAttributes()Lio/opencensus/trace/export/SpanData$Attributes;
    .locals 1

    iget-object v0, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->attributes:Lio/opencensus/trace/export/SpanData$Attributes;

    return-object v0
.end method

.method public getChildSpanCount()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->childSpanCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContext()Lio/opencensus/trace/SpanContext;
    .locals 1

    iget-object v0, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->context:Lio/opencensus/trace/SpanContext;

    return-object v0
.end method

.method public getEndTimestamp()Lio/opencensus/common/Timestamp;
    .locals 1

    iget-object v0, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->endTimestamp:Lio/opencensus/common/Timestamp;

    return-object v0
.end method

.method public getHasRemoteParent()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->hasRemoteParent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getKind()Lio/opencensus/trace/Span$Kind;
    .locals 1

    iget-object v0, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->kind:Lio/opencensus/trace/Span$Kind;

    return-object v0
.end method

.method public getLinks()Lio/opencensus/trace/export/SpanData$Links;
    .locals 1

    iget-object v0, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->links:Lio/opencensus/trace/export/SpanData$Links;

    return-object v0
.end method

.method public getMessageEvents()Lio/opencensus/trace/export/SpanData$TimedEvents;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/opencensus/trace/export/SpanData$TimedEvents<",
            "Lio/opencensus/trace/MessageEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->messageEvents:Lio/opencensus/trace/export/SpanData$TimedEvents;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentSpanId()Lio/opencensus/trace/SpanId;
    .locals 1

    iget-object v0, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->parentSpanId:Lio/opencensus/trace/SpanId;

    return-object v0
.end method

.method public getStartTimestamp()Lio/opencensus/common/Timestamp;
    .locals 1

    iget-object v0, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->startTimestamp:Lio/opencensus/common/Timestamp;

    return-object v0
.end method

.method public getStatus()Lio/opencensus/trace/Status;
    .locals 1

    iget-object v0, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->status:Lio/opencensus/trace/Status;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->context:Lio/opencensus/trace/SpanContext;

    invoke-virtual {v0}, Lio/opencensus/trace/SpanContext;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget-object v2, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->parentSpanId:Lio/opencensus/trace/SpanId;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/opencensus/trace/SpanId;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->hasRemoteParent:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->kind:Lio/opencensus/trace/Span$Kind;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->startTimestamp:Lio/opencensus/common/Timestamp;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->attributes:Lio/opencensus/trace/export/SpanData$Attributes;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->annotations:Lio/opencensus/trace/export/SpanData$TimedEvents;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->messageEvents:Lio/opencensus/trace/export/SpanData$TimedEvents;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->links:Lio/opencensus/trace/export/SpanData$Links;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->childSpanCount:Ljava/lang/Integer;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->status:Lio/opencensus/trace/Status;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lio/opencensus/trace/Status;->hashCode()I

    move-result v2

    :goto_4
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->endTimestamp:Lio/opencensus/common/Timestamp;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    xor-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpanData{context="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->context:Lio/opencensus/trace/SpanContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parentSpanId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->parentSpanId:Lio/opencensus/trace/SpanId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasRemoteParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->hasRemoteParent:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->kind:Lio/opencensus/trace/Span$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->startTimestamp:Lio/opencensus/common/Timestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->attributes:Lio/opencensus/trace/export/SpanData$Attributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", annotations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->annotations:Lio/opencensus/trace/export/SpanData$TimedEvents;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", messageEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->messageEvents:Lio/opencensus/trace/export/SpanData$TimedEvents;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", links="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->links:Lio/opencensus/trace/export/SpanData$Links;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", childSpanCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->childSpanCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->status:Lio/opencensus/trace/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/export/AutoValue_SpanData;->endTimestamp:Lio/opencensus/common/Timestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
