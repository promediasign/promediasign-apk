.class final Lio/opencensus/trace/AutoValue_MessageEvent$Builder;
.super Lio/opencensus/trace/MessageEvent$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/AutoValue_MessageEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private compressedMessageSize:Ljava/lang/Long;

.field private messageId:Ljava/lang/Long;

.field private type:Lio/opencensus/trace/MessageEvent$Type;

.field private uncompressedMessageSize:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/opencensus/trace/MessageEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/opencensus/trace/MessageEvent;
    .locals 11

    .line 1
    iget-object v0, p0, Lio/opencensus/trace/AutoValue_MessageEvent$Builder;->type:Lio/opencensus/trace/MessageEvent$Type;

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
    iget-object v1, p0, Lio/opencensus/trace/AutoValue_MessageEvent$Builder;->messageId:Ljava/lang/Long;

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
    iget-object v1, p0, Lio/opencensus/trace/AutoValue_MessageEvent$Builder;->uncompressedMessageSize:Ljava/lang/Long;

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
    iget-object v1, p0, Lio/opencensus/trace/AutoValue_MessageEvent$Builder;->compressedMessageSize:Ljava/lang/Long;

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
    new-instance v0, Lio/opencensus/trace/AutoValue_MessageEvent;

    .line 47
    .line 48
    iget-object v3, p0, Lio/opencensus/trace/AutoValue_MessageEvent$Builder;->type:Lio/opencensus/trace/MessageEvent$Type;

    .line 49
    .line 50
    iget-object v1, p0, Lio/opencensus/trace/AutoValue_MessageEvent$Builder;->messageId:Ljava/lang/Long;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    iget-object v1, p0, Lio/opencensus/trace/AutoValue_MessageEvent$Builder;->uncompressedMessageSize:Ljava/lang/Long;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 59
    .line 60
    .line 61
    move-result-wide v6

    .line 62
    iget-object v1, p0, Lio/opencensus/trace/AutoValue_MessageEvent$Builder;->compressedMessageSize:Ljava/lang/Long;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 65
    .line 66
    .line 67
    move-result-wide v8

    .line 68
    const/4 v10, 0x0

    .line 69
    move-object v2, v0

    .line 70
    invoke-direct/range {v2 .. v10}, Lio/opencensus/trace/AutoValue_MessageEvent;-><init>(Lio/opencensus/trace/MessageEvent$Type;JJJLio/opencensus/trace/AutoValue_MessageEvent$1;)V

    .line 71
    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    const-string v2, "Missing required properties:"

    .line 77
    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v1
.end method

.method public setCompressedMessageSize(J)Lio/opencensus/trace/MessageEvent$Builder;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/trace/AutoValue_MessageEvent$Builder;->compressedMessageSize:Ljava/lang/Long;

    return-object p0
.end method

.method public setMessageId(J)Lio/opencensus/trace/MessageEvent$Builder;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/trace/AutoValue_MessageEvent$Builder;->messageId:Ljava/lang/Long;

    return-object p0
.end method

.method public setType(Lio/opencensus/trace/MessageEvent$Type;)Lio/opencensus/trace/MessageEvent$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/opencensus/trace/AutoValue_MessageEvent$Builder;->type:Lio/opencensus/trace/MessageEvent$Type;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null type"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUncompressedMessageSize(J)Lio/opencensus/trace/MessageEvent$Builder;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/trace/AutoValue_MessageEvent$Builder;->uncompressedMessageSize:Ljava/lang/Long;

    return-object p0
.end method
