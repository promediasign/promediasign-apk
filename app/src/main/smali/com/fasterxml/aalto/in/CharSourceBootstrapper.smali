.class public final Lcom/fasterxml/aalto/in/CharSourceBootstrapper;
.super Lcom/fasterxml/aalto/in/InputBootstrapper;
.source "SourceFile"


# instance fields
.field final _in:Ljava/io/Reader;

.field final _inputBuffer:[C

.field private _inputLast:I

.field private _inputPtr:I


# direct methods
.method private constructor <init>(Lcom/fasterxml/aalto/in/ReaderConfig;Ljava/io/Reader;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/in/InputBootstrapper;-><init>(Lcom/fasterxml/aalto/in/ReaderConfig;)V

    iput-object p2, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_in:Ljava/io/Reader;

    const/16 p2, 0xfa0

    invoke-virtual {p1, p2}, Lcom/fasterxml/aalto/in/ReaderConfig;->allocFullCBuffer(I)[C

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputBuffer:[C

    const/4 p1, 0x0

    iput p1, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    iput p1, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputLast:I

    return-void
.end method

.method public static construct(Lcom/fasterxml/aalto/in/ReaderConfig;Ljava/io/Reader;)Lcom/fasterxml/aalto/in/CharSourceBootstrapper;
    .locals 1

    new-instance v0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;-><init>(Lcom/fasterxml/aalto/in/ReaderConfig;Ljava/io/Reader;)V

    return-object v0
.end method


# virtual methods
.method public final bootstrap()Lcom/fasterxml/aalto/in/XmlScanner;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->doBootstrap()Lcom/fasterxml/aalto/in/XmlScanner;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    iget-object v2, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mKeyword:[C

    invoke-virtual {v1, v2}, Lcom/fasterxml/aalto/in/ReaderConfig;->freeSmallCBuffer([C)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {v1, v0}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    iget-object v2, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mKeyword:[C

    invoke-virtual {v1, v2}, Lcom/fasterxml/aalto/in/ReaderConfig;->freeSmallCBuffer([C)V

    throw v0
.end method

.method public checkKeyword(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_3

    iget v2, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputLast:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputBuffer:[C

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    aget-char v2, v3, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->nextChar()C

    move-result v2

    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    return v2

    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportNull()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public doBootstrap()Lcom/fasterxml/aalto/in/XmlScanner;
    .locals 10

    iget v0, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputLast:I

    const/4 v2, 0x7

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->initialLoad(I)Z

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputLast:I

    iget v1, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    sub-int/2addr v0, v1

    if-lt v0, v2, :cond_4

    iget-object v0, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputBuffer:[C

    aget-char v2, v0, v1

    const v3, 0xfeff

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    aget-char v2, v0, v1

    :cond_1
    const/16 v1, 0x3c

    if-ne v2, v1, :cond_2

    iget v1, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    aget-char v2, v0, v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_4

    add-int/lit8 v2, v1, 0x2

    aget-char v2, v0, v2

    const/16 v3, 0x78

    if-ne v2, v3, :cond_4

    add-int/lit8 v2, v1, 0x3

    aget-char v2, v0, v2

    const/16 v3, 0x6d

    if-ne v2, v3, :cond_4

    add-int/lit8 v2, v1, 0x4

    aget-char v2, v0, v2

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_4

    add-int/lit8 v2, v1, 0x5

    aget-char v0, v0, v2

    const/16 v2, 0x20

    if-gt v0, v2, :cond_4

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->readXmlDeclaration()V

    iget-object v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mFoundEncoding:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->verifyXmlEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/16 v0, 0xef

    if-eq v2, v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/fasterxml/aalto/impl/IoStreamException;

    const-string v1, "Unexpected first character (char code 0xEF), not valid in xml document: could be mangled UTF-8 BOM marker. Make sure that the Reader uses correct encoding or pass an InputStream instead"

    invoke-direct {v0, v1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v1, v0}, Lcom/fasterxml/aalto/in/ReaderConfig;->setActualEncoding(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    iget v1, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mDeclaredXmlVersion:I

    iget-object v2, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mFoundEncoding:Ljava/lang/String;

    iget-object v3, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mStandalone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/fasterxml/aalto/in/ReaderConfig;->setXmlDeclInfo(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/fasterxml/aalto/in/ReaderScanner;

    iget-object v5, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    iget-object v6, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_in:Ljava/io/Reader;

    iget-object v7, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputBuffer:[C

    iget v8, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    iget v9, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputLast:I

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/fasterxml/aalto/in/ReaderScanner;-><init>(Lcom/fasterxml/aalto/in/ReaderConfig;Ljava/io/Reader;[CII)V

    return-object v0
.end method

.method public getLocation()Lorg/apache/poi/javax/xml/stream/Location;
    .locals 7

    iget-object v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/ReaderConfig;->getPublicId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/ReaderConfig;->getSystemId()Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputProcessed:I

    iget v3, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    add-int/2addr v0, v3

    int-to-long v4, v0

    iget v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputRow:I

    iget v6, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputRowStart:I

    sub-int v6, v3, v6

    move-wide v3, v4

    move v5, v0

    invoke-static/range {v1 .. v6}, Lcom/fasterxml/aalto/impl/LocationImpl;->fromZeroBased(Ljava/lang/String;Ljava/lang/String;JII)Lcom/fasterxml/aalto/impl/LocationImpl;

    move-result-object v0

    return-object v0
.end method

.method public getNext()I
    .locals 3

    iget v0, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputLast:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputBuffer:[C

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    aget-char v0, v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->nextChar()C

    move-result v0

    :goto_0
    return v0
.end method

.method public getNextAfterWs(Z)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputLast:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputBuffer:[C

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    aget-char v1, v2, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->nextChar()C

    move-result v1

    :goto_1
    const/16 v2, 0x20

    if-le v1, v2, :cond_2

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    const-string p1, "; expected a white space"

    invoke-virtual {p0, v1, p1}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportUnexpectedChar(ILjava/lang/String;)V

    :cond_1
    return v1

    :cond_2
    const/16 v2, 0xd

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportNull()V

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->skipCRLF(C)V

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public initialLoad(I)Z
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputLast:I

    iget-object v1, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_in:Ljava/io/Reader;

    if-nez v1, :cond_0

    return v0

    :cond_0
    :goto_0
    iget v1, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputLast:I

    const/4 v2, 0x1

    if-ge v1, p1, :cond_2

    iget-object v3, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_in:Ljava/io/Reader;

    iget-object v4, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputBuffer:[C

    array-length v5, v4

    sub-int/2addr v5, v1

    invoke-virtual {v3, v4, v1, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-ge v1, v2, :cond_1

    return v0

    :cond_1
    iget v2, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputLast:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputLast:I

    goto :goto_0

    :cond_2
    return v2
.end method

.method public loadMore()V
    .locals 4

    iget v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputProcessed:I

    iget v1, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputLast:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputProcessed:I

    iget v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputRowStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputRowStart:I

    iget-object v0, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_in:Ljava/io/Reader;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportEof()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    iget-object v1, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_in:Ljava/io/Reader;

    iget-object v2, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputBuffer:[C

    array-length v3, v2

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputLast:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportEof()V

    :cond_1
    return-void
.end method

.method public nextChar()C
    .locals 3

    iget v0, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputLast:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->loadMore()V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    aget-char v0, v0, v1

    return v0
.end method

.method public pushback()V
    .locals 1

    iget v0, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    return-void
.end method

.method public readQuotedValue([CI)I
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget v2, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputLast:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputBuffer:[C

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    aget-char v2, v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->nextChar()C

    move-result v2

    :goto_1
    const/16 v3, 0xd

    if-eq v2, v3, :cond_3

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportNull()V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->skipCRLF(C)V

    :cond_4
    :goto_3
    if-ne v2, p2, :cond_6

    if-ge v1, v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, -0x1

    :goto_4
    return v1

    :cond_6
    if-ge v1, v0, :cond_0

    add-int/lit8 v3, v1, 0x1

    aput-char v2, p1, v1

    move v1, v3

    goto :goto_0
.end method

.method public skipCRLF(C)V
    .locals 2

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputLast:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputBuffer:[C

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    aget-char p1, v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->nextChar()C

    move-result p1

    :goto_0
    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    iget p1, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    :cond_1
    iget p1, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputRow:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputRow:I

    iget p1, p0, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->_inputPtr:I

    iput p1, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputRowStart:I

    return-void
.end method

.method public verifyXmlEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p1}, Lcom/fasterxml/aalto/util/CharsetNames;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/ReaderConfig;->getExternalEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v1}, Lcom/fasterxml/aalto/in/ReaderConfig;->getXMLReporter()Lorg/apache/poi/javax/xml/stream/XMLReporter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/aalto/impl/ErrorConsts;->W_MIXED_ENCODINGS:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object p1, v4, v0

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/fasterxml/aalto/impl/ErrorConsts;->WT_XML_DECL:Ljava/lang/String;

    invoke-interface {v1, v0, v3, p0, v2}, Lorg/apache/poi/javax/xml/stream/XMLReporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/poi/javax/xml/stream/Location;)V

    :cond_0
    return-object p1
.end method
