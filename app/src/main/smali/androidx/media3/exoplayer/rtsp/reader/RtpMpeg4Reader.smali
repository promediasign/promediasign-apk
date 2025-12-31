.class final Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader;


# instance fields
.field private bufferFlags:I

.field private firstReceivedTimestamp:J

.field private final payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

.field private previousSequenceNumber:I

.field private sampleLength:I

.field private startTimeOffsetUs:J

.field private trackOutput:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->firstReceivedTimestamp:J

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->previousSequenceNumber:I

    return-void
.end method

.method private static getBufferFlagsFromVop(Landroidx/media3/common/util/ParsableByteArray;)I
    .locals 5

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    new-array v4, v3, [B

    fill-array-data v4, :array_0

    invoke-static {v0, v4}, Lcom/google/common/primitives/Bytes;->indexOf([B[B)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    move-result p0

    shr-int/lit8 p0, p0, 0x6

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        -0x4at
    .end array-data
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;JIZ)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p4

    const/4 v2, 0x0

    iget-object v3, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->previousSequenceNumber:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-static {v3}, Landroidx/media3/exoplayer/rtsp/RtpPacket;->getNextSequenceNumber(I)I

    move-result v3

    if-eq v1, v3, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const-string v3, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet."

    invoke-static {v3, v5}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "RtpMpeg4Reader"

    invoke-static {v4, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    iget-object v4, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    move-object/from16 v5, p1

    invoke-interface {v4, v5, v3}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    iget v4, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->sampleLength:I

    if-nez v4, :cond_1

    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->getBufferFlagsFromVop(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v4

    iput v4, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->bufferFlags:I

    :cond_1
    iget v4, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->sampleLength:I

    add-int/2addr v4, v3

    iput v4, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->sampleLength:I

    if-eqz p5, :cond_3

    iget-wide v3, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->firstReceivedTimestamp:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    move-wide/from16 v3, p2

    if-nez v7, :cond_2

    iput-wide v3, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->firstReceivedTimestamp:J

    :cond_2
    iget-wide v8, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->startTimeOffsetUs:J

    iget-wide v12, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->firstReceivedTimestamp:J

    const v14, 0x15f90

    move-wide/from16 v10, p2

    invoke-static/range {v8 .. v14}, Landroidx/media3/exoplayer/rtsp/reader/RtpReaderUtils;->toSampleTimeUs(JJJI)J

    move-result-wide v16

    iget-object v15, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget v3, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->bufferFlags:I

    iget v4, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->sampleLength:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-interface/range {v15 .. v21}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iput v2, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->sampleLength:I

    :cond_3
    iput v1, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->previousSequenceNumber:I

    return-void
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {p1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/extractor/TrackOutput;

    iget-object p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    iget-object p2, p2, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    invoke-interface {p1, p2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    return-void
.end method

.method public onReceivingFirstPacket(JI)V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->firstReceivedTimestamp:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->startTimeOffsetUs:J

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;->sampleLength:I

    return-void
.end method
