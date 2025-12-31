.class public abstract Lcom/fasterxml/aalto/in/StreamScanner;
.super Lcom/fasterxml/aalto/in/ByteBasedScanner;
.source "SourceFile"


# instance fields
.field protected _in:Ljava/io/InputStream;

.field protected _inputBuffer:[B


# direct methods
.method public constructor <init>(Lcom/fasterxml/aalto/in/ReaderConfig;Ljava/io/InputStream;[BII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/in/ByteBasedScanner;-><init>(Lcom/fasterxml/aalto/in/ReaderConfig;)V

    iput-object p2, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_in:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iput p4, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iput p5, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    return-void
.end method

.method private final findPName(II)Lcom/fasterxml/aalto/in/PName;
    .locals 4

    .line 1
    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    invoke-static {p1}, Lcom/fasterxml/aalto/in/ByteBasedPNameTable;->calcHash(I)I

    move-result v0

    iget-object v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_symbols:Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p1, v3}, Lcom/fasterxml/aalto/in/ByteBasedPNameTable;->findSymbol(III)Lcom/fasterxml/aalto/in/ByteBasedPName;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_quadBuffer:[I

    aput p1, v2, v3

    invoke-virtual {p0, v0, v2, v1, p2}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->addPName(I[III)Lcom/fasterxml/aalto/in/PName;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method private final findPName(III)Lcom/fasterxml/aalto/in/PName;
    .locals 4

    .line 2
    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    invoke-static {p1, p2}, Lcom/fasterxml/aalto/in/ByteBasedPNameTable;->calcHash(II)I

    move-result v0

    iget-object v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_symbols:Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    invoke-virtual {v2, v0, p1, p2}, Lcom/fasterxml/aalto/in/ByteBasedPNameTable;->findSymbol(III)Lcom/fasterxml/aalto/in/ByteBasedPName;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_quadBuffer:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    aput p2, v2, v1

    const/4 p1, 0x2

    invoke-virtual {p0, v0, v2, p1, p3}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->addPName(I[III)Lcom/fasterxml/aalto/in/PName;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method private final findPName(IIII[I)Lcom/fasterxml/aalto/in/PName;
    .locals 1

    .line 3
    const/4 v0, 0x1

    if-gt p4, v0, :cond_1

    if-nez p4, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/aalto/in/StreamScanner;->findPName(II)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p3, p1, p2}, Lcom/fasterxml/aalto/in/StreamScanner;->findPName(III)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p1, p5, p4, p2}, Lcom/fasterxml/aalto/in/StreamScanner;->findPName(I[III)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    return-object p1
.end method

.method private final findPName(I[III)Lcom/fasterxml/aalto/in/PName;
    .locals 1

    .line 4
    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    array-length v0, p2

    if-lt p3, v0, :cond_0

    array-length v0, p2

    invoke-static {p2, v0}, Lcom/fasterxml/aalto/util/DataUtil;->growArrayBy([II)[I

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_quadBuffer:[I

    :cond_0
    add-int/lit8 v0, p3, 0x1

    aput p1, p2, p3

    invoke-static {p2, v0}, Lcom/fasterxml/aalto/in/ByteBasedPNameTable;->calcHash([II)I

    move-result p1

    iget-object p3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_symbols:Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    invoke-virtual {p3, p1, p2, v0}, Lcom/fasterxml/aalto/in/ByteBasedPNameTable;->findSymbol(I[II)Lcom/fasterxml/aalto/in/ByteBasedPName;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->addPName(I[III)Lcom/fasterxml/aalto/in/PName;

    move-result-object p3

    :cond_1
    return-object p3
.end method

.method private final handleCommentOrCdataStart()I
    .locals 7

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v0, v0, v1

    const/16 v1, 0x2d

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v0, v0, v2

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->decodeCharForError(B)I

    move-result v0

    const-string v1, " (expected \'-\' for COMMENT)"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportTreeUnexpChar(ILjava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_cfgLazyParsing:Z

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->finishComment()V

    :goto_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    return v0

    :cond_4
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_9

    const/16 v0, 0xc

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x6

    if-ge v1, v2, :cond_7

    iget v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt v2, v4, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_5
    iget-object v2, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v2, v2, v4

    const-string v4, "CDATA["

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    if-eq v2, v5, :cond_6

    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->decodeCharForError(B)I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " (expected \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "\' for CDATA section)"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/fasterxml/aalto/in/XmlScanner;->reportTreeUnexpChar(ILjava/lang/String;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    iget-boolean v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_cfgLazyParsing:Z

    if-eqz v1, :cond_8

    iput-boolean v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->finishCData()V

    :goto_2
    return v0

    :cond_9
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->decodeCharForError(B)I

    move-result v0

    const-string v1, " (expected either \'-\' for COMMENT or \'[CDATA[\' for CDATA section)"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportTreeUnexpChar(ILjava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method private final handleDtdStart()I
    .locals 5

    const-string v0, "DOCTYPE"

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/in/StreamScanner;->matchAsciiKeyword(Ljava/lang/String;)V

    const-string v0, "after DOCTYPE keyword, before root name"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/aalto/in/StreamScanner;->skipInternalWs(ZLjava/lang/String;)B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/StreamScanner;->parsePName(B)Lcom/fasterxml/aalto/in/PName;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenName:Lcom/fasterxml/aalto/in/PName;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/aalto/in/StreamScanner;->skipInternalWs(ZLjava/lang/String;)B

    move-result v3

    const/16 v4, 0x50

    if-ne v3, v4, :cond_0

    const-string v3, "PUBLIC"

    invoke-direct {p0, v3}, Lcom/fasterxml/aalto/in/StreamScanner;->matchAsciiKeyword(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/aalto/in/StreamScanner;->skipInternalWs(ZLjava/lang/String;)B

    move-result v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/aalto/in/StreamScanner;->parsePublicId(B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_publicId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/aalto/in/StreamScanner;->skipInternalWs(ZLjava/lang/String;)B

    move-result v3

    :goto_0
    invoke-virtual {p0, v3}, Lcom/fasterxml/aalto/in/StreamScanner;->parseSystemId(B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_systemId:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/aalto/in/StreamScanner;->skipInternalWs(ZLjava/lang/String;)B

    move-result v3

    goto :goto_1

    :cond_0
    const/16 v4, 0x53

    if-ne v3, v4, :cond_1

    const-string v3, "SYSTEM"

    invoke-direct {p0, v3}, Lcom/fasterxml/aalto/in/StreamScanner;->matchAsciiKeyword(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/aalto/in/StreamScanner;->skipInternalWs(ZLjava/lang/String;)B

    move-result v3

    iput-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_publicId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_systemId:Ljava/lang/String;

    iput-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_publicId:Ljava/lang/String;

    :goto_1
    const/16 v2, 0x3e

    const/16 v4, 0xb

    if-ne v3, v2, :cond_2

    iput-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    :goto_2
    iput v4, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    return v4

    :cond_2
    const/16 v0, 0x5b

    if-eq v3, v0, :cond_4

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_systemId:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, " (expected \'[\' for the internal subset, or \'>\' to end DOCTYPE declaration)"

    goto :goto_3

    :cond_3
    const-string v0, " (expected a \'PUBLIC\' or \'SYSTEM\' keyword, \'[\' for the internal subset, or \'>\' to end DOCTYPE declaration)"

    :goto_3
    invoke-virtual {p0, v3}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->decodeCharForError(B)I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportTreeUnexpChar(ILjava/lang/String;)V

    :cond_4
    iput-boolean v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    goto :goto_2
.end method

.method private final handleEndElementSlow(I)I
    .locals 7

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x4

    if-ge v2, v4, :cond_1

    iget v4, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_0
    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenName:Lcom/fasterxml/aalto/in/PName;

    invoke-virtual {v2, v1}, Lcom/fasterxml/aalto/in/PName;->getQuad(I)I

    move-result v2

    if-eq v3, v2, :cond_2

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenName:Lcom/fasterxml/aalto/in/PName;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/in/PName;->getPrefixedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/in/XmlScanner;->reportUnexpectedEndTag(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenName:Lcom/fasterxml/aalto/in/PName;

    invoke-virtual {v1, p1}, Lcom/fasterxml/aalto/in/PName;->getQuad(I)I

    move-result p1

    const/4 v1, 0x0

    :cond_4
    iget v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt v2, v3, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_5
    shl-int/lit8 v0, v0, 0x8

    iget-object v2, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    if-ne v0, p1, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x3

    if-le v1, v2, :cond_4

    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenName:Lcom/fasterxml/aalto/in/PName;

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/PName;->getPrefixedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportUnexpectedEndTag(Ljava/lang/String;)V

    :goto_2
    iget p1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_7
    iget-object p1, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte p1, p1, v0

    :goto_3
    const/16 v0, 0x20

    if-gt p1, v0, :cond_e

    const/16 v1, 0xa

    if-ne p1, v1, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->markLF()V

    goto :goto_6

    :cond_9
    const/16 v2, 0xd

    if-ne p1, v2, :cond_b

    iget p1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-ge p1, v0, :cond_a

    iget-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte p1, v0, p1

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->loadOne()B

    move-result p1

    :goto_4
    if-eq p1, v1, :cond_8

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->markLF(I)V

    :goto_5
    and-int/lit16 p1, p1, 0xff

    goto :goto_3

    :cond_b
    if-eq p1, v0, :cond_c

    const/16 v0, 0x9

    if-eq p1, v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->throwInvalidSpace(I)V

    :cond_c
    :goto_6
    iget p1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-ge p1, v0, :cond_d

    iget-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte p1, v0, p1

    goto :goto_5

    :cond_d
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->loadOne()B

    move-result p1

    goto :goto_5

    :cond_e
    const/16 v0, 0x3e

    if-eq p1, v0, :cond_f

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->decodeCharForError(B)I

    move-result p1

    const-string v0, " expected space or closing \'>\'"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->throwUnexpectedChar(ILjava/lang/String;)V

    :cond_f
    const/4 p1, 0x2

    return p1
.end method

.method private final handlePIStart()I
    .locals 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/StreamScanner;->parsePName(B)Lcom/fasterxml/aalto/in/PName;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenName:Lcom/fasterxml/aalto/in/PName;

    invoke-virtual {v1}, Lcom/fasterxml/aalto/in/PName;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_1

    const-string v2, "xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenName:Lcom/fasterxml/aalto/in/PName;

    invoke-virtual {v1}, Lcom/fasterxml/aalto/in/PName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_WF_PI_XML_TARGET:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    :cond_1
    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_2
    iget-object v1, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x20

    if-gt v1, v2, :cond_b

    :goto_0
    const/16 v3, 0xa

    if-ne v1, v3, :cond_4

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->markLF()V

    goto :goto_2

    :cond_4
    const/16 v4, 0xd

    if-ne v1, v4, :cond_6

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt v1, v4, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_5
    iget-object v1, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v1, v1, v4

    if-ne v1, v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    goto :goto_1

    :cond_6
    if-eq v1, v2, :cond_7

    const/16 v3, 0x9

    if-eq v1, v3, :cond_7

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->throwInvalidSpace(I)V

    :cond_7
    :goto_2
    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt v1, v3, :cond_8

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_8
    iget-object v1, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    if-le v1, v2, :cond_a

    iget-boolean v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_cfgLazyParsing:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->finishPI()V

    goto :goto_4

    :cond_a
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    goto :goto_0

    :cond_b
    const/16 v2, 0x3f

    if-eq v1, v2, :cond_c

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->decodeCharForError(B)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportMissingPISpace(I)V

    :cond_c
    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt v1, v2, :cond_d

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_d
    iget-object v1, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v1, v1, v2

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_e

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->decodeCharForError(B)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportMissingPISpace(I)V

    :cond_e
    iget-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v1}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithEmpty()[C

    const/4 v1, 0x0

    goto :goto_3

    :goto_4
    return v0
.end method

.method private final handlePrologDeclStart(Z)I
    .locals 5

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v0, v0, v1

    const/16 v1, 0x2d

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v0, v0, v2

    if-ne v0, v1, :cond_5

    iget-boolean p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_cfgLazyParsing:Z

    if-eqz p1, :cond_2

    iput-boolean v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->finishComment()V

    :goto_0
    const/4 p1, 0x5

    iput p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    return p1

    :cond_3
    const/16 v1, 0x44

    if-ne v0, v1, :cond_5

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->handleDtdStart()I

    iget-boolean p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_cfgLazyParsing:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0, v3}, Lcom/fasterxml/aalto/in/XmlScanner;->finishDTD(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    :cond_4
    const/16 p1, 0xb

    return p1

    :cond_5
    iput-boolean v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    const/4 v1, 0x4

    iput v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->decodeCharForError(B)I

    move-result v0

    const-string v1, " (expected \'-\' for COMMENT)"

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportPrologUnexpChar(ZILjava/lang/String;)V

    iget p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    return p1
.end method

.method private final matchAsciiKeyword(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_2

    iget v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_0
    iget-object v2, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v2, v2, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    if-eq v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->decodeCharForError(B)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " (expected \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "\' for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " keyword)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/aalto/in/XmlScanner;->reportTreeUnexpChar(ILjava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public _closeSource()V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_in:Ljava/io/InputStream;

    :cond_0
    return-void
.end method

.method public _nextEntity()I
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithEmpty()[C

    const/16 v0, 0x9

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    return v0
.end method

.method public _releaseBuffers()V
    .locals 2

    invoke-super {p0}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_releaseBuffers()V

    iget-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v1, v0}, Lcom/fasterxml/aalto/in/ReaderConfig;->freeFullBBuffer([B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    :cond_0
    return-void
.end method

.method public final checkInTreeIndentation(I)I
    .locals 11

    const/16 v0, 0xd

    const/16 v1, 0xa

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/4 v5, 0x1

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->loadMore()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {p1, v3, v4}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithIndentation(IC)V

    return v2

    :cond_0
    iget-object p1, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte p1, p1, v0

    if-ne p1, v1, :cond_1

    add-int/2addr v0, v5

    iput v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->markLF()V

    iget p1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_2
    iget-object p1, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v6, p1, v0

    const/16 v7, 0x21

    const/16 v8, 0x3c

    if-eq v6, v4, :cond_4

    const/16 v9, 0x9

    if-eq v6, v9, :cond_4

    if-ne v6, v8, :cond_3

    add-int/lit8 v6, v0, 0x1

    iget v8, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-ge v6, v8, :cond_3

    add-int/2addr v0, v5

    aget-byte p1, p1, v0

    if-eq p1, v7, :cond_3

    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {p1, v3, v4}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithIndentation(IC)V

    return v2

    :cond_3
    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {p1}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithEmpty()[C

    move-result-object p1

    aput-char v1, p1, v3

    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {p1, v5}, Lcom/fasterxml/aalto/util/TextBuilder;->setCurrentLength(I)V

    return v5

    :cond_4
    add-int/2addr v0, v5

    iput v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    if-ne v6, v4, :cond_5

    goto :goto_0

    :cond_5
    const/16 v4, 0x8

    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-gt p1, v4, :cond_8

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v9, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt v0, v9, :cond_6

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_6
    iget-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v9, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v10, v0, v9

    if-eq v10, v6, :cond_7

    if-ne v10, v8, :cond_8

    add-int/lit8 v4, v9, 0x1

    iget v8, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-ge v4, v8, :cond_8

    add-int/2addr v9, v5

    aget-byte v0, v0, v9

    if-eq v0, v7, :cond_8

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    int-to-char v1, v6

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithIndentation(IC)V

    return v2

    :cond_7
    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithEmpty()[C

    move-result-object v0

    aput-char v1, v0, v3

    int-to-char v1, v6

    const/4 v2, 0x1

    :goto_2
    if-gt v2, p1, :cond_9

    aput-char v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    add-int/2addr p1, v5

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/util/TextBuilder;->setCurrentLength(I)V

    return p1
.end method

.method public final checkPrologIndentation(I)I
    .locals 8

    const/16 v0, 0xd

    const/16 v1, 0xa

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/4 v5, 0x1

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->loadMore()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {p1, v3, v4}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithIndentation(IC)V

    return v2

    :cond_0
    iget-object p1, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte p1, p1, v0

    if-ne p1, v1, :cond_1

    add-int/2addr v0, v5

    iput v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->markLF()V

    iget p1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->loadMore()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {p1, v3, v4}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithIndentation(IC)V

    return v2

    :cond_2
    iget-object p1, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte p1, p1, v0

    if-eq p1, v4, :cond_4

    const/16 v6, 0x9

    if-eq p1, v6, :cond_4

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {p1, v3, v4}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithIndentation(IC)V

    return v2

    :cond_3
    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {p1}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithEmpty()[C

    move-result-object p1

    aput-char v1, p1, v3

    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {p1, v5}, Lcom/fasterxml/aalto/util/TextBuilder;->setCurrentLength(I)V

    return v5

    :cond_4
    add-int/2addr v0, v5

    iput v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    if-ne p1, v4, :cond_5

    goto :goto_0

    :cond_5
    const/16 v4, 0x8

    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget v6, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v7, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt v6, v7, :cond_6

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->loadMore()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v7, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v6, v6, v7

    if-eq v6, p1, :cond_7

    :goto_2
    iget-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    int-to-char p1, p1

    invoke-virtual {v1, v0, p1}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithIndentation(IC)V

    return v2

    :cond_7
    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v6, v0, 0x1

    if-lt v6, v4, :cond_9

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithEmpty()[C

    move-result-object v2

    aput-char v1, v2, v3

    int-to-char p1, p1

    :goto_3
    if-gt v5, v6, :cond_8

    aput-char p1, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v0, v0, 0x2

    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {p1, v0}, Lcom/fasterxml/aalto/util/TextBuilder;->setCurrentLength(I)V

    return v0

    :cond_9
    move v0, v6

    goto :goto_1
.end method

.method public final handleCharEntity()I
    .locals 8

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v0, v0, v1

    const/16 v1, 0x78

    const v2, 0x10ffff

    const/16 v3, 0x39

    const/16 v4, 0x3b

    const/16 v5, 0x30

    const/4 v6, 0x0

    if-ne v0, v1, :cond_7

    :cond_1
    :goto_0
    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v7, v1, 0x1

    iput v7, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v0, v0, v1

    if-ne v0, v4, :cond_3

    goto/16 :goto_5

    :cond_3
    shl-int/lit8 v1, v6, 0x4

    if-gt v0, v3, :cond_4

    if-lt v0, v5, :cond_4

    add-int/lit8 v0, v0, -0x30

    :goto_1
    add-int/2addr v0, v1

    move v6, v0

    goto :goto_2

    :cond_4
    const/16 v6, 0x61

    if-lt v0, v6, :cond_5

    const/16 v6, 0x66

    if-gt v0, v6, :cond_5

    add-int/lit8 v0, v0, -0x57

    goto :goto_1

    :cond_5
    const/16 v6, 0x41

    if-lt v0, v6, :cond_6

    const/16 v6, 0x46

    if-gt v0, v6, :cond_6

    add-int/lit8 v0, v0, -0x37

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->decodeCharForError(B)I

    move-result v0

    const-string v6, "; expected a hex digit (0-9a-fA-F)"

    invoke-virtual {p0, v0, v6}, Lcom/fasterxml/aalto/in/XmlScanner;->throwUnexpectedChar(ILjava/lang/String;)V

    move v6, v1

    :goto_2
    if-le v6, v2, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportEntityOverflow()V

    goto :goto_0

    :cond_7
    :goto_3
    if-eq v0, v4, :cond_b

    if-gt v0, v3, :cond_9

    if-lt v0, v5, :cond_9

    mul-int/lit8 v6, v6, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v6

    if-le v0, v2, :cond_8

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportEntityOverflow()V

    :cond_8
    move v6, v0

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->decodeCharForError(B)I

    move-result v0

    const-string v1, "; expected a decimal number"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->throwUnexpectedChar(ILjava/lang/String;)V

    :goto_4
    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt v0, v1, :cond_a

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_a
    iget-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v7, v1, 0x1

    iput v7, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v0, v0, v1

    goto :goto_3

    :cond_b
    :goto_5
    invoke-virtual {p0, v6}, Lcom/fasterxml/aalto/in/XmlScanner;->verifyXmlChar(I)V

    return v6
.end method

.method public final handleEndElement()I
    .locals 7

    iget v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_depth:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    iget-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currElem:Lcom/fasterxml/aalto/in/ElementScope;

    invoke-virtual {v1}, Lcom/fasterxml/aalto/in/ElementScope;->getName()Lcom/fasterxml/aalto/in/PName;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenName:Lcom/fasterxml/aalto/in/PName;

    invoke-virtual {v1}, Lcom/fasterxml/aalto/in/PName;->sizeInQuads()I

    move-result v1

    iget v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    sub-int/2addr v2, v3

    shl-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    if-ge v2, v4, :cond_0

    invoke-direct {p0, v1}, Lcom/fasterxml/aalto/in/StreamScanner;->handleEndElementSlow(I)I

    move-result v0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    add-int/lit8 v1, v1, -0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-byte v5, v2, v3

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x4

    iget-object v6, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenName:Lcom/fasterxml/aalto/in/PName;

    invoke-virtual {v6, v4}, Lcom/fasterxml/aalto/in/PName;->getQuad(I)I

    move-result v6

    if-eq v5, v6, :cond_1

    iput v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget-object v5, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenName:Lcom/fasterxml/aalto/in/PName;

    invoke-virtual {v5}, Lcom/fasterxml/aalto/in/PName;->getPrefixedName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/fasterxml/aalto/in/XmlScanner;->reportUnexpectedEndTag(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenName:Lcom/fasterxml/aalto/in/PName;

    invoke-virtual {v4, v1}, Lcom/fasterxml/aalto/in/PName;->getQuad(I)I

    move-result v1

    add-int/lit8 v4, v3, 0x1

    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    if-eq v5, v1, :cond_6

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v3, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v5

    if-eq v4, v1, :cond_5

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v3, 0x3

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    if-eq v4, v1, :cond_4

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v3, v3, 0x4

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v4

    if-eq v2, v1, :cond_3

    iput v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenName:Lcom/fasterxml/aalto/in/PName;

    invoke-virtual {v1}, Lcom/fasterxml/aalto/in/PName;->getPrefixedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportUnexpectedEndTag(Ljava/lang/String;)V

    :cond_3
    move v4, v3

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_1

    :cond_5
    move v4, v6

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    :goto_2
    const/16 v2, 0x20

    if-gt v1, v2, :cond_d

    const/16 v3, 0xa

    if-ne v1, v3, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->markLF()V

    goto :goto_5

    :cond_8
    const/16 v4, 0xd

    if-ne v1, v4, :cond_a

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-ge v1, v2, :cond_9

    iget-object v2, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v1, v2, v1

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->loadOne()B

    move-result v1

    :goto_3
    if-eq v1, v3, :cond_7

    iget v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->markLF(I)V

    :goto_4
    and-int/lit16 v1, v1, 0xff

    goto :goto_2

    :cond_a
    if-eq v1, v2, :cond_b

    const/16 v2, 0x9

    if-eq v1, v2, :cond_b

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->throwInvalidSpace(I)V

    :cond_b
    :goto_5
    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-ge v1, v2, :cond_c

    iget-object v2, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v1, v2, v1

    goto :goto_4

    :cond_c
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->loadOne()B

    move-result v1

    goto :goto_4

    :cond_d
    const/16 v2, 0x3e

    if-eq v1, v2, :cond_e

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->decodeCharForError(B)I

    move-result v1

    const-string v2, " expected space or closing \'>\'"

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/aalto/in/XmlScanner;->throwUnexpectedChar(ILjava/lang/String;)V

    :cond_e
    return v0
.end method

.method public abstract handleEntityInText(Z)I
.end method

.method public abstract handleStartElement(B)I
.end method

.method public final loadAndRetain(I)Z
    .locals 6

    iget-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_in:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_pastBytesOrChars:J

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_pastBytesOrChars:J

    iget v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_rowStartOffset:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_rowStartOffset:I

    iget v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    sub-int/2addr v2, v0

    iget-object v3, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    invoke-static {v3, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iput v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    array-length v2, v0

    iget v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    sub-int/2addr v2, v3

    iget-object v4, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_in:Ljava/io/InputStream;

    invoke-virtual {v4, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_3

    if-nez v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "InputStream returned 0 bytes, even when asked to read up to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    return v1

    :cond_3
    iget v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v2, p1, :cond_1

    return v3

    :goto_1
    new-instance v0, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {v0, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final loadMore()Z
    .locals 6

    const-string v0, "InputStream returned 0 bytes, even when asked to read up to "

    iget-wide v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_pastBytesOrChars:J

    iget v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    int-to-long v4, v3

    add-long/2addr v1, v4

    iput-wide v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_pastBytesOrChars:J

    iget v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_rowStartOffset:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_rowStartOffset:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget-object v2, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_in:Ljava/io/InputStream;

    if-nez v2, :cond_0

    iput v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    return v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    array-length v4, v3

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    iput v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return v1

    :cond_2
    iput v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :goto_1
    new-instance v1, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {v1, v0}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public final loadOne()B
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end-of-input when trying to parse "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    invoke-static {v1}, Lcom/fasterxml/aalto/impl/ErrorConsts;->tokenTypeDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public final loadOne(I)B
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end-of-input when trying to parse "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/fasterxml/aalto/impl/ErrorConsts;->tokenTypeDesc(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte p1, p1, v0

    return p1
.end method

.method public final nextByte()B
    .locals 3

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end-of-input when trying to parse "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    invoke-static {v1}, Lcom/fasterxml/aalto/impl/ErrorConsts;->tokenTypeDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public final nextFromProlog(Z)I
    .locals 5

    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->skipToken()Z

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->setStartLocation()V

    :cond_1
    :goto_0
    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->loadMore()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->setStartLocation()V

    return v2

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt v3, v0, :cond_3

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed(I)V

    :cond_3
    iget-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v0, v0, v1

    const/16 v1, 0x21

    if-ne v0, v1, :cond_4

    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/in/StreamScanner;->handlePrologDeclStart(Z)I

    move-result p1

    return p1

    :cond_4
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->handlePIStart()I

    move-result p1

    return p1

    :cond_5
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_6

    if-nez p1, :cond_7

    :cond_6
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->decodeCharForError(B)I

    move-result v1

    const-string v2, " (unbalanced start/end tags?)"

    invoke-virtual {p0, p1, v1, v2}, Lcom/fasterxml/aalto/in/XmlScanner;->reportPrologUnexpChar(ZILjava/lang/String;)V

    :cond_7
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/StreamScanner;->handleStartElement(B)I

    move-result p1

    return p1

    :cond_8
    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_a

    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->markLF()V

    goto :goto_0

    :cond_a
    const/16 v4, 0xd

    if-ne v0, v4, :cond_c

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt v3, v0, :cond_b

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->loadMore()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->markLF()V

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->setStartLocation()V

    return v2

    :cond_b
    iget-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v0, v0, v2

    if-ne v0, v1, :cond_9

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    goto :goto_1

    :cond_c
    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->decodeCharForError(B)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportPrologUnexpChar(ZILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final nextFromTree()I
    .locals 7

    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->skipToken()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->_nextEntity()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_isEmptyTag:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_depth:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_depth:I

    iput v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    return v2

    :cond_1
    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currElem:Lcom/fasterxml/aalto/in/ElementScope;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/ElementScope;->getParent()Lcom/fasterxml/aalto/in/ElementScope;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currElem:Lcom/fasterxml/aalto/in/ElementScope;

    :goto_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_lastNsDecl:Lcom/fasterxml/aalto/in/NsDeclaration;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/NsDeclaration;->getLevel()I

    move-result v0

    iget v4, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_depth:I

    if-lt v0, v4, :cond_3

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_lastNsDecl:Lcom/fasterxml/aalto/in/NsDeclaration;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/NsDeclaration;->unbind()Lcom/fasterxml/aalto/in/NsDeclaration;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_lastNsDecl:Lcom/fasterxml/aalto/in/NsDeclaration;

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_entityPending:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_entityPending:Z

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->_nextEntity()I

    move-result v0

    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->setStartLocation()V

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt v0, v4, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->loadMore()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->setStartLocation()V

    const/4 v0, -0x1

    return v0

    :cond_4
    iget-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v5, v0, v4

    const/16 v6, 0x3c

    if-ne v5, v6, :cond_9

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-ge v1, v3, :cond_5

    add-int/2addr v4, v2

    iput v4, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v0, v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/StreamScanner;->loadOne(I)B

    move-result v0

    :goto_1
    const/16 v1, 0x21

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->handleCommentOrCdataStart()I

    move-result v0

    return v0

    :cond_6
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_7

    invoke-direct {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->handlePIStart()I

    move-result v0

    return v0

    :cond_7
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->handleEndElement()I

    move-result v0

    return v0

    :cond_8
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/StreamScanner;->handleStartElement(B)I

    move-result v0

    return v0

    :cond_9
    const/16 v0, 0x26

    if-ne v5, v0, :cond_b

    add-int/2addr v4, v3

    iput v4, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/StreamScanner;->handleEntityInText(Z)I

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0x9

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    return v0

    :cond_a
    neg-int v0, v0

    :goto_2
    iput v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_tmpChar:I

    goto :goto_3

    :cond_b
    and-int/lit16 v0, v5, 0xff

    goto :goto_2

    :goto_3
    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_cfgLazyParsing:Z

    if-eqz v0, :cond_c

    iput-boolean v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    goto :goto_4

    :cond_c
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->finishCharacters()V

    :goto_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    return v0
.end method

.method public final parsePName(B)Lcom/fasterxml/aalto/in/PName;
    .locals 9

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/StreamScanner;->parsePNameSlow(B)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    return-object p1

    :cond_0
    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x41

    if-ge p1, v0, :cond_1

    const-string v2, "; expected a name start character"

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/aalto/in/XmlScanner;->throwUnexpectedChar(ILjava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x2f

    const/16 v7, 0x3a

    const/16 v8, 0x2d

    if-ge v5, v0, :cond_3

    if-lt v5, v8, :cond_2

    if-gt v5, v7, :cond_2

    if-ne v5, v6, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/aalto/in/StreamScanner;->findPName(II)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    return-object p1

    :cond_3
    shl-int/2addr p1, v1

    or-int/2addr p1, v5

    add-int/lit8 v5, v3, 0x2

    iput v5, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    if-ge v4, v0, :cond_5

    if-lt v4, v8, :cond_4

    if-gt v4, v7, :cond_4

    if-ne v4, v6, :cond_5

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    shl-int/2addr p1, v1

    or-int/2addr p1, v4

    add-int/lit8 v4, v3, 0x3

    iput v4, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    if-ge v5, v0, :cond_7

    if-lt v5, v8, :cond_6

    if-gt v5, v7, :cond_6

    if-ne v5, v6, :cond_7

    :cond_6
    const/4 v0, 0x3

    goto :goto_0

    :cond_7
    shl-int/2addr p1, v1

    or-int/2addr p1, v5

    const/4 v1, 0x4

    add-int/2addr v3, v1

    iput v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    if-ge v2, v0, :cond_9

    if-lt v2, v8, :cond_8

    if-gt v2, v7, :cond_8

    if-ne v2, v6, :cond_9

    :cond_8
    invoke-direct {p0, p1, v1}, Lcom/fasterxml/aalto/in/StreamScanner;->findPName(II)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-virtual {p0, v2, p1}, Lcom/fasterxml/aalto/in/StreamScanner;->parsePNameMedium(II)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    return-object p1
.end method

.method public final parsePNameLong(I[I)Lcom/fasterxml/aalto/in/PName;
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x2

    :goto_0
    iget v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_0
    iget-object v2, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x2f

    const/16 v7, 0x3a

    const/16 v8, 0x2d

    const/16 v9, 0x41

    if-ge v5, v9, :cond_2

    if-lt v5, v8, :cond_1

    if-gt v5, v7, :cond_1

    if-ne v5, v6, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/fasterxml/aalto/in/StreamScanner;->findPName(I[III)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    return-object p1

    :cond_2
    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v5

    iget v5, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-ge v4, v5, :cond_3

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v2, v2, v4

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->loadOne()B

    move-result v2

    :goto_2
    and-int/lit16 v2, v2, 0xff

    if-ge v2, v9, :cond_5

    if-lt v2, v8, :cond_4

    if-gt v2, v7, :cond_4

    if-ne v2, v6, :cond_5

    :cond_4
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/fasterxml/aalto/in/StreamScanner;->findPName(I[III)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    return-object p1

    :cond_5
    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v2

    iget v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v2, v3, v2

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->loadOne()B

    move-result v2

    :goto_3
    and-int/lit16 v2, v2, 0xff

    if-ge v2, v9, :cond_8

    if-lt v2, v8, :cond_7

    if-gt v2, v7, :cond_7

    if-ne v2, v6, :cond_8

    :cond_7
    const/4 v0, 0x3

    goto :goto_1

    :cond_8
    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v2

    iget v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-ge v2, v3, :cond_9

    iget-object v3, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v2, v3, v2

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->loadOne()B

    move-result v2

    :goto_4
    and-int/lit16 v2, v2, 0xff

    if-ge v2, v9, :cond_b

    if-lt v2, v8, :cond_a

    if-gt v2, v7, :cond_a

    if-ne v2, v6, :cond_b

    :cond_a
    const/4 v0, 0x4

    goto :goto_1

    :cond_b
    array-length v3, p2

    if-lt v1, v3, :cond_c

    array-length v3, p2

    invoke-static {p2, v3}, Lcom/fasterxml/aalto/util/DataUtil;->growArrayBy([II)[I

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_quadBuffer:[I

    :cond_c
    aput p1, p2, v1

    add-int/lit8 v1, v1, 0x1

    move p1, v2

    goto/16 :goto_0
.end method

.method public parsePNameMedium(II)Lcom/fasterxml/aalto/in/PName;
    .locals 9

    iget-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x2f

    const/16 v5, 0x3a

    const/16 v6, 0x2d

    const/4 v7, 0x1

    const/16 v8, 0x41

    if-ge v3, v8, :cond_1

    if-lt v3, v6, :cond_0

    if-gt v3, v5, :cond_0

    if-ne v3, v4, :cond_1

    :cond_0
    invoke-direct {p0, p2, p1, v7}, Lcom/fasterxml/aalto/in/StreamScanner;->findPName(III)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    return-object p1

    :cond_1
    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v3

    add-int/lit8 v3, v1, 0x2

    iput v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    if-ge v2, v8, :cond_3

    if-lt v2, v6, :cond_2

    if-gt v2, v5, :cond_2

    if-ne v2, v4, :cond_3

    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, p2, p1, v0}, Lcom/fasterxml/aalto/in/StreamScanner;->findPName(III)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    return-object p1

    :cond_3
    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v2

    add-int/lit8 v2, v1, 0x3

    iput v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    if-ge v3, v8, :cond_5

    if-lt v3, v6, :cond_4

    if-gt v3, v5, :cond_4

    if-ne v3, v4, :cond_5

    :cond_4
    const/4 v0, 0x3

    invoke-direct {p0, p2, p1, v0}, Lcom/fasterxml/aalto/in/StreamScanner;->findPName(III)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    return-object p1

    :cond_5
    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v3

    const/4 v3, 0x4

    add-int/2addr v1, v3

    iput v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-ge v0, v8, :cond_7

    if-lt v0, v6, :cond_6

    if-gt v0, v5, :cond_6

    if-ne v0, v4, :cond_7

    :cond_6
    invoke-direct {p0, p2, p1, v3}, Lcom/fasterxml/aalto/in/StreamScanner;->findPName(III)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    return-object p1

    :cond_7
    iget-object v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_quadBuffer:[I

    const/4 v2, 0x0

    aput p2, v1, v2

    aput p1, v1, v7

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/aalto/in/StreamScanner;->parsePNameLong(I[I)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    return-object p1
.end method

.method public final parsePNameSlow(B)Lcom/fasterxml/aalto/in/PName;
    .locals 12

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x41

    if-ge p1, v0, :cond_0

    const-string v1, "; expected a name start character"

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->throwUnexpectedChar(ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_quadBuffer:[I

    const/4 v2, 0x0

    move v4, p1

    move-object v10, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    iget p1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_1
    iget-object p1, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x2f

    const/16 v7, 0x3a

    const/16 v11, 0x2d

    if-ge v5, v0, :cond_3

    if-lt v5, v11, :cond_2

    if-gt v5, v7, :cond_2

    if-ne v5, v6, :cond_3

    :cond_2
    const/4 v5, 0x1

    move-object v3, p0

    move v6, v8

    move v7, v9

    move-object v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/fasterxml/aalto/in/StreamScanner;->findPName(IIII[I)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    return-object p1

    :cond_3
    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v5

    iget v5, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-ge v3, v5, :cond_4

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte p1, p1, v3

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->loadOne()B

    move-result p1

    :goto_1
    and-int/lit16 p1, p1, 0xff

    if-ge p1, v0, :cond_6

    if-lt p1, v11, :cond_5

    if-gt p1, v7, :cond_5

    if-ne p1, v6, :cond_6

    :cond_5
    const/4 v7, 0x2

    move-object v5, p0

    move v6, v4

    invoke-direct/range {v5 .. v10}, Lcom/fasterxml/aalto/in/StreamScanner;->findPName(IIII[I)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    return-object p1

    :cond_6
    shl-int/lit8 v1, v4, 0x8

    or-int/2addr p1, v1

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-ge v1, v3, :cond_7

    iget-object v3, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v1, v3, v1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->loadOne()B

    move-result v1

    :goto_2
    and-int/lit16 v1, v1, 0xff

    if-ge v1, v0, :cond_9

    if-lt v1, v11, :cond_8

    if-gt v1, v7, :cond_8

    if-ne v1, v6, :cond_9

    :cond_8
    const/4 v7, 0x3

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/fasterxml/aalto/in/StreamScanner;->findPName(IIII[I)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    return-object p1

    :cond_9
    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v1

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-ge v1, v3, :cond_a

    iget-object v3, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v1, v3, v1

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/StreamScanner;->loadOne()B

    move-result v1

    :goto_3
    and-int/lit16 v4, v1, 0xff

    if-ge v4, v0, :cond_c

    if-lt v4, v11, :cond_b

    if-gt v4, v7, :cond_b

    if-ne v4, v6, :cond_c

    :cond_b
    const/4 v7, 0x4

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/fasterxml/aalto/in/StreamScanner;->findPName(IIII[I)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    return-object p1

    :cond_c
    if-nez v9, :cond_d

    move v8, p1

    goto :goto_4

    :cond_d
    const/4 v1, 0x1

    if-ne v9, v1, :cond_e

    aput v8, v10, v2

    aput p1, v10, v1

    goto :goto_4

    :cond_e
    array-length v1, v10

    if-lt v9, v1, :cond_f

    array-length v1, v10

    invoke-static {v10, v1}, Lcom/fasterxml/aalto/util/DataUtil;->growArrayBy([II)[I

    move-result-object v10

    iput-object v10, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_quadBuffer:[I

    :cond_f
    aput p1, v10, v9

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0
.end method

.method public abstract parsePublicId(B)Ljava/lang/String;
.end method

.method public abstract parseSystemId(B)Ljava/lang/String;
.end method

.method public skipInternalWs(ZLjava/lang/String;)B
    .locals 4

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    const/16 v2, 0x20

    if-le v1, v2, :cond_2

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->decodeCharForError(B)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " (expected white space "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/aalto/in/XmlScanner;->reportTreeUnexpChar(ILjava/lang/String;)V

    :cond_2
    const/16 p1, 0xa

    if-ne v0, p1, :cond_4

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->markLF()V

    goto :goto_1

    :cond_4
    const/16 p2, 0xd

    if-ne v0, p2, :cond_6

    iget p2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt p2, v0, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_5
    iget-object p2, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte p2, p2, v0

    if-ne p2, p1, :cond_3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    goto :goto_0

    :cond_6
    if-eq v0, v2, :cond_7

    const/16 p1, 0x9

    if-eq v0, p1, :cond_7

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->throwInvalidSpace(I)V

    :cond_7
    :goto_1
    iget p1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iget p2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputEnd:I

    if-lt p1, p2, :cond_8

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_8
    iget-object p1, p0, Lcom/fasterxml/aalto/in/StreamScanner;->_inputBuffer:[B

    iget p2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    aget-byte v0, p1, p2

    and-int/lit16 p1, v0, 0xff

    if-le p1, v2, :cond_2

    return v0
.end method
