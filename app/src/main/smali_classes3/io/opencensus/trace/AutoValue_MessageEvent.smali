.class final Lio/opencensus/trace/AutoValue_MessageEvent;
.super Lio/opencensus/trace/MessageEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/AutoValue_MessageEvent$Builder;
    }
.end annotation


# instance fields
.field private final compressedMessageSize:J

.field private final messageId:J

.field private final type:Lio/opencensus/trace/MessageEvent$Type;

.field private final uncompressedMessageSize:J


# direct methods
.method private constructor <init>(Lio/opencensus/trace/MessageEvent$Type;JJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/MessageEvent;-><init>()V

    iput-object p1, p0, Lio/opencensus/trace/AutoValue_MessageEvent;->type:Lio/opencensus/trace/MessageEvent$Type;

    iput-wide p2, p0, Lio/opencensus/trace/AutoValue_MessageEvent;->messageId:J

    iput-wide p4, p0, Lio/opencensus/trace/AutoValue_MessageEvent;->uncompressedMessageSize:J

    iput-wide p6, p0, Lio/opencensus/trace/AutoValue_MessageEvent;->compressedMessageSize:J

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/trace/MessageEvent$Type;JJJLio/opencensus/trace/AutoValue_MessageEvent$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p7}, Lio/opencensus/trace/AutoValue_MessageEvent;-><init>(Lio/opencensus/trace/MessageEvent$Type;JJJ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/opencensus/trace/MessageEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lio/opencensus/trace/MessageEvent;

    iget-object v1, p0, Lio/opencensus/trace/AutoValue_MessageEvent;->type:Lio/opencensus/trace/MessageEvent$Type;

    invoke-virtual {p1}, Lio/opencensus/trace/MessageEvent;->getType()Lio/opencensus/trace/MessageEvent$Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lio/opencensus/trace/AutoValue_MessageEvent;->messageId:J

    invoke-virtual {p1}, Lio/opencensus/trace/MessageEvent;->getMessageId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lio/opencensus/trace/AutoValue_MessageEvent;->uncompressedMessageSize:J

    invoke-virtual {p1}, Lio/opencensus/trace/MessageEvent;->getUncompressedMessageSize()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lio/opencensus/trace/AutoValue_MessageEvent;->compressedMessageSize:J

    invoke-virtual {p1}, Lio/opencensus/trace/MessageEvent;->getCompressedMessageSize()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getCompressedMessageSize()J
    .locals 2

    iget-wide v0, p0, Lio/opencensus/trace/AutoValue_MessageEvent;->compressedMessageSize:J

    return-wide v0
.end method

.method public getMessageId()J
    .locals 2

    iget-wide v0, p0, Lio/opencensus/trace/AutoValue_MessageEvent;->messageId:J

    return-wide v0
.end method

.method public getType()Lio/opencensus/trace/MessageEvent$Type;
    .locals 1

    iget-object v0, p0, Lio/opencensus/trace/AutoValue_MessageEvent;->type:Lio/opencensus/trace/MessageEvent$Type;

    return-object v0
.end method

.method public getUncompressedMessageSize()J
    .locals 2

    iget-wide v0, p0, Lio/opencensus/trace/AutoValue_MessageEvent;->uncompressedMessageSize:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    iget-object v0, p0, Lio/opencensus/trace/AutoValue_MessageEvent;->type:Lio/opencensus/trace/MessageEvent$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    int-to-long v2, v0

    iget-wide v4, p0, Lio/opencensus/trace/AutoValue_MessageEvent;->messageId:J

    const/16 v0, 0x20

    ushr-long v6, v4, v0

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    mul-int v3, v3, v1

    int-to-long v2, v3

    iget-wide v4, p0, Lio/opencensus/trace/AutoValue_MessageEvent;->uncompressedMessageSize:J

    ushr-long v6, v4, v0

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    mul-int v3, v3, v1

    int-to-long v1, v3

    iget-wide v3, p0, Lio/opencensus/trace/AutoValue_MessageEvent;->compressedMessageSize:J

    ushr-long v5, v3, v0

    xor-long/2addr v3, v5

    xor-long v0, v1, v3

    long-to-int v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MessageEvent{type="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lio/opencensus/trace/AutoValue_MessageEvent;->type:Lio/opencensus/trace/MessageEvent$Type;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", messageId="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lio/opencensus/trace/AutoValue_MessageEvent;->messageId:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", uncompressedMessageSize="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lio/opencensus/trace/AutoValue_MessageEvent;->uncompressedMessageSize:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", compressedMessageSize="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Lio/opencensus/trace/AutoValue_MessageEvent;->compressedMessageSize:J

    .line 39
    .line 40
    const-string v3, "}"

    .line 41
    .line 42
    invoke-static {v0, v1, v2, v3}, LA/g;->l(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
