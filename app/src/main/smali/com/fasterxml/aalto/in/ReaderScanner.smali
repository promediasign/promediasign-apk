.class public final Lcom/fasterxml/aalto/in/ReaderScanner;
.super Lcom/fasterxml/aalto/in/XmlScanner;
.source "SourceFile"


# static fields
.field private static final sCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;


# instance fields
.field protected _in:Ljava/io/Reader;

.field protected _inputBuffer:[C

.field protected _inputEnd:I

.field protected _inputPtr:I

.field protected final _symbols:Lcom/fasterxml/aalto/in/CharBasedPNameTable;

.field protected mTmpChar:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/fasterxml/aalto/in/InputCharTypes;->getLatin1CharTypes()Lcom/fasterxml/aalto/util/XmlCharTypes;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/aalto/in/ReaderScanner;->sCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/aalto/in/ReaderConfig;Ljava/io/Reader;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;-><init>(Lcom/fasterxml/aalto/in/ReaderConfig;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->mTmpChar:I

    iput-object p2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_in:Ljava/io/Reader;

    const/16 p2, 0xfa0

    invoke-virtual {p1, p2}, Lcom/fasterxml/aalto/in/ReaderConfig;->allocFullCBuffer(I)[C

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iput v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    iput v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_pastBytesOrChars:J

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_rowStartOffset:I

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/ReaderConfig;->getCBSymbols()Lcom/fasterxml/aalto/in/CharBasedPNameTable;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_symbols:Lcom/fasterxml/aalto/in/CharBasedPNameTable;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/aalto/in/ReaderConfig;Ljava/io/Reader;[CII)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;-><init>(Lcom/fasterxml/aalto/in/ReaderConfig;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->mTmpChar:I

    iput-object p2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_in:Ljava/io/Reader;

    iput-object p3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iput p4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iput p5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_pastBytesOrChars:J

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_rowStartOffset:I

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/ReaderConfig;->getCBSymbols()Lcom/fasterxml/aalto/in/CharBasedPNameTable;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_symbols:Lcom/fasterxml/aalto/in/CharBasedPNameTable;

    return-void
.end method

.method private checkSurrogate(C)C
    .locals 4

    const v0, 0xdc00

    if-lt p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/in/ReaderScanner;->reportInvalidFirstSurrogate(C)V

    :cond_0
    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_1
    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v1, v1, v2

    if-lt v1, v0, :cond_2

    const v0, 0xe000

    if-lt v1, v0, :cond_3

    :cond_2
    invoke-direct {p0, v1}, Lcom/fasterxml/aalto/in/ReaderScanner;->reportInvalidSecondSurrogate(C)V

    :cond_3
    const v0, 0xd800

    sub-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0xa

    const/high16 v0, 0x10000

    add-int/2addr p1, v0

    const v0, 0x10ffff

    if-le p1, v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInvalidXmlChar(I)V

    :cond_4
    return v1
.end method

.method private checkSurrogateNameChar(CCI)I
    .locals 1

    const v0, 0xdc00

    if-lt p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/in/ReaderScanner;->reportInvalidFirstSurrogate(C)V

    :cond_0
    if-lt p2, v0, :cond_1

    const v0, 0xe000

    if-lt p2, v0, :cond_2

    :cond_1
    invoke-direct {p0, p2}, Lcom/fasterxml/aalto/in/ReaderScanner;->reportInvalidSecondSurrogate(C)V

    :cond_2
    const p2, 0xd800

    sub-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0xa

    const/high16 p2, 0x10000

    add-int/2addr p1, p2

    const p2, 0x10ffff

    if-le p1, p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInvalidXmlChar(I)V

    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInvalidNameChar(II)V

    return p1
.end method

.method private final collectValue(ICLcom/fasterxml/aalto/in/PName;)I
    .locals 8

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_attrCollector:Lcom/fasterxml/aalto/in/AttributeCollector;

    invoke-virtual {v0, p3, p1}, Lcom/fasterxml/aalto/in/AttributeCollector;->startNewValue(Lcom/fasterxml/aalto/in/PName;I)[C

    move-result-object v0

    sget-object v1, Lcom/fasterxml/aalto/in/ReaderScanner;->sCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v1, v1, Lcom/fasterxml/aalto/util/XmlCharTypes;->ATTR_CHARS:[I

    :goto_0
    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_0
    array-length v3, v0

    if-lt p1, v3, :cond_1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_attrCollector:Lcom/fasterxml/aalto/in/AttributeCollector;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/AttributeCollector;->valueBufferFull()[C

    move-result-object v0

    :cond_1
    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    array-length v4, v0

    sub-int/2addr v4, p1

    add-int/2addr v4, v2

    if-ge v4, v3, :cond_2

    move v3, v4

    :cond_2
    :goto_1
    if-ge v2, v3, :cond_11

    iget-object v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    add-int/lit8 v5, v2, 0x1

    aget-char v2, v4, v2

    const/16 v4, 0xff

    const v6, 0xd800

    if-gt v2, v4, :cond_3

    aget v7, v1, v2

    if-eqz v7, :cond_10

    :goto_2
    iput v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto :goto_3

    :cond_3
    if-lt v2, v6, :cond_10

    goto :goto_2

    :goto_3
    if-gt v2, v4, :cond_c

    aget v3, v1, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    const/4 v4, 0x3

    if-eq v3, v4, :cond_b

    const/16 v4, 0xe

    if-eq v3, v4, :cond_7

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const-string v3, "\'<\' not allowed in attribute value"

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/aalto/in/XmlScanner;->throwUnexpectedChar(ILjava/lang/String;)V

    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/in/ReaderScanner;->handleEntityInText(Z)I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, p3, v2}, Lcom/fasterxml/aalto/in/XmlScanner;->reportUnexpandedEntityInAttr(Lcom/fasterxml/aalto/in/PName;Z)V

    :cond_4
    shr-int/lit8 v2, v3, 0x10

    if-eqz v2, :cond_6

    const/high16 v2, 0x10000

    sub-int/2addr v3, v2

    add-int/lit8 v2, p1, 0x1

    shr-int/lit8 v4, v3, 0xa

    or-int/2addr v4, v6

    int-to-char v4, v4

    aput-char v4, v0, p1

    and-int/lit16 p1, v3, 0x3ff

    const v3, 0xdc00

    or-int/2addr v3, p1

    array-length p1, v0

    if-lt v2, p1, :cond_5

    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_attrCollector:Lcom/fasterxml/aalto/in/AttributeCollector;

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/AttributeCollector;->valueBufferFull()[C

    move-result-object v0

    :cond_5
    move p1, v2

    :cond_6
    int-to-char v2, v3

    goto :goto_4

    :cond_7
    if-ne v2, p2, :cond_f

    return p1

    :cond_8
    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/in/XmlScanner;->handleInvalidXmlChar(I)C

    :cond_9
    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v3, :cond_a

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_a
    iget-object v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v2, v2, v3

    const/16 v4, 0xa

    if-ne v2, v4, :cond_b

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_b
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    :pswitch_2
    const/16 v2, 0x20

    goto :goto_4

    :cond_c
    if-lt v2, v6, :cond_f

    const v3, 0xe000

    if-ge v2, v3, :cond_e

    invoke-direct {p0, v2}, Lcom/fasterxml/aalto/in/ReaderScanner;->checkSurrogate(C)C

    move-result v3

    add-int/lit8 v4, p1, 0x1

    aput-char v2, v0, p1

    array-length p1, v0

    if-lt v4, p1, :cond_d

    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_attrCollector:Lcom/fasterxml/aalto/in/AttributeCollector;

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/AttributeCollector;->valueBufferFull()[C

    move-result-object v0

    :cond_d
    move v2, v3

    move p1, v4

    goto :goto_4

    :cond_e
    const v3, 0xfffe

    if-lt v2, v3, :cond_f

    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/in/XmlScanner;->handleInvalidXmlChar(I)C

    move-result v2

    :cond_f
    :goto_4
    add-int/lit8 v3, p1, 0x1

    aput-char v2, v0, p1

    move p1, v3

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v4, p1, 0x1

    aput-char v2, v0, p1

    move p1, v4

    move v2, v5

    goto/16 :goto_1

    :cond_11
    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private decodeSurrogate(C)I
    .locals 4

    const v0, 0xdc00

    if-lt p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/in/ReaderScanner;->reportInvalidFirstSurrogate(C)V

    :cond_0
    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_1
    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v1, v1, v2

    if-lt v1, v0, :cond_2

    const v0, 0xe000

    if-lt v1, v0, :cond_3

    :cond_2
    invoke-direct {p0, v1}, Lcom/fasterxml/aalto/in/ReaderScanner;->reportInvalidSecondSurrogate(C)V

    :cond_3
    const v0, 0xd800

    sub-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0xa

    const/high16 v0, 0x10000

    add-int/2addr p1, v0

    const v0, 0x10ffff

    if-le p1, v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInvalidXmlChar(I)V

    :cond_4
    return p1
.end method

.method private final handleDtdStart()I
    .locals 5

    const-string v0, "DOCTYPE"

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/in/ReaderScanner;->matchAsciiKeyword(Ljava/lang/String;)V

    const-string v0, "after DOCTYPE keyword, before root name"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/aalto/in/ReaderScanner;->skipInternalWs(ZLjava/lang/String;)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/ReaderScanner;->parsePName(C)Lcom/fasterxml/aalto/in/PName;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenName:Lcom/fasterxml/aalto/in/PName;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/aalto/in/ReaderScanner;->skipInternalWs(ZLjava/lang/String;)C

    move-result v3

    const/16 v4, 0x50

    if-ne v3, v4, :cond_0

    const-string v3, "PUBLIC"

    invoke-direct {p0, v3}, Lcom/fasterxml/aalto/in/ReaderScanner;->matchAsciiKeyword(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/aalto/in/ReaderScanner;->skipInternalWs(ZLjava/lang/String;)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/aalto/in/ReaderScanner;->parsePublicId(C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_publicId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/aalto/in/ReaderScanner;->skipInternalWs(ZLjava/lang/String;)C

    move-result v3

    :goto_0
    invoke-virtual {p0, v3}, Lcom/fasterxml/aalto/in/ReaderScanner;->parseSystemId(C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_systemId:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/aalto/in/ReaderScanner;->skipInternalWs(ZLjava/lang/String;)C

    move-result v3

    goto :goto_1

    :cond_0
    const/16 v4, 0x53

    if-ne v3, v4, :cond_1

    const-string v3, "SYSTEM"

    invoke-direct {p0, v3}, Lcom/fasterxml/aalto/in/ReaderScanner;->matchAsciiKeyword(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/aalto/in/ReaderScanner;->skipInternalWs(ZLjava/lang/String;)C

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
    invoke-virtual {p0, v3, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportTreeUnexpChar(ILjava/lang/String;)V

    :cond_4
    iput-boolean v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    goto :goto_2
.end method

.method private handleNsDeclaration(Lcom/fasterxml/aalto/in/PName;C)V
    .locals 7

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nameBuffer:[C

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_0
    iget-object v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v3, v3, v4

    if-ne v3, p2, :cond_2

    if-nez v2, :cond_1

    const-string p2, ""

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/aalto/in/XmlScanner;->bindNs(Lcom/fasterxml/aalto/in/PName;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {p2, v0, v2}, Lcom/fasterxml/aalto/in/ReaderConfig;->canonicalizeURI([CI)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :goto_2
    return-void

    :cond_2
    const/16 v4, 0x26

    if-ne v3, v4, :cond_6

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/ReaderScanner;->handleEntityInText(Z)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lcom/fasterxml/aalto/in/XmlScanner;->reportUnexpandedEntityInAttr(Lcom/fasterxml/aalto/in/PName;Z)V

    :cond_3
    shr-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_5

    array-length v4, v0

    if-lt v2, v4, :cond_4

    array-length v4, v0

    invoke-static {v0, v4}, Lcom/fasterxml/aalto/util/DataUtil;->growArrayBy([CI)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nameBuffer:[C

    :cond_4
    const/high16 v4, 0x10000

    sub-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v5, v3, 0xa

    const v6, 0xd800

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v0, v2

    and-int/lit16 v2, v3, 0x3ff

    const v3, 0xdc00

    or-int/2addr v3, v2

    move v2, v4

    :cond_5
    int-to-char v3, v3

    goto :goto_3

    :cond_6
    const/16 v4, 0x3c

    if-ne v3, v4, :cond_7

    const-string v4, "\'<\' not allowed in attribute value"

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/aalto/in/XmlScanner;->throwUnexpectedChar(ILjava/lang/String;)V

    goto :goto_3

    :cond_7
    const/16 v4, 0x20

    if-ge v3, v4, :cond_c

    const/16 v4, 0xa

    if-ne v3, v4, :cond_8

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    goto :goto_3

    :cond_8
    const/16 v6, 0xd

    if-ne v3, v6, :cond_b

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v5, v3, :cond_9

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_9
    iget-object v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v3, v3, v5

    if-ne v3, v4, :cond_a

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_a
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    const/16 v3, 0xa

    goto :goto_3

    :cond_b
    const/16 v4, 0x9

    if-eq v3, v4, :cond_c

    invoke-virtual {p0, v3}, Lcom/fasterxml/aalto/in/XmlScanner;->throwInvalidSpace(I)V

    :cond_c
    :goto_3
    array-length v4, v0

    if-lt v2, v4, :cond_d

    array-length v4, v0

    invoke-static {v0, v4}, Lcom/fasterxml/aalto/util/DataUtil;->growArrayBy([CI)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nameBuffer:[C

    :cond_d
    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    move v2, v4

    goto/16 :goto_0
.end method

.method private final matchAsciiKeyword(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_2

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_0
    iget-object v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v2, v2, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

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

.method private reportInvalidFirstSurrogate(C)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid surrogate character (code 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): can not start a surrogate pair"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    return-void
.end method

.method private reportInvalidSecondSurrogate(C)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid surrogate character (code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): is not legal as the second part of a surrogate pair"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _closeSource()V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_in:Ljava/io/Reader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_in:Ljava/io/Reader;

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

    invoke-super {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->_releaseBuffers()V

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_symbols:Lcom/fasterxml/aalto/in/CharBasedPNameTable;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->maybeDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_symbols:Lcom/fasterxml/aalto/in/CharBasedPNameTable;

    invoke-virtual {v0, v1}, Lcom/fasterxml/aalto/in/ReaderConfig;->updateCBSymbols(Lcom/fasterxml/aalto/in/CharBasedPNameTable;)V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_in:Ljava/io/Reader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v1, v0}, Lcom/fasterxml/aalto/in/ReaderConfig;->freeFullCBuffer([C)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    :cond_1
    return-void
.end method

.method public final addPName([CII)Lcom/fasterxml/aalto/in/PName;
    .locals 7

    const/4 v0, 0x0

    aget-char v1, p1, v0

    const v2, 0xe000

    const/4 v3, 0x1

    const/4 v4, -0x1

    const v5, 0xd800

    if-lt v1, v5, :cond_2

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, v3, :cond_1

    invoke-direct {p0, v1}, Lcom/fasterxml/aalto/in/ReaderScanner;->reportInvalidFirstSurrogate(C)V

    :cond_1
    aget-char v3, p1, v3

    invoke-direct {p0, v1, v3, v0}, Lcom/fasterxml/aalto/in/ReaderScanner;->checkSurrogateNameChar(CCI)I

    const/4 v3, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/fasterxml/aalto/util/XmlChars;->is10NameStartChar(I)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInvalidNameChar(II)V

    :cond_3
    :goto_1
    if-ge v3, p2, :cond_a

    aget-char v1, p1, v3

    if-lt v1, v5, :cond_6

    if-lt v1, v2, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v3, 0x1

    if-lt v6, p2, :cond_5

    invoke-direct {p0, v1}, Lcom/fasterxml/aalto/in/ReaderScanner;->reportInvalidFirstSurrogate(C)V

    :cond_5
    aget-char v6, p1, v6

    invoke-direct {p0, v1, v6, v3}, Lcom/fasterxml/aalto/in/ReaderScanner;->checkSurrogateNameChar(CCI)I

    goto :goto_3

    :cond_6
    :goto_2
    const/16 v6, 0x3a

    if-ne v1, v6, :cond_8

    if-ltz v4, :cond_7

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportMultipleColonsInName()V

    :cond_7
    move v4, v3

    goto :goto_3

    :cond_8
    invoke-static {v1}, Lcom/fasterxml/aalto/util/XmlChars;->is10NameChar(I)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {p0, v1, v3}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInvalidNameChar(II)V

    :cond_9
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_a
    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_symbols:Lcom/fasterxml/aalto/in/CharBasedPNameTable;

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->addSymbol([CIII)Lcom/fasterxml/aalto/in/PNameC;

    move-result-object p1

    return-object p1
.end method

.method public final checkInTreeIndentation(C)I
    .locals 11

    const/16 v0, 0xd

    const/16 v1, 0xa

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/4 v5, 0x1

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->loadMore()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {p1, v3, v4}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithIndentation(IC)V

    return v2

    :cond_0
    iget-object p1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char p1, p1, v0

    if-ne p1, v1, :cond_1

    add-int/2addr v0, v5

    iput v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    iget p1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_2
    iget-object p1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v6, p1, v0

    const/16 v7, 0x21

    const/16 v8, 0x3c

    if-eq v6, v4, :cond_4

    const/16 v9, 0x9

    if-eq v6, v9, :cond_4

    if-ne v6, v8, :cond_3

    add-int/lit8 v6, v0, 0x1

    iget v8, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-ge v6, v8, :cond_3

    add-int/2addr v0, v5

    aget-char p1, p1, v0

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

    iput v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    if-ne v6, v4, :cond_5

    goto :goto_0

    :cond_5
    const/16 v4, 0x8

    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-gt p1, v4, :cond_8

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v9, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v0, v9, :cond_6

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_6
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v9, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v10, v0, v9

    if-eq v10, v6, :cond_7

    if-ne v10, v8, :cond_8

    add-int/lit8 v4, v9, 0x1

    iget v8, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-ge v4, v8, :cond_8

    add-int/2addr v9, v5

    aget-char v0, v0, v9

    if-eq v0, v7, :cond_8

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v0, p1, v6}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithIndentation(IC)V

    return v2

    :cond_7
    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithEmpty()[C

    move-result-object v0

    aput-char v1, v0, v3

    const/4 v1, 0x1

    :goto_2
    if-gt v1, p1, :cond_9

    aput-char v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    add-int/2addr p1, v5

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/util/TextBuilder;->setCurrentLength(I)V

    return p1
.end method

.method public final checkPrologIndentation(C)I
    .locals 8

    const/16 v0, 0xd

    const/16 v1, 0xa

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/4 v5, 0x1

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->loadMore()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {p1, v3, v4}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithIndentation(IC)V

    return v2

    :cond_0
    iget-object p1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char p1, p1, v0

    if-ne p1, v1, :cond_1

    add-int/2addr v0, v5

    iput v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    iget p1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->loadMore()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {p1, v3, v4}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithIndentation(IC)V

    return v2

    :cond_2
    iget-object p1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char p1, p1, v0

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

    iput v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    if-ne p1, v4, :cond_5

    goto :goto_0

    :cond_5
    const/16 v4, 0x8

    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v6, v7, :cond_6

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->loadMore()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v6, v6, v7

    if-eq v6, p1, :cond_7

    :goto_2
    iget-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v1, v0, p1}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithIndentation(IC)V

    return v2

    :cond_7
    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v6, v0, 0x1

    if-lt v6, v4, :cond_9

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithEmpty()[C

    move-result-object v2

    aput-char v1, v2, v3

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

.method public final finishCData()V
    .locals 11

    sget-object v0, Lcom/fasterxml/aalto/in/ReaderScanner;->sCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->OTHER_CHARS:[I

    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithEmpty()[C

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_0
    array-length v6, v2

    if-lt v4, v6, :cond_1

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/util/TextBuilder;->finishCurrentSegment()[C

    move-result-object v2

    const/4 v4, 0x0

    :cond_1
    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    array-length v7, v2

    sub-int/2addr v7, v4

    add-int/2addr v7, v5

    if-ge v7, v6, :cond_2

    move v6, v7

    :cond_2
    :goto_1
    if-ge v5, v6, :cond_16

    add-int/lit8 v7, v5, 0x1

    aget-char v5, v1, v5

    const v8, 0xd800

    const/16 v9, 0xff

    if-gt v5, v9, :cond_3

    aget v10, v0, v5

    if-eqz v10, :cond_15

    :goto_2
    iput v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto :goto_3

    :cond_3
    if-lt v5, v8, :cond_15

    goto :goto_2

    :goto_3
    if-gt v5, v9, :cond_11

    aget v6, v0, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_d

    const/4 v8, 0x2

    if-eq v6, v8, :cond_e

    const/4 v8, 0x3

    if-eq v6, v8, :cond_c

    const/16 v8, 0xb

    if-eq v6, v8, :cond_4

    goto/16 :goto_8

    :cond_4
    const/4 v6, 0x0

    :goto_4
    iget v8, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v9, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v8, v9, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_5
    iget-object v8, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v9, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v8, v8, v9

    const/16 v10, 0x5d

    if-eq v8, v10, :cond_b

    const/16 v9, 0x3e

    if-ne v8, v9, :cond_6

    if-lt v6, v7, :cond_6

    const/4 v8, 0x1

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_7

    :goto_6
    add-int/lit8 v6, v6, -0x1

    :cond_7
    if-lez v6, :cond_9

    add-int/lit8 v9, v4, 0x1

    aput-char v10, v2, v4

    array-length v4, v2

    if-lt v9, v4, :cond_8

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/util/TextBuilder;->finishCurrentSegment()[C

    move-result-object v2

    const/4 v4, 0x0

    goto :goto_6

    :cond_8
    move v4, v9

    goto :goto_6

    :cond_9
    if-eqz v8, :cond_14

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v0, v4}, Lcom/fasterxml/aalto/util/TextBuilder;->setCurrentLength(I)V

    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_cfgCoalescing:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_entityPending:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->finishCoalescedText()V

    :cond_a
    return-void

    :cond_b
    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_c
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    goto :goto_8

    :cond_d
    invoke-virtual {p0, v5}, Lcom/fasterxml/aalto/in/XmlScanner;->handleInvalidXmlChar(I)C

    :cond_e
    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v5, v6, :cond_f

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_f
    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v6, v1, v5

    const/16 v7, 0xa

    if-ne v6, v7, :cond_10

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_10
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    const/16 v5, 0xa

    goto :goto_8

    :cond_11
    if-lt v5, v8, :cond_14

    const v6, 0xe000

    if-ge v5, v6, :cond_13

    invoke-direct {p0, v5}, Lcom/fasterxml/aalto/in/ReaderScanner;->checkSurrogate(C)C

    move-result v6

    add-int/lit8 v7, v4, 0x1

    aput-char v5, v2, v4

    array-length v4, v2

    if-lt v7, v4, :cond_12

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/util/TextBuilder;->finishCurrentSegment()[C

    move-result-object v2

    const/4 v4, 0x0

    goto :goto_7

    :cond_12
    move v4, v7

    :goto_7
    move v5, v6

    goto :goto_8

    :cond_13
    const v6, 0xfffe

    if-lt v5, v6, :cond_14

    invoke-virtual {p0, v5}, Lcom/fasterxml/aalto/in/XmlScanner;->handleInvalidXmlChar(I)C

    move-result v5

    :cond_14
    :goto_8
    add-int/lit8 v6, v4, 0x1

    aput-char v5, v2, v4

    move v4, v6

    goto/16 :goto_0

    :cond_15
    add-int/lit8 v8, v4, 0x1

    aput-char v5, v2, v4

    move v5, v7

    move v4, v8

    goto/16 :goto_1

    :cond_16
    iput v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto/16 :goto_0
.end method

.method public final finishCharacters()V
    .locals 15

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->mTmpChar:I

    const v1, 0xdc00

    const/high16 v2, 0x10000

    const v3, 0xd800

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gez v0, :cond_1

    neg-int v0, v0

    iget-object v7, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v7}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithEmpty()[C

    move-result-object v7

    shr-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_0

    sub-int/2addr v0, v2

    shr-int/lit8 v8, v0, 0xa

    or-int/2addr v8, v3

    int-to-char v8, v8

    aput-char v8, v7, v5

    and-int/lit16 v0, v0, 0x3ff

    or-int/2addr v0, v1

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    add-int/lit8 v9, v8, 0x1

    int-to-char v0, v0

    aput-char v0, v7, v8

    goto :goto_2

    :cond_1
    const/16 v7, 0xd

    if-eq v0, v7, :cond_3

    if-ne v0, v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithEmpty()[C

    move-result-object v7

    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    iget v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/ReaderScanner;->checkInTreeIndentation(C)I

    move-result v9

    if-gez v9, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/util/TextBuilder;->getBufferWithoutReset()[C

    move-result-object v7

    :goto_2
    sget-object v0, Lcom/fasterxml/aalto/in/ReaderScanner;->sCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->TEXT_CHARS:[I

    iget-object v8, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    :goto_3
    iget v10, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v11, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v10, v11, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    iget v10, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_5
    array-length v11, v7

    if-lt v9, v11, :cond_6

    iget-object v7, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v7}, Lcom/fasterxml/aalto/util/TextBuilder;->finishCurrentSegment()[C

    move-result-object v7

    const/4 v9, 0x0

    :cond_6
    iget v11, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    array-length v12, v7

    sub-int/2addr v12, v9

    add-int/2addr v12, v10

    if-ge v12, v11, :cond_7

    move v11, v12

    :cond_7
    :goto_4
    if-ge v10, v11, :cond_1c

    add-int/lit8 v12, v10, 0x1

    aget-char v10, v8, v10

    const/16 v13, 0xff

    if-gt v10, v13, :cond_8

    aget v14, v0, v10

    if-eqz v14, :cond_1b

    :goto_5
    iput v12, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto :goto_6

    :cond_8
    if-lt v10, v3, :cond_1b

    goto :goto_5

    :goto_6
    if-gt v10, v13, :cond_17

    aget v11, v0, v10

    if-eq v11, v6, :cond_13

    const/4 v12, 0x2

    if-eq v11, v12, :cond_14

    const/4 v12, 0x3

    if-eq v11, v12, :cond_12

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    const/4 v10, 0x1

    :goto_7
    iget v11, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v12, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v11, v12, :cond_9

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_9
    iget v11, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v12, v8, v11

    const/16 v13, 0x5d

    if-eq v12, v13, :cond_d

    const/16 v11, 0x3e

    if-ne v12, v11, :cond_a

    if-le v10, v6, :cond_a

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportIllegalCDataEnd()V

    :cond_a
    :goto_8
    if-le v10, v6, :cond_c

    add-int/lit8 v11, v9, 0x1

    aput-char v13, v7, v9

    array-length v9, v7

    if-lt v11, v9, :cond_b

    iget-object v7, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v7}, Lcom/fasterxml/aalto/util/TextBuilder;->finishCurrentSegment()[C

    move-result-object v7

    const/4 v9, 0x0

    goto :goto_9

    :cond_b
    move v9, v11

    :goto_9
    add-int/lit8 v10, v10, -0x1

    goto :goto_8

    :cond_c
    const/16 v10, 0x5d

    goto/16 :goto_d

    :cond_d
    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/fasterxml/aalto/in/ReaderScanner;->handleEntityInText(Z)I

    move-result v10

    if-nez v10, :cond_e

    iput-boolean v6, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_entityPending:Z

    goto :goto_b

    :cond_e
    shr-int/lit8 v11, v10, 0x10

    if-eqz v11, :cond_10

    sub-int/2addr v10, v2

    add-int/lit8 v11, v9, 0x1

    shr-int/lit8 v12, v10, 0xa

    or-int/2addr v12, v3

    int-to-char v12, v12

    aput-char v12, v7, v9

    array-length v9, v7

    if-lt v11, v9, :cond_f

    iget-object v7, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v7}, Lcom/fasterxml/aalto/util/TextBuilder;->finishCurrentSegment()[C

    move-result-object v7

    const/4 v9, 0x0

    goto :goto_a

    :cond_f
    move v9, v11

    :goto_a
    and-int/lit16 v10, v10, 0x3ff

    or-int/2addr v10, v1

    :cond_10
    int-to-char v10, v10

    goto :goto_d

    :pswitch_2
    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :goto_b
    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v0, v9}, Lcom/fasterxml/aalto/util/TextBuilder;->setCurrentLength(I)V

    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_cfgCoalescing:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_entityPending:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->finishCoalescedText()V

    :cond_11
    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    goto :goto_d

    :cond_13
    invoke-virtual {p0, v10}, Lcom/fasterxml/aalto/in/XmlScanner;->handleInvalidXmlChar(I)C

    :cond_14
    iget v10, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v11, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v10, v11, :cond_15

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    iget v10, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_15
    aget-char v10, v8, v10

    if-ne v10, v4, :cond_16

    iget v10, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/2addr v10, v6

    iput v10, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_16
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    const/16 v10, 0xa

    goto :goto_d

    :cond_17
    if-lt v10, v3, :cond_1a

    const v11, 0xe000

    if-ge v10, v11, :cond_19

    invoke-direct {p0, v10}, Lcom/fasterxml/aalto/in/ReaderScanner;->checkSurrogate(C)C

    move-result v11

    add-int/lit8 v12, v9, 0x1

    aput-char v10, v7, v9

    array-length v9, v7

    if-lt v12, v9, :cond_18

    iget-object v7, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v7}, Lcom/fasterxml/aalto/util/TextBuilder;->finishCurrentSegment()[C

    move-result-object v7

    const/4 v9, 0x0

    goto :goto_c

    :cond_18
    move v9, v12

    :goto_c
    move v10, v11

    goto :goto_d

    :cond_19
    const v11, 0xfffe

    if-lt v10, v11, :cond_1a

    invoke-virtual {p0, v10}, Lcom/fasterxml/aalto/in/XmlScanner;->handleInvalidXmlChar(I)C

    move-result v10

    :cond_1a
    :goto_d
    add-int/lit8 v11, v9, 0x1

    aput-char v10, v7, v9

    move v9, v11

    goto/16 :goto_3

    :cond_1b
    add-int/lit8 v13, v9, 0x1

    aput-char v10, v7, v9

    move v10, v12

    move v9, v13

    goto/16 :goto_4

    :cond_1c
    iput v10, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final finishCoalescedCData()V
    .locals 11

    sget-object v0, Lcom/fasterxml/aalto/in/ReaderScanner;->sCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->OTHER_CHARS:[I

    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/util/TextBuilder;->getBufferWithoutReset()[C

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v3}, Lcom/fasterxml/aalto/util/TextBuilder;->getCurrentLength()I

    move-result v3

    :goto_0
    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_0
    array-length v5, v2

    const/4 v6, 0x0

    if-lt v3, v5, :cond_1

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/util/TextBuilder;->finishCurrentSegment()[C

    move-result-object v2

    const/4 v3, 0x0

    :cond_1
    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    array-length v7, v2

    sub-int/2addr v7, v3

    add-int/2addr v7, v4

    if-ge v7, v5, :cond_2

    move v5, v7

    :cond_2
    :goto_1
    if-ge v4, v5, :cond_15

    add-int/lit8 v7, v4, 0x1

    aget-char v4, v1, v4

    const v8, 0xd800

    const/16 v9, 0xff

    if-gt v4, v9, :cond_3

    aget v10, v0, v4

    if-eqz v10, :cond_14

    :goto_2
    iput v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto :goto_3

    :cond_3
    if-lt v4, v8, :cond_14

    goto :goto_2

    :goto_3
    if-gt v4, v9, :cond_10

    aget v5, v0, v4

    const/4 v7, 0x1

    if-eq v5, v7, :cond_c

    const/4 v8, 0x2

    if-eq v5, v8, :cond_d

    const/4 v8, 0x3

    if-eq v5, v8, :cond_b

    const/16 v8, 0xb

    if-eq v5, v8, :cond_4

    goto/16 :goto_8

    :cond_4
    const/4 v5, 0x0

    :goto_4
    iget v8, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v9, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v8, v9, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_5
    iget-object v8, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v9, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v8, v8, v9

    const/16 v10, 0x5d

    if-eq v8, v10, :cond_a

    const/16 v9, 0x3e

    if-ne v8, v9, :cond_6

    if-lt v5, v7, :cond_6

    const/4 v8, 0x1

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_7

    :goto_6
    add-int/lit8 v5, v5, -0x1

    :cond_7
    if-lez v5, :cond_9

    add-int/lit8 v9, v3, 0x1

    aput-char v10, v2, v3

    array-length v3, v2

    if-lt v9, v3, :cond_8

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/util/TextBuilder;->finishCurrentSegment()[C

    move-result-object v2

    const/4 v3, 0x0

    goto :goto_6

    :cond_8
    move v3, v9

    goto :goto_6

    :cond_9
    if-eqz v8, :cond_13

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v0, v3}, Lcom/fasterxml/aalto/util/TextBuilder;->setCurrentLength(I)V

    return-void

    :cond_a
    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    goto :goto_8

    :cond_c
    invoke-virtual {p0, v4}, Lcom/fasterxml/aalto/in/XmlScanner;->handleInvalidXmlChar(I)C

    :cond_d
    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v4, v5, :cond_e

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_e
    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v5, v1, v4

    const/16 v6, 0xa

    if-ne v5, v6, :cond_f

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_f
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    const/16 v4, 0xa

    goto :goto_8

    :cond_10
    if-lt v4, v8, :cond_13

    const v5, 0xe000

    if-ge v4, v5, :cond_12

    invoke-direct {p0, v4}, Lcom/fasterxml/aalto/in/ReaderScanner;->checkSurrogate(C)C

    move-result v5

    add-int/lit8 v7, v3, 0x1

    aput-char v4, v2, v3

    array-length v3, v2

    if-lt v7, v3, :cond_11

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/util/TextBuilder;->finishCurrentSegment()[C

    move-result-object v2

    goto :goto_7

    :cond_11
    move v6, v7

    :goto_7
    move v4, v5

    move v3, v6

    goto :goto_8

    :cond_12
    const v5, 0xfffe

    if-lt v4, v5, :cond_13

    invoke-virtual {p0, v4}, Lcom/fasterxml/aalto/in/XmlScanner;->handleInvalidXmlChar(I)C

    move-result v4

    :cond_13
    :goto_8
    add-int/lit8 v5, v3, 0x1

    aput-char v4, v2, v3

    move v3, v5

    goto/16 :goto_0

    :cond_14
    add-int/lit8 v8, v3, 0x1

    aput-char v4, v2, v3

    move v4, v7

    move v3, v8

    goto/16 :goto_1

    :cond_15
    iput v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto/16 :goto_0
.end method

.method public final finishCoalescedCharacters()V
    .locals 11

    sget-object v0, Lcom/fasterxml/aalto/in/ReaderScanner;->sCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->TEXT_CHARS:[I

    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/util/TextBuilder;->getBufferWithoutReset()[C

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v3}, Lcom/fasterxml/aalto/util/TextBuilder;->getCurrentLength()I

    move-result v3

    :goto_0
    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_0
    array-length v5, v2

    const/4 v6, 0x0

    if-lt v3, v5, :cond_1

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/util/TextBuilder;->finishCurrentSegment()[C

    move-result-object v2

    const/4 v3, 0x0

    :cond_1
    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    array-length v7, v2

    sub-int/2addr v7, v3

    add-int/2addr v7, v4

    if-ge v7, v5, :cond_2

    move v5, v7

    :cond_2
    :goto_1
    if-ge v4, v5, :cond_16

    add-int/lit8 v7, v4, 0x1

    aget-char v4, v1, v4

    const/16 v8, 0xff

    const v9, 0xd800

    if-gt v4, v8, :cond_3

    aget v10, v0, v4

    if-eqz v10, :cond_15

    :goto_2
    iput v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto :goto_3

    :cond_3
    if-lt v4, v9, :cond_15

    goto :goto_2

    :goto_3
    if-gt v4, v8, :cond_11

    aget v5, v0, v4

    const/4 v7, 0x1

    if-eq v5, v7, :cond_d

    const/4 v8, 0x2

    if-eq v5, v8, :cond_e

    const/4 v8, 0x3

    if-eq v5, v8, :cond_c

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    const/4 v4, 0x1

    :goto_4
    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v8, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v5, v8, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_4
    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v8, v1, v5

    const/16 v9, 0x5d

    if-eq v8, v9, :cond_8

    const/16 v5, 0x3e

    if-ne v8, v5, :cond_5

    if-le v4, v7, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportIllegalCDataEnd()V

    :cond_5
    :goto_5
    if-le v4, v7, :cond_7

    add-int/lit8 v5, v3, 0x1

    aput-char v9, v2, v3

    array-length v3, v2

    if-lt v5, v3, :cond_6

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/util/TextBuilder;->finishCurrentSegment()[C

    move-result-object v2

    const/4 v3, 0x0

    goto :goto_6

    :cond_6
    move v3, v5

    :goto_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_7
    const/16 v4, 0x5d

    goto/16 :goto_a

    :cond_8
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :pswitch_1
    invoke-virtual {p0, v6}, Lcom/fasterxml/aalto/in/ReaderScanner;->handleEntityInText(Z)I

    move-result v4

    if-nez v4, :cond_9

    iput-boolean v7, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_entityPending:Z

    goto :goto_8

    :cond_9
    shr-int/lit8 v5, v4, 0x10

    if-eqz v5, :cond_b

    const/high16 v5, 0x10000

    sub-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v7, v4, 0xa

    or-int/2addr v7, v9

    int-to-char v7, v7

    aput-char v7, v2, v3

    array-length v3, v2

    if-lt v5, v3, :cond_a

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/util/TextBuilder;->finishCurrentSegment()[C

    move-result-object v2

    goto :goto_7

    :cond_a
    move v6, v5

    :goto_7
    and-int/lit16 v3, v4, 0x3ff

    const v4, 0xdc00

    or-int/2addr v4, v3

    move v3, v6

    :cond_b
    int-to-char v4, v4

    goto :goto_a

    :pswitch_2
    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :goto_8
    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v0, v3}, Lcom/fasterxml/aalto/util/TextBuilder;->setCurrentLength(I)V

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    goto :goto_a

    :cond_d
    invoke-virtual {p0, v4}, Lcom/fasterxml/aalto/in/XmlScanner;->handleInvalidXmlChar(I)C

    :cond_e
    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v4, v5, :cond_f

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_f
    aget-char v4, v1, v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_10

    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/2addr v4, v7

    iput v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_10
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    const/16 v4, 0xa

    goto :goto_a

    :cond_11
    if-lt v4, v9, :cond_14

    const v5, 0xe000

    if-ge v4, v5, :cond_13

    invoke-direct {p0, v4}, Lcom/fasterxml/aalto/in/ReaderScanner;->checkSurrogate(C)C

    move-result v5

    add-int/lit8 v7, v3, 0x1

    aput-char v4, v2, v3

    array-length v3, v2

    if-lt v7, v3, :cond_12

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/util/TextBuilder;->finishCurrentSegment()[C

    move-result-object v2

    goto :goto_9

    :cond_12
    move v6, v7

    :goto_9
    move v4, v5

    move v3, v6

    goto :goto_a

    :cond_13
    const v5, 0xfffe

    if-lt v4, v5, :cond_14

    invoke-virtual {p0, v4}, Lcom/fasterxml/aalto/in/XmlScanner;->handleInvalidXmlChar(I)C

    move-result v4

    :cond_14
    :goto_a
    add-int/lit8 v5, v3, 0x1

    aput-char v4, v2, v3

    move v3, v5

    goto/16 :goto_0

    :cond_15
    add-int/lit8 v8, v3, 0x1

    aput-char v4, v2, v3

    move v4, v7

    move v3, v8

    goto/16 :goto_1

    :cond_16
    iput v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final finishCoalescedText()V
    .locals 5

    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->loadMore()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_8

    add-int/lit8 v1, v1, 0x3

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v1, v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/ReaderScanner;->loadAndRetain(I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    aget-char v2, v0, v2

    const/16 v3, 0x21

    if-ne v2, v3, :cond_7

    add-int/lit8 v2, v1, 0x2

    aget-char v0, v0, v2

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_6

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_4
    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v1, v1, v2

    const-string v2, "CDATA["

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " (expected \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' for CDATA section)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/aalto/in/XmlScanner;->reportTreeUnexpChar(ILjava/lang/String;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->finishCoalescedCData()V

    goto :goto_0

    :cond_7
    :goto_2
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->finishCoalescedCharacters()V

    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_entityPending:Z

    if-eqz v0, :cond_0

    return-void
.end method

.method public final finishComment()V
    .locals 11

    sget-object v0, Lcom/fasterxml/aalto/in/ReaderScanner;->sCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->OTHER_CHARS:[I

    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithEmpty()[C

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_0
    array-length v6, v2

    if-lt v4, v6, :cond_1

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/util/TextBuilder;->finishCurrentSegment()[C

    move-result-object v2

    const/4 v4, 0x0

    :cond_1
    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    array-length v7, v2

    sub-int/2addr v7, v4

    add-int/2addr v7, v5

    if-ge v7, v6, :cond_2

    move v6, v7

    :cond_2
    :goto_1
    if-ge v5, v6, :cond_12

    add-int/lit8 v7, v5, 0x1

    aget-char v5, v1, v5

    const v8, 0xd800

    const/16 v9, 0xff

    if-gt v5, v9, :cond_3

    aget v10, v0, v5

    if-eqz v10, :cond_11

    :goto_2
    iput v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto :goto_3

    :cond_3
    if-lt v5, v8, :cond_11

    goto :goto_2

    :goto_3
    if-gt v5, v9, :cond_d

    aget v6, v0, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_9

    const/4 v8, 0x2

    if-eq v6, v8, :cond_a

    const/4 v8, 0x3

    if-eq v6, v8, :cond_8

    const/16 v8, 0xd

    if-eq v6, v8, :cond_4

    goto/16 :goto_5

    :cond_4
    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v8, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v6, v8, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_5
    iget-object v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v8, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v6, v6, v8

    const/16 v9, 0x2d

    if-ne v6, v9, :cond_10

    add-int/2addr v8, v7

    iput v8, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v8, v0, :cond_6

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_6
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportDoubleHyphenInComments()V

    :cond_7
    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v0, v4}, Lcom/fasterxml/aalto/util/TextBuilder;->setCurrentLength(I)V

    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    goto :goto_5

    :cond_9
    invoke-virtual {p0, v5}, Lcom/fasterxml/aalto/in/XmlScanner;->handleInvalidXmlChar(I)C

    :cond_a
    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v5, v6, :cond_b

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_b
    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v6, v1, v5

    const/16 v7, 0xa

    if-ne v6, v7, :cond_c

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_c
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    const/16 v5, 0xa

    goto :goto_5

    :cond_d
    if-lt v5, v8, :cond_10

    const v6, 0xe000

    if-ge v5, v6, :cond_f

    invoke-direct {p0, v5}, Lcom/fasterxml/aalto/in/ReaderScanner;->checkSurrogate(C)C

    move-result v6

    add-int/lit8 v7, v4, 0x1

    aput-char v5, v2, v4

    array-length v4, v2

    if-lt v7, v4, :cond_e

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/util/TextBuilder;->finishCurrentSegment()[C

    move-result-object v2

    const/4 v4, 0x0

    goto :goto_4

    :cond_e
    move v4, v7

    :goto_4
    move v5, v6

    goto :goto_5

    :cond_f
    const v6, 0xfffe

    if-lt v5, v6, :cond_10

    invoke-virtual {p0, v5}, Lcom/fasterxml/aalto/in/XmlScanner;->handleInvalidXmlChar(I)C

    move-result v5

    :cond_10
    :goto_5
    add-int/lit8 v6, v4, 0x1

    aput-char v5, v2, v4

    move v4, v6

    goto/16 :goto_0

    :cond_11
    add-int/lit8 v8, v4, 0x1

    aput-char v5, v2, v4

    move v5, v7

    move v4, v8

    goto/16 :goto_1

    :cond_12
    iput v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto/16 :goto_0
.end method

.method public final finishDTD(Z)V
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {p1}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithEmpty()[C

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    sget-object v1, Lcom/fasterxml/aalto/in/ReaderScanner;->sCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v1, v1, Lcom/fasterxml/aalto/util/XmlCharTypes;->DTD_CHARS:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1
    :goto_1
    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v6, v7, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_2
    iget v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-eqz p1, :cond_4

    array-length v8, p1

    if-lt v3, v8, :cond_3

    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {p1}, Lcom/fasterxml/aalto/util/TextBuilder;->finishCurrentSegment()[C

    move-result-object p1

    const/4 v3, 0x0

    :cond_3
    array-length v8, p1

    sub-int/2addr v8, v3

    add-int/2addr v8, v6

    if-ge v8, v7, :cond_4

    move v7, v8

    :cond_4
    :goto_2
    if-ge v6, v7, :cond_15

    iget-object v8, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    add-int/lit8 v9, v6, 0x1

    aget-char v6, v8, v6

    const v8, 0xd800

    const/16 v10, 0xff

    if-gt v6, v10, :cond_5

    aget v11, v1, v6

    if-eqz v11, :cond_13

    :goto_3
    iput v9, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto :goto_4

    :cond_5
    if-lt v6, v8, :cond_13

    goto :goto_3

    :goto_4
    if-gt v6, v10, :cond_e

    aget v7, v1, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_a

    const/4 v9, 0x2

    if-eq v7, v9, :cond_b

    const/4 v9, 0x3

    if-eq v7, v9, :cond_9

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    if-nez v5, :cond_12

    if-nez v4, :cond_12

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {p1, v3}, Lcom/fasterxml/aalto/util/TextBuilder;->setCurrentLength(I)V

    :cond_6
    invoke-virtual {p0, v2, v0}, Lcom/fasterxml/aalto/in/ReaderScanner;->skipInternalWs(ZLjava/lang/String;)C

    move-result p1

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_7

    const-string v0, " expected \'>\' after the internal subset"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->throwUnexpectedChar(ILjava/lang/String;)V

    :cond_7
    return-void

    :pswitch_1
    if-nez v4, :cond_12

    const/4 v5, 0x0

    goto :goto_6

    :pswitch_2
    if-nez v5, :cond_12

    const/4 v5, 0x1

    goto :goto_6

    :pswitch_3
    if-nez v4, :cond_8

    move v4, v6

    goto :goto_6

    :cond_8
    if-ne v4, v6, :cond_12

    const/4 v4, 0x0

    goto :goto_6

    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    goto :goto_6

    :cond_a
    invoke-virtual {p0, v6}, Lcom/fasterxml/aalto/in/XmlScanner;->handleInvalidXmlChar(I)C

    :cond_b
    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v6, v7, :cond_c

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_c
    iget-object v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v6, v6, v7

    const/16 v8, 0xa

    if-ne v6, v8, :cond_d

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_d
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    const/16 v6, 0xa

    goto :goto_6

    :cond_e
    if-lt v6, v8, :cond_12

    const v7, 0xe000

    if-ge v6, v7, :cond_11

    invoke-direct {p0, v6}, Lcom/fasterxml/aalto/in/ReaderScanner;->checkSurrogate(C)C

    move-result v7

    if-eqz p1, :cond_10

    add-int/lit8 v8, v3, 0x1

    aput-char v6, p1, v3

    array-length v3, p1

    if-lt v8, v3, :cond_f

    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {p1}, Lcom/fasterxml/aalto/util/TextBuilder;->finishCurrentSegment()[C

    move-result-object p1

    const/4 v3, 0x0

    goto :goto_5

    :cond_f
    move v3, v8

    :cond_10
    :goto_5
    move v6, v7

    goto :goto_6

    :cond_11
    const v7, 0xfffe

    if-lt v6, v7, :cond_12

    invoke-virtual {p0, v6}, Lcom/fasterxml/aalto/in/XmlScanner;->handleInvalidXmlChar(I)C

    move-result v6

    :cond_12
    :goto_6
    if-eqz p1, :cond_1

    add-int/lit8 v7, v3, 0x1

    aput-char v6, p1, v3

    move v3, v7

    goto/16 :goto_1

    :cond_13
    if-eqz p1, :cond_14

    add-int/lit8 v8, v3, 0x1

    aput-char v6, p1, v3

    move v3, v8

    :cond_14
    move v6, v9

    goto/16 :goto_2

    :cond_15
    iput v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final finishPI()V
    .locals 11

    sget-object v0, Lcom/fasterxml/aalto/in/ReaderScanner;->sCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->OTHER_CHARS:[I

    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithEmpty()[C

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_0
    array-length v6, v2

    if-lt v4, v6, :cond_1

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/util/TextBuilder;->finishCurrentSegment()[C

    move-result-object v2

    const/4 v4, 0x0

    :cond_1
    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    array-length v7, v2

    sub-int/2addr v7, v4

    add-int/2addr v7, v5

    if-ge v7, v6, :cond_2

    move v6, v7

    :cond_2
    :goto_1
    if-ge v5, v6, :cond_f

    add-int/lit8 v7, v5, 0x1

    aget-char v5, v1, v5

    const v8, 0xd800

    const/16 v9, 0xff

    if-gt v5, v9, :cond_3

    aget v10, v0, v5

    if-eqz v10, :cond_e

    :goto_2
    iput v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto :goto_3

    :cond_3
    if-lt v5, v8, :cond_e

    goto :goto_2

    :goto_3
    if-gt v5, v9, :cond_a

    aget v6, v0, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    const/4 v7, 0x3

    if-eq v6, v7, :cond_6

    const/16 v7, 0xc

    if-eq v6, v7, :cond_4

    goto :goto_5

    :cond_4
    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v6, v7, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_5
    iget-object v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v6, v6, v7

    const/16 v8, 0x3e

    if-ne v6, v8, :cond_d

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v0, v4}, Lcom/fasterxml/aalto/util/TextBuilder;->setCurrentLength(I)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    goto :goto_5

    :cond_7
    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v5, v6, :cond_8

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_8
    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v6, v1, v5

    const/16 v7, 0xa

    if-ne v6, v7, :cond_9

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    const/16 v5, 0xa

    goto :goto_5

    :cond_a
    if-lt v5, v8, :cond_d

    const v6, 0xe000

    if-ge v5, v6, :cond_c

    invoke-direct {p0, v5}, Lcom/fasterxml/aalto/in/ReaderScanner;->checkSurrogate(C)C

    move-result v6

    add-int/lit8 v7, v4, 0x1

    aput-char v5, v2, v4

    array-length v4, v2

    if-lt v7, v4, :cond_b

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/util/TextBuilder;->finishCurrentSegment()[C

    move-result-object v2

    const/4 v4, 0x0

    goto :goto_4

    :cond_b
    move v4, v7

    :goto_4
    move v5, v6

    goto :goto_5

    :cond_c
    const v6, 0xfffe

    if-lt v5, v6, :cond_d

    invoke-virtual {p0, v5}, Lcom/fasterxml/aalto/in/XmlScanner;->handleInvalidXmlChar(I)C

    move-result v5

    :cond_d
    :goto_5
    add-int/lit8 v6, v4, 0x1

    aput-char v5, v2, v4

    move v4, v6

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v8, v4, 0x1

    aput-char v5, v2, v4

    move v5, v7

    move v4, v8

    goto/16 :goto_1

    :cond_f
    iput v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto/16 :goto_0
.end method

.method public final finishSpace()V
    .locals 8

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->mTmpChar:I

    int-to-char v0, v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/16 v3, 0xd

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v4}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithEmpty()[C

    move-result-object v4

    aput-char v0, v4, v1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/ReaderScanner;->checkPrologIndentation(C)I

    move-result v0

    if-gez v0, :cond_2

    return-void

    :cond_2
    iget-object v4, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v4}, Lcom/fasterxml/aalto/util/TextBuilder;->getBufferWithoutReset()[C

    move-result-object v4

    :goto_1
    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :goto_2
    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v5, v6, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->loadMore()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_4

    :cond_3
    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_4
    iget-object v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    aget-char v6, v6, v5

    const/16 v7, 0x20

    if-le v6, v7, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    if-ne v6, v2, :cond_6

    invoke-virtual {p0, v5}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF(I)V

    goto :goto_5

    :cond_6
    if-ne v6, v3, :cond_b

    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v5, v6, :cond_9

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->loadMore()Z

    move-result v6

    if-nez v6, :cond_8

    array-length v3, v4

    if-lt v0, v3, :cond_7

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/util/TextBuilder;->finishCurrentSegment()[C

    move-result-object v4

    goto :goto_3

    :cond_7
    move v1, v0

    :goto_3
    add-int/lit8 v0, v1, 0x1

    aput-char v2, v4, v1

    :goto_4
    iput v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v1, v0}, Lcom/fasterxml/aalto/util/TextBuilder;->setCurrentLength(I)V

    return-void

    :cond_8
    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_9
    iget-object v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    aget-char v6, v6, v5

    if-ne v6, v2, :cond_a

    add-int/lit8 v5, v5, 0x1

    :cond_a
    invoke-virtual {p0, v5}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF(I)V

    const/16 v6, 0xa

    goto :goto_5

    :cond_b
    if-eq v6, v7, :cond_c

    const/16 v7, 0x9

    if-eq v6, v7, :cond_c

    iput v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    invoke-virtual {p0, v6}, Lcom/fasterxml/aalto/in/XmlScanner;->throwInvalidSpace(I)V

    :cond_c
    :goto_5
    array-length v7, v4

    if-lt v0, v7, :cond_d

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/util/TextBuilder;->finishCurrentSegment()[C

    move-result-object v0

    move-object v4, v0

    const/4 v0, 0x0

    :cond_d
    add-int/lit8 v7, v0, 0x1

    aput-char v6, v4, v0

    move v0, v7

    goto :goto_2
.end method

.method public final finishToken()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    iget v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/fasterxml/aalto/impl/ErrorConsts;->throwInternalError()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->finishCData()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/ReaderScanner;->finishDTD(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->finishSpace()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->finishComment()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->finishCharacters()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->finishPI()V

    :goto_0
    return-void
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

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    iget v5, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currRow:I

    iget v6, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_rowStartOffset:I

    sub-int v6, v0, v6

    invoke-static/range {v1 .. v6}, Lcom/fasterxml/aalto/impl/LocationImpl;->fromZeroBased(Ljava/lang/String;Ljava/lang/String;JII)Lcom/fasterxml/aalto/impl/LocationImpl;

    move-result-object v0

    return-object v0
.end method

.method public final handleCharEntity()I
    .locals 8

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x78

    const v2, 0x10ffff

    const/16 v3, 0x39

    const/16 v4, 0x3b

    const/16 v5, 0x30

    const/4 v6, 0x0

    if-ne v0, v1, :cond_7

    :cond_1
    :goto_0
    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v7, v1, 0x1

    iput v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_3

    goto :goto_5

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
    const-string v1, "; expected a decimal number"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->throwUnexpectedChar(ILjava/lang/String;)V

    :goto_4
    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v0, v1, :cond_a

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_a
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v7, v1, 0x1

    iput v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    goto :goto_3

    :cond_b
    :goto_5
    const v0, 0xd800

    if-lt v6, v0, :cond_e

    const v0, 0xe000

    if-ge v6, v0, :cond_c

    invoke-virtual {p0, v6}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInvalidXmlChar(I)V

    :cond_c
    const v0, 0xfffe

    if-eq v6, v0, :cond_d

    const v0, 0xffff

    if-ne v6, v0, :cond_f

    :cond_d
    :goto_6
    invoke-virtual {p0, v6}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInvalidXmlChar(I)V

    goto :goto_7

    :cond_e
    const/16 v0, 0x20

    if-ge v6, v0, :cond_f

    const/16 v0, 0xa

    if-eq v6, v0, :cond_f

    const/16 v0, 0xd

    if-eq v6, v0, :cond_f

    const/16 v0, 0x9

    if-eq v6, v0, :cond_f

    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_xml11:Z

    if-eqz v0, :cond_d

    if-nez v6, :cond_f

    goto :goto_6

    :cond_f
    :goto_7
    return v6
.end method

.method public final handleCommentOrCdataStart()I
    .locals 7

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x2d

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v2

    if-eq v0, v1, :cond_2

    const-string v1, " (expected \'-\' for COMMENT)"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportTreeUnexpChar(ILjava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_cfgLazyParsing:Z

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->finishComment()V

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

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v4, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_5
    iget-object v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v2, v2, v4

    const-string v4, "CDATA["

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v2, v5, :cond_6

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
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->finishCData()V

    :goto_2
    return v0

    :cond_9
    const-string v1, " (expected either \'-\' for COMMENT or \'[CDATA[\' for CDATA section)"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportTreeUnexpChar(ILjava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public final handleEndElement()I
    .locals 8

    iget v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_depth:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    iget-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currElem:Lcom/fasterxml/aalto/in/ElementScope;

    invoke-virtual {v1}, Lcom/fasterxml/aalto/in/ElementScope;->getName()Lcom/fasterxml/aalto/in/PName;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenName:Lcom/fasterxml/aalto/in/PName;

    invoke-virtual {v1}, Lcom/fasterxml/aalto/in/PName;->getPrefixedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v5, v6, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_1
    iget-object v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v5, v5, v6

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_2

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportUnexpectedEndTag(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v2, :cond_0

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v4, :cond_3

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_3
    iget-object v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v2, v2, v4

    const/16 v4, 0x20

    const/16 v5, 0x3e

    if-gt v2, v4, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Lcom/fasterxml/aalto/in/ReaderScanner;->skipInternalWs(ZLjava/lang/String;)C

    move-result v2

    goto :goto_0

    :cond_4
    if-eq v2, v5, :cond_6

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_5

    invoke-static {v2}, Lcom/fasterxml/aalto/util/XmlChars;->is10NameChar(I)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportUnexpectedEndTag(Ljava/lang/String;)V

    :cond_6
    :goto_0
    if-eq v2, v5, :cond_7

    const-string v1, " expected space or closing \'>\'"

    invoke-virtual {p0, v2, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->throwUnexpectedChar(ILjava/lang/String;)V

    :cond_7
    return v0
.end method

.method public final handleEntityInText(Z)I
    .locals 9

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->handleCharEntity()I

    move-result p1

    return p1

    :cond_1
    const/16 v1, 0x61

    const/16 v3, 0x6f

    const/16 v4, 0x3b

    if-ne v0, v1, :cond_f

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v0, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x6d

    const/16 v5, 0x70

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v0, :cond_3

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_3
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    if-ne v0, v5, :cond_6

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v0, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_4
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_5

    const/16 p1, 0x26

    return p1

    :cond_5
    const-string v1, "amp"

    goto/16 :goto_0

    :cond_6
    const-string v1, "am"

    goto/16 :goto_0

    :cond_7
    if-ne v0, v5, :cond_e

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v0, :cond_8

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_8
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_d

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v0, :cond_9

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_9
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x73

    if-ne v0, v1, :cond_c

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v0, :cond_a

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_a
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_b

    const/16 p1, 0x27

    return p1

    :cond_b
    const-string v1, "apos"

    goto/16 :goto_0

    :cond_c
    const-string v1, "apo"

    goto/16 :goto_0

    :cond_d
    const-string v1, "ap"

    goto/16 :goto_0

    :cond_e
    const-string v1, "a"

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x6c

    const/16 v5, 0x74

    if-ne v0, v1, :cond_14

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v0, :cond_10

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_10
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    if-ne v0, v5, :cond_13

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v0, :cond_11

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_11
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_12

    const/16 p1, 0x3c

    return p1

    :cond_12
    const-string v1, "lt"

    goto/16 :goto_0

    :cond_13
    const-string v1, "l"

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x67

    if-ne v0, v1, :cond_19

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v0, :cond_15

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_15
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    if-ne v0, v5, :cond_18

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v0, :cond_16

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_16
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_17

    const/16 p1, 0x3e

    return p1

    :cond_17
    const-string v1, "gt"

    goto :goto_0

    :cond_18
    const-string v1, "g"

    goto :goto_0

    :cond_19
    const/16 v1, 0x71

    if-ne v0, v1, :cond_22

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v0, :cond_1a

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_1a
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x75

    if-ne v0, v1, :cond_21

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v0, :cond_1b

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_1b
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_20

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v0, :cond_1c

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_1c
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    if-ne v0, v5, :cond_1f

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v0, :cond_1d

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_1d
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_1e

    const/16 p1, 0x22

    return p1

    :cond_1e
    const-string v1, "quot"

    goto :goto_0

    :cond_1f
    const-string v1, "quo"

    goto :goto_0

    :cond_20
    const-string v1, "qu"

    goto :goto_0

    :cond_21
    const-string v1, "q"

    goto :goto_0

    :cond_22
    const-string v1, ""

    :goto_0
    sget-object v2, Lcom/fasterxml/aalto/in/ReaderScanner;->sCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v2, v2, Lcom/fasterxml/aalto/util/XmlCharTypes;->NAME_CHARS:[I

    iget-object v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nameBuffer:[C

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_23

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_23
    :goto_2
    if-eq v0, v4, :cond_2e

    const/16 v1, 0xff

    const/4 v5, 0x1

    if-gt v0, v1, :cond_26

    aget v1, v2, v0

    if-eqz v1, :cond_25

    if-eq v1, v5, :cond_25

    const/4 v8, 0x2

    if-eq v1, v8, :cond_25

    const/4 v8, 0x3

    if-eq v1, v8, :cond_2a

    :cond_24
    :goto_3
    const/4 v5, 0x0

    goto :goto_6

    :cond_25
    if-lez v7, :cond_24

    goto :goto_6

    :cond_26
    const v1, 0xe000

    if-ge v0, v1, :cond_29

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/in/ReaderScanner;->decodeSurrogate(C)I

    move-result v1

    array-length v8, v3

    if-lt v7, v8, :cond_27

    array-length v8, v3

    invoke-static {v3, v8}, Lcom/fasterxml/aalto/util/DataUtil;->growArrayBy([CI)[C

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nameBuffer:[C

    :cond_27
    add-int/lit8 v8, v7, 0x1

    aput-char v0, v3, v7

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    sub-int/2addr v7, v5

    aget-char v0, v0, v7

    if-nez v8, :cond_28

    invoke-static {v1}, Lcom/fasterxml/aalto/util/XmlChars;->is10NameStartChar(I)Z

    move-result v1

    :goto_4
    move v5, v1

    goto :goto_5

    :cond_28
    invoke-static {v1}, Lcom/fasterxml/aalto/util/XmlChars;->is10NameChar(I)Z

    move-result v1

    goto :goto_4

    :goto_5
    move v7, v8

    goto :goto_6

    :cond_29
    const v1, 0xfffe

    if-lt v0, v1, :cond_2a

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->handleInvalidXmlChar(I)C

    move-result v0

    goto :goto_3

    :cond_2a
    :goto_6
    if-nez v5, :cond_2b

    invoke-virtual {p0, v0, v7}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInvalidNameChar(II)V

    :cond_2b
    array-length v1, v3

    if-lt v7, v1, :cond_2c

    array-length v1, v3

    invoke-static {v3, v1}, Lcom/fasterxml/aalto/util/DataUtil;->growArrayBy([CI)[C

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nameBuffer:[C

    move-object v3, v1

    :cond_2c
    add-int/lit8 v1, v7, 0x1

    aput-char v0, v3, v7

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v0, v5, :cond_2d

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_2d
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v5

    move v7, v1

    goto :goto_2

    :cond_2e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v6, v7}, Ljava/lang/String;-><init>([CII)V

    new-instance v1, Lcom/fasterxml/aalto/in/PNameC;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v0, v6}, Lcom/fasterxml/aalto/in/PNameC;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenName:Lcom/fasterxml/aalto/in/PName;

    iget-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v1}, Lcom/fasterxml/aalto/in/ReaderConfig;->willExpandEntities()Z

    move-result v1

    const-string v2, "General entity reference (&"

    if-eqz v1, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";) encountered in entity expanding mode: operation not (yet) implemented"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    :cond_2f
    if-eqz p1, :cond_30

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";) encountered in attribute value, in non-entity-expanding mode: no way to handle it"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    :cond_30
    return v6
.end method

.method public final handlePIStart()I
    .locals 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/ReaderScanner;->parsePName(C)Lcom/fasterxml/aalto/in/PName;

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
    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_2
    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v1, v1, v2

    const/16 v2, 0x20

    if-gt v1, v2, :cond_b

    :goto_0
    const/16 v3, 0xa

    if-ne v1, v3, :cond_4

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    goto :goto_2

    :cond_4
    const/16 v4, 0xd

    if-ne v1, v4, :cond_6

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v1, v4, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_5
    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v1, v1, v4

    if-ne v1, v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto :goto_1

    :cond_6
    if-eq v1, v2, :cond_7

    const/16 v3, 0x9

    if-eq v1, v3, :cond_7

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->throwInvalidSpace(I)V

    :cond_7
    :goto_2
    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v1, v3, :cond_8

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_8
    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v1, v1, v3

    if-le v1, v2, :cond_a

    iget-boolean v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_cfgLazyParsing:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->finishPI()V

    goto :goto_4

    :cond_a
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto :goto_0

    :cond_b
    const/16 v2, 0x3f

    if-eq v1, v2, :cond_c

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportMissingPISpace(I)V

    :cond_c
    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v1, v2, :cond_d

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_d
    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v1, v1, v2

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_e

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportMissingPISpace(I)V

    :cond_e
    iget-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v1}, Lcom/fasterxml/aalto/util/TextBuilder;->resetWithEmpty()[C

    const/4 v1, 0x0

    goto :goto_3

    :goto_4
    return v0
.end method

.method public final handlePrologDeclStart(Z)I
    .locals 5

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x2d

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v2

    if-ne v0, v1, :cond_5

    iget-boolean p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_cfgLazyParsing:Z

    if-eqz p1, :cond_2

    iput-boolean v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->finishComment()V

    :goto_0
    const/4 p1, 0x5

    iput p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    return p1

    :cond_3
    const/16 v1, 0x44

    if-ne v0, v1, :cond_5

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->handleDtdStart()I

    iget-boolean p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_cfgLazyParsing:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0, v3}, Lcom/fasterxml/aalto/in/ReaderScanner;->finishDTD(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    :cond_4
    const/16 p1, 0xb

    return p1

    :cond_5
    iput-boolean v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    const/4 v1, 0x4

    iput v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    const-string v1, " (expected \'-\' for COMMENT)"

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportPrologUnexpChar(ZILjava/lang/String;)V

    iget p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    return p1
.end method

.method public final handleStartElement(C)I
    .locals 13

    const/4 v0, 0x1

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currNsCount:I

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/ReaderScanner;->parsePName(C)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/PName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/aalto/in/XmlScanner;->bindName(Lcom/fasterxml/aalto/in/PName;Ljava/lang/String;)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/PName;->isBound()Z

    move-result v2

    :goto_0
    iput-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenName:Lcom/fasterxml/aalto/in/PName;

    new-instance v3, Lcom/fasterxml/aalto/in/ElementScope;

    iget-object v4, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currElem:Lcom/fasterxml/aalto/in/ElementScope;

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/aalto/in/ElementScope;-><init>(Lcom/fasterxml/aalto/in/PName;Lcom/fasterxml/aalto/in/ElementScope;)V

    iput-object v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currElem:Lcom/fasterxml/aalto/in/ElementScope;

    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_1
    iget-object v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v4, v4, v5

    const/16 v5, 0x2f

    const/16 v6, 0x3e

    const/16 v7, 0x9

    const/16 v8, 0xd

    const/16 v9, 0xa

    const/16 v10, 0x20

    if-gt v4, v10, :cond_9

    :cond_2
    if-ne v4, v9, :cond_4

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    goto :goto_3

    :cond_4
    if-ne v4, v8, :cond_6

    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v11, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v4, v11, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_5
    iget-object v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v11, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v4, v4, v11

    if-ne v4, v9, :cond_3

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto :goto_2

    :cond_6
    if-eq v4, v10, :cond_7

    if-eq v4, v7, :cond_7

    invoke-virtual {p0, v4}, Lcom/fasterxml/aalto/in/XmlScanner;->throwInvalidSpace(I)V

    :cond_7
    :goto_3
    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v11, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v4, v11, :cond_8

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_8
    iget-object v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v11, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v4, v4, v11

    if-le v4, v10, :cond_2

    goto :goto_4

    :cond_9
    if-eq v4, v5, :cond_a

    if-eq v4, v6, :cond_a

    const-string v11, " expected space, or \'>\' or \"/>\""

    invoke-virtual {p0, v4, v11}, Lcom/fasterxml/aalto/in/XmlScanner;->throwUnexpectedChar(ILjava/lang/String;)V

    :cond_a
    :goto_4
    if-ne v4, v5, :cond_d

    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v4, v5, :cond_b

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_b
    iget-object v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v4, v4, v5

    if-eq v4, v6, :cond_c

    const-string v5, " expected \'>\'"

    invoke-virtual {p0, v4, v5}, Lcom/fasterxml/aalto/in/XmlScanner;->throwUnexpectedChar(ILjava/lang/String;)V

    :cond_c
    iput-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_isEmptyTag:Z

    goto :goto_5

    :cond_d
    if-ne v4, v6, :cond_12

    iput-boolean v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_isEmptyTag:Z

    :goto_5
    iget-object v4, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_attrCollector:Lcom/fasterxml/aalto/in/AttributeCollector;

    invoke-virtual {v4, v3}, Lcom/fasterxml/aalto/in/AttributeCollector;->finishLastValue(I)I

    move-result v3

    if-gez v3, :cond_e

    iget-object v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_attrCollector:Lcom/fasterxml/aalto/in/AttributeCollector;

    invoke-virtual {v3}, Lcom/fasterxml/aalto/in/AttributeCollector;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_attrCollector:Lcom/fasterxml/aalto/in/AttributeCollector;

    invoke-virtual {v4}, Lcom/fasterxml/aalto/in/AttributeCollector;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    :cond_e
    iput v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_attrCount:I

    iget v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_depth:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_depth:I

    if-nez v2, :cond_11

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/PName;->isBound()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenName:Lcom/fasterxml/aalto/in/PName;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportUnboundPrefix(Lcom/fasterxml/aalto/in/PName;Z)V

    :cond_f
    iget p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_attrCount:I

    :goto_6
    if-ge v1, p1, :cond_11

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_attrCollector:Lcom/fasterxml/aalto/in/AttributeCollector;

    invoke-virtual {v2, v1}, Lcom/fasterxml/aalto/in/AttributeCollector;->getName(I)Lcom/fasterxml/aalto/in/PName;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/aalto/in/PName;->isBound()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {p0, v2, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportUnboundPrefix(Lcom/fasterxml/aalto/in/PName;Z)V

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_11
    return v0

    :cond_12
    const/16 v5, 0x3c

    if-ne v4, v5, :cond_13

    const-string v5, "Unexpected \'<\' character in element (missing closing \'>\'?)"

    invoke-virtual {p0, v5}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {p0, v4}, Lcom/fasterxml/aalto/in/ReaderScanner;->parsePName(C)Lcom/fasterxml/aalto/in/PName;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/aalto/in/PName;->getPrefix()Ljava/lang/String;

    move-result-object v5

    const-string v6, "xmlns"

    if-nez v5, :cond_14

    invoke-virtual {v4}, Lcom/fasterxml/aalto/in/PName;->getLocalName()Ljava/lang/String;

    move-result-object v5

    if-ne v5, v6, :cond_16

    goto :goto_7

    :cond_14
    if-ne v5, v6, :cond_15

    :goto_7
    const/4 v5, 0x1

    goto :goto_8

    :cond_15
    invoke-virtual {p0, v4, v5}, Lcom/fasterxml/aalto/in/XmlScanner;->bindName(Lcom/fasterxml/aalto/in/PName;Ljava/lang/String;)Lcom/fasterxml/aalto/in/PName;

    move-result-object v4

    if-eqz v2, :cond_16

    invoke-virtual {v4}, Lcom/fasterxml/aalto/in/PName;->isBound()Z

    move-result v2

    :cond_16
    const/4 v5, 0x0

    :cond_17
    :goto_8
    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v11, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v6, v11, :cond_18

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_18
    iget-object v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v11, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v6, v6, v11

    if-le v6, v10, :cond_22

    const/16 v11, 0x3d

    if-eq v6, v11, :cond_19

    const-string v11, " expected \'=\'"

    invoke-virtual {p0, v6, v11}, Lcom/fasterxml/aalto/in/XmlScanner;->throwUnexpectedChar(ILjava/lang/String;)V

    :cond_19
    :goto_9
    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v11, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v6, v11, :cond_1a

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_1a
    iget-object v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v11, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v6, v6, v11

    if-le v6, v10, :cond_1d

    const/16 v7, 0x22

    if-eq v6, v7, :cond_1b

    const/16 v7, 0x27

    if-eq v6, v7, :cond_1b

    const-string v7, " Expected a quote"

    invoke-virtual {p0, v6, v7}, Lcom/fasterxml/aalto/in/XmlScanner;->throwUnexpectedChar(ILjava/lang/String;)V

    :cond_1b
    if-eqz v5, :cond_1c

    invoke-direct {p0, v4, v6}, Lcom/fasterxml/aalto/in/ReaderScanner;->handleNsDeclaration(Lcom/fasterxml/aalto/in/PName;C)V

    iget v4, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currNsCount:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currNsCount:I

    goto/16 :goto_1

    :cond_1c
    invoke-direct {p0, v3, v6, v4}, Lcom/fasterxml/aalto/in/ReaderScanner;->collectValue(ICLcom/fasterxml/aalto/in/PName;)I

    move-result v3

    goto/16 :goto_1

    :cond_1d
    if-ne v6, v9, :cond_1f

    :cond_1e
    :goto_a
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    goto :goto_9

    :cond_1f
    if-ne v6, v8, :cond_21

    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v12, v6, :cond_20

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_20
    iget-object v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v11, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v6, v6, v11

    if-ne v6, v9, :cond_1e

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto :goto_a

    :cond_21
    if-eq v6, v10, :cond_19

    if-eq v6, v7, :cond_19

    invoke-virtual {p0, v6}, Lcom/fasterxml/aalto/in/XmlScanner;->throwInvalidSpace(I)V

    goto :goto_9

    :cond_22
    if-ne v6, v9, :cond_24

    :cond_23
    :goto_b
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    goto :goto_8

    :cond_24
    if-ne v6, v8, :cond_26

    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v12, v6, :cond_25

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_25
    iget-object v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v11, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v6, v6, v11

    if-ne v6, v9, :cond_23

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto :goto_b

    :cond_26
    if-eq v6, v10, :cond_17

    if-eq v6, v7, :cond_17

    invoke-virtual {p0, v6}, Lcom/fasterxml/aalto/in/XmlScanner;->throwInvalidSpace(I)V

    goto/16 :goto_8
.end method

.method public final loadAndRetain(I)Z
    .locals 6

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_in:Ljava/io/Reader;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_pastBytesOrChars:J

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_pastBytesOrChars:J

    iget v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_rowStartOffset:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_rowStartOffset:I

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    sub-int/2addr v2, v0

    iget-object v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    invoke-static {v3, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    array-length v2, v0

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    sub-int/2addr v2, v3

    iget-object v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_in:Ljava/io/Reader;

    invoke-virtual {v4, v0, v3, v2}, Ljava/io/Reader;->read([CII)I

    move-result v0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_3

    if-nez v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Reader returned 0 bytes, even when asked to read up to "

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
    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I
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
    .locals 8

    const-string v0, "Reader returned 0 bytes, even when asked to read up to "

    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_in:Ljava/io/Reader;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    return v2

    :cond_0
    iget-wide v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_pastBytesOrChars:J

    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    int-to-long v6, v5

    add-long/2addr v3, v6

    iput-wide v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_pastBytesOrChars:J

    iget v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_rowStartOffset:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_rowStartOffset:I

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :try_start_0
    iget-object v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    array-length v4, v3

    invoke-virtual {v1, v3, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_2

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return v2

    :cond_2
    iput v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :goto_1
    new-instance v1, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {v1, v0}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public final loadOne(I)C
    .locals 2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->loadMore()Z

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
    iget-object p1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char p1, p1, v0

    return p1
.end method

.method public final markLF()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

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

.method public final nextFromProlog(Z)I
    .locals 5

    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->skipToken()Z

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->setStartLocation()V

    :cond_1
    :goto_0
    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->loadMore()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->setStartLocation()V

    return v2

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v3, v0, :cond_3

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed(I)V

    :cond_3
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x21

    if-ne v0, v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/ReaderScanner;->handlePrologDeclStart(Z)I

    move-result p1

    return p1

    :cond_4
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->handlePIStart()I

    move-result p1

    return p1

    :cond_5
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_6

    if-nez p1, :cond_7

    :cond_6
    const-string v1, " (unbalanced start/end tags?)"

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportPrologUnexpChar(ZILjava/lang/String;)V

    :cond_7
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/ReaderScanner;->handleStartElement(C)I

    move-result p1

    return p1

    :cond_8
    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_a

    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    goto :goto_0

    :cond_a
    const/16 v4, 0xd

    if-ne v0, v4, :cond_c

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v3, v0, :cond_b

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->loadMore()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->setStartLocation()V

    return v2

    :cond_b
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v2

    if-ne v0, v1, :cond_9

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto :goto_1

    :cond_c
    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

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

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->_nextEntity()I

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

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->_nextEntity()I

    move-result v0

    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->setStartLocation()V

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v0, v4, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->loadMore()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->setStartLocation()V

    const/4 v0, -0x1

    return v0

    :cond_4
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v5, v0, v4

    const/16 v6, 0x3c

    if-ne v5, v6, :cond_9

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-ge v1, v3, :cond_5

    add-int/2addr v4, v2

    iput v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/ReaderScanner;->loadOne(I)C

    move-result v0

    :goto_1
    const/16 v1, 0x21

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->handleCommentOrCdataStart()I

    move-result v0

    return v0

    :cond_6
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->handlePIStart()I

    move-result v0

    return v0

    :cond_7
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->handleEndElement()I

    move-result v0

    return v0

    :cond_8
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/ReaderScanner;->handleStartElement(C)I

    move-result v0

    return v0

    :cond_9
    const/16 v0, 0x26

    if-ne v5, v0, :cond_b

    add-int/2addr v4, v3

    iput v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/ReaderScanner;->handleEntityInText(Z)I

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0x9

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    return v0

    :cond_a
    neg-int v0, v0

    iput v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->mTmpChar:I

    goto :goto_2

    :cond_b
    iput v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->mTmpChar:I

    :goto_2
    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_cfgLazyParsing:Z

    if-eqz v0, :cond_c

    iput-boolean v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    goto :goto_3

    :cond_c
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->finishCharacters()V

    :goto_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    return v0
.end method

.method public parsePName(C)Lcom/fasterxml/aalto/in/PName;
    .locals 7

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nameBuffer:[C

    const/16 v1, 0x41

    if-ge p1, v1, :cond_0

    const-string v2, "; expected a name start character"

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/aalto/in/XmlScanner;->throwUnexpectedChar(ILjava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    aput-char p1, v0, v2

    const/4 v3, 0x1

    :goto_0
    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_1
    iget-object v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v4, v4, v5

    if-ge v4, v1, :cond_4

    const/16 v6, 0x2d

    if-lt v4, v6, :cond_2

    const/16 v6, 0x3a

    if-gt v4, v6, :cond_2

    const/16 v6, 0x2f

    if-ne v4, v6, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_symbols:Lcom/fasterxml/aalto/in/CharBasedPNameTable;

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/fasterxml/aalto/in/CharBasedPNameTable;->findSymbol([CIII)Lcom/fasterxml/aalto/in/PNameC;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0, v3, p1}, Lcom/fasterxml/aalto/in/ReaderScanner;->addPName([CII)Lcom/fasterxml/aalto/in/PName;

    move-result-object v1

    :cond_3
    return-object v1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    array-length v5, v0

    if-lt v3, v5, :cond_5

    array-length v5, v0

    invoke-static {v0, v5}, Lcom/fasterxml/aalto/util/DataUtil;->growArrayBy([CI)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nameBuffer:[C

    :cond_5
    add-int/lit8 v5, v3, 0x1

    aput-char v4, v0, v3

    mul-int/lit8 p1, p1, 0x1f

    add-int/2addr p1, v4

    move v3, v5

    goto :goto_0
.end method

.method public parsePublicId(C)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nameBuffer:[C

    sget-object v1, Lcom/fasterxml/aalto/util/XmlCharTypes;->PUBID_CHARS:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_0
    iget-object v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v5, v5, v6

    if-ne v5, p1, :cond_1

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_1
    const/16 v6, 0xff

    const/4 v7, 0x1

    if-gt v5, v6, :cond_2

    aget v6, v1, v5

    if-eq v6, v7, :cond_3

    :cond_2
    const-string v6, " in public identifier"

    invoke-virtual {p0, v5, v6}, Lcom/fasterxml/aalto/in/XmlScanner;->throwUnexpectedChar(ILjava/lang/String;)V

    :cond_3
    const/16 v6, 0x20

    if-gt v5, v6, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_6

    array-length v4, v0

    if-lt v3, v4, :cond_5

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/util/TextBuilder;->finishCurrentSegment()[C

    move-result-object v0

    const/4 v3, 0x0

    :cond_5
    add-int/lit8 v4, v3, 0x1

    aput-char v6, v0, v3

    move v3, v4

    const/4 v4, 0x0

    :cond_6
    array-length v6, v0

    if-lt v3, v6, :cond_7

    array-length v3, v0

    invoke-static {v0, v3}, Lcom/fasterxml/aalto/util/DataUtil;->growArrayBy([CI)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nameBuffer:[C

    const/4 v3, 0x0

    :cond_7
    add-int/lit8 v6, v3, 0x1

    aput-char v5, v0, v3

    move v3, v6

    goto :goto_0
.end method

.method public parseSystemId(C)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nameBuffer:[C

    sget-object v1, Lcom/fasterxml/aalto/in/ReaderScanner;->sCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v1, v1, Lcom/fasterxml/aalto/util/XmlCharTypes;->ATTR_CHARS:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_0
    iget-object v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v4, v4, v5

    aget v5, v1, v4

    if-eqz v5, :cond_7

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    const/16 v6, 0xe

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    if-ne v4, p1, :cond_7

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v4}, Lcom/fasterxml/aalto/in/XmlScanner;->handleInvalidXmlChar(I)C

    :cond_4
    iget v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v4, v5, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_5
    iget-object v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v4, v4, v5

    const/16 v6, 0xa

    if-ne v4, v6, :cond_6

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    const/16 v4, 0xa

    :cond_7
    :goto_1
    array-length v5, v0

    if-lt v3, v5, :cond_8

    array-length v3, v0

    invoke-static {v0, v3}, Lcom/fasterxml/aalto/util/DataUtil;->growArrayBy([CI)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nameBuffer:[C

    const/4 v3, 0x0

    :cond_8
    add-int/lit8 v5, v3, 0x1

    aput-char v4, v0, v3

    move v3, v5

    goto :goto_0
.end method

.method public final setStartLocation()V
    .locals 5

    iget-wide v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_pastBytesOrChars:J

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

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

.method public final skipCData()V
    .locals 8

    sget-object v0, Lcom/fasterxml/aalto/in/ReaderScanner;->sCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->OTHER_CHARS:[I

    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    :cond_0
    :goto_0
    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    :cond_1
    :goto_1
    if-ge v2, v3, :cond_f

    add-int/lit8 v4, v2, 0x1

    aget-char v2, v1, v2

    const v5, 0xd800

    const/16 v6, 0xff

    if-gt v2, v6, :cond_2

    aget v7, v0, v2

    if-eqz v7, :cond_e

    :goto_2
    iput v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto :goto_3

    :cond_2
    if-lt v2, v5, :cond_e

    goto :goto_2

    :goto_3
    if-gt v2, v6, :cond_c

    aget v3, v0, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    const/4 v2, 0x2

    if-eq v3, v2, :cond_9

    const/4 v2, 0x3

    if-eq v3, v2, :cond_7

    const/16 v2, 0xb

    if-eq v3, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :cond_4
    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v3, v5, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_5
    add-int/2addr v2, v4

    iget-object v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v3, v3, v5

    const/16 v6, 0x5d

    if-eq v3, v6, :cond_4

    const/16 v6, 0x3e

    if-ne v3, v6, :cond_6

    if-le v2, v4, :cond_0

    return-void

    :cond_6
    iput v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/in/XmlScanner;->handleInvalidXmlChar(I)C

    :cond_9
    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v3, :cond_a

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_a
    aget-char v3, v1, v2

    const/16 v5, 0xa

    if-ne v3, v5, :cond_b

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_b
    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF(I)V

    goto :goto_0

    :cond_c
    if-lt v2, v5, :cond_0

    const v3, 0xe000

    if-ge v2, v3, :cond_d

    invoke-direct {p0, v2}, Lcom/fasterxml/aalto/in/ReaderScanner;->checkSurrogate(C)C

    goto/16 :goto_0

    :cond_d
    const v3, 0xfffe

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/in/XmlScanner;->handleInvalidXmlChar(I)C

    goto/16 :goto_0

    :cond_e
    move v2, v4

    goto/16 :goto_1

    :cond_f
    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto/16 :goto_0
.end method

.method public final skipCharacters()Z
    .locals 8

    sget-object v0, Lcom/fasterxml/aalto/in/ReaderScanner;->sCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->TEXT_CHARS:[I

    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    :cond_0
    :goto_0
    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    :cond_1
    :goto_1
    if-ge v2, v3, :cond_c

    add-int/lit8 v4, v2, 0x1

    aget-char v2, v1, v2

    const v5, 0xd800

    const/16 v6, 0xff

    if-gt v2, v6, :cond_2

    aget v7, v0, v2

    if-eqz v7, :cond_b

    :goto_2
    iput v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto :goto_3

    :cond_2
    if-lt v2, v5, :cond_b

    goto :goto_2

    :goto_3
    if-gt v2, v6, :cond_9

    aget v3, v0, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    const/4 v2, 0x2

    if-eq v3, v2, :cond_7

    const/4 v2, 0x3

    if-eq v3, v2, :cond_5

    const/4 v2, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x1

    :goto_4
    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v3, v5, :cond_3

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_3
    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v5, v1, v3

    const/16 v6, 0x5d

    if-eq v5, v6, :cond_4

    const/16 v3, 0x3e

    if-ne v5, v3, :cond_0

    if-le v2, v4, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportIllegalCDataEnd()V

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/in/ReaderScanner;->handleEntityInText(Z)I

    move-result v2

    if-nez v2, :cond_0

    return v4

    :pswitch_2
    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    return v2

    :cond_5
    :goto_5
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/in/XmlScanner;->handleInvalidXmlChar(I)C

    :cond_7
    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v3, :cond_8

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_8
    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v3, v1, v2

    const/16 v4, 0xa

    if-ne v3, v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto :goto_5

    :cond_9
    if-lt v2, v5, :cond_0

    const v3, 0xe000

    if-ge v2, v3, :cond_a

    invoke-direct {p0, v2}, Lcom/fasterxml/aalto/in/ReaderScanner;->checkSurrogate(C)C

    goto/16 :goto_0

    :cond_a
    const v3, 0xfffe

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/in/XmlScanner;->handleInvalidXmlChar(I)C

    goto/16 :goto_0

    :cond_b
    move v2, v4

    goto/16 :goto_1

    :cond_c
    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final skipCoalescedText()Z
    .locals 5

    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->loadMore()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v3, 0x3c

    if-ne v0, v3, :cond_8

    add-int/lit8 v1, v1, 0x3

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v1, v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/ReaderScanner;->loadAndRetain(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    aget-char v3, v0, v3

    const/16 v4, 0x21

    if-ne v3, v4, :cond_7

    add-int/lit8 v3, v1, 0x2

    aget-char v0, v0, v3

    const/16 v3, 0x5b

    if-eq v0, v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :goto_1
    const/4 v0, 0x6

    if-ge v2, v0, :cond_6

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_4
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    const-string v1, "CDATA["

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v0, v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " (expected \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' for CDATA section)"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportTreeUnexpChar(ILjava/lang/String;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->skipCData()V

    goto :goto_0

    :cond_7
    :goto_2
    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->skipCharacters()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public final skipComment()V
    .locals 7

    sget-object v0, Lcom/fasterxml/aalto/in/ReaderScanner;->sCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->OTHER_CHARS:[I

    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    :cond_0
    :goto_0
    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    :cond_1
    :goto_1
    if-ge v2, v3, :cond_c

    add-int/lit8 v4, v2, 0x1

    aget-char v2, v1, v2

    const/16 v5, 0xff

    if-gt v2, v5, :cond_2

    aget v6, v0, v2

    if-eqz v6, :cond_b

    :goto_2
    iput v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto :goto_3

    :cond_2
    const v6, 0xd800

    if-lt v2, v6, :cond_b

    goto :goto_2

    :goto_3
    if-gt v2, v5, :cond_0

    aget v3, v0, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    const/4 v2, 0x2

    if-eq v3, v2, :cond_9

    const/4 v2, 0x3

    if-eq v3, v2, :cond_7

    const/16 v2, 0xd

    if-eq v3, v2, :cond_3

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_4
    iget-object v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v2, v2, v3

    const/16 v5, 0x2d

    if-ne v2, v5, :cond_0

    add-int/2addr v3, v4

    iput v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v3, v0, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_5
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportDoubleHyphenInComments()V

    :cond_6
    return-void

    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/in/XmlScanner;->handleInvalidXmlChar(I)C

    :cond_9
    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v3, :cond_a

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_a
    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v3, v1, v2

    const/16 v4, 0xa

    if-ne v3, v4, :cond_7

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto :goto_4

    :cond_b
    move v2, v4

    goto :goto_1

    :cond_c
    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto/16 :goto_0
.end method

.method public skipInternalWs(ZLjava/lang/String;)C
    .locals 3

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-le v0, v1, :cond_2

    if-nez p1, :cond_1

    return v0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, " (expected white space "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportTreeUnexpChar(ILjava/lang/String;)V

    :cond_2
    const/16 p1, 0xa

    if-ne v0, p1, :cond_4

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    goto :goto_1

    :cond_4
    const/16 p2, 0xd

    if-ne v0, p2, :cond_6

    iget p2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt p2, v0, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_5
    iget-object p2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char p2, p2, v0

    if-ne p2, p1, :cond_3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto :goto_0

    :cond_6
    if-eq v0, v1, :cond_7

    const/16 p1, 0x9

    if-eq v0, p1, :cond_7

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->throwInvalidSpace(I)V

    :cond_7
    :goto_1
    iget p1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget p2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt p1, p2, :cond_8

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_8
    iget-object p1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget p2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v0, p1, p2

    if-le v0, v1, :cond_2

    return v0
.end method

.method public final skipPI()V
    .locals 8

    sget-object v0, Lcom/fasterxml/aalto/in/ReaderScanner;->sCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->OTHER_CHARS:[I

    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    :cond_0
    :goto_0
    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    :cond_1
    :goto_1
    if-ge v2, v3, :cond_b

    add-int/lit8 v4, v2, 0x1

    aget-char v2, v1, v2

    const v5, 0xd800

    const/16 v6, 0xff

    if-gt v2, v6, :cond_2

    aget v7, v0, v2

    if-eqz v7, :cond_a

    :goto_2
    iput v4, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto :goto_3

    :cond_2
    if-lt v2, v5, :cond_a

    goto :goto_2

    :goto_3
    if-gt v2, v6, :cond_8

    aget v2, v0, v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/16 v3, 0xc

    if-eq v2, v3, :cond_3

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_4
    iget-object v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v2, v2, v3

    const/16 v4, 0x3e

    if-ne v2, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    return-void

    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF()V

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v2, v3, :cond_7

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMoreGuaranteed()V

    :cond_7
    iget v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    aget-char v3, v1, v2

    const/16 v4, 0xa

    if-ne v3, v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto :goto_4

    :cond_8
    if-lt v2, v5, :cond_0

    const v3, 0xe000

    if-ge v2, v3, :cond_9

    invoke-direct {p0, v2}, Lcom/fasterxml/aalto/in/ReaderScanner;->checkSurrogate(C)C

    goto :goto_0

    :cond_9
    const v3, 0xfffe

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/in/XmlScanner;->handleInvalidXmlChar(I)C

    goto :goto_0

    :cond_a
    move v2, v4

    goto :goto_1

    :cond_b
    iput v2, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    goto :goto_0
.end method

.method public final skipSpace()V
    .locals 5

    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->loadMore()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_2
    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    aget-char v1, v1, v0

    const/16 v2, 0x20

    if-le v1, v2, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_5

    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/ReaderScanner;->markLF(I)V

    goto :goto_0

    :cond_5
    const/16 v4, 0xd

    if-ne v1, v4, :cond_8

    iget v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputEnd:I

    if-lt v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/ReaderScanner;->loadMore()Z

    move-result v1

    if-nez v1, :cond_6

    :goto_2
    iput v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    return-void

    :cond_6
    iget v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    :cond_7
    iget-object v1, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputBuffer:[C

    aget-char v1, v1, v0

    if-ne v1, v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iput v0, p0, Lcom/fasterxml/aalto/in/ReaderScanner;->_inputPtr:I

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->throwInvalidSpace(I)V

    goto :goto_0
.end method
