.class public abstract Lcom/fasterxml/aalto/out/ByteXmlWriter;
.super Lcom/fasterxml/aalto/out/XmlWriter;
.source "SourceFile"


# static fields
.field static final BYTES_CDATA_END:[B

.field static final BYTES_CDATA_START:[B

.field static final BYTES_COMMENT_END:[B

.field static final BYTES_COMMENT_START:[B

.field static final BYTES_XMLDECL_ENCODING:[B

.field static final BYTES_XMLDECL_STANDALONE:[B

.field static final BYTES_XMLDECL_START:[B


# instance fields
.field protected final _charTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

.field protected _out:Ljava/io/OutputStream;

.field protected _outputBuffer:[B

.field protected final _outputBufferLen:I

.field protected _outputPtr:I

.field protected _surrogate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<![CDATA["

    invoke-static {v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->getAscii(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->BYTES_CDATA_START:[B

    const-string v0, "]]>"

    invoke-static {v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->getAscii(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->BYTES_CDATA_END:[B

    const-string v0, "<!--"

    invoke-static {v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->getAscii(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->BYTES_COMMENT_START:[B

    const-string v0, "-->"

    invoke-static {v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->getAscii(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->BYTES_COMMENT_END:[B

    const-string v0, "<?xml version=\'"

    invoke-static {v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->getAscii(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->BYTES_XMLDECL_START:[B

    const-string v0, " encoding=\'"

    invoke-static {v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->getAscii(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->BYTES_XMLDECL_ENCODING:[B

    const-string v0, " standalone=\'"

    invoke-static {v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->getAscii(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->BYTES_XMLDECL_STANDALONE:[B

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/aalto/out/WriterConfig;Ljava/io/OutputStream;Lcom/fasterxml/aalto/util/XmlCharTypes;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;-><init>(Lcom/fasterxml/aalto/out/WriterConfig;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_surrogate:I

    iput-object p2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_out:Ljava/io/OutputStream;

    const/16 p2, 0xfa0

    invoke-virtual {p1, p2}, Lcom/fasterxml/aalto/out/WriterConfig;->allocFullBBuffer(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    array-length p1, p1

    iput p1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    iput v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    iput-object p3, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_charTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    return-void
.end method

.method public static final getAscii(Ljava/lang/String;[BI)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, p2, v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final getAscii(Ljava/lang/String;)[B
    .locals 2

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->getAscii(Ljava/lang/String;[BI)V

    return-object v0
.end method

.method private final longWriteCharacters(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBuffer:[C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    move v4, v0

    :cond_0
    add-int v5, v3, v4

    invoke-virtual {p1, v3, v5, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p0, v1, v2, v4}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeCharacters([CII)V

    sub-int/2addr v0, v4

    if-gtz v0, :cond_1

    return-void

    :cond_1
    move v3, v5

    goto :goto_0
.end method

.method private final writeSplitCharacters([CII)V
    .locals 5

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_c

    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_charTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->TEXT_CHARS:[I

    :cond_0
    aget-char v1, p1, p2

    const/16 v2, 0x800

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    aget v4, v0, v1

    if-eqz v4, :cond_a

    const/16 v4, 0xa

    if-eq v1, v4, :cond_9

    :goto_1
    add-int/lit8 p2, p2, 0x1

    if-ge v1, v2, :cond_2

    aget v0, v0, v1

    if-eq v0, v3, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    if-ge p2, p3, :cond_2

    aget-char v0, p1, p2

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_7

    :cond_2
    :goto_2
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeAsEntity(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->output2ByteChar(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/out/XmlWriter;->reportInvalidChar(I)V

    :cond_5
    iget-object v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/WriterConfig;->willEscapeCR()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowNr:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowNr:I

    :cond_7
    :goto_3
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    iget v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    if-lt v0, v2, :cond_8

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flushBuffer()V

    :cond_8
    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_0

    :cond_9
    iget v2, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowNr:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowNr:I

    :cond_a
    iget v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    if-lt v2, v3, :cond_b

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flushBuffer()V

    :cond_b
    iget-object v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_0

    :cond_c
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public _closeTarget(Z)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_out:Ljava/io/OutputStream;

    :cond_0
    return-void
.end method

.method public _releaseBuffers()V
    .locals 3

    invoke-super {p0}, Lcom/fasterxml/aalto/out/XmlWriter;->_releaseBuffers()V

    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {v2, v0}, Lcom/fasterxml/aalto/out/WriterConfig;->freeFullBBuffer([B)V

    iput-object v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBuffer:[C

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {v2, v0}, Lcom/fasterxml/aalto/out/WriterConfig;->freeFullCBuffer([C)V

    iput-object v1, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBuffer:[C

    :cond_1
    return-void
.end method

.method public final calcSurrogate(IILjava/lang/String;)I
    .locals 3

    .line 1
    const v0, 0xdc00

    .line 2
    .line 3
    .line 4
    if-lt p2, v0, :cond_0

    .line 5
    .line 6
    const v1, 0xdfff

    .line 7
    .line 8
    .line 9
    if-le p2, v1, :cond_1

    .line 10
    .line 11
    :cond_0
    const-string v1, "Incomplete surrogate pair"

    .line 12
    .line 13
    const-string v2, ": first char 0x"

    .line 14
    .line 15
    invoke-static {v1, p3, v2}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", second 0x"

    .line 27
    .line 28
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {p0, p3}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfContent(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    const p3, 0xd800

    .line 46
    .line 47
    .line 48
    sub-int/2addr p1, p3

    .line 49
    shl-int/lit8 p1, p1, 0xa

    .line 50
    .line 51
    const/high16 p3, 0x10000

    .line 52
    .line 53
    add-int/2addr p1, p3

    .line 54
    sub-int/2addr p2, v0

    .line 55
    add-int/2addr p2, p1

    .line 56
    const p1, 0x10ffff

    .line 57
    .line 58
    .line 59
    if-le p2, p1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0, p2}, Lcom/fasterxml/aalto/out/XmlWriter;->reportInvalidChar(I)V

    .line 62
    .line 63
    .line 64
    :cond_2
    return p2
.end method

.method public final constructName(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->verifyNameComponent(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->doConstructName(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    return-object p1
.end method

.method public constructName(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->verifyNameComponent(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->verifyNameComponent(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->doConstructName(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    return-object p1
.end method

.method public abstract doConstructName(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;
.end method

.method public abstract doConstructName(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;
.end method

.method public final fastWriteAttrValue([CII[BI)I
    .locals 4

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_7

    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_charTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->ATTR_CHARS:[I

    :cond_0
    aget-char v1, p1, p2

    const/16 v2, 0x800

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    aget v3, v0, v1

    if-eqz v3, :cond_6

    :goto_1
    iput p5, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int/lit8 p2, p2, 0x1

    if-ge v1, v2, :cond_4

    aget p5, v0, v1

    const/4 v0, 0x1

    if-eq p5, v0, :cond_3

    const/4 v0, 0x5

    if-eq p5, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeAsEntity(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->output2ByteChar(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/out/XmlWriter;->reportInvalidChar(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->outputMultiByteChar(I[CII)I

    move-result p2

    :goto_2
    sub-int p5, p3, p2

    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    iget v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    sub-int/2addr v0, v1

    if-lt p5, v0, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flushBuffer()V

    :cond_5
    iget p5, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    goto :goto_0

    :cond_6
    add-int/lit8 v2, p5, 0x1

    int-to-byte v1, v1

    aput-byte v1, p4, p5

    add-int/lit8 p2, p2, 0x1

    move p5, v2

    if-lt p2, p3, :cond_0

    :cond_7
    return p5
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flushBuffer()V

    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method

.method public final flushBuffer()V
    .locals 4

    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_out:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locPastChars:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locPastChars:I

    iget v2, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowStartOffset:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowStartOffset:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    iget-object v3, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    invoke-virtual {v1, v3, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    return-void
.end method

.method public final getOutputPtr()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    return v0
.end method

.method public abstract output2ByteChar(I)V
.end method

.method public abstract outputMultiByteChar(I[CII)I
.end method

.method public abstract outputSurrogates(II)V
.end method

.method public final throwUnpairedSurrogate()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_surrogate:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_surrogate:I

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->throwUnpairedSurrogate(I)V

    return-void
.end method

.method public final throwUnpairedSurrogate(I)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flush()V

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unpaired surrogate character (0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyNameComponent(Ljava/lang/String;)V
    .locals 13

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->WERR_NAME_EMPTY:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfName(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const-string v2, " in name"

    .line 24
    .line 25
    const-string v3, ") not valid surrogate first character"

    .line 26
    .line 27
    const v4, 0xdc00

    .line 28
    .line 29
    .line 30
    const v5, 0xdfff

    .line 31
    .line 32
    .line 33
    const v6, 0xd800

    .line 34
    .line 35
    .line 36
    const/4 v7, 0x1

    .line 37
    if-lt v0, v6, :cond_4

    .line 38
    .line 39
    if-gt v0, v5, :cond_4

    .line 40
    .line 41
    if-lt v0, v4, :cond_2

    .line 42
    .line 43
    new-instance v8, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v9, "Illegal surrogate pairing in name: first character ("

    .line 46
    .line 47
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lcom/fasterxml/aalto/util/XmlChars;->getCharDesc(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {p0, v8}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfName(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    const/4 v8, 0x2

    .line 68
    if-ge v1, v8, :cond_3

    .line 69
    .line 70
    const-string v9, "Illegal surrogate pairing in name: incomplete surrogate (missing second half)"

    .line 71
    .line 72
    invoke-virtual {p0, v9}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfName(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    invoke-virtual {p0, v0, v7, v2}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->calcSurrogate(IILjava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    const/4 v7, 0x2

    .line 84
    :cond_4
    invoke-static {v0}, Lcom/fasterxml/aalto/util/XmlChars;->is10NameStartChar(I)Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    const-string v9, " (name \""

    .line 89
    .line 90
    if-nez v8, :cond_5

    .line 91
    .line 92
    new-instance v8, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v10, "Invalid name start character "

    .line 95
    .line 96
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Lcom/fasterxml/aalto/util/XmlChars;->getCharDesc(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v10, "\")"

    .line 113
    .line 114
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-virtual {p0, v8}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfName(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/XmlWriter;->getHighestEncodable()I

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    const-string v10, ")"

    .line 129
    .line 130
    if-le v0, v8, :cond_6

    .line 131
    .line 132
    new-instance v11, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v12, "Illegal name start character "

    .line 135
    .line 136
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v0}, Lcom/fasterxml/aalto/util/XmlChars;->getCharDesc(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v0, "\"): can not be expressed using effective encoding ("

    .line 153
    .line 154
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/WriterConfig;->getActualEncoding()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfName(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_6
    :goto_0
    if-ge v7, v1, :cond_c

    .line 177
    .line 178
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-lt v0, v6, :cond_9

    .line 183
    .line 184
    if-gt v0, v5, :cond_9

    .line 185
    .line 186
    if-lt v0, v4, :cond_7

    .line 187
    .line 188
    const-string v11, "Illegal surrogate pairing in name: character at #"

    .line 189
    .line 190
    const-string v12, " ("

    .line 191
    .line 192
    invoke-static {v7, v11, v12}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    invoke-static {v0}, Lcom/fasterxml/aalto/util/XmlChars;->getCharDesc(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v12

    .line 200
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    invoke-virtual {p0, v11}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfName(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 214
    .line 215
    if-lt v7, v1, :cond_8

    .line 216
    .line 217
    const-string v11, "Illegal surrogate pairing in name: name ends with incomplete surrogate pair"

    .line 218
    .line 219
    invoke-virtual {p0, v11}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfName(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    :cond_8
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 223
    .line 224
    .line 225
    move-result v11

    .line 226
    invoke-virtual {p0, v0, v11, v2}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->calcSurrogate(IILjava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    :cond_9
    if-le v0, v8, :cond_a

    .line 231
    .line 232
    new-instance v11, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    const-string v12, "Illegal name character "

    .line 235
    .line 236
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-static {v0}, Lcom/fasterxml/aalto/util/XmlChars;->getCharDesc(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v12

    .line 243
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v12, "\", index #"

    .line 253
    .line 254
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v12, "): can not be expressed using effective encoding ("

    .line 261
    .line 262
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    iget-object v12, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    .line 266
    .line 267
    invoke-virtual {v12}, Lcom/fasterxml/aalto/out/WriterConfig;->getActualEncoding()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v12

    .line 271
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v11

    .line 281
    invoke-virtual {p0, v11}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfName(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    :cond_a
    invoke-static {v0}, Lcom/fasterxml/aalto/util/XmlChars;->is10NameChar(I)Z

    .line 285
    .line 286
    .line 287
    move-result v11

    .line 288
    if-nez v11, :cond_b

    .line 289
    .line 290
    new-instance v11, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string v12, "Invalid name character "

    .line 293
    .line 294
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-static {v0}, Lcom/fasterxml/aalto/util/XmlChars;->getCharDesc(I)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v0, ") in name (\""

    .line 305
    .line 306
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v0, "\"), index #"

    .line 313
    .line 314
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfName(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 328
    .line 329
    goto/16 :goto_0

    .line 330
    .line 331
    :cond_c
    return-void
.end method

.method public final writeAsEntity(I)V
    .locals 11

    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int/lit8 v2, v1, 0xa

    array-length v3, v0

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flushBuffer()V

    iget v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    :cond_0
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x26

    aput-byte v3, v0, v1

    const/16 v4, 0x100

    const/16 v5, 0x78

    const/16 v6, 0x23

    const/16 v7, 0xa

    if-ge p1, v4, :cond_9

    const/16 v4, 0x70

    const/16 v8, 0x61

    if-ne p1, v3, :cond_1

    add-int/lit8 p1, v1, 0x2

    aput-byte v8, v0, v2

    add-int/lit8 v2, v1, 0x3

    const/16 v3, 0x6d

    aput-byte v3, v0, p1

    add-int/lit8 v1, v1, 0x4

    aput-byte v4, v0, v2

    goto/16 :goto_4

    :cond_1
    const/16 v3, 0x3c

    const/16 v9, 0x74

    if-ne p1, v3, :cond_2

    add-int/lit8 p1, v1, 0x2

    const/16 v3, 0x6c

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x3

    aput-byte v9, v0, p1

    goto/16 :goto_4

    :cond_2
    const/16 v3, 0x3e

    if-ne p1, v3, :cond_3

    add-int/lit8 p1, v1, 0x2

    const/16 v3, 0x67

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x3

    aput-byte v9, v0, p1

    goto/16 :goto_4

    :cond_3
    const/16 v3, 0x27

    const/16 v10, 0x6f

    if-ne p1, v3, :cond_4

    add-int/lit8 p1, v1, 0x2

    aput-byte v8, v0, v2

    add-int/lit8 v2, v1, 0x3

    aput-byte v4, v0, p1

    add-int/lit8 p1, v1, 0x4

    aput-byte v10, v0, v2

    add-int/lit8 v1, v1, 0x5

    const/16 v2, 0x73

    aput-byte v2, v0, p1

    goto/16 :goto_4

    :cond_4
    const/16 v3, 0x22

    if-ne p1, v3, :cond_5

    add-int/lit8 p1, v1, 0x2

    const/16 v3, 0x71

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x3

    const/16 v3, 0x75

    aput-byte v3, v0, p1

    add-int/lit8 p1, v1, 0x4

    aput-byte v10, v0, v2

    add-int/lit8 v1, v1, 0x5

    aput-byte v9, v0, p1

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v1, 0x2

    aput-byte v6, v0, v2

    add-int/lit8 v2, v1, 0x3

    aput-byte v5, v0, v3

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
    int-to-byte v3, v3

    aput-byte v3, v0, v2

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
    int-to-byte p1, p1

    aput-byte p1, v0, v2

    goto :goto_4

    :cond_9
    add-int/lit8 v3, v1, 0x2

    aput-byte v6, v0, v2

    add-int/lit8 v1, v1, 0x3

    aput-byte v5, v0, v3

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
    int-to-byte v4, v4

    aput-byte v4, v0, v3

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
    int-to-byte p1, p1

    aput-byte p1, v0, v3

    :goto_4
    add-int/lit8 p1, v1, 0x1

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    iput p1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    return-void
.end method

.method public final writeAttrValue([CII)V
    .locals 5

    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_surrogate:I

    if-eqz v0, :cond_0

    aget-char v1, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->outputSurrogates(II)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    :cond_0
    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_8

    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_charTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->ATTR_CHARS:[I

    :cond_1
    aget-char v1, p1, p2

    const/16 v2, 0x800

    if-lt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    aget v3, v0, v1

    if-eqz v3, :cond_6

    :goto_1
    add-int/lit8 p2, p2, 0x1

    if-ge v1, v2, :cond_5

    aget v0, v0, v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeAsEntity(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/out/XmlWriter;->reportInvalidChar(I)V

    :cond_4
    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->output2ByteChar(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->outputMultiByteChar(I[CII)I

    move-result p2

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    if-lt v2, v3, :cond_7

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flushBuffer()V

    :cond_7
    iget-object v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_1

    :cond_8
    return-void
.end method

.method public final writeAttribute(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBufferLen:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeLongAttribute(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBuffer:[C

    const/4 v2, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p2, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    :cond_1
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeAttribute(Lcom/fasterxml/aalto/out/WName;[CII)V

    return-void
.end method

.method public final writeAttribute(Lcom/fasterxml/aalto/out/WName;[CII)V
    .locals 9

    .line 2
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_surrogate:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->throwUnpairedSurrogate()V

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    iget-object v7, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/WName;->serializedLength()I

    move-result v1

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    const/16 v3, 0x20

    if-lt v1, v2, :cond_1

    invoke-virtual {p0, v3, p1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeName(BLcom/fasterxml/aalto/out/WName;)V

    iget p1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    aput-byte v3, v7, v0

    invoke-virtual {p1, v7, v1}, Lcom/fasterxml/aalto/out/WName;->appendBytes([BI)I

    move-result p1

    add-int/2addr p1, v1

    :goto_0
    add-int/lit8 v0, p1, 0x3

    add-int/2addr v0, p4

    iget v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    const/16 v2, 0x3d

    const/16 v8, 0x22

    if-le v0, v1, :cond_3

    iput p1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flushBuffer()V

    iget p1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int/lit8 v0, p1, 0x1

    aput-byte v2, v7, p1

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    aput-byte v8, v7, v0

    add-int v0, p1, p4

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    if-le v0, v1, :cond_2

    invoke-virtual {p0, p2, p3, p4}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeAttrValue([CII)V

    invoke-virtual {p0, v8}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw(B)V

    return-void

    :cond_2
    :goto_1
    move v6, p1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, p1, 0x1

    aput-byte v2, v7, p1

    add-int/lit8 p1, p1, 0x2

    aput-byte v8, v7, v0

    goto :goto_1

    :goto_2
    if-lez p4, :cond_4

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->fastWriteAttrValue([CII[BI)I

    move-result v6

    :cond_4
    add-int/lit8 p1, v6, 0x1

    aput-byte v8, v7, v6

    iput p1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    return-void
.end method

.method public writeCData(Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeCDataStart()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_2

    iget-object v3, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBuffer:[C

    array-length v4, v3

    if-le v4, v0, :cond_0

    move v4, v0

    :cond_0
    add-int v5, v2, v4

    invoke-virtual {p1, v2, v5, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p0, v3, v1, v4}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeCDataContents([CII)I

    move-result v3

    if-ltz v3, :cond_1

    add-int/2addr v2, v3

    return v2

    :cond_1
    sub-int/2addr v0, v4

    move v2, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeCDataEnd()V

    const/4 p1, -0x1

    return p1
.end method

.method public writeCDataContents([CII)I
    .locals 5

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_d

    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_charTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->OTHER_CHARS:[I

    :cond_0
    aget-char v1, p1, p2

    const/16 v2, 0x800

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    aget v3, v0, v1

    if-eqz v3, :cond_b

    :goto_1
    add-int/lit8 v3, p2, 0x1

    if-ge v1, v2, :cond_a

    aget v0, v0, v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    const/4 v4, 0x3

    if-eq v0, v4, :cond_7

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    const/16 v2, 0xb

    if-eq v0, v2, :cond_2

    goto :goto_3

    :cond_2
    if-ge v3, p3, :cond_8

    aget-char v0, p1, v3

    const/16 v2, 0x5d

    if-ne v0, v2, :cond_8

    add-int/lit8 v0, p2, 0x2

    if-ge v0, p3, :cond_5

    aget-char v0, p1, v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_5

    add-int/lit8 p2, p2, 0x3

    invoke-virtual {p0, v2, v2}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw(BB)V

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeCDataEnd()V

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeCDataStart()V

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw(B)V

    goto :goto_0

    :cond_3
    const-string p2, "CDATA"

    invoke-virtual {p0, p2, v1}, Lcom/fasterxml/aalto/out/XmlWriter;->reportFailedEscaping(Ljava/lang/String;I)V

    :cond_4
    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->output2ByteChar(I)V

    :cond_5
    :goto_2
    move p2, v3

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/out/XmlWriter;->reportInvalidChar(I)V

    :cond_7
    iget p2, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowNr:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowNr:I

    :cond_8
    :goto_3
    iget p2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    if-lt p2, v0, :cond_9

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flushBuffer()V

    :cond_9
    iget-object p2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    goto :goto_2

    :cond_a
    invoke-virtual {p0, v1, p1, v3, p3}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->outputMultiByteChar(I[CII)I

    move-result p2

    goto :goto_0

    :cond_b
    iget v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    if-lt v2, v3, :cond_c

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flushBuffer()V

    :cond_c
    iget-object v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_0

    :cond_d
    const/4 p1, -0x1

    return p1
.end method

.method public final writeCDataEnd()V
    .locals 1

    sget-object v0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->BYTES_CDATA_END:[B

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw([B)V

    return-void
.end method

.method public final writeCDataStart()V
    .locals 1

    sget-object v0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->BYTES_CDATA_START:[B

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw([B)V

    return-void
.end method

.method public final writeCharacters(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBufferLen:I

    if-le v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->longWriteCharacters(Ljava/lang/String;)V

    return-void

    :cond_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBuffer:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p0, v1, v2, v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeCharacters([CII)V

    :cond_1
    return-void
.end method

.method public final writeCharacters([CII)V
    .locals 5

    .line 2
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_surrogate:I

    if-eqz v0, :cond_0

    aget-char v1, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->outputSurrogates(II)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int v1, v0, p3

    iget v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    if-le v1, v2, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeSplitCharacters([CII)V

    return-void

    :cond_1
    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_b

    iget-object v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_charTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v1, v1, Lcom/fasterxml/aalto/util/XmlCharTypes;->TEXT_CHARS:[I

    :cond_2
    aget-char v2, p1, p2

    const/16 v3, 0x800

    if-lt v2, v3, :cond_3

    goto :goto_1

    :cond_3
    aget v4, v1, v2

    if-eqz v4, :cond_a

    const/16 v4, 0xa

    if-eq v2, v4, :cond_9

    :goto_1
    add-int/lit8 p2, p2, 0x1

    if-ge v2, v3, :cond_7

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    if-ge p2, p3, :cond_5

    aget-char v1, p1, p2

    const/16 v3, 0x3e

    if-ne v1, v3, :cond_4

    goto :goto_4

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    add-int/lit8 v3, v0, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :goto_3
    move v0, v3

    goto :goto_0

    :cond_5
    :goto_4
    :pswitch_2
    iput v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeAsEntity(I)V

    goto :goto_5

    :pswitch_3
    iput v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->output2ByteChar(I)V

    goto :goto_5

    :pswitch_4
    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/out/XmlWriter;->reportInvalidChar(I)V

    :pswitch_5
    iget-object v1, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {v1}, Lcom/fasterxml/aalto/out/WriterConfig;->willEscapeCR()Z

    move-result v1

    if-eqz v1, :cond_6

    iput v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    add-int/lit8 v3, v0, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    iget v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowNr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowNr:I

    goto :goto_3

    :cond_7
    iput v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->outputMultiByteChar(I[CII)I

    move-result p2

    :goto_5
    :pswitch_6
    sub-int v0, p3, p2

    iget v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    iget v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flushBuffer()V

    :cond_8
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    goto :goto_0

    :cond_9
    iget v3, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowNr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowNr:I

    :cond_a
    iget-object v3, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    add-int/lit8 v4, v0, 0x1

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    add-int/lit8 p2, p2, 0x1

    move v0, v4

    if-lt p2, p3, :cond_2

    :cond_b
    iput v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public writeComment(Ljava/lang/String;)I
    .locals 7

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeCommentStart()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_2

    iget-object v3, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBuffer:[C

    array-length v4, v3

    if-ge v0, v4, :cond_0

    move v5, v0

    goto :goto_1

    :cond_0
    move v5, v4

    :goto_1
    add-int v6, v2, v5

    invoke-virtual {p1, v2, v6, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p0, v3, v1, v5}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeCommentContents([CII)I

    move-result v3

    if-ltz v3, :cond_1

    add-int/2addr v2, v3

    return v2

    :cond_1
    add-int/2addr v2, v4

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeCommentEnd()V

    const/4 p1, -0x1

    return p1
.end method

.method public writeCommentContents([CII)I
    .locals 5

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_c

    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_charTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->OTHER_CHARS:[I

    :cond_0
    aget-char v1, p1, p2

    const/16 v2, 0x800

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    aget v3, v0, v1

    if-eqz v3, :cond_a

    :goto_1
    add-int/lit8 p2, p2, 0x1

    if-ge v1, v2, :cond_9

    aget v0, v0, v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_5

    const/16 v2, 0xd

    if-eq v0, v2, :cond_2

    goto :goto_2

    :cond_2
    const/16 v0, 0x2d

    if-ge p2, p3, :cond_3

    aget-char v2, p1, p2

    if-eq v2, v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw(BB)V

    goto :goto_0

    :cond_4
    const-string v0, "comment"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/aalto/out/XmlWriter;->reportFailedEscaping(Ljava/lang/String;I)V

    :cond_5
    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->output2ByteChar(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/out/XmlWriter;->reportInvalidChar(I)V

    :cond_7
    iget v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowNr:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowNr:I

    :goto_2
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    iget v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    if-lt v0, v2, :cond_8

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flushBuffer()V

    :cond_8
    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_0

    :cond_9
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->outputMultiByteChar(I[CII)I

    move-result p2

    goto :goto_0

    :cond_a
    iget v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    if-lt v2, v3, :cond_b

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flushBuffer()V

    :cond_b
    iget-object v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_0

    :cond_c
    const/4 p1, -0x1

    return p1
.end method

.method public final writeCommentEnd()V
    .locals 1

    sget-object v0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->BYTES_COMMENT_END:[B

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw([B)V

    return-void
.end method

.method public final writeCommentStart()V
    .locals 1

    sget-object v0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->BYTES_COMMENT_START:[B

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw([B)V

    return-void
.end method

.method public writeDTD(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public writeDTD(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw(Ljava/lang/String;II)V

    return-void
.end method

.method public final writeEndTag(Lcom/fasterxml/aalto/out/WName;)V
    .locals 7

    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_surrogate:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->throwUnpairedSurrogate()V

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/WName;->serializedLength()I

    move-result v1

    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x3

    iget v3, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    const/16 v4, 0x3e

    const/16 v5, 0x2f

    const/16 v6, 0x3c

    if-le v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flushBuffer()V

    add-int/lit8 v1, v1, 0x3

    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    if-le v1, v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v6}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lcom/fasterxml/aalto/out/WName;->writeBytes(Ljava/io/OutputStream;)V

    iget-object p1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    aput-byte v4, p1, v0

    return-void

    :cond_1
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    :cond_2
    iget-object v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    add-int/lit8 v2, v0, 0x1

    aput-byte v6, v1, v0

    add-int/lit8 v0, v0, 0x2

    aput-byte v5, v1, v2

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/aalto/out/WName;->appendBytes([BI)I

    move-result p1

    add-int/2addr p1, v0

    add-int/lit8 v0, p1, 0x1

    aput-byte v4, v1, p1

    iput v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    return-void
.end method

.method public writeEntityReference(Lcom/fasterxml/aalto/out/WName;)V
    .locals 1

    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw(B)V

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeName(Lcom/fasterxml/aalto/out/WName;)V

    const/16 p1, 0x3b

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw(B)V

    return-void
.end method

.method public final writeLongAttribute(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;I)V
    .locals 5

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw(B)V

    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/WName;->serializedLength()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int v2, v1, v0

    iget v3, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    if-le v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flushBuffer()V

    iget v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lcom/fasterxml/aalto/out/WName;->writeBytes(Ljava/io/OutputStream;)V

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    iget-object v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/aalto/out/WName;->appendBytes([BI)I

    move-result p1

    add-int/2addr p1, v0

    :goto_0
    iput p1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/aalto/out/WName;->appendBytes([BI)I

    move-result p1

    add-int/2addr p1, v1

    goto :goto_0

    :goto_1
    const/16 p1, 0x3d

    const/16 v0, 0x22

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw(BB)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_2
    if-lez p3, :cond_3

    iget-object v2, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBuffer:[C

    array-length v3, v2

    if-ge p3, v3, :cond_2

    move v3, p3

    :cond_2
    add-int v4, v1, v3

    invoke-virtual {p2, v1, v4, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p0, v2, p1, v3}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeAttrValue([CII)V

    sub-int/2addr p3, v3

    move v1, v4

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw(B)V

    return-void
.end method

.method public final writeName(BLcom/fasterxml/aalto/out/WName;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flushBuffer()V

    invoke-virtual {p2}, Lcom/fasterxml/aalto/out/WName;->serializedLength()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object p1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Lcom/fasterxml/aalto/out/WName;->writeBytes(Ljava/io/OutputStream;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    iget-object v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    add-int/lit8 v2, v0, 0x1

    aput-byte p1, v1, v0

    invoke-virtual {p2, v1, v2}, Lcom/fasterxml/aalto/out/WName;->appendBytes([BI)I

    move-result p1

    add-int/2addr p1, v2

    iput p1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    return-void
.end method

.method public final writeName(Lcom/fasterxml/aalto/out/WName;)V
    .locals 4

    .line 2
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/WName;->serializedLength()I

    move-result v1

    add-int v2, v0, v1

    iget v3, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    if-le v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flushBuffer()V

    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lcom/fasterxml/aalto/out/WName;->writeBytes(Ljava/io/OutputStream;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    :cond_1
    iget-object v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/aalto/out/WName;->appendBytes([BI)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    return-void
.end method

.method public writePI(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;)I
    .locals 6

    const/16 v0, 0x3c

    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw(BB)V

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeName(Lcom/fasterxml/aalto/out/WName;)V

    if-eqz p2, :cond_2

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw(B)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lez p1, :cond_2

    iget-object v3, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBuffer:[C

    array-length v4, v3

    if-le v4, p1, :cond_0

    move v4, p1

    :cond_0
    add-int v5, v2, v4

    invoke-virtual {p2, v2, v5, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p0, v3, v0, v4}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writePIData([CII)I

    move-result v3

    if-ltz v3, :cond_1

    add-int/2addr v2, v3

    return v2

    :cond_1
    sub-int/2addr p1, v4

    move v2, v5

    goto :goto_0

    :cond_2
    const/16 p1, 0x3e

    invoke-virtual {p0, v1, p1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw(BB)V

    const/4 p1, -0x1

    return p1
.end method

.method public writePIData([CII)I
    .locals 5

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_c

    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_charTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->OTHER_CHARS:[I

    :cond_0
    aget-char v1, p1, p2

    const/16 v2, 0x800

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    aget v3, v0, v1

    if-eqz v3, :cond_a

    :goto_1
    add-int/lit8 p2, p2, 0x1

    if-ge v1, v2, :cond_9

    aget v0, v0, v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    const/16 v2, 0xc

    if-eq v0, v2, :cond_2

    goto :goto_2

    :cond_2
    if-ge p2, p3, :cond_7

    aget-char v0, p1, p2

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_7

    return p2

    :cond_3
    const-string v0, "processing instruction"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/aalto/out/XmlWriter;->reportFailedEscaping(Ljava/lang/String;I)V

    :cond_4
    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->output2ByteChar(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/out/XmlWriter;->reportInvalidChar(I)V

    :cond_6
    iget v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowNr:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowNr:I

    :cond_7
    :goto_2
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    iget v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    if-lt v0, v2, :cond_8

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flushBuffer()V

    :cond_8
    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_0

    :cond_9
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->outputMultiByteChar(I[CII)I

    move-result p2

    goto :goto_0

    :cond_a
    iget v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    if-lt v2, v3, :cond_b

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flushBuffer()V

    :cond_b
    iget-object v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_0

    :cond_c
    const/4 p1, -0x1

    return p1
.end method

.method public final writeRaw(B)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_surrogate:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->throwUnpairedSurrogate()V

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flushBuffer()V

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public final writeRaw(BB)V
    .locals 3

    .line 2
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_surrogate:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->throwUnpairedSurrogate()V

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flushBuffer()V

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int/lit8 v2, v1, 0x1

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    aput-byte p2, v0, v2

    return-void
.end method

.method public final writeRaw(Ljava/lang/String;II)V
    .locals 4

    .line 3
    :goto_0
    if-lez p3, :cond_1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBuffer:[C

    array-length v1, v0

    if-ge p3, v1, :cond_0

    move v1, p3

    :cond_0
    add-int v2, p2, v1

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p0, v0, v3, v1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw([CII)V

    sub-int/2addr p3, v1

    move p2, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final writeRaw([B)V
    .locals 2

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw([BII)V

    return-void
.end method

.method public final writeRaw([BII)V
    .locals 3

    .line 5
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_surrogate:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->throwUnpairedSurrogate()V

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int v1, v0, p3

    iget v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    return-void

    :cond_1
    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flush()V

    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    :cond_2
    const/16 v1, 0xfa

    if-ge p3, v1, :cond_3

    iget-object v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-void
.end method

.method public abstract writeRaw([CII)V
.end method

.method public final writeSpace(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_1

    iget-object v3, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBuffer:[C

    array-length v4, v3

    if-ge v0, v4, :cond_0

    move v4, v0

    :cond_0
    add-int v5, v2, v4

    invoke-virtual {p1, v2, v5, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p0, v3, v1, v4}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeSpace([CII)V

    sub-int/2addr v0, v4

    move v2, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeSpace([CII)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_out:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_surrogate:I

    if-eqz v0, :cond_1

    sget-object v1, Lcom/fasterxml/aalto/impl/ErrorConsts;->WERR_SPACE_CONTENT:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    add-int/lit8 v2, p2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfContent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_5

    add-int/lit8 v0, p2, 0x1

    aget-char v1, p1, p2

    const/16 v2, 0x20

    if-le v1, v2, :cond_3

    iget-object v2, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/out/WriterConfig;->isXml11()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x85

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2028

    if-eq v1, v2, :cond_3

    :cond_2
    sget-object v2, Lcom/fasterxml/aalto/impl/ErrorConsts;->WERR_SPACE_CONTENT:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v2, v3, p2}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfContent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    iget p2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    iget v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    if-lt p2, v2, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flushBuffer()V

    :cond_4
    iget-object p2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    move p2, v0

    goto :goto_0

    :cond_5
    return-void
.end method

.method public writeStartTagEmptyEnd()V
    .locals 4

    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flushBuffer()V

    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x2f

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x2

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    iput v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    return-void
.end method

.method public final writeStartTagEnd()V
    .locals 3

    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_surrogate:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->throwUnpairedSurrogate()V

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->flushBuffer()V

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    return-void
.end method

.method public final writeStartTagStart(Lcom/fasterxml/aalto/out/WName;)V
    .locals 4

    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_surrogate:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->throwUnpairedSurrogate()V

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/WName;->serializedLength()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBufferLen:I

    const/16 v3, 0x3c

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v3, p1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeName(BLcom/fasterxml/aalto/out/WName;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputBuffer:[B

    add-int/lit8 v2, v0, 0x1

    aput-byte v3, v1, v0

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/aalto/out/WName;->appendBytes([BI)I

    move-result p1

    add-int/2addr p1, v2

    iput p1, p0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->_outputPtr:I

    return-void
.end method

.method public writeXmlDeclaration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->BYTES_XMLDECL_START:[B

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw([B)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw(Ljava/lang/String;II)V

    const/16 p1, 0x27

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw(B)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/fasterxml/aalto/out/ByteXmlWriter;->BYTES_XMLDECL_ENCODING:[B

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw([B)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p2, v1, v0}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw(Ljava/lang/String;II)V

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw(B)V

    :cond_0
    if-eqz p3, :cond_1

    sget-object p2, Lcom/fasterxml/aalto/out/ByteXmlWriter;->BYTES_XMLDECL_STANDALONE:[B

    invoke-virtual {p0, p2}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw([B)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, p3, v1, p2}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw(Ljava/lang/String;II)V

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw(B)V

    :cond_1
    const/16 p1, 0x3f

    const/16 p2, 0x3e

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/aalto/out/ByteXmlWriter;->writeRaw(BB)V

    return-void
.end method
