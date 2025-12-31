.class public abstract Lcom/fasterxml/aalto/in/ByteBasedScanner;
.super Lcom/fasterxml/aalto/in/XmlScanner;
.source "SourceFile"


# instance fields
.field protected final _charTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

.field protected _inputEnd:I

.field protected _inputPtr:I

.field protected _quadBuffer:[I

.field protected final _symbols:Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

.field protected _tmpChar:I


# direct methods
.method public constructor <init>(Lcom/fasterxml/aalto/in/ReaderConfig;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;-><init>(Lcom/fasterxml/aalto/in/ReaderConfig;)V

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_quadBuffer:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_tmpChar:I

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/ReaderConfig;->getBBSymbols()Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_symbols:Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/ReaderConfig;->getCharTypes()Lcom/fasterxml/aalto/util/XmlCharTypes;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_charTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_pastBytesOrChars:J

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_rowStartOffset:I

    return-void
.end method


# virtual methods
.method public _releaseBuffers()V
    .locals 2

    invoke-super {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->_releaseBuffers()V

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_symbols:Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/ByteBasedPNameTable;->maybeDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    iget-object v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_symbols:Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    invoke-virtual {v0, v1}, Lcom/fasterxml/aalto/in/ReaderConfig;->updateBBSymbols(Lcom/fasterxml/aalto/in/ByteBasedPNameTable;)V

    :cond_0
    return-void
.end method

.method public final addPName(I[III)Lcom/fasterxml/aalto/in/PName;
    .locals 6

    iget-object v1, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_charTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->addUtfPName(Lcom/fasterxml/aalto/util/XmlCharTypes;I[III)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    return-object p1
.end method

.method public final addUtfPName(Lcom/fasterxml/aalto/util/XmlCharTypes;I[III)Lcom/fasterxml/aalto/in/PName;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p5

    shl-int/lit8 v2, p4, 0x2

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-ge v1, v3, :cond_0

    add-int/lit8 v6, p4, -0x1

    aget v7, p3, v6

    rsub-int/lit8 v8, v1, 0x4

    shl-int/2addr v8, v5

    shl-int v8, v7, v8

    aput v8, p3, v6

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    aget v6, p3, v4

    ushr-int/lit8 v6, v6, 0x18

    iget-object v8, v0, Lcom/fasterxml/aalto/in/XmlScanner;->_nameBuffer:[C

    move-object/from16 v9, p1

    iget-object v9, v9, Lcom/fasterxml/aalto/util/XmlCharTypes;->NAME_CHARS:[I

    aget v10, v9, v6

    const/16 v14, 0xf0

    const/16 v15, 0xe0

    const/16 v12, 0xc0

    const/4 v13, 0x1

    const/4 v11, 0x2

    if-eqz v10, :cond_b

    if-eq v10, v13, :cond_b

    if-eq v10, v11, :cond_b

    if-eq v10, v5, :cond_a

    if-eq v10, v3, :cond_b

    and-int/lit16 v10, v6, 0xe0

    if-ne v10, v12, :cond_1

    and-int/lit8 v6, v6, 0x1f

    :goto_1
    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    and-int/lit16 v10, v6, 0xf0

    if-ne v10, v15, :cond_2

    and-int/lit8 v6, v6, 0xf

    const/4 v10, 0x2

    goto :goto_2

    :cond_2
    and-int/lit16 v10, v6, 0xf8

    if-ne v10, v14, :cond_3

    and-int/lit8 v6, v6, 0x7

    const/4 v10, 0x3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v6}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->reportInvalidInitial(I)V

    const/4 v6, 0x1

    goto :goto_1

    :goto_2
    add-int v14, v13, v10

    if-le v14, v2, :cond_4

    invoke-virtual {v0, v8, v4}, Lcom/fasterxml/aalto/in/XmlScanner;->reportEofInName([CI)V

    :cond_4
    aget v15, p3, v4

    shr-int/lit8 v12, v15, 0x10

    and-int/lit16 v3, v12, 0xff

    and-int/lit16 v5, v12, 0xc0

    const/16 v4, 0x80

    if-eq v5, v4, :cond_5

    invoke-virtual {v0, v3}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->reportInvalidOther(I)V

    :cond_5
    shl-int/lit8 v3, v6, 0x6

    and-int/lit8 v4, v12, 0x3f

    or-int/2addr v3, v4

    if-le v10, v13, :cond_8

    shr-int/lit8 v4, v15, 0x8

    and-int/lit16 v5, v4, 0xff

    and-int/lit16 v6, v4, 0xc0

    const/16 v12, 0x80

    if-eq v6, v12, :cond_6

    invoke-virtual {v0, v5}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->reportInvalidOther(I)V

    :cond_6
    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v3, v4

    if-le v10, v11, :cond_8

    and-int/lit16 v4, v15, 0xc0

    if-eq v4, v12, :cond_7

    and-int/lit16 v4, v15, 0xff

    invoke-virtual {v0, v4}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->reportInvalidOther(I)V

    :cond_7
    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v4, v15, 0x3f

    or-int/2addr v3, v4

    :cond_8
    move v6, v3

    invoke-static {v6}, Lcom/fasterxml/aalto/util/XmlChars;->is10NameStartChar(I)Z

    move-result v3

    if-le v10, v11, :cond_9

    const/high16 v4, 0x10000

    sub-int/2addr v6, v4

    shr-int/lit8 v4, v6, 0xa

    const v5, 0xd800

    add-int/2addr v4, v5

    int-to-char v4, v4

    const/4 v5, 0x0

    aput-char v4, v8, v5

    and-int/lit16 v4, v6, 0x3ff

    const v5, 0xdc00

    or-int v6, v4, v5

    const/4 v5, 0x1

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    goto :goto_4

    :cond_a
    const/4 v3, 0x1

    :goto_3
    const/4 v5, 0x0

    const/4 v14, 0x1

    goto :goto_4

    :cond_b
    const/4 v3, 0x0

    goto :goto_3

    :goto_4
    if-nez v3, :cond_c

    const/4 v3, 0x0

    invoke-virtual {v0, v6, v3}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInvalidNameChar(II)V

    :cond_c
    add-int/lit8 v3, v5, 0x1

    int-to-char v4, v6

    aput-char v4, v8, v5

    const/4 v4, -0x1

    :goto_5
    if-ge v14, v2, :cond_1d

    shr-int/lit8 v5, v14, 0x2

    aget v5, p3, v5

    and-int/lit8 v6, v14, 0x3

    const/4 v10, 0x3

    rsub-int/lit8 v6, v6, 0x3

    shl-int/2addr v6, v10

    shr-int/2addr v5, v6

    and-int/lit16 v6, v5, 0xff

    add-int/lit8 v12, v14, 0x1

    aget v15, v9, v6

    if-eqz v15, :cond_17

    if-eq v15, v13, :cond_19

    if-eq v15, v11, :cond_18

    if-eq v15, v10, :cond_18

    const/4 v10, 0x4

    if-eq v15, v10, :cond_17

    and-int/lit16 v10, v5, 0xe0

    const/16 v15, 0xc0

    if-ne v10, v15, :cond_d

    and-int/lit8 v5, v5, 0x1f

    const/4 v10, 0x1

    :goto_6
    const/16 v15, 0xf0

    goto :goto_7

    :cond_d
    and-int/lit16 v10, v5, 0xf0

    const/16 v15, 0xe0

    if-ne v10, v15, :cond_e

    and-int/lit8 v5, v5, 0xf

    const/4 v10, 0x2

    goto :goto_6

    :cond_e
    and-int/lit16 v10, v5, 0xf8

    const/16 v15, 0xf0

    if-ne v10, v15, :cond_f

    and-int/lit8 v5, v5, 0x7

    const/4 v10, 0x3

    goto :goto_7

    :cond_f
    invoke-virtual {v0, v6}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->reportInvalidInitial(I)V

    const/4 v5, 0x1

    const/4 v10, 0x1

    :goto_7
    add-int v6, v12, v10

    if-le v6, v2, :cond_10

    invoke-virtual {v0, v8, v3}, Lcom/fasterxml/aalto/in/XmlScanner;->reportEofInName([CI)V

    :cond_10
    shr-int/lit8 v6, v12, 0x2

    aget v6, p3, v6

    and-int/lit8 v12, v12, 0x3

    const/16 v18, 0x3

    rsub-int/lit8 v12, v12, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int/2addr v6, v12

    add-int/lit8 v12, v14, 0x2

    and-int/lit16 v15, v6, 0xc0

    const/16 v11, 0x80

    if-eq v15, v11, :cond_11

    invoke-virtual {v0, v6}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->reportInvalidOther(I)V

    :cond_11
    shl-int/lit8 v5, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v5, v6

    if-le v10, v13, :cond_14

    shr-int/lit8 v6, v12, 0x2

    aget v6, p3, v6

    and-int/lit8 v11, v12, 0x3

    const/4 v12, 0x3

    rsub-int/lit8 v11, v11, 0x3

    shl-int/2addr v11, v12

    shr-int/2addr v6, v11

    add-int/lit8 v12, v14, 0x3

    and-int/lit16 v11, v6, 0xc0

    const/16 v15, 0x80

    if-eq v11, v15, :cond_12

    invoke-virtual {v0, v6}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->reportInvalidOther(I)V

    :cond_12
    shl-int/lit8 v5, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v5, v6

    const/4 v6, 0x2

    if-le v10, v6, :cond_14

    shr-int/lit8 v6, v12, 0x2

    aget v6, p3, v6

    and-int/lit8 v11, v12, 0x3

    const/4 v15, 0x3

    rsub-int/lit8 v11, v11, 0x3

    shl-int/2addr v11, v15

    shr-int/2addr v6, v11

    add-int/lit8 v12, v14, 0x4

    and-int/lit16 v11, v6, 0xc0

    const/16 v14, 0x80

    if-eq v11, v14, :cond_13

    and-int/lit16 v11, v6, 0xff

    invoke-virtual {v0, v11}, Lcom/fasterxml/aalto/in/ByteBasedScanner;->reportInvalidOther(I)V

    :cond_13
    shl-int/lit8 v5, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v5, v6

    :goto_8
    move v6, v5

    goto :goto_9

    :cond_14
    const/16 v14, 0x80

    const/4 v15, 0x3

    goto :goto_8

    :goto_9
    invoke-static {v6}, Lcom/fasterxml/aalto/util/XmlChars;->is10NameChar(I)Z

    move-result v5

    const/4 v11, 0x2

    if-le v10, v11, :cond_16

    const/high16 v10, 0x10000

    sub-int/2addr v6, v10

    array-length v10, v8

    if-lt v3, v10, :cond_15

    array-length v10, v8

    invoke-static {v8, v10}, Lcom/fasterxml/aalto/util/DataUtil;->growArrayBy([CI)[C

    move-result-object v8

    iput-object v8, v0, Lcom/fasterxml/aalto/in/XmlScanner;->_nameBuffer:[C

    :cond_15
    add-int/lit8 v10, v3, 0x1

    shr-int/lit8 v17, v6, 0xa

    const v16, 0xd800

    add-int v11, v17, v16

    int-to-char v11, v11

    aput-char v11, v8, v3

    and-int/lit16 v3, v6, 0x3ff

    const v11, 0xdc00

    or-int v6, v3, v11

    move v3, v10

    goto :goto_c

    :cond_16
    const v11, 0xdc00

    const v16, 0xd800

    goto :goto_c

    :cond_17
    const v11, 0xdc00

    const/16 v14, 0x80

    const/4 v15, 0x3

    const v16, 0xd800

    goto :goto_b

    :cond_18
    const v11, 0xdc00

    const/16 v14, 0x80

    const/4 v15, 0x3

    const v16, 0xd800

    :goto_a
    const/4 v5, 0x1

    goto :goto_c

    :cond_19
    const v11, 0xdc00

    const/16 v14, 0x80

    const/4 v15, 0x3

    const v16, 0xd800

    if-ltz v4, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportMultipleColonsInName()V

    :cond_1a
    move v4, v3

    goto :goto_a

    :goto_b
    const/4 v5, 0x0

    :goto_c
    if-nez v5, :cond_1b

    invoke-virtual {v0, v6, v3}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInvalidNameChar(II)V

    :cond_1b
    array-length v5, v8

    if-lt v3, v5, :cond_1c

    array-length v5, v8

    invoke-static {v8, v5}, Lcom/fasterxml/aalto/util/DataUtil;->growArrayBy([CI)[C

    move-result-object v5

    iput-object v5, v0, Lcom/fasterxml/aalto/in/XmlScanner;->_nameBuffer:[C

    move-object v8, v5

    :cond_1c
    add-int/lit8 v5, v3, 0x1

    int-to-char v6, v6

    aput-char v6, v8, v3

    move v3, v5

    move v14, v12

    const/4 v11, 0x2

    goto/16 :goto_5

    :cond_1d
    new-instance v5, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v5, v8, v2, v3}, Ljava/lang/String;-><init>([CII)V

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1e

    add-int/lit8 v1, p4, -0x1

    aput v7, p3, v1

    :cond_1e
    iget-object v1, v0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_symbols:Lcom/fasterxml/aalto/in/ByteBasedPNameTable;

    move/from16 v2, p2

    move-object v3, v5

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/aalto/in/ByteBasedPNameTable;->addSymbol(ILjava/lang/String;I[II)Lcom/fasterxml/aalto/in/ByteBasedPName;

    move-result-object v1

    return-object v1
.end method

.method public abstract decodeCharForError(B)I
.end method

.method public getCurrentLocation()Lorg/codehaus/stax2/XMLStreamLocation2;
    .locals 7

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/ReaderConfig;->getPublicId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/ReaderConfig;->getSystemId()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_pastBytesOrChars:J

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    iget v5, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currRow:I

    iget v6, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_rowStartOffset:I

    sub-int v6, v0, v6

    invoke-static/range {v1 .. v6}, Lcom/fasterxml/aalto/impl/LocationImpl;->fromZeroBased(Ljava/lang/String;Ljava/lang/String;JII)Lcom/fasterxml/aalto/impl/LocationImpl;

    move-result-object v0

    return-object v0
.end method

.method public final markLF()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_rowStartOffset:I

    iget v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currRow:I

    return-void
.end method

.method public final markLF(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_rowStartOffset:I

    iget p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currRow:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currRow:I

    return-void
.end method

.method public reportInvalidInitial(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    return-void
.end method

.method public reportInvalidOther(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    return-void
.end method

.method public final setStartLocation()V
    .locals 5

    iget-wide v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_pastBytesOrChars:J

    iget v2, p0, Lcom/fasterxml/aalto/in/ByteBasedScanner;->_inputPtr:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_startRawOffset:J

    iget v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currRow:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_startRow:J

    iget v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_rowStartOffset:I

    sub-int/2addr v2, v0

    int-to-long v0, v2

    iput-wide v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_startColumn:J

    return-void
.end method
