.class public final Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/rtsp/MediaDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final attributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bitrate:I

.field private connection:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private mediaTitle:Ljava/lang/String;

.field private final mediaType:Ljava/lang/String;

.field private final payloadType:I

.field private final port:I

.field private final transportProtocol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->mediaType:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->port:I

    iput-object p3, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->transportProtocol:Ljava/lang/String;

    iput p4, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->payloadType:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->attributes:Ljava/util/HashMap;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->bitrate:I

    return-void
.end method

.method public static synthetic access$100(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->mediaType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->port:I

    return p0
.end method

.method public static synthetic access$300(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->transportProtocol:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->payloadType:I

    return p0
.end method

.method public static synthetic access$500(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->mediaTitle:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->connection:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$700(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->bitrate:I

    return p0
.end method

.method public static synthetic access$800(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->key:Ljava/lang/String;

    return-object p0
.end method

.method private static constructAudioRtpMap(ILjava/lang/String;II)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const-string p0, "%d %s/%d/%d"

    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getRtpMapStringByPayloadType(I)Ljava/lang/String;
    .locals 4

    .line 1
    const/16 v0, 0x60

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge p0, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 11
    .line 12
    .line 13
    const/16 v0, 0x1f40

    .line 14
    .line 15
    if-eqz p0, :cond_4

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    if-eq p0, v1, :cond_3

    .line 20
    .line 21
    const v0, 0xac44

    .line 22
    .line 23
    .line 24
    const-string v1, "L16"

    .line 25
    .line 26
    const/16 v3, 0xa

    .line 27
    .line 28
    if-eq p0, v3, :cond_2

    .line 29
    .line 30
    const/16 v3, 0xb

    .line 31
    .line 32
    if-ne p0, v3, :cond_1

    .line 33
    .line 34
    invoke-static {v3, v1, v0, v2}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->constructAudioRtpMap(ILjava/lang/String;II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v1, "Unsupported static paylod type "

    .line 42
    .line 43
    invoke-static {p0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_2
    const/4 p0, 0x2

    .line 52
    invoke-static {v3, v1, v0, p0}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->constructAudioRtpMap(ILjava/lang/String;II)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_3
    const-string p0, "PCMA"

    .line 58
    .line 59
    invoke-static {v1, p0, v0, v2}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->constructAudioRtpMap(ILjava/lang/String;II)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_4
    const-string p0, "PCMU"

    .line 65
    .line 66
    invoke-static {v1, p0, v0, v2}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->constructAudioRtpMap(ILjava/lang/String;II)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->attributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Landroidx/media3/exoplayer/rtsp/MediaDescription;
    .locals 4

    const-string v0, "rtpmap"

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->attributes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->attributes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->parse(Ljava/lang/String;)Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->payloadType:I

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->getRtpMapStringByPayloadType(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    new-instance v1, Landroidx/media3/exoplayer/rtsp/MediaDescription;

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->attributes:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v0, v3}, Landroidx/media3/exoplayer/rtsp/MediaDescription;-><init>(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;Lcom/google/common/collect/ImmutableMap;Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;Landroidx/media3/exoplayer/rtsp/MediaDescription$1;)V
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setBitrate(I)Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->bitrate:I

    return-object p0
.end method

.method public setConnection(Ljava/lang/String;)Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->connection:Ljava/lang/String;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->key:Ljava/lang/String;

    return-object p0
.end method

.method public setMediaTitle(Ljava/lang/String;)Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->mediaTitle:Ljava/lang/String;

    return-object p0
.end method
