.class public final Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;
.super Lcom/fasterxml/aalto/in/InputBootstrapper;
.source "SourceFile"


# instance fields
.field final _in:Ljava/io/InputStream;

.field final _inputBuffer:[B

.field private _inputLen:I

.field private _inputPtr:I

.field mBigEndian:Z

.field mByteSizeFound:Z

.field mBytesPerChar:I

.field mHadBOM:Z


# direct methods
.method private constructor <init>(Lcom/fasterxml/aalto/in/ReaderConfig;Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/in/InputBootstrapper;-><init>(Lcom/fasterxml/aalto/in/ReaderConfig;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBigEndian:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBytesPerChar:I

    iput-boolean v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mHadBOM:Z

    iput-boolean v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mByteSizeFound:Z

    iput-object p2, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    const/16 p2, 0xfa0

    invoke-virtual {p1, p2}, Lcom/fasterxml/aalto/in/ReaderConfig;->allocFullBBuffer(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputBuffer:[B

    iput v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputLen:I

    return-void
.end method

.method public static construct(Lcom/fasterxml/aalto/in/ReaderConfig;Ljava/io/InputStream;)Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;
    .locals 1

    new-instance v0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;-><init>(Lcom/fasterxml/aalto/in/ReaderConfig;Ljava/io/InputStream;)V

    return-object v0
.end method

.method private determineStreamEncoding()V
    .locals 11

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->ensureLoaded(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    iget-object v4, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputBuffer:[B

    aget-byte v5, v4, v1

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, v1, 0x3

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v5

    const/high16 v5, -0x1010000

    const-string v6, "3412"

    if-eq v4, v5, :cond_3

    const/high16 v5, -0x20000

    if-eq v4, v5, :cond_6

    const v5, 0xfeff

    if-eq v4, v5, :cond_5

    const-string v7, "2143"

    const v8, 0xfffe

    if-eq v4, v8, :cond_4

    ushr-int/lit8 v9, v4, 0x10

    const/4 v10, 0x2

    if-ne v9, v5, :cond_0

    add-int/lit8 v0, v1, 0x2

    iput v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    :sswitch_0
    iput v10, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBytesPerChar:I

    :goto_0
    iput-boolean v3, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBigEndian:Z

    goto :goto_4

    :cond_0
    if-ne v9, v8, :cond_1

    add-int/lit8 v0, v1, 0x2

    iput v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    :sswitch_1
    iput v10, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBytesPerChar:I

    :goto_1
    iput-boolean v2, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBigEndian:Z

    goto :goto_4

    :cond_1
    ushr-int/lit8 v5, v4, 0x8

    const v8, 0xefbbbf

    if-ne v5, v8, :cond_2

    add-int/lit8 v0, v1, 0x3

    iput v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    :sswitch_2
    iput v3, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBytesPerChar:I

    goto :goto_0

    :cond_2
    sparse-switch v4, :sswitch_data_0

    goto :goto_4

    :sswitch_3
    invoke-direct {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->reportEBCDIC()V

    goto :goto_4

    :sswitch_4
    iput v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBytesPerChar:I

    goto :goto_1

    :cond_3
    :sswitch_5
    invoke-direct {p0, v6}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    :sswitch_6
    invoke-direct {p0, v7}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_4

    :sswitch_7
    iput-boolean v3, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBigEndian:Z

    :goto_2
    iput v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBytesPerChar:I

    goto :goto_4

    :cond_5
    iput-boolean v3, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBigEndian:Z

    :goto_3
    add-int/lit8 v4, v1, 0x4

    iput v4, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    goto :goto_2

    :cond_6
    iput-boolean v2, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBigEndian:Z

    goto :goto_3

    :goto_4
    iget v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    if-le v0, v1, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mHadBOM:Z

    iput v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputRowStart:I

    :cond_8
    iget v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBytesPerChar:I

    if-lez v0, :cond_9

    const/4 v2, 0x1

    :cond_9
    iput-boolean v2, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mByteSizeFound:Z

    if-nez v2, :cond_a

    iput v3, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBytesPerChar:I

    iput-boolean v3, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBigEndian:Z

    :cond_a
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3c -> :sswitch_7
        0x3c00 -> :sswitch_6
        0x3c0000 -> :sswitch_5
        0x3c003f -> :sswitch_0
        0x3c000000 -> :sswitch_4
        0x3c003f00 -> :sswitch_1
        0x3c3f786d -> :sswitch_2
        0x4c6fa794 -> :sswitch_3
    .end sparse-switch
.end method

.method private reportEBCDIC()V
    .locals 2

    new-instance v0, Ljava/io/CharConversionException;

    const-string v1, "Unsupported encoding (EBCDIC)"

    invoke-direct {v0, v1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reportWeirdUCS4(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/CharConversionException;

    .line 2
    .line 3
    const-string v1, "Unsupported UCS-4 endianness ("

    .line 4
    .line 5
    const-string v2, ") detected"

    .line 6
    .line 7
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, p1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method private verifyEncoding(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mByteSizeFound:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBytesPerChar:I

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Declared encoding \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' uses "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes per character; but physical encoding appeared to use "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBytesPerChar:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; cannot decode"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportXmlProblem(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private verifyEncoding(Ljava/lang/String;IZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mByteSizeFound:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->verifyEncoding(Ljava/lang/String;I)V

    iget-boolean p2, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBigEndian:Z

    if-eq p3, p2, :cond_1

    if-eqz p3, :cond_0

    const-string p2, "big"

    goto :goto_0

    :cond_0
    const-string p2, "little"

    :goto_0
    const-string p3, "Declared encoding \'"

    const-string v0, "\' has different endianness ("

    const-string v1, " endian) than what physical ordering appeared to be; cannot decode"

    .line 2
    invoke-static {p3, p1, v0, p2, v1}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportXmlProblem(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final bootstrap()Lcom/fasterxml/aalto/in/XmlScanner;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->doBootstrap()Lcom/fasterxml/aalto/in/XmlScanner;

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
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBytesPerChar:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->checkMbKeyword(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->checkSbKeyword(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public checkMbKeyword(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->nextMultiByte()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportNull()V

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public checkSbKeyword(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_3

    iget v2, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputLen:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputBuffer:[B

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    aget-byte v2, v3, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->nextByte()B

    move-result v2

    :goto_1
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportNull()V

    :cond_1
    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public doBootstrap()Lcom/fasterxml/aalto/in/XmlScanner;
    .locals 11

    invoke-direct {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->determineStreamEncoding()V

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->hasXmlDeclaration()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->readXmlDeclaration()V

    iget-object v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mFoundEncoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->verifyXmlEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "UTF-8"

    const-string v2, "UTF-16LE"

    const-string v3, "UTF-16BE"

    if-nez v0, :cond_5

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBytesPerChar:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBigEndian:Z

    if-eqz v0, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_1

    :cond_2
    const/4 v4, 0x4

    if-ne v0, v4, :cond_4

    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBigEndian:Z

    if-eqz v0, :cond_3

    const-string v0, "UTF-32BE"

    goto :goto_1

    :cond_3
    const-string v0, "UTF-32LE"

    goto :goto_1

    :cond_4
    move-object v0, v1

    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v4, v0}, Lcom/fasterxml/aalto/in/ReaderConfig;->setActualEncoding(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    iget v5, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mDeclaredXmlVersion:I

    iget-object v6, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mFoundEncoding:Ljava/lang/String;

    iget-object v7, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mStandalone:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/fasterxml/aalto/in/ReaderConfig;->setXmlDeclInfo(ILjava/lang/String;Ljava/lang/String;)V

    if-eq v0, v1, :cond_b

    const-string v1, "ISO-8859-1"

    if-eq v0, v1, :cond_b

    const-string v1, "US-ASCII"

    if-ne v0, v1, :cond_6

    goto :goto_2

    :cond_6
    const-string v1, "UTF-32"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Lcom/fasterxml/aalto/in/Utf32Reader;

    iget-object v5, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    iget-object v6, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    iget-object v7, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v8, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    iget v9, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputLen:I

    iget-boolean v10, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBigEndian:Z

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/fasterxml/aalto/in/Utf32Reader;-><init>(Lcom/fasterxml/aalto/in/ReaderConfig;Ljava/io/InputStream;[BIIZ)V

    new-instance v1, Lcom/fasterxml/aalto/in/ReaderScanner;

    iget-object v2, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-direct {v1, v2, v0}, Lcom/fasterxml/aalto/in/ReaderScanner;-><init>(Lcom/fasterxml/aalto/in/ReaderConfig;Ljava/io/Reader;)V

    return-object v1

    :cond_7
    iget-object v6, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputLen:I

    if-ge v1, v4, :cond_8

    new-instance v1, Lcom/fasterxml/aalto/in/MergedStream;

    iget-object v5, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    iget-object v7, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v8, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    iget v9, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputLen:I

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/fasterxml/aalto/in/MergedStream;-><init>(Lcom/fasterxml/aalto/in/ReaderConfig;Ljava/io/InputStream;[BII)V

    move-object v6, v1

    :cond_8
    const-string v1, "UTF-16"

    if-ne v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBigEndian:Z

    if-eqz v0, :cond_9

    move-object v2, v3

    :cond_9
    move-object v0, v2

    :cond_a
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v6, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v0, Lcom/fasterxml/aalto/in/ReaderScanner;

    iget-object v2, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-direct {v0, v2, v1}, Lcom/fasterxml/aalto/in/ReaderScanner;-><init>(Lcom/fasterxml/aalto/in/ReaderConfig;Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/fasterxml/aalto/impl/IoStreamException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported encoding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_2
    new-instance v0, Lcom/fasterxml/aalto/in/Utf8Scanner;

    iget-object v3, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    iget-object v4, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    iget v7, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputLen:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/fasterxml/aalto/in/Utf8Scanner;-><init>(Lcom/fasterxml/aalto/in/ReaderConfig;Ljava/io/InputStream;[BII)V

    return-object v0
.end method

.method public ensureLoaded(I)Z
    .locals 6

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputLen:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    sub-int/2addr v0, v1

    :goto_0
    const/4 v1, 0x1

    if-ge v0, p1, :cond_2

    iget-object v2, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputLen:I

    array-length v5, v3

    sub-int/2addr v5, v4

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    :goto_1
    if-ge v2, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputLen:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputLen:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getLocation()Lorg/apache/poi/javax/xml/stream/Location;
    .locals 7

    iget v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputProcessed:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    add-int/2addr v0, v1

    iget v2, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputRowStart:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBytesPerChar:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    div-int/2addr v0, v2

    div-int/2addr v1, v2

    :cond_0
    move v6, v1

    iget-object v1, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v1}, Lcom/fasterxml/aalto/in/ReaderConfig;->getPublicId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/in/ReaderConfig;->getSystemId()Ljava/lang/String;

    move-result-object v2

    int-to-long v3, v0

    iget v5, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputRow:I

    invoke-static/range {v1 .. v6}, Lcom/fasterxml/aalto/impl/LocationImpl;->fromZeroBased(Ljava/lang/String;Ljava/lang/String;JII)Lcom/fasterxml/aalto/impl/LocationImpl;

    move-result-object v0

    return-object v0
.end method

.method public getNext()I
    .locals 3

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBytesPerChar:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->nextMultiByte()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputLen:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputBuffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    aget-byte v0, v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->nextByte()B

    move-result v0

    :goto_0
    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getNextAfterWs(Z)I
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBytesPerChar:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->skipMbWs()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->skipSbWs()I

    move-result v0

    :goto_0
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->getNext()I

    move-result p1

    const-string v0, "; expected a white space"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportUnexpectedChar(ILjava/lang/String;)V

    :cond_1
    iget p1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBytesPerChar:I

    if-le p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->nextMultiByte()I

    move-result p1

    return p1

    :cond_2
    iget p1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputLen:I

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputBuffer:[B

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    aget-byte p1, v0, p1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->nextByte()B

    move-result p1

    :goto_1
    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public hasXmlDeclaration()Z
    .locals 11

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBytesPerChar:I

    const/16 v1, 0x20

    const/16 v2, 0x6c

    const/16 v3, 0x6d

    const/16 v4, 0x78

    const/16 v5, 0x3f

    const/16 v6, 0x3c

    const/4 v7, 0x6

    const/4 v8, 0x1

    if-ne v0, v8, :cond_0

    invoke-virtual {p0, v7}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->ensureLoaded(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v9, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    aget-byte v10, v0, v9

    if-ne v10, v6, :cond_2

    add-int/lit8 v6, v9, 0x1

    aget-byte v6, v0, v6

    if-ne v6, v5, :cond_2

    add-int/lit8 v5, v9, 0x2

    aget-byte v5, v0, v5

    if-ne v5, v4, :cond_2

    add-int/lit8 v4, v9, 0x3

    aget-byte v4, v0, v4

    if-ne v4, v3, :cond_2

    add-int/lit8 v3, v9, 0x4

    aget-byte v3, v0, v3

    if-ne v3, v2, :cond_2

    add-int/lit8 v2, v9, 0x5

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-gt v0, v1, :cond_2

    add-int/2addr v9, v7

    iput v9, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    return v8

    :cond_0
    mul-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->ensureLoaded(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->nextMultiByte()I

    move-result v7

    if-ne v7, v6, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->nextMultiByte()I

    move-result v6

    if-ne v6, v5, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->nextMultiByte()I

    move-result v5

    if-ne v5, v4, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->nextMultiByte()I

    move-result v4

    if-ne v4, v3, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->nextMultiByte()I

    move-result v3

    if-ne v3, v2, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->nextMultiByte()I

    move-result v2

    if-gt v2, v1, :cond_1

    return v8

    :cond_1
    iput v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public loadMore()V
    .locals 4

    iget v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputProcessed:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputLen:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputProcessed:I

    iget v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputRowStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputRowStart:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    iget-object v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    if-nez v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputLen:I

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputBuffer:[B

    array-length v3, v2

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_0

    :goto_1
    iget v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputLen:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportEof()V

    :cond_1
    return-void
.end method

.method public nextByte()B
    .locals 3

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputLen:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->loadMore()V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public nextMultiByte()I
    .locals 6

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputLen:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputBuffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    aget-byte v0, v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->nextByte()B

    move-result v0

    :goto_0
    iget v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputLen:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputBuffer:[B

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    aget-byte v1, v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->nextByte()B

    move-result v1

    :goto_1
    iget v2, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBytesPerChar:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBigEndian:Z

    and-int/lit16 v0, v0, 0xff

    if-eqz v2, :cond_2

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    :goto_2
    or-int/2addr v0, v1

    goto :goto_5

    :cond_2
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    goto :goto_2

    :cond_3
    iget v2, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputLen:I

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputBuffer:[B

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    aget-byte v2, v3, v2

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->nextByte()B

    move-result v2

    :goto_3
    iget v3, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputLen:I

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputBuffer:[B

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    aget-byte v3, v4, v3

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->nextByte()B

    move-result v3

    :goto_4
    iget-boolean v4, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBigEndian:Z

    if-eqz v4, :cond_6

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    goto :goto_2

    :cond_6
    shl-int/lit8 v3, v3, 0x18

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    :goto_5
    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportNull()V

    :cond_7
    return v0
.end method

.method public pushback()V
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBytesPerChar:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    return-void
.end method

.method public readQuotedValue([CI)I
    .locals 9

    array-length v0, p1

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBytesPerChar:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    const/4 v1, -0x1

    if-ge v2, v0, :cond_b

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->nextMultiByte()I

    move-result v6

    if-eq v6, v4, :cond_3

    if-ne v6, v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_5

    :cond_3
    :goto_1
    invoke-virtual {p0, v6}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->skipMbLF(I)V

    goto :goto_5

    :cond_4
    iget v6, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    iget v7, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputLen:I

    if-ge v6, v7, :cond_5

    iget-object v7, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputBuffer:[B

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    aget-byte v6, v7, v6

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->nextByte()B

    move-result v6

    :goto_2
    if-nez v6, :cond_6

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportNull()V

    :cond_6
    if-eq v6, v4, :cond_8

    if-ne v6, v5, :cond_7

    goto :goto_3

    :cond_7
    move v5, v6

    goto :goto_4

    :cond_8
    :goto_3
    invoke-virtual {p0, v6}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->skipSbLF(B)V

    :goto_4
    and-int/lit16 v5, v5, 0xff

    :goto_5
    if-ne v5, p2, :cond_a

    if-ge v2, v0, :cond_9

    goto :goto_6

    :cond_9
    const/4 v2, -0x1

    :goto_6
    return v2

    :cond_a
    if-ge v2, v0, :cond_1

    add-int/lit8 v1, v2, 0x1

    int-to-char v4, v5

    aput-char v4, p1, v2

    move v2, v1

    goto :goto_0

    :cond_b
    return v1
.end method

.method public skipMbLF(I)V
    .locals 1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->nextMultiByte()I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    iget p1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBytesPerChar:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    :cond_0
    iget p1, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputRow:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputRow:I

    iget p1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    iput p1, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputRowStart:I

    return-void
.end method

.method public skipMbWs()I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->nextMultiByte()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->mBytesPerChar:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    return v0

    :cond_0
    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportNull()V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->skipMbLF(I)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public skipSbLF(B)V
    .locals 2

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputLen:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputBuffer:[B

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    aget-byte p1, v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->nextByte()B

    move-result p1

    :goto_0
    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    iget p1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    :cond_1
    iget p1, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputRow:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputRow:I

    iget p1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    iput p1, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputRowStart:I

    return-void
.end method

.method public skipSbWs()I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputLen:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputBuffer:[B

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    aget-byte v1, v2, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->nextByte()B

    move-result v1

    :goto_1
    and-int/lit16 v2, v1, 0xff

    const/16 v3, 0x20

    if-le v2, v3, :cond_1

    iget v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->_inputPtr:I

    return v0

    :cond_1
    const/16 v2, 0xd

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportNull()V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->skipSbLF(B)V

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public verifyXmlEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lcom/fasterxml/aalto/util/CharsetNames;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->verifyEncoding(Ljava/lang/String;I)V

    goto :goto_4

    :cond_0
    const-string v0, "ISO-8859-1"

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "US-ASCII"

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "UTF-16"

    const/4 v2, 0x2

    if-ne p1, v0, :cond_3

    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->verifyEncoding(Ljava/lang/String;I)V

    goto :goto_4

    :cond_3
    const-string v0, "UTF-16LE"

    const/4 v3, 0x0

    if-ne p1, v0, :cond_4

    :goto_2
    invoke-direct {p0, p1, v2, v3}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->verifyEncoding(Ljava/lang/String;IZ)V

    goto :goto_4

    :cond_4
    const-string v0, "UTF-16BE"

    if-ne p1, v0, :cond_5

    :goto_3
    invoke-direct {p0, p1, v2, v1}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->verifyEncoding(Ljava/lang/String;IZ)V

    goto :goto_4

    :cond_5
    const-string v0, "UTF-32"

    const/4 v2, 0x4

    if-ne p1, v0, :cond_6

    goto :goto_1

    :cond_6
    const-string v0, "UTF-32LE"

    if-ne p1, v0, :cond_7

    goto :goto_2

    :cond_7
    const-string v0, "UTF-32BE"

    if-ne p1, v0, :cond_8

    goto :goto_3

    :cond_8
    :goto_4
    return-object p1
.end method
