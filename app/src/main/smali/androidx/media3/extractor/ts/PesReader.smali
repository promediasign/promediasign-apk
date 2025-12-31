.class public final Landroidx/media3/extractor/ts/PesReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/TsPayloadReader;


# instance fields
.field private bytesRead:I

.field private dataAlignmentIndicator:Z

.field private dtsFlag:Z

.field private extendedHeaderLength:I

.field private payloadSize:I

.field private final pesScratch:Landroidx/media3/common/util/ParsableBitArray;

.field private ptsFlag:Z

.field private final reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

.field private seenFirstDts:Z

.field private state:I

.field private timeUs:J

.field private timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    new-instance p1, Landroidx/media3/common/util/ParsableBitArray;

    const/16 v0, 0xa

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/ts/PesReader;->state:I

    return-void
.end method

.method private continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :cond_1
    iget v2, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    invoke-virtual {p1, p2, v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    :goto_0
    iget p1, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    if-ne p1, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private parseHeader()Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 8
    .line 9
    const/16 v2, 0x18

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v2, "PesReader"

    .line 16
    .line 17
    const/4 v3, -0x1

    .line 18
    const/4 v4, 0x1

    .line 19
    if-eq v0, v4, :cond_0

    .line 20
    .line 21
    const-string v4, "Unexpected start code prefix: "

    .line 22
    .line 23
    invoke-static {v0, v4, v2}, Ls/a;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput v3, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    .line 27
    .line 28
    return v1

    .line 29
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 30
    .line 31
    const/16 v1, 0x8

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 37
    .line 38
    const/16 v5, 0x10

    .line 39
    .line 40
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 45
    .line 46
    const/4 v6, 0x5

    .line 47
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 48
    .line 49
    .line 50
    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 51
    .line 52
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    iput-boolean v5, p0, Landroidx/media3/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    .line 57
    .line 58
    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 59
    .line 60
    const/4 v6, 0x2

    .line 61
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 62
    .line 63
    .line 64
    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 65
    .line 66
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    iput-boolean v5, p0, Landroidx/media3/extractor/ts/PesReader;->ptsFlag:Z

    .line 71
    .line 72
    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 73
    .line 74
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    iput-boolean v5, p0, Landroidx/media3/extractor/ts/PesReader;->dtsFlag:Z

    .line 79
    .line 80
    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 81
    .line 82
    const/4 v6, 0x6

    .line 83
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 84
    .line 85
    .line 86
    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 87
    .line 88
    invoke-virtual {v5, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    iput v1, p0, Landroidx/media3/extractor/ts/PesReader;->extendedHeaderLength:I

    .line 93
    .line 94
    if-nez v0, :cond_1

    .line 95
    .line 96
    :goto_0
    iput v3, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    add-int/lit8 v0, v0, -0x3

    .line 100
    .line 101
    sub-int/2addr v0, v1

    .line 102
    iput v0, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    .line 103
    .line 104
    if-gez v0, :cond_2

    .line 105
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v1, "Found negative packet payload size: "

    .line 109
    .line 110
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget v1, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    :goto_1
    return v4
.end method

.method private parseHeaderExtension()V
    .locals 10

    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/PesReader;->timeUs:J

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/PesReader;->ptsFlag:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v5, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-boolean v5, p0, Landroidx/media3/extractor/ts/PesReader;->seenFirstDts:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroidx/media3/extractor/ts/PesReader;->dtsFlag:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v1, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    iget-object v2, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v2, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    iget-object v2, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v2, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    iget-object v2, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v2, p0, Landroidx/media3/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v2, v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    iput-boolean v6, p0, Landroidx/media3/extractor/ts/PesReader;->seenFirstDts:Z

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v0, v3, v4}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/ts/PesReader;->timeUs:J

    :cond_1
    return-void
.end method

.method private setState(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/extractor/ts/PesReader;->state:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    return-void
.end method


# virtual methods
.method public final consume(Landroidx/media3/common/util/ParsableByteArray;I)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v0, p2, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/media3/extractor/ts/PesReader;->state:I

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_2

    const-string v5, "PesReader"

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-eq v0, v1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected start indicator: expected "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " more bytes"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    const-string v0, "Unexpected start indicator reading extended header"

    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-direct {p0, v4}, Landroidx/media3/extractor/ts/PesReader;->setState(I)V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_d

    iget v0, p0, Landroidx/media3/extractor/ts/PesReader;->state:I

    if-eqz v0, :cond_c

    const/4 v5, 0x0

    if-eq v0, v4, :cond_a

    if-eq v0, v3, :cond_8

    if-ne v0, v2, :cond_7

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v6, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-ne v6, v1, :cond_4

    goto :goto_2

    :cond_4
    sub-int v5, v0, v6

    :goto_2
    if-lez v5, :cond_5

    sub-int/2addr v0, v5

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    :cond_5
    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    invoke-interface {v5, p1}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->consume(Landroidx/media3/common/util/ParsableByteArray;)V

    iget v5, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-eq v5, v1, :cond_3

    sub-int/2addr v5, v0

    iput v5, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-nez v5, :cond_3

    :cond_6
    :goto_3
    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->packetFinished()V

    goto :goto_0

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_8
    const/16 v0, 0xa

    iget v6, p0, Landroidx/media3/extractor/ts/PesReader;->extendedHeaderLength:I

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v6, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    iget-object v6, v6, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v6, v0}, Landroidx/media3/extractor/ts/PesReader;->continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iget v6, p0, Landroidx/media3/extractor/ts/PesReader;->extendedHeaderLength:I

    invoke-direct {p0, p1, v0, v6}, Landroidx/media3/extractor/ts/PesReader;->continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroidx/media3/extractor/ts/PesReader;->parseHeaderExtension()V

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    if-eqz v0, :cond_9

    const/4 v5, 0x4

    :cond_9
    or-int/2addr p2, v5

    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    iget-wide v5, p0, Landroidx/media3/extractor/ts/PesReader;->timeUs:J

    invoke-interface {v0, v5, v6, p2}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->packetStarted(JI)V

    invoke-direct {p0, v2}, Landroidx/media3/extractor/ts/PesReader;->setState(I)V

    goto :goto_1

    :cond_a
    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    iget-object v0, v0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    const/16 v6, 0x9

    invoke-direct {p0, p1, v0, v6}, Landroidx/media3/extractor/ts/PesReader;->continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroidx/media3/extractor/ts/PesReader;->parseHeader()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v5, 0x2

    :cond_b
    invoke-direct {p0, v5}, Landroidx/media3/extractor/ts/PesReader;->setState(I)V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_1

    :cond_d
    return-void
.end method

.method public init(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    iget-object p1, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    invoke-interface {p1, p2, p3}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public final seek()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/PesReader;->state:I

    iput v0, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/PesReader;->seenFirstDts:Z

    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->seek()V

    return-void
.end method
