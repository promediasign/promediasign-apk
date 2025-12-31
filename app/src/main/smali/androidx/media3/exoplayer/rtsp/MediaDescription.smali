.class final Landroidx/media3/exoplayer/rtsp/MediaDescription;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;,
        Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;
    }
.end annotation


# instance fields
.field public final attributes:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final bitrate:I

.field public final connection:Ljava/lang/String;

.field public final key:Ljava/lang/String;

.field public final mediaTitle:Ljava/lang/String;

.field public final mediaType:Ljava/lang/String;

.field public final payloadType:I

.field public final port:I

.field public final rtpMapAttribute:Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;

.field public final transportProtocol:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;Lcom/google/common/collect/ImmutableMap;Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->access$100(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaType:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->access$200(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->port:I

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->access$300(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->transportProtocol:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->access$400(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->payloadType:I

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->access$500(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaTitle:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->access$600(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->connection:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->access$700(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->bitrate:I

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->access$800(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->key:Ljava/lang/String;

    iput-object p2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    iput-object p3, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->rtpMapAttribute:Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;Lcom/google/common/collect/ImmutableMap;Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;Landroidx/media3/exoplayer/rtsp/MediaDescription$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/rtsp/MediaDescription;-><init>(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;Lcom/google/common/collect/ImmutableMap;Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media3/exoplayer/rtsp/MediaDescription;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/rtsp/MediaDescription;

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaType:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->port:I

    iget v3, p1, Landroidx/media3/exoplayer/rtsp/MediaDescription;->port:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->transportProtocol:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/MediaDescription;->transportProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->payloadType:I

    iget v3, p1, Landroidx/media3/exoplayer/rtsp/MediaDescription;->payloadType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->bitrate:I

    iget v3, p1, Landroidx/media3/exoplayer/rtsp/MediaDescription;->bitrate:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/MediaDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->rtpMapAttribute:Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/MediaDescription;->rtpMapAttribute:Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaTitle:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaTitle:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->connection:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/MediaDescription;->connection:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->key:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/exoplayer/rtsp/MediaDescription;->key:Ljava/lang/String;

    invoke-static {v2, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getFmtpParametersAsMap()Lcom/google/common/collect/ImmutableMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    const-string v1, "fmtp"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, " "

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2, v0}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    aget-object v0, v1, v5

    const-string v1, ";\\s?"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v6, v0, v3

    const-string v7, "="

    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v7, v6, v4

    aget-object v6, v6, v5

    invoke-virtual {v1, v7, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaType:Ljava/lang/String;

    .line 2
    .line 3
    const/16 v1, 0xd9

    .line 4
    .line 5
    const/16 v2, 0x1f

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lorg/apache/ftpserver/main/a;->c(Ljava/lang/String;II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->port:I

    .line 12
    .line 13
    add-int/2addr v0, v1

    .line 14
    mul-int/lit8 v0, v0, 0x1f

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->transportProtocol:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v1, v0, v2}, Lorg/apache/ftpserver/main/a;->c(Ljava/lang/String;II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v1, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->payloadType:I

    .line 23
    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget v1, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->bitrate:I

    .line 28
    .line 29
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/2addr v1, v0

    .line 39
    mul-int/lit8 v1, v1, 0x1f

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->rtpMapAttribute:Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    add-int/2addr v0, v1

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    .line 49
    .line 50
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaTitle:Ljava/lang/String;

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    if-nez v1, :cond_0

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    :goto_0
    add-int/2addr v0, v1

    .line 62
    mul-int/lit8 v0, v0, 0x1f

    .line 63
    .line 64
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->connection:Ljava/lang/String;

    .line 65
    .line 66
    if-nez v1, :cond_1

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    :goto_1
    add-int/2addr v0, v1

    .line 75
    mul-int/lit8 v0, v0, 0x1f

    .line 76
    .line 77
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->key:Ljava/lang/String;

    .line 78
    .line 79
    if-nez v1, :cond_2

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    :goto_2
    add-int/2addr v0, v3

    .line 87
    return v0
.end method
