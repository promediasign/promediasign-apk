.class public final Lcom/fasterxml/aalto/out/Latin1XmlWriter;
.super Lcom/fasterxml/aalto/out/SingleByteXmlWriter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/fasterxml/aalto/out/WriterConfig;Ljava/io/OutputStream;)V
    .locals 1

    invoke-static {}, Lcom/fasterxml/aalto/out/OutputCharTypes;->getLatin1CharTypes()Lcom/fasterxml/aalto/util/XmlCharTypes;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/aalto/out/SingleByteXmlWriter;-><init>(Lcom/fasterxml/aalto/out/WriterConfig;Ljava/io/OutputStream;Lcom/fasterxml/aalto/util/XmlCharTypes;)V

    return-void
.end method


# virtual methods
.method public doConstructName(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;
    .locals 2

    .line 1
    new-instance v0, Lcom/fasterxml/aalto/out/ByteWName;

    invoke-static {p1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->getAscii(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/aalto/out/ByteWName;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public doConstructName(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;
    .locals 4

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->getAscii(Ljava/lang/String;[BI)V

    const/16 v3, 0x3a

    aput-byte v3, v2, v0

    invoke-static {p2, v2, v1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->getAscii(Ljava/lang/String;[BI)V

    new-instance v0, Lcom/fasterxml/aalto/out/ByteWName;

    invoke-direct {v0, p1, p2, v2}, Lcom/fasterxml/aalto/out/ByteWName;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public getHighestEncodable()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public writeRaw([CII)V
    .locals 4

    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_4

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_surrogate:I

    if-eqz v0, :cond_1

    aget-char v1, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/aalto/out/SingleByteXmlWriter;->outputSurrogates(II)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    :cond_1
    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_4

    add-int/lit8 v0, p2, 0x1

    aget-char p2, p1, p2

    const/16 v1, 0xff

    if-le p2, v1, :cond_2

    const-string v1, "raw content"

    invoke-virtual {p0, v1, p2}, Lcom/fasterxml/aalto/out/XmlWriter;->reportFailedEscaping(Ljava/lang/String;I)V

    :cond_2
    iget v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    iget v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    if-lt v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flushBuffer()V

    :cond_3
    iget-object v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    int-to-byte p2, p2

    aput-byte p2, v1, v2

    move p2, v0

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
