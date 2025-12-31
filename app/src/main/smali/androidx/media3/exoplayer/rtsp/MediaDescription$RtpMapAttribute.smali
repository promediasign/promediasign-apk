.class public final Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/rtsp/MediaDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RtpMapAttribute"
.end annotation


# instance fields
.field public final clockRate:I

.field public final encodingParameters:I

.field public final mediaEncoding:Ljava/lang/String;

.field public final payloadType:I


# direct methods
.method private constructor <init>(ILjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->payloadType:I

    iput-object p2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->mediaEncoding:Ljava/lang/String;

    iput p3, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->clockRate:I

    iput p4, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->encodingParameters:I

    return-void
.end method

.method public static parse(Ljava/lang/String;)Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;
    .locals 6

    const-string v0, " "

    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    aget-object v0, p0, v1

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMessageUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v4, "/"

    invoke-static {p0, v4}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v4, p0

    if-lt v4, v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    aget-object v2, p0, v2

    invoke-static {v2}, Landroidx/media3/exoplayer/rtsp/RtspMessageUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    array-length v4, p0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    aget-object v3, p0, v3

    invoke-static {v3}, Landroidx/media3/exoplayer/rtsp/RtspMessageUtil;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    :goto_2
    new-instance v4, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;

    aget-object p0, p0, v1

    invoke-direct {v4, v0, p0, v2, v3}, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;-><init>(ILjava/lang/String;II)V

    return-object v4
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

    const-class v3, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;

    iget v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->payloadType:I

    iget v3, p1, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->payloadType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->mediaEncoding:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->mediaEncoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->clockRate:I

    iget v3, p1, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->clockRate:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->encodingParameters:I

    iget p1, p1, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->encodingParameters:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/16 v0, 0xd9

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->payloadType:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    const/16 v1, 0x1f

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->mediaEncoding:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Lorg/apache/ftpserver/main/a;->c(Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->clockRate:I

    .line 17
    .line 18
    add-int/2addr v0, v2

    .line 19
    mul-int/lit8 v0, v0, 0x1f

    .line 20
    .line 21
    iget v1, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->encodingParameters:I

    .line 22
    .line 23
    add-int/2addr v0, v1

    .line 24
    return v0
.end method
