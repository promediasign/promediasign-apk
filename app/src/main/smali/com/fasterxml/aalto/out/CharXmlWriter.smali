.class public final Lcom/fasterxml/aalto/out/CharXmlWriter;
.super Lcom/fasterxml/aalto/out/XmlWriter;
.source "SourceFile"


# instance fields
.field protected _out:Ljava/io/Writer;

.field protected _outputBuffer:[C

.field protected final _outputBufferLen:I

.field protected _outputPtr:I

.field final mCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

.field private final mEncHighChar:I

.field protected final mSmallWriteSize:I

.field private final mTableCheckEnd:I


# direct methods
.method public constructor <init>(Lcom/fasterxml/aalto/out/WriterConfig;Ljava/io/Writer;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;-><init>(Lcom/fasterxml/aalto/out/WriterConfig;)V

    iput-object p2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Lcom/fasterxml/aalto/out/WriterConfig;->allocFullCBuffer(I)[C

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    array-length p2, p2

    iput p2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    const/16 p2, 0xc8

    iput p2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->mSmallWriteSize:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    invoke-static {p1}, Lcom/fasterxml/aalto/out/XmlWriter;->guessEncodingBitSize(Lcom/fasterxml/aalto/out/WriterConfig;)I

    move-result p1

    const/16 p2, 0x10

    if-ge p1, p2, :cond_0

    const/4 p2, 0x1

    shl-int/2addr p2, p1

    goto :goto_0

    :cond_0
    const p2, 0xfffe

    :goto_0
    iput p2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->mEncHighChar:I

    const/16 v0, 0x100

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->mTableCheckEnd:I

    const/16 p2, 0x8

    if-ge p1, p2, :cond_1

    invoke-static {}, Lcom/fasterxml/aalto/out/OutputCharTypes;->getAsciiCharTypes()Lcom/fasterxml/aalto/util/XmlCharTypes;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/fasterxml/aalto/out/OutputCharTypes;->getLatin1CharTypes()Lcom/fasterxml/aalto/util/XmlCharTypes;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->mCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    return-void
.end method

.method private final fastWriteRaw(C)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->flushBuffer()V

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    aput-char p1, v0, v1

    return-void
.end method

.method private final fastWriteRaw(CC)V
    .locals 3

    .line 2
    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->flushBuffer()V

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/lit8 v2, v1, 0x1

    aput-char p1, v0, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    aput-char p2, v0, v2

    return-void
.end method

.method private final fastWriteRaw(Ljava/lang/String;)V
    .locals 5

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int v2, v1, v0

    iget v3, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_2

    iget-object v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-le v0, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v4, v0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->writeRaw(Ljava/lang/String;II)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->flushBuffer()V

    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    :cond_2
    iget-object v2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    invoke-virtual {p1, v4, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    return-void
.end method

.method private final flushBuffer()V
    .locals 4

    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locPastChars:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locPastChars:I

    iget v2, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowStartOffset:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowStartOffset:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    iget-object v3, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    invoke-virtual {v1, v3, v2, v0}, Ljava/io/Writer;->write([CII)V

    :cond_0
    return-void
.end method

.method private final writeAttrValue(Ljava/lang/String;I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-lez p2, :cond_1

    iget-object v2, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBuffer:[C

    array-length v3, v2

    if-ge p2, v3, :cond_0

    move v3, p2

    :cond_0
    add-int v4, v1, v3

    invoke-virtual {p1, v1, v4, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    invoke-direct {p0, v2, v0, v3}, Lcom/fasterxml/aalto/out/CharXmlWriter;->writeAttrValue([CII)V

    sub-int/2addr p2, v3

    move v1, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final writeAttrValue([CII)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    if-le v0, v1, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/aalto/out/CharXmlWriter;->writeSplitAttrValue([CII)V

    return-void

    :cond_1
    add-int/2addr p3, p2

    :cond_2
    :goto_0
    if-ge p2, p3, :cond_9

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->mCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->ATTR_CHARS:[I

    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->mTableCheckEnd:I

    :cond_3
    aget-char v2, p1, p2

    if-lt v2, v1, :cond_4

    goto :goto_1

    :cond_4
    aget v3, v0, v2

    if-eqz v3, :cond_8

    :goto_1
    add-int/lit8 p2, p2, 0x1

    if-ge v2, v1, :cond_6

    aget v0, v0, v2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    const/16 v1, 0x9

    if-eq v0, v1, :cond_7

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/16 v1, 0xe

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    aput-char v2, v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/out/XmlWriter;->reportInvalidChar(I)V

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->mEncHighChar:I

    if-ge v2, v0, :cond_7

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    aput-char v2, v0, v1

    goto :goto_0

    :cond_7
    :goto_2
    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/out/CharXmlWriter;->writeAsEntity(I)V

    sub-int v0, p3, p2

    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    iget v2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->flushBuffer()V

    goto :goto_0

    :cond_8
    iget-object v3, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    iget v4, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    aput-char v2, v3, v4

    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_3

    :cond_9
    return-void
.end method

.method private writeCDataContents([CII)I
    .locals 7

    add-int/2addr p3, p2

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_a

    iget-object v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->mCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v1, v1, Lcom/fasterxml/aalto/util/XmlCharTypes;->OTHER_CHARS:[I

    iget v2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->mTableCheckEnd:I

    :cond_0
    aget-char v3, p1, v0

    if-lt v3, v2, :cond_1

    goto :goto_1

    :cond_1
    aget v4, v1, v3

    if-eqz v4, :cond_8

    :goto_1
    add-int/lit8 v4, v0, 0x1

    const-string v5, "CDATA block"

    if-ge v3, v2, :cond_5

    aget v1, v1, v3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/4 v6, 0x4

    if-eq v1, v6, :cond_2

    const/16 v5, 0x11

    if-eq v1, v5, :cond_3

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v5, v3}, Lcom/fasterxml/aalto/out/XmlWriter;->reportFailedEscaping(Ljava/lang/String;I)V

    :cond_3
    sub-int v1, v4, p2

    if-lt v1, v2, :cond_6

    add-int/lit8 v1, v0, -0x1

    aget-char v1, p1, v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_6

    add-int/lit8 v1, v0, -0x2

    aget-char v1, p1, v1

    if-ne v1, v2, :cond_6

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->writeCDataEnd()V

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->writeCDataStart()V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v3}, Lcom/fasterxml/aalto/out/XmlWriter;->reportInvalidChar(I)V

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->mEncHighChar:I

    if-lt v3, v0, :cond_6

    invoke-virtual {p0, v5, v3}, Lcom/fasterxml/aalto/out/XmlWriter;->reportFailedEscaping(Ljava/lang/String;I)V

    :cond_6
    :goto_2
    move v0, v4

    :goto_3
    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    iget v2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    if-lt v1, v2, :cond_7

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->flushBuffer()V

    :cond_7
    iget-object v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    iget v2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    int-to-char v3, v3

    aput-char v3, v1, v2

    goto :goto_0

    :cond_8
    iget v4, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    iget v5, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    if-lt v4, v5, :cond_9

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->flushBuffer()V

    :cond_9
    iget-object v4, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    iget v5, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    aput-char v3, v4, v5

    add-int/lit8 v0, v0, 0x1

    if-lt v0, p3, :cond_0

    :cond_a
    const/4 p1, -0x1

    return p1
.end method

.method private writeCommentContents([CIIZ)I
    .locals 5

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_d

    iget-object p4, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->mCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object p4, p4, Lcom/fasterxml/aalto/util/XmlCharTypes;->OTHER_CHARS:[I

    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->mTableCheckEnd:I

    :cond_0
    aget-char v1, p1, p2

    if-lt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    aget v2, p4, v1

    if-eqz v2, :cond_b

    :goto_1
    add-int/lit8 v2, p2, 0x1

    const-string v3, "comment"

    if-ge v1, v0, :cond_8

    aget p4, p4, v1

    const/4 v0, 0x1

    if-eq p4, v0, :cond_7

    const/4 v0, 0x2

    if-eq p4, v0, :cond_9

    const/4 v0, 0x3

    if-eq p4, v0, :cond_9

    const/4 v0, 0x4

    if-eq p4, v0, :cond_2

    const/16 v0, 0xd

    if-eq p4, v0, :cond_3

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3, v1}, Lcom/fasterxml/aalto/out/XmlWriter;->reportFailedEscaping(Ljava/lang/String;I)V

    :cond_3
    if-eq v2, p3, :cond_4

    aget-char p4, p1, v2

    const/16 v0, 0x2d

    if-ne p4, v0, :cond_9

    :cond_4
    iget-object p4, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {p4}, Lcom/fasterxml/aalto/out/WriterConfig;->willFixContent()Z

    move-result p4

    if-nez p4, :cond_5

    return p2

    :cond_5
    iget p2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    iget p4, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    if-lt p2, p4, :cond_6

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->flushBuffer()V

    :cond_6
    iget-object p2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    iget p4, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/lit8 v0, p4, 0x1

    iput v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    const/16 v0, 0x20

    aput-char v0, p2, p4

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/out/XmlWriter;->reportInvalidChar(I)V

    goto :goto_2

    :cond_8
    iget p2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->mEncHighChar:I

    if-lt v1, p2, :cond_9

    invoke-virtual {p0, v3, v1}, Lcom/fasterxml/aalto/out/XmlWriter;->reportFailedEscaping(Ljava/lang/String;I)V

    :cond_9
    :goto_2
    iget p2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    iget p4, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    if-lt p2, p4, :cond_a

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->flushBuffer()V

    :cond_a
    iget-object p2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    iget p4, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/lit8 v0, p4, 0x1

    iput v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    int-to-char v0, v1

    aput-char v0, p2, p4

    move p2, v2

    goto :goto_0

    :cond_b
    iget v2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    if-lt v2, v3, :cond_c

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->flushBuffer()V

    :cond_c
    iget-object v2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    iget v3, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    aput-char v1, v2, v3

    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_0

    :cond_d
    const/4 p1, -0x1

    return p1
.end method

.method private writePIContents([CII)I
    .locals 6

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_a

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->mCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->OTHER_CHARS:[I

    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->mTableCheckEnd:I

    :cond_0
    aget-char v2, p1, p2

    if-lt v2, v1, :cond_1

    goto :goto_1

    :cond_1
    aget v3, v0, v2

    if-eqz v3, :cond_8

    :goto_1
    add-int/lit8 p2, p2, 0x1

    const-string v3, "processing instruction"

    if-ge v2, v1, :cond_5

    aget v0, v0, v2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3, v2}, Lcom/fasterxml/aalto/out/XmlWriter;->reportFailedEscaping(Ljava/lang/String;I)V

    :cond_3
    if-ge p2, p3, :cond_6

    aget-char v0, p1, p2

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_6

    return p2

    :cond_4
    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/out/XmlWriter;->reportInvalidChar(I)V

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->mEncHighChar:I

    if-lt v2, v0, :cond_6

    invoke-virtual {p0, v3, v2}, Lcom/fasterxml/aalto/out/XmlWriter;->reportFailedEscaping(Ljava/lang/String;I)V

    :cond_6
    :goto_2
    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    if-lt v0, v1, :cond_7

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->flushBuffer()V

    :cond_7
    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_0

    :cond_8
    iget v3, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    iget v4, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    if-lt v3, v4, :cond_9

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->flushBuffer()V

    :cond_9
    iget-object v3, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    iget v4, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    aput-char v2, v3, v4

    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_0

    :cond_a
    const/4 p1, -0x1

    return p1
.end method

.method private final writeSplitAttrValue([CII)V
    .locals 6

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_9

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->mCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->ATTR_CHARS:[I

    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->mTableCheckEnd:I

    :cond_0
    aget-char v2, p1, p2

    if-lt v2, v1, :cond_1

    goto :goto_1

    :cond_1
    aget v3, v0, v2

    if-eqz v3, :cond_7

    :goto_1
    add-int/lit8 p2, p2, 0x1

    if-ge v2, v1, :cond_4

    aget v0, v0, v2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/out/CharXmlWriter;->writeAsEntity(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/out/XmlWriter;->reportInvalidChar(I)V

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->mEncHighChar:I

    if-lt v2, v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    if-lt v0, v1, :cond_6

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->flushBuffer()V

    :cond_6
    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_0

    :cond_7
    iget v3, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    iget v4, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    if-lt v3, v4, :cond_8

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->flushBuffer()V

    :cond_8
    iget-object v3, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    iget v4, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    aput-char v2, v3, v4

    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_0

    :cond_9
    return-void
.end method


# virtual methods
.method public _closeTarget(Z)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    :cond_1
    :goto_0
    return-void
.end method

.method public _releaseBuffers()V
    .locals 2

    invoke-super {p0}, Lcom/fasterxml/aalto/out/XmlWriter;->_releaseBuffers()V

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {v1, v0}, Lcom/fasterxml/aalto/out/WriterConfig;->freeFullCBuffer([C)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    :cond_0
    return-void
.end method

.method public constructName(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;
    .locals 1

    .line 1
    new-instance v0, Lcom/fasterxml/aalto/out/CharWName;

    invoke-direct {v0, p1}, Lcom/fasterxml/aalto/out/CharWName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public constructName(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;
    .locals 1

    .line 2
    new-instance v0, Lcom/fasterxml/aalto/out/CharWName;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/aalto/out/CharWName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->flushBuffer()V

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    :cond_0
    return-void
.end method

.method public getOutputPtr()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    return v0
.end method

.method public final writeAsEntity(I)V
    .locals 11

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/lit8 v2, v1, 0xa

    array-length v3, v0

    if-lt v2, v3, :cond_0

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->flushBuffer()V

    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    :cond_0
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x26

    aput-char v3, v0, v1

    const/16 v4, 0x100

    const/16 v5, 0x78

    const/16 v6, 0x23

    const/16 v7, 0xa

    if-ge p1, v4, :cond_9

    const/16 v4, 0x70

    const/16 v8, 0x61

    if-ne p1, v3, :cond_1

    add-int/lit8 p1, v1, 0x2

    aput-char v8, v0, v2

    add-int/lit8 v2, v1, 0x3

    const/16 v3, 0x6d

    aput-char v3, v0, p1

    add-int/lit8 v1, v1, 0x4

    aput-char v4, v0, v2

    goto/16 :goto_4

    :cond_1
    const/16 v3, 0x3c

    const/16 v9, 0x74

    if-ne p1, v3, :cond_2

    add-int/lit8 p1, v1, 0x2

    const/16 v3, 0x6c

    aput-char v3, v0, v2

    add-int/lit8 v1, v1, 0x3

    aput-char v9, v0, p1

    goto/16 :goto_4

    :cond_2
    const/16 v3, 0x3e

    if-ne p1, v3, :cond_3

    add-int/lit8 p1, v1, 0x2

    const/16 v3, 0x67

    aput-char v3, v0, v2

    add-int/lit8 v1, v1, 0x3

    aput-char v9, v0, p1

    goto/16 :goto_4

    :cond_3
    const/16 v3, 0x27

    const/16 v10, 0x6f

    if-ne p1, v3, :cond_4

    add-int/lit8 p1, v1, 0x2

    aput-char v8, v0, v2

    add-int/lit8 v2, v1, 0x3

    aput-char v4, v0, p1

    add-int/lit8 p1, v1, 0x4

    aput-char v10, v0, v2

    add-int/lit8 v1, v1, 0x5

    const/16 v2, 0x73

    aput-char v2, v0, p1

    goto/16 :goto_4

    :cond_4
    const/16 v3, 0x22

    if-ne p1, v3, :cond_5

    add-int/lit8 p1, v1, 0x2

    const/16 v3, 0x71

    aput-char v3, v0, v2

    add-int/lit8 v2, v1, 0x3

    const/16 v3, 0x75

    aput-char v3, v0, p1

    add-int/lit8 p1, v1, 0x4

    aput-char v10, v0, v2

    add-int/lit8 v1, v1, 0x5

    aput-char v9, v0, p1

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v1, 0x2

    aput-char v6, v0, v2

    add-int/lit8 v2, v1, 0x3

    aput-char v5, v0, v3

    const/16 v3, 0x10

    if-lt p1, v3, :cond_7

    shr-int/lit8 v3, p1, 0x4

    add-int/lit8 v1, v1, 0x4

    if-ge v3, v7, :cond_6

    add-int/lit8 v3, v3, 0x30

    goto :goto_0

    :cond_6
    add-int/lit8 v3, v3, 0x57

    :goto_0
    int-to-char v3, v3

    aput-char v3, v0, v2

    and-int/lit8 p1, p1, 0xf

    move v2, v1

    :cond_7
    add-int/lit8 v1, v2, 0x1

    if-ge p1, v7, :cond_8

    add-int/lit8 p1, p1, 0x30

    goto :goto_1

    :cond_8
    add-int/lit8 p1, p1, 0x57

    :goto_1
    int-to-char p1, p1

    aput-char p1, v0, v2

    goto :goto_4

    :cond_9
    add-int/lit8 v3, v1, 0x2

    aput-char v6, v0, v2

    add-int/lit8 v1, v1, 0x3

    aput-char v5, v0, v3

    const/16 v2, 0x14

    move v3, v1

    :cond_a
    shr-int v4, p1, v2

    and-int/lit8 v4, v4, 0xf

    if-gtz v4, :cond_b

    if-eq v3, v1, :cond_d

    :cond_b
    add-int/lit8 v5, v3, 0x1

    if-ge v4, v7, :cond_c

    add-int/lit8 v4, v4, 0x30

    goto :goto_2

    :cond_c
    add-int/lit8 v4, v4, 0x57

    :goto_2
    int-to-char v4, v4

    aput-char v4, v0, v3

    move v3, v5

    :cond_d
    add-int/lit8 v2, v2, -0x4

    if-gtz v2, :cond_a

    and-int/lit8 p1, p1, 0xf

    add-int/lit8 v1, v3, 0x1

    if-ge p1, v7, :cond_e

    add-int/lit8 p1, p1, 0x30

    goto :goto_3

    :cond_e
    add-int/lit8 p1, p1, 0x57

    :goto_3
    int-to-char p1, p1

    aput-char p1, v0, v3

    :goto_4
    add-int/lit8 p1, v1, 0x1

    const/16 v2, 0x3b

    aput-char v2, v0, v1

    iput p1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    return-void
.end method

.method public writeAttribute(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(C)V

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/CharXmlWriter;->writeName(Lcom/fasterxml/aalto/out/WName;)V

    const/16 p1, 0x3d

    const/16 v0, 0x22

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(CC)V

    if-nez p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    :goto_0
    if-lez p1, :cond_2

    invoke-direct {p0, p2, p1}, Lcom/fasterxml/aalto/out/CharXmlWriter;->writeAttrValue(Ljava/lang/String;I)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(C)V

    return-void
.end method

.method public writeCData(Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->writeCDataStart()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_2

    iget-object v3, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBuffer:[C

    array-length v4, v3

    if-ge v0, v4, :cond_0

    move v4, v0

    :cond_0
    add-int v5, v2, v4

    invoke-virtual {p1, v2, v5, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    invoke-direct {p0, v3, v1, v4}, Lcom/fasterxml/aalto/out/CharXmlWriter;->writeCDataContents([CII)I

    move-result v3

    if-ltz v3, :cond_1

    add-int/2addr v2, v3

    return v2

    :cond_1
    sub-int/2addr v0, v4

    move v2, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->writeCDataEnd()V

    const/4 p1, -0x1

    return p1
.end method

.method public final writeCDataEnd()V
    .locals 1

    const-string v0, "]]>"

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(Ljava/lang/String;)V

    return-void
.end method

.method public final writeCDataStart()V
    .locals 1

    const-string v0, "<![CDATA["

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(Ljava/lang/String;)V

    return-void
.end method

.method public writeCharacters(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_2

    iget-object v3, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBuffer:[C

    array-length v4, v3

    if-ge v0, v4, :cond_1

    move v4, v0

    :cond_1
    add-int v5, v2, v4

    invoke-virtual {p1, v2, v5, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p0, v3, v1, v4}, Lcom/fasterxml/aalto/out/CharXmlWriter;->writeCharacters([CII)V

    sub-int/2addr v0, v4

    move v2, v5

    goto :goto_0

    :cond_2
    return-void
.end method

.method public writeCharacters([CII)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_b

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->mCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->TEXT_CHARS:[I

    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->mTableCheckEnd:I

    :cond_1
    aget-char v2, p1, p2

    if-lt v2, v1, :cond_2

    goto :goto_1

    :cond_2
    aget v3, v0, v2

    if-eqz v3, :cond_9

    :goto_1
    add-int/lit8 p2, p2, 0x1

    if-ge v2, v1, :cond_6

    aget v0, v0, v2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/WriterConfig;->willEscapeCR()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    :goto_2
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/out/CharXmlWriter;->writeAsEntity(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/out/XmlWriter;->reportInvalidChar(I)V

    :pswitch_1
    if-ge p2, p3, :cond_4

    aget-char v0, p1, p2

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_4

    goto :goto_3

    :cond_6
    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->mEncHighChar:I

    if-lt v2, v0, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    if-lt v0, v1, :cond_8

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->flushBuffer()V

    :cond_8
    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_0

    :cond_9
    iget v3, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    iget v4, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    if-lt v3, v4, :cond_a

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->flushBuffer()V

    :cond_a
    iget-object v3, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    iget v4, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    aput-char v2, v3, v4

    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_1

    :cond_b
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public writeComment(Ljava/lang/String;)I
    .locals 7

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->writeCommentStart()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_0
    if-lez v0, :cond_3

    iget-object v4, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBuffer:[C

    array-length v5, v4

    if-le v5, v0, :cond_1

    move v5, v0

    :cond_1
    add-int v6, v3, v5

    invoke-virtual {p1, v3, v6, v4, v2}, Ljava/lang/String;->getChars(II[CI)V

    invoke-direct {p0, v4, v2, v5, v2}, Lcom/fasterxml/aalto/out/CharXmlWriter;->writeCommentContents([CIIZ)I

    move-result v4

    if-ltz v4, :cond_2

    goto :goto_1

    :cond_2
    sub-int/2addr v0, v5

    move v3, v6

    goto :goto_0

    :cond_3
    :goto_1
    if-ltz v4, :cond_4

    add-int/2addr v3, v4

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->writeCommentEnd()V

    return v1
.end method

.method public final writeCommentEnd()V
    .locals 1

    const-string v0, "-->"

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(Ljava/lang/String;)V

    return-void
.end method

.method public final writeCommentStart()V
    .locals 1

    const-string v0, "<!--"

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(Ljava/lang/String;)V

    return-void
.end method

.method public writeDTD(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<!DOCTYPE "

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/CharXmlWriter;->writeName(Lcom/fasterxml/aalto/out/WName;)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    const-string p1, " PUBLIC \""

    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(Ljava/lang/String;)V

    const-string p1, "\" \""

    :goto_0
    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p1, " SYSTEM \""

    goto :goto_0

    :goto_1
    invoke-direct {p0, p2}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(Ljava/lang/String;)V

    const/16 p1, 0x22

    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(C)V

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    const/16 p1, 0x20

    const/16 p2, 0x5b

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(CC)V

    invoke-direct {p0, p4}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(Ljava/lang/String;)V

    const/16 p1, 0x5d

    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(C)V

    :cond_2
    const/16 p1, 0x3e

    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(C)V

    return-void
.end method

.method public writeDTD(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->writeRaw(Ljava/lang/String;II)V

    return-void
.end method

.method public writeEndTag(Lcom/fasterxml/aalto/out/WName;)V
    .locals 7

    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/WName;->serializedLength()I

    move-result v1

    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x3

    iget v3, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    const/16 v4, 0x3e

    const/16 v5, 0x2f

    const/16 v6, 0x3c

    if-le v2, v3, :cond_1

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->flushBuffer()V

    add-int/lit8 v0, v1, 0x3

    iget v2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v0, v6}, Ljava/io/Writer;->write(I)V

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(I)V

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Lcom/fasterxml/aalto/out/WName;->writeChars(Ljava/io/Writer;)V

    iget-object p1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    aput-char v4, p1, v0

    return-void

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    :cond_1
    iget-object v2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    add-int/lit8 v3, v0, 0x1

    aput-char v6, v2, v0

    add-int/lit8 v0, v0, 0x2

    aput-char v5, v2, v3

    invoke-virtual {p1, v2, v0}, Lcom/fasterxml/aalto/out/WName;->appendChars([CI)I

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    aput-char v4, v2, v0

    iput p1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    return-void
.end method

.method public writeEntityReference(Lcom/fasterxml/aalto/out/WName;)V
    .locals 1

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(C)V

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/CharXmlWriter;->writeName(Lcom/fasterxml/aalto/out/WName;)V

    const/16 p1, 0x3b

    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(C)V

    return-void
.end method

.method public final writeName(Lcom/fasterxml/aalto/out/WName;)V
    .locals 4

    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/WName;->serializedLength()I

    move-result v1

    add-int v2, v0, v1

    iget v3, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    if-le v2, v3, :cond_1

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->flushBuffer()V

    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Lcom/fasterxml/aalto/out/WName;->writeChars(Ljava/io/Writer;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    :cond_1
    iget-object v2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    invoke-virtual {p1, v2, v0}, Lcom/fasterxml/aalto/out/WName;->appendChars([CI)I

    iget p1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    return-void
.end method

.method public writePI(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;)I
    .locals 7

    const/16 v0, 0x3c

    const/16 v1, 0x3f

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(CC)V

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/CharXmlWriter;->writeName(Lcom/fasterxml/aalto/out/WName;)V

    const/4 p1, -0x1

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(C)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_0
    if-lez v0, :cond_2

    iget-object v4, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBuffer:[C

    array-length v5, v4

    if-le v5, v0, :cond_0

    move v5, v0

    :cond_0
    add-int v6, v3, v5

    invoke-virtual {p2, v3, v6, v4, v2}, Ljava/lang/String;->getChars(II[CI)V

    invoke-direct {p0, v4, v2, v5}, Lcom/fasterxml/aalto/out/CharXmlWriter;->writePIContents([CII)I

    move-result v4

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    sub-int/2addr v0, v5

    move v3, v6

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v4, :cond_3

    add-int/2addr v3, v4

    return v3

    :cond_3
    const/16 p2, 0x3e

    invoke-direct {p0, v1, p2}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(CC)V

    return p1
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .locals 4

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->mSmallWriteSize:I

    if-ge p3, v0, :cond_2

    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->flushBuffer()V

    :cond_1
    add-int v0, p2, p3

    iget-object v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    iget v2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget p1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    return-void

    :cond_2
    iget v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    if-lez v1, :cond_4

    if-ge v1, v0, :cond_3

    sub-int/2addr v0, v1

    add-int v2, p2, v0

    iget-object v3, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    invoke-virtual {p1, p2, v2, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    sub-int/2addr p3, v0

    move p2, v2

    :cond_3
    invoke-direct {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->flushBuffer()V

    :cond_4
    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public writeSpace(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_2

    iget-object v3, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBuffer:[C

    array-length v4, v3

    if-ge v0, v4, :cond_1

    move v4, v0

    :cond_1
    add-int v5, v2, v4

    invoke-virtual {p1, v2, v5, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p0, v3, v1, v4}, Lcom/fasterxml/aalto/out/CharXmlWriter;->writeSpace([CII)V

    sub-int/2addr v0, v4

    move v2, v5

    goto :goto_0

    :cond_2
    return-void
.end method

.method public writeSpace([CII)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_4

    add-int/lit8 v0, p2, 0x1

    aget-char v1, p1, p2

    const/16 v2, 0x20

    if-le v1, v2, :cond_2

    iget-object v2, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/out/WriterConfig;->isXml11()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x85

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2028

    if-eq v1, v2, :cond_2

    :cond_1
    sget-object v2, Lcom/fasterxml/aalto/impl/ErrorConsts;->WERR_SPACE_CONTENT:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v2, v3, p2}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfContent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iget p2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    iget v2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    if-lt p2, v2, :cond_3

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->flushBuffer()V

    :cond_3
    iget-object p2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    iget v2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    aput-char v1, p2, v2

    move p2, v0

    goto :goto_0

    :cond_4
    return-void
.end method

.method public writeStartTagEmptyEnd()V
    .locals 4

    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    add-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    if-le v1, v2, :cond_1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->flushBuffer()V

    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    :cond_1
    iget-object v1, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x2f

    aput-char v3, v1, v0

    add-int/lit8 v0, v0, 0x2

    const/16 v3, 0x3e

    aput-char v3, v1, v2

    iput v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    return-void
.end method

.method public writeStartTagEnd()V
    .locals 1

    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(C)V

    return-void
.end method

.method public writeStartTagStart(Lcom/fasterxml/aalto/out/WName;)V
    .locals 5

    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/WName;->serializedLength()I

    move-result v1

    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    const/16 v4, 0x3c

    if-le v2, v3, :cond_2

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->flushBuffer()V

    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBufferLen:I

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(I)V

    iget-object v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_out:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Lcom/fasterxml/aalto/out/WName;->writeChars(Ljava/io/Writer;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    :cond_2
    iget-object v2, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputBuffer:[C

    add-int/lit8 v3, v0, 0x1

    aput-char v4, v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/fasterxml/aalto/out/WName;->appendChars([CI)I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/fasterxml/aalto/out/CharXmlWriter;->_outputPtr:I

    return-void
.end method

.method public writeXmlDeclaration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "<?xml version=\'"

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(Ljava/lang/String;)V

    const/16 p1, 0x27

    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(C)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, " encoding=\'"

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(C)V

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, " standalone=\'"

    invoke-direct {p0, p2}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(C)V

    :cond_1
    const/16 p1, 0x3f

    const/16 p2, 0x3e

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/aalto/out/CharXmlWriter;->fastWriteRaw(CC)V

    return-void
.end method
