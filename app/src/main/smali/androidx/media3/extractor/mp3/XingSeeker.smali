.class final Landroidx/media3/extractor/mp3/XingSeeker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/mp3/Seeker;


# instance fields
.field private final bitrate:I

.field private final dataEndPosition:J

.field private final dataSize:J

.field private final dataStartPosition:J

.field private final durationUs:J

.field private final tableOfContents:[J

.field private final xingFrameSize:I


# direct methods
.method private constructor <init>(JIJI)V
    .locals 10

    .line 1
    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Landroidx/media3/extractor/mp3/XingSeeker;-><init>(JIJIJ[J)V

    return-void
.end method

.method private constructor <init>(JIJIJ[J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/extractor/mp3/XingSeeker;->dataStartPosition:J

    iput p3, p0, Landroidx/media3/extractor/mp3/XingSeeker;->xingFrameSize:I

    iput-wide p4, p0, Landroidx/media3/extractor/mp3/XingSeeker;->durationUs:J

    iput p6, p0, Landroidx/media3/extractor/mp3/XingSeeker;->bitrate:I

    iput-wide p7, p0, Landroidx/media3/extractor/mp3/XingSeeker;->dataSize:J

    iput-object p9, p0, Landroidx/media3/extractor/mp3/XingSeeker;->tableOfContents:[J

    const-wide/16 p3, -0x1

    cmp-long p5, p7, p3

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    add-long p3, p1, p7

    :goto_0
    iput-wide p3, p0, Landroidx/media3/extractor/mp3/XingSeeker;->dataEndPosition:J

    return-void
.end method

.method public static create(JLandroidx/media3/extractor/mp3/XingFrame;J)Landroidx/media3/extractor/mp3/XingSeeker;
    .locals 13

    .line 1
    move-wide v0, p0

    .line 2
    move-object v2, p2

    .line 3
    iget-wide v3, v2, Landroidx/media3/extractor/mp3/XingFrame;->frameCount:J

    .line 4
    .line 5
    const-wide/16 v5, -0x1

    .line 6
    .line 7
    cmp-long v7, v3, v5

    .line 8
    .line 9
    if-nez v7, :cond_0

    .line 10
    .line 11
    const-wide/16 v7, 0x0

    .line 12
    .line 13
    cmp-long v9, v3, v7

    .line 14
    .line 15
    if-nez v9, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    :cond_0
    iget-object v7, v2, Landroidx/media3/extractor/mp3/XingFrame;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 20
    .line 21
    iget v8, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    .line 22
    .line 23
    int-to-long v8, v8

    .line 24
    mul-long v3, v3, v8

    .line 25
    .line 26
    const-wide/16 v8, 0x1

    .line 27
    .line 28
    sub-long/2addr v3, v8

    .line 29
    iget v7, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    .line 30
    .line 31
    invoke-static {v3, v4, v7}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    .line 32
    .line 33
    .line 34
    move-result-wide v7

    .line 35
    iget-wide v3, v2, Landroidx/media3/extractor/mp3/XingFrame;->dataSize:J

    .line 36
    .line 37
    cmp-long v9, v3, v5

    .line 38
    .line 39
    if-eqz v9, :cond_3

    .line 40
    .line 41
    iget-object v9, v2, Landroidx/media3/extractor/mp3/XingFrame;->tableOfContents:[J

    .line 42
    .line 43
    if-nez v9, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    cmp-long v9, v0, v5

    .line 47
    .line 48
    if-eqz v9, :cond_2

    .line 49
    .line 50
    add-long v3, p3, v3

    .line 51
    .line 52
    cmp-long v5, v0, v3

    .line 53
    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    const-string v3, "XING data size mismatch: "

    .line 57
    .line 58
    const-string v4, ", "

    .line 59
    .line 60
    invoke-static {v3, p0, p1, v4}, Ls/a;->e(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-wide v3, v2, Landroidx/media3/extractor/mp3/XingFrame;->dataSize:J

    .line 65
    .line 66
    add-long v3, p3, v3

    .line 67
    .line 68
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v1, "XingSeeker"

    .line 76
    .line 77
    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    new-instance v10, Landroidx/media3/extractor/mp3/XingSeeker;

    .line 81
    .line 82
    iget-object v0, v2, Landroidx/media3/extractor/mp3/XingFrame;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 83
    .line 84
    iget v3, v0, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    .line 85
    .line 86
    iget v6, v0, Landroidx/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    .line 87
    .line 88
    iget-wide v11, v2, Landroidx/media3/extractor/mp3/XingFrame;->dataSize:J

    .line 89
    .line 90
    iget-object v9, v2, Landroidx/media3/extractor/mp3/XingFrame;->tableOfContents:[J

    .line 91
    .line 92
    move-object v0, v10

    .line 93
    move-wide/from16 v1, p3

    .line 94
    .line 95
    move-wide v4, v7

    .line 96
    move-wide v7, v11

    .line 97
    invoke-direct/range {v0 .. v9}, Landroidx/media3/extractor/mp3/XingSeeker;-><init>(JIJIJ[J)V

    .line 98
    .line 99
    .line 100
    return-object v10

    .line 101
    :cond_3
    :goto_0
    new-instance v9, Landroidx/media3/extractor/mp3/XingSeeker;

    .line 102
    .line 103
    iget-object v0, v2, Landroidx/media3/extractor/mp3/XingFrame;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 104
    .line 105
    iget v3, v0, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    .line 106
    .line 107
    iget v6, v0, Landroidx/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    .line 108
    .line 109
    move-object v0, v9

    .line 110
    move-wide/from16 v1, p3

    .line 111
    .line 112
    move-wide v4, v7

    .line 113
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp3/XingSeeker;-><init>(JIJI)V

    .line 114
    .line 115
    .line 116
    return-object v9
.end method

.method private getTimeUsForTableIndex(I)J
    .locals 4

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->durationUs:J

    int-to-long v2, p1

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getAverageBitrate()I
    .locals 1

    iget v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->bitrate:I

    return v0
.end method

.method public getDataEndPosition()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 12

    invoke-virtual {p0}, Landroidx/media3/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    new-instance p2, Landroidx/media3/extractor/SeekPoint;

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->dataStartPosition:J

    iget v2, p0, Landroidx/media3/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-direct {p2, v2, v3, v0, v1}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {p1, p2}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object p1

    :cond_0
    const-wide/16 v6, 0x0

    iget-wide v8, p0, Landroidx/media3/extractor/mp3/XingSeeker;->durationUs:J

    move-wide v4, p1

    invoke-static/range {v4 .. v9}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    long-to-double v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    iget-wide v4, p0, Landroidx/media3/extractor/mp3/XingSeeker;->durationUs:J

    long-to-double v4, v4

    div-double/2addr v0, v4

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    cmpg-double v8, v0, v4

    if-gtz v8, :cond_1

    goto :goto_1

    :cond_1
    cmpl-double v4, v0, v2

    if-ltz v4, :cond_2

    move-wide v4, v6

    goto :goto_1

    :cond_2
    double-to-int v2, v0

    iget-object v3, p0, Landroidx/media3/extractor/mp3/XingSeeker;->tableOfContents:[J

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    aget-wide v4, v3, v2

    long-to-double v4, v4

    const/16 v8, 0x63

    if-ne v2, v8, :cond_3

    move-wide v8, v6

    goto :goto_0

    :cond_3
    add-int/lit8 v8, v2, 0x1

    aget-wide v8, v3, v8

    long-to-double v8, v8

    :goto_0
    int-to-double v2, v2

    sub-double/2addr v0, v2

    sub-double/2addr v8, v4

    mul-double v8, v8, v0

    add-double/2addr v4, v8

    :goto_1
    div-double/2addr v4, v6

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->dataSize:J

    long-to-double v0, v0

    mul-double v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    iget v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v8, v0

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->dataSize:J

    const-wide/16 v2, 0x1

    sub-long v10, v0, v2

    invoke-static/range {v6 .. v11}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    new-instance v2, Landroidx/media3/extractor/SeekMap$SeekPoints;

    new-instance v3, Landroidx/media3/extractor/SeekPoint;

    iget-wide v4, p0, Landroidx/media3/extractor/mp3/XingSeeker;->dataStartPosition:J

    add-long/2addr v4, v0

    invoke-direct {v3, p1, p2, v4, v5}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v2, v3}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v2
.end method

.method public getTimeUs(J)J
    .locals 11

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->dataStartPosition:J

    sub-long/2addr p1, v0

    invoke-virtual {p0}, Landroidx/media3/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->tableOfContents:[J

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    long-to-double p1, p1

    const-wide/high16 v1, 0x4070000000000000L    # 256.0

    mul-double p1, p1, v1

    iget-wide v1, p0, Landroidx/media3/extractor/mp3/XingSeeker;->dataSize:J

    long-to-double v1, v1

    div-double/2addr p1, v1

    double-to-long v1, p1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, v3}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v1

    invoke-direct {p0, v1}, Landroidx/media3/extractor/mp3/XingSeeker;->getTimeUsForTableIndex(I)J

    move-result-wide v2

    aget-wide v4, v0, v1

    add-int/lit8 v6, v1, 0x1

    invoke-direct {p0, v6}, Landroidx/media3/extractor/mp3/XingSeeker;->getTimeUsForTableIndex(I)J

    move-result-wide v7

    const/16 v9, 0x63

    if-ne v1, v9, :cond_1

    const-wide/16 v0, 0x100

    goto :goto_0

    :cond_1
    aget-wide v9, v0, v6

    move-wide v0, v9

    :goto_0
    cmp-long v6, v4, v0

    if-nez v6, :cond_2

    const-wide/16 p1, 0x0

    goto :goto_1

    :cond_2
    long-to-double v9, v4

    sub-double/2addr p1, v9

    sub-long/2addr v0, v4

    long-to-double v0, v0

    div-double/2addr p1, v0

    :goto_1
    sub-long/2addr v7, v2

    long-to-double v0, v7

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    add-long/2addr p1, v2

    return-wide p1

    :cond_3
    :goto_2
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public isSeekable()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->tableOfContents:[J

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
