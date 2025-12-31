.class final Lio/opencensus/trace/AutoValue_NetworkEvent$Builder;
.super Lio/opencensus/trace/NetworkEvent$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/AutoValue_NetworkEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private compressedMessageSize:Ljava/lang/Long;

.field private kernelTimestamp:Lio/opencensus/common/Timestamp;

.field private messageId:Ljava/lang/Long;

.field private type:Lio/opencensus/trace/NetworkEvent$Type;

.field private uncompressedMessageSize:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/opencensus/trace/NetworkEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/opencensus/trace/NetworkEvent;
    .locals 12

    .line 1
    iget-object v0, p0, Lio/opencensus/trace/AutoValue_NetworkEvent$Builder;->type:Lio/opencensus/trace/NetworkEvent$Type;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, " type"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, ""

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Lio/opencensus/trace/AutoValue_NetworkEvent$Builder;->messageId:Ljava/lang/Long;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const-string v1, " messageId"

    .line 15
    .line 16
    invoke-static {v0, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    iget-object v1, p0, Lio/opencensus/trace/AutoValue_NetworkEvent$Builder;->uncompressedMessageSize:Ljava/lang/Long;

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    const-string v1, " uncompressedMessageSize"

    .line 25
    .line 26
    invoke-static {v0, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_2
    iget-object v1, p0, Lio/opencensus/trace/AutoValue_NetworkEvent$Builder;->compressedMessageSize:Ljava/lang/Long;

    .line 31
    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    const-string v1, " compressedMessageSize"

    .line 35
    .line 36
    invoke-static {v0, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    new-instance v0, Lio/opencensus/trace/AutoValue_NetworkEvent;

    .line 47
    .line 48
    iget-object v3, p0, Lio/opencensus/trace/AutoValue_NetworkEvent$Builder;->kernelTimestamp:Lio/opencensus/common/Timestamp;

    .line 49
    .line 50
    iget-object v4, p0, Lio/opencensus/trace/AutoValue_NetworkEvent$Builder;->type:Lio/opencensus/trace/NetworkEvent$Type;

    .line 51
    .line 52
    iget-object v1, p0, Lio/opencensus/trace/AutoValue_NetworkEvent$Builder;->messageId:Ljava/lang/Long;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    iget-object v1, p0, Lio/opencensus/trace/AutoValue_NetworkEvent$Builder;->uncompressedMessageSize:Ljava/lang/Long;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 61
    .line 62
    .line 63
    move-result-wide v7

    .line 64
    iget-object v1, p0, Lio/opencensus/trace/AutoValue_NetworkEvent$Builder;->compressedMessageSize:Ljava/lang/Long;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 67
    .line 68
    .line 69
    move-result-wide v9

    .line 70
    const/4 v11, 0x0

    .line 71
    move-object v2, v0

    .line 72
    invoke-direct/range {v2 .. v11}, Lio/opencensus/trace/AutoValue_NetworkEvent;-><init>(Lio/opencensus/common/Timestamp;Lio/opencensus/trace/NetworkEvent$Type;JJJLio/opencensus/trace/AutoValue_NetworkEvent$1;)V

    .line 73
    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    const-string v2, "Missing required properties:"

    .line 79
    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v1
.end method

.method public setCompressedMessageSize(J)Lio/opencensus/trace/NetworkEvent$Builder;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/trace/AutoValue_NetworkEvent$Builder;->compressedMessageSize:Ljava/lang/Long;

    return-object p0
.end method

.method public setKernelTimestamp(Lio/opencensus/common/Timestamp;)Lio/opencensus/trace/NetworkEvent$Builder;
    .locals 0

    iput-object p1, p0, Lio/opencensus/trace/AutoValue_NetworkEvent$Builder;->kernelTimestamp:Lio/opencensus/common/Timestamp;

    return-object p0
.end method

.method public setMessageId(J)Lio/opencensus/trace/NetworkEvent$Builder;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/trace/AutoValue_NetworkEvent$Builder;->messageId:Ljava/lang/Long;

    return-object p0
.end method

.method public setType(Lio/opencensus/trace/NetworkEvent$Type;)Lio/opencensus/trace/NetworkEvent$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/opencensus/trace/AutoValue_NetworkEvent$Builder;->type:Lio/opencensus/trace/NetworkEvent$Type;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null type"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUncompressedMessageSize(J)Lio/opencensus/trace/NetworkEvent$Builder;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/trace/AutoValue_NetworkEvent$Builder;->uncompressedMessageSize:Ljava/lang/Long;

    return-object p0
.end method
