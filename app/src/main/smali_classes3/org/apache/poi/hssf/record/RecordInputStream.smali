.class public final Lorg/apache/poi/hssf/record/RecordInputStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/LittleEndianInput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/RecordInputStream$SimpleHeaderInput;,
        Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException;
    }
.end annotation


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B

.field public static final MAX_RECORD_DATA_SIZE:S = 0x2020s


# instance fields
.field private final _bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

.field private _currentDataLength:I

.field private _currentDataOffset:I

.field private _currentSid:I

.field private final _dataInput:Lorg/apache/poi/util/LittleEndianInput;

.field private _markedDataOffset:I

.field private _nextSid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/hssf/record/RecordInputStream;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/poi/poifs/crypt/EncryptionInfo;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/poifs/crypt/EncryptionInfo;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    invoke-static {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getLEI(Ljava/io/InputStream;)Lorg/apache/poi/util/LittleEndianInput;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    new-instance p2, Lorg/apache/poi/hssf/record/RecordInputStream$SimpleHeaderInput;

    invoke-direct {p2, p1}, Lorg/apache/poi/hssf/record/RecordInputStream$SimpleHeaderInput;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;

    invoke-direct {v0, p1, p3, p2}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;-><init>(Ljava/io/InputStream;ILorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readNextSid()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    return-void
.end method

.method private checkRecordPosition(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lt v0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->isContinueNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    new-instance v1, Lorg/apache/poi/util/RecordFormatException;

    .line 21
    .line 22
    const-string v2, "Not enough data ("

    .line 23
    .line 24
    const-string v3, ") to read requested ("

    .line 25
    .line 26
    const-string v4, ") bytes"

    .line 27
    .line 28
    invoke-static {v2, v0, v3, p1, v4}, Ls/a;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v1, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v1
.end method

.method public static getLEI(Ljava/io/InputStream;)Lorg/apache/poi/util/LittleEndianInput;
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/util/LittleEndianInput;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/util/LittleEndianInput;

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {v0, p0}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private isContinueNext()Z
    .locals 3

    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should never be called before end of current record"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private readNextSid()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/poi/hssf/record/BiffHeaderInput;->available()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    const/4 v2, -0x1

    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

    .line 13
    .line 14
    invoke-interface {v0}, Lorg/apache/poi/hssf/record/BiffHeaderInput;->readRecordSID()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eq v0, v2, :cond_1

    .line 19
    .line 20
    iput v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    .line 21
    .line 22
    return v0

    .line 23
    :cond_1
    new-instance v1, Lorg/apache/poi/util/RecordFormatException;

    .line 24
    .line 25
    const-string v2, "Found invalid sid ("

    .line 26
    .line 27
    const-string v3, ")"

    .line 28
    .line 29
    invoke-static {v0, v2, v3}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {v1, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v1
.end method

.method private readStringCommon(IZ)Ljava/lang/String;
    .locals 5

    .line 1
    if-ltz p1, :cond_9

    .line 2
    .line 3
    const/high16 v0, 0x100000

    .line 4
    .line 5
    if-gt p1, v0, :cond_9

    .line 6
    .line 7
    new-array v0, p1, [C

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    div-int/lit8 v3, v3, 0x2

    .line 19
    .line 20
    :goto_1
    sub-int v4, p1, v2

    .line 21
    .line 22
    if-gt v4, v3, :cond_3

    .line 23
    .line 24
    :goto_2
    if-ge v2, p1, :cond_2

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    :goto_3
    int-to-char v1, v1

    .line 33
    goto :goto_4

    .line 34
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    goto :goto_3

    .line 39
    :goto_4
    aput-char v1, v0, v2

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/String;

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :cond_3
    :goto_5
    if-lez v3, :cond_5

    .line 51
    .line 52
    if-eqz p2, :cond_4

    .line 53
    .line 54
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    :goto_6
    int-to-char v4, v4

    .line 59
    goto :goto_7

    .line 60
    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    goto :goto_6

    .line 65
    :goto_7
    aput-char v4, v0, v2

    .line 66
    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    add-int/lit8 v3, v3, -0x1

    .line 70
    .line 71
    goto :goto_5

    .line 72
    :cond_5
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->isContinueNext()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_8

    .line 77
    .line 78
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-nez p2, :cond_7

    .line 83
    .line 84
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-nez p2, :cond_6

    .line 92
    .line 93
    const/4 p2, 0x1

    .line 94
    goto :goto_0

    .line 95
    :cond_6
    const/4 p2, 0x0

    .line 96
    goto :goto_0

    .line 97
    :cond_7
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    .line 98
    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v0, "Odd number of bytes("

    .line 102
    .line 103
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v0, ") left behind"

    .line 114
    .line 115
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-direct {p1, p2}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p1

    .line 126
    :cond_8
    new-instance p2, Lorg/apache/poi/util/RecordFormatException;

    .line 127
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v1, "Expected to find a ContinueRecord in order to read remaining "

    .line 131
    .line 132
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sub-int v1, p1, v2

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, " of "

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string p1, " chars"

    .line 149
    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-direct {p2, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p2

    .line 161
    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 162
    .line 163
    const-string v0, "Bad requested string length ("

    .line 164
    .line 165
    const-string v1, ")"

    .line 166
    .line 167
    invoke-static {p1, v0, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p2
.end method


# virtual methods
.method public available()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    return v0
.end method

.method public getNextSid()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    return v0
.end method

.method public getSid()S
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentSid:I

    int-to-short v0, v0

    return v0
.end method

.method public hasNextRecord()Z
    .locals 3

    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException;

    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentSid:I

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException;-><init>(II)V

    throw v0

    :cond_1
    :goto_0
    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readNextSid()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    :cond_2
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public mark(I)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    iget p1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    iput p1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_markedDataOffset:I

    return-void
.end method

.method public nextRecord()V
    .locals 3

    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    if-ne v2, v1, :cond_1

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentSid:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/BiffHeaderInput;->readDataSize()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    const/16 v1, 0x2020

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    const-string v1, "The content of an excel record cannot exceed 8224 bytes"

    invoke-direct {v0, v1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call nextRecord() without checking hasNextRecord() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EOF - next record not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([BII)V

    return p3
.end method

.method public readAllContinuedRemainder()[B
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x4040

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->isContinueNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    goto :goto_0
.end method

.method public readByte()B
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    return v0
.end method

.method public readCompressedUnicode(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readStringCommon(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readDouble()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    return-wide v0
.end method

.method public readFully([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([BIIZ)V

    return-void
.end method

.method public readFully([BII)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([BIIZ)V

    return-void
.end method

.method public readFully([BIIZ)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_4

    move v0, p3

    :goto_0
    if-lez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    const-string p2, "Can\'t read the remaining "

    const-string p4, " bytes of the requested "

    const-string v1, " bytes. No further record exists."

    .line 3
    invoke-static {p2, v0, p4, p3, v1}, Ls/a;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-direct {p1, p2}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    iget-object v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    if-eqz p4, :cond_2

    invoke-interface {v2, p1, p2, v1}, Lorg/apache/poi/util/LittleEndianInput;->readPlain([BII)V

    goto :goto_2

    :cond_2
    invoke-interface {v2, p1, p2, v1}, Lorg/apache/poi/util/LittleEndianInput;->readFully([BII)V

    :goto_2
    iget v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr p2, v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public readInt()I
    .locals 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readPlain([BII)V
    .locals 1

    array-length p2, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([BIIZ)V

    return-void
.end method

.method public readRemainder()[B
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/hssf/record/RecordInputStream;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    :cond_0
    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    return-object v0
.end method

.method public readShort()S
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    return v0
.end method

.method public readString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readStringCommon(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUByte()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUShort()I
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    return v0
.end method

.method public readUnicodeLEString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readStringCommon(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public remaining()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_markedDataOffset:I

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    return-void
.end method
