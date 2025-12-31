.class final Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/rtsp/RtspHeaders;Landroidx/media3/exoplayer/rtsp/MediaDescription;Landroid/net/Uri;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Landroidx/media3/exoplayer/rtsp/MediaDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    const-string v1, "control"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "missing attribute control"

    invoke-static {v0, v2}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p2}, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->generatePayloadFormat(Landroidx/media3/exoplayer/rtsp/MediaDescription;)Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    iget-object p2, p2, Landroidx/media3/exoplayer/rtsp/MediaDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p2, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p3, p2}, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->extractTrackUri(Landroidx/media3/exoplayer/rtsp/RtspHeaders;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->uri:Landroid/net/Uri;

    return-void
.end method

.method private static extractTrackUri(Landroidx/media3/exoplayer/rtsp/RtspHeaders;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "Content-Base"

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/rtsp/RtspHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/rtsp/RtspHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string v0, "Content-Location"

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/rtsp/RtspHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    const-string p0, "*"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static generatePayloadFormat(Landroidx/media3/exoplayer/rtsp/MediaDescription;)Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;
    .locals 13

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget v1, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->bitrate:I

    if-lez v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->rtpMapAttribute:Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;

    iget v4, v1, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->payloadType:I

    iget-object v7, v1, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->mediaEncoding:Ljava/lang/String;

    invoke-static {v7}, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->getMimeTypeFromRtpMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->rtpMapAttribute:Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;

    iget v5, v2, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->clockRate:I

    const-string v2, "audio"

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->rtpMapAttribute:Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;

    iget v2, v2, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->encodingParameters:I

    invoke-static {v2, v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->inferChannelCount(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/rtsp/MediaDescription;->getFmtpParametersAsMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p0, "audio/g711-mlaw"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0xd

    goto/16 :goto_2

    :sswitch_1
    const-string p0, "audio/g711-alaw"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0xc

    goto/16 :goto_2

    :sswitch_2
    const-string p0, "video/x-vnd.on2.vp9"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x9

    goto/16 :goto_2

    :sswitch_3
    const-string p0, "video/x-vnd.on2.vp8"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x8

    goto/16 :goto_2

    :sswitch_4
    const-string p0, "audio/opus"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    goto :goto_2

    :sswitch_5
    const-string p0, "audio/3gpp"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :sswitch_6
    const-string p0, "video/avc"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x6

    goto :goto_2

    :sswitch_7
    const-string p0, "video/mp4v-es"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    goto :goto_2

    :sswitch_8
    const-string p0, "audio/raw"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0xa

    goto :goto_2

    :sswitch_9
    const-string p0, "audio/ac3"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0xb

    goto :goto_2

    :sswitch_a
    const-string p0, "audio/mp4a-latm"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    :sswitch_b
    const-string p0, "audio/amr-wb"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    goto :goto_2

    :sswitch_c
    const-string p0, "video/hevc"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x7

    goto :goto_2

    :sswitch_d
    const-string p0, "video/3gpp"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x5

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, -0x1

    :goto_2
    const/16 v1, 0xf0

    const/16 v11, 0x140

    const-string v12, "missing attribute fmtp"

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    invoke-static {v7}, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->getRawPcmEncodingType(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    goto/16 :goto_b

    :pswitch_1
    invoke-virtual {v0, v11}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    :goto_3
    invoke-virtual {p0, v1}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    goto/16 :goto_b

    :pswitch_2
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v10

    invoke-static {p0, v12}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {v0, v6}, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->processH265FmtpAttribute(Landroidx/media3/common/Format$Builder;Lcom/google/common/collect/ImmutableMap;)V

    goto/16 :goto_b

    :pswitch_3
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v10

    invoke-static {p0, v12}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {v0, v6}, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->processH264FmtpAttribute(Landroidx/media3/common/Format$Builder;Lcom/google/common/collect/ImmutableMap;)V

    goto/16 :goto_b

    :pswitch_4
    const/16 p0, 0x160

    invoke-virtual {v0, p0}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    const/16 v1, 0x120

    goto :goto_3

    :pswitch_5
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v10

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    invoke-static {v0, v6}, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->processMPEG4FmtpAttribute(Landroidx/media3/common/Format$Builder;Lcom/google/common/collect/ImmutableMap;)V

    goto/16 :goto_b

    :pswitch_6
    if-eq v2, v3, :cond_3

    const/4 p0, 0x1

    goto :goto_4

    :cond_3
    const/4 p0, 0x0

    :goto_4
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    const p0, 0xbb80

    if-ne v5, p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    const-string v1, "Invalid OPUS clock rate."

    :goto_6
    invoke-static {p0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_7
    if-ne v2, v10, :cond_5

    const/4 p0, 0x1

    goto :goto_7

    :cond_5
    const/4 p0, 0x0

    :goto_7
    const-string v1, "Multi channel AMR is not currently supported."

    invoke-static {p0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v10

    const-string v1, "fmtp parameters must include octet-align."

    invoke-static {p0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    const-string p0, "octet-align"

    invoke-virtual {v6, p0}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    const-string v1, "Only octet aligned mode is currently supported."

    invoke-static {p0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    const-string p0, "interleaving"

    invoke-virtual {v6, p0}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v10

    const-string v1, "Interleaving mode is not currently supported."

    goto :goto_6

    :pswitch_8
    if-eq v2, v3, :cond_6

    const/4 p0, 0x1

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    :goto_8
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v10

    invoke-static {p0, v12}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    const-string p0, "MP4A-LATM"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "cpresent"

    invoke-virtual {v6, p0}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v6, p0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    :goto_9
    const-string v1, "Only supports cpresent=0 in AAC audio."

    invoke-static {p0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    const-string p0, "config"

    invoke-virtual {v6, p0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "AAC audio stream must include config fmtp parameter"

    invoke-static {p0, v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/2addr v1, v8

    if-nez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_a

    :cond_8
    const/4 v1, 0x0

    :goto_a
    const-string v3, "Malformat MPEG4 config: "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->parseAacStreamMuxConfig(Ljava/lang/String;)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object p0

    iget v1, p0, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v3, p0, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget-object p0, p0, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    :cond_9
    invoke-static {v0, v6, v7, v2, v5}, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->processAacFmtpAttribute(Landroidx/media3/common/Format$Builder;Lcom/google/common/collect/ImmutableMap;Ljava/lang/String;II)V

    :goto_b
    if-lez v5, :cond_a

    const/4 v9, 0x1

    :cond_a
    invoke-static {v9}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    new-instance p0, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v3

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;-><init>(Landroidx/media3/common/Format;IILjava/util/Map;Ljava/lang/String;)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_d
        -0x63185e82 -> :sswitch_c
        -0x5fc6f775 -> :sswitch_b
        -0x3313c2e -> :sswitch_a
        0xb269698 -> :sswitch_9
        0xb26d66f -> :sswitch_8
        0x46cdc642 -> :sswitch_7
        0x4f62373a -> :sswitch_6
        0x59976a2d -> :sswitch_5
        0x59b2d2d8 -> :sswitch_4
        0x5f50bed8 -> :sswitch_3
        0x5f50bed9 -> :sswitch_2
        0x71710385 -> :sswitch_1
        0x717677f9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getInitializationDataFromParameterSet(Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    array-length v1, p0

    sget-object v2, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    array-length v3, v2

    add-int/2addr v1, v3

    new-array v1, v1, [B

    array-length v3, v2

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    array-length v3, p0

    invoke-static {p0, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private static inferChannelCount(ILjava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    const-string p0, "audio/ac3"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static parseAacStreamMuxConfig(Ljava/lang/String;)Landroidx/media3/extractor/AacUtil$Config;
    .locals 4

    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-static {p0}, Landroidx/media3/common/util/Util;->getBytesFromHexString(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "Only supports audio mux version 0."

    invoke-static {v1, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-ne v1, p0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v3, "Only supports allStreamsSameTimeFraming."

    invoke-static {v1, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    const-string v3, "Only supports one program."

    invoke-static {v1, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    const-string v1, "Only supports one numLayer."

    invoke-static {p0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    :try_start_0
    invoke-static {v0, v2}, Landroidx/media3/extractor/AacUtil;->parseAudioSpecificConfig(Landroidx/media3/common/util/ParsableBitArray;Z)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object p0
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static processAacFmtpAttribute(Landroidx/media3/common/Format$Builder;Lcom/google/common/collect/ImmutableMap;Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Format$Builder;",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    const-string v0, "profile-level-id"

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string v0, "MP4A-LATM"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "30"

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const-string v0, "missing profile-level-id param"

    invoke-static {p2, v0}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mp4a.40."

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    invoke-static {p4, p3}, Landroidx/media3/extractor/AacUtil;->buildAacLcAudioSpecificConfig(II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    return-void
.end method

.method private static processH264FmtpAttribute(Landroidx/media3/common/Format$Builder;Lcom/google/common/collect/ImmutableMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Format$Builder;",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sprop-parameter-sets"

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "missing sprop parameter"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "empty sprop value"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    aget-object v1, v0, v4

    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->getInitializationDataFromParameterSet(Ljava/lang/String;)[B

    move-result-object v1

    aget-object v0, v0, v3

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->getInitializationDataFromParameterSet(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sget-object v1, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    array-length v1, v1

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroidx/media3/container/NalUnitUtil;->parseSpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$SpsData;

    move-result-object v0

    iget v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->pixelWidthHeightRatio:F

    invoke-virtual {p0, v1}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    iget v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->height:I

    invoke-virtual {p0, v1}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    iget v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->width:I

    invoke-virtual {p0, v1}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    new-instance v1, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v1}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    iget v2, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->colorSpace:I

    invoke-virtual {v1, v2}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    iget v2, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->colorRange:I

    invoke-virtual {v1, v2}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    iget v2, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->colorTransfer:I

    invoke-virtual {v1, v2}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    iget v2, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->bitDepthLumaMinus8:I

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    iget v2, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->bitDepthChromaMinus8:I

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    const-string v1, "profile-level-id"

    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "avc1."

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    goto :goto_2

    :cond_1
    iget p1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->profileIdc:I

    iget v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    iget v0, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->levelIdc:I

    invoke-static {p1, v1, v0}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildAvcCodecString(III)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
    return-void
.end method

.method private static processH265FmtpAttribute(Landroidx/media3/common/Format$Builder;Lcom/google/common/collect/ImmutableMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Format$Builder;",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sprop-max-don-diff"

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "non-zero sprop-max-don-diff "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not supported"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    :cond_1
    const-string v0, "sprop-vps"

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "missing sprop-vps parameter"

    invoke-static {v1, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "sprop-sps"

    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "missing sprop-sps parameter"

    invoke-static {v3, v4}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "sprop-pps"

    invoke-virtual {p1, v3}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "missing sprop-pps parameter"

    invoke-static {v4, v5}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p1, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->getInitializationDataFromParameterSet(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->getInitializationDataFromParameterSet(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->getInitializationDataFromParameterSet(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    sget-object v0, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    array-length v0, v0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroidx/media3/container/NalUnitUtil;->parseH265SpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$H265SpsData;

    move-result-object p1

    iget v0, p1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    invoke-virtual {p0, v0}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    iget v0, p1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->height:I

    invoke-virtual {p0, v0}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->width:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    new-instance v0, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v0}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    iget v1, p1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorSpace:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorRange:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorTransfer:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthLumaMinus8:I

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthChromaMinus8:I

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    iget v1, p1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalProfileSpace:I

    iget-boolean v2, p1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalTierFlag:Z

    iget v3, p1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalProfileIdc:I

    iget v4, p1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalProfileCompatibilityFlags:I

    iget-object v5, p1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->constraintBytes:[I

    iget v6, p1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalLevelIdc:I

    invoke-static/range {v1 .. v6}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    return-void
.end method

.method private static processMPEG4FmtpAttribute(Landroidx/media3/common/Format$Builder;Lcom/google/common/collect/ImmutableMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Format$Builder;",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "config"

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->getBytesFromHexString(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    invoke-static {v0}, Landroidx/media3/common/util/CodecSpecificDataUtil;->getVideoResolutionFromMpeg4VideoConfig([B)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    goto :goto_0

    :cond_0
    const/16 v0, 0x160

    invoke-virtual {p0, v0}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const/16 v1, 0x120

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    :goto_0
    const-string v0, "profile-level-id"

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, "1"

    :cond_1
    const-string v0, "mp4v."

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

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

    const-class v3, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->uri:Landroid/net/Uri;

    iget-object p1, p1, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->uri:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
