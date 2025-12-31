.class public abstract Lcom/fasterxml/aalto/out/XmlWriter;
.super Lcom/fasterxml/aalto/out/WNameFactory;
.source "SourceFile"


# instance fields
.field protected final _cfgNsAware:Z

.field protected final _checkContent:Z

.field protected final _checkNames:Z

.field protected final _config:Lcom/fasterxml/aalto/out/WriterConfig;

.field protected _copyBuffer:[C

.field protected final _copyBufferLen:I

.field protected _locPastChars:I

.field protected _locRowNr:I

.field protected _locRowStartOffset:I

.field protected _xml11:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/aalto/out/WriterConfig;)V
    .locals 2

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/WNameFactory;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_xml11:Z

    iput v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locPastChars:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowNr:I

    iput v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowStartOffset:I

    iput-object p1, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Lcom/fasterxml/aalto/out/WriterConfig;->allocMediumCBuffer(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBuffer:[C

    array-length v0, v0

    iput v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBufferLen:I

    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/WriterConfig;->isNamespaceAware()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_cfgNsAware:Z

    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/WriterConfig;->willCheckContent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_checkContent:Z

    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/WriterConfig;->willCheckNames()Z

    move-result p1

    iput-boolean p1, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_checkNames:Z

    return-void
.end method

.method public static final guessEncodingBitSize(Lcom/fasterxml/aalto/out/WriterConfig;)I
    .locals 3

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/WriterConfig;->getPreferredEncoding()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/fasterxml/aalto/util/CharsetNames;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "UTF-8"

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    const-string v1, "ISO-8859-1"

    const/16 v2, 0x8

    if-ne p0, v1, :cond_2

    return v2

    :cond_2
    const-string v1, "US-ASCII"

    if-ne p0, v1, :cond_3

    const/4 p0, 0x7

    return p0

    :cond_3
    const-string v1, "UTF-16"

    if-eq p0, v1, :cond_5

    const-string v1, "UTF-16BE"

    if-eq p0, v1, :cond_5

    const-string v1, "UTF-16LE"

    if-eq p0, v1, :cond_5

    const-string v1, "UTF-32BE"

    if-eq p0, v1, :cond_5

    const-string v1, "UTF-32LE"

    if-ne p0, v1, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v0
.end method


# virtual methods
.method public abstract _closeTarget(Z)V
.end method

.method public _releaseBuffers()V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBuffer:[C

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBuffer:[C

    iget-object v1, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {v1, v0}, Lcom/fasterxml/aalto/out/WriterConfig;->freeMediumCBuffer([C)V

    :cond_0
    return-void
.end method

.method public final close(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/XmlWriter;->flush()V

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/XmlWriter;->_releaseBuffers()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/WriterConfig;->willAutoCloseOutput()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;->_closeTarget(Z)V

    return-void
.end method

.method public enableXml11()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_xml11:Z

    return-void
.end method

.method public abstract flush()V
.end method

.method public getAbsOffset()I
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locPastChars:I

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/XmlWriter;->getOutputPtr()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getColumn()I
    .locals 2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/XmlWriter;->getOutputPtr()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowStartOffset:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract getHighestEncodable()I
.end method

.method public abstract getOutputPtr()I
.end method

.method public getRow()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowNr:I

    return v0
.end method

.method public reportFailedEscaping(Ljava/lang/String;I)V
    .locals 3

    const v0, 0xfffe

    if-eq p2, v0, :cond_0

    const v0, 0xffff

    if-eq p2, v0, :cond_0

    const v0, 0xd800

    if-lt p2, v0, :cond_1

    const v0, 0xdfff

    if-gt p2, v0, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/aalto/out/XmlWriter;->reportInvalidChar(I)V

    :cond_1
    const/16 v0, 0x20

    if-ge p2, v0, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/WriterConfig;->isXml11()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0, p2}, Lcom/fasterxml/aalto/out/XmlWriter;->reportInvalidChar(I)V

    :cond_3
    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->WERR_NO_ESCAPING:Ljava/lang/String;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, p2, v2

    const/4 p1, 0x1

    aput-object v1, p2, p1

    invoke-static {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfContent(Ljava/lang/String;)V

    return-void
.end method

.method public reportInvalidChar(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/XmlWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string v0, "Invalid null character in text to output"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfContent(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/16 v0, 0x20

    .line 12
    .line 13
    if-lt p1, v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x7f

    .line 16
    .line 17
    if-lt p1, v0, :cond_3

    .line 18
    .line 19
    const/16 v0, 0x9f

    .line 20
    .line 21
    if-gt p1, v0, :cond_3

    .line 22
    .line 23
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "Invalid white space character (0x"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ") in text to output"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-boolean v1, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_xml11:Z

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    const-string v1, " (can only be output using character entity)"

    .line 51
    .line 52
    invoke-static {v0, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :cond_2
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfContent(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    const v0, 0x10ffff

    .line 60
    .line 61
    .line 62
    if-le p1, v0, :cond_4

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v1, "Illegal unicode character point (0x"

    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ") to output; max is 0x10FFFF as per RFC 3629"

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfContent(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    const v0, 0xd800

    .line 91
    .line 92
    .line 93
    if-lt p1, v0, :cond_5

    .line 94
    .line 95
    const v0, 0xdfff

    .line 96
    .line 97
    .line 98
    if-gt p1, v0, :cond_5

    .line 99
    .line 100
    const-string v0, "Illegal surrogate pair -- can only be output via character entities (for current encoding), which are not allowed in this content"

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfContent(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v1, "Invalid XML character "

    .line 108
    .line 109
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Lcom/fasterxml/aalto/util/XmlChars;->getCharDesc(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string p1, " in text to output"

    .line 120
    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfContent(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :catch_0
    move-exception p1

    .line 133
    new-instance v0, Lcom/fasterxml/aalto/impl/IoStreamException;

    .line 134
    .line 135
    invoke-direct {v0, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    .line 136
    .line 137
    .line 138
    throw v0
.end method

.method public reportNwfContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;->throwOutputError(Ljava/lang/String;)V

    return-void
.end method

.method public reportNwfContent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-static {p1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfContent(Ljava/lang/String;)V

    return-void
.end method

.method public reportNwfName(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;->throwOutputError(Ljava/lang/String;)V

    return-void
.end method

.method public throwOutputError(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/XmlWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    invoke-direct {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {v0, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public abstract writeAttribute(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;)V
.end method

.method public abstract writeCData(Ljava/lang/String;)I
.end method

.method public abstract writeCharacters(Ljava/lang/String;)V
.end method

.method public abstract writeCharacters([CII)V
.end method

.method public abstract writeComment(Ljava/lang/String;)I
.end method

.method public abstract writeDTD(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract writeDTD(Ljava/lang/String;)V
.end method

.method public abstract writeEndTag(Lcom/fasterxml/aalto/out/WName;)V
.end method

.method public abstract writeEntityReference(Lcom/fasterxml/aalto/out/WName;)V
.end method

.method public abstract writePI(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;)I
.end method

.method public abstract writeRaw(Ljava/lang/String;II)V
.end method

.method public abstract writeSpace(Ljava/lang/String;)V
.end method

.method public abstract writeSpace([CII)V
.end method

.method public abstract writeStartTagEmptyEnd()V
.end method

.method public abstract writeStartTagEnd()V
.end method

.method public abstract writeStartTagStart(Lcom/fasterxml/aalto/out/WName;)V
.end method

.method public abstract writeXmlDeclaration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
