.class public Lcom/fasterxml/aalto/stax/StreamReaderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/stax2/XMLStreamReader2;
.implements Lorg/codehaus/stax2/DTDInfo;


# instance fields
.field protected _attrCount:I

.field protected final _cfgCoalesceText:Z

.field protected final _cfgReportTextAsChars:Z

.field protected _currName:Lcom/fasterxml/aalto/in/PName;

.field protected _currToken:I

.field protected _dtdRootName:Lcom/fasterxml/aalto/in/PName;

.field protected _parseState:I

.field protected final _scanner:Lcom/fasterxml/aalto/in/XmlScanner;


# direct methods
.method public constructor <init>(Lcom/fasterxml/aalto/in/XmlScanner;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    const/4 v0, 0x7

    iput v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/XmlScanner;->getConfig()Lcom/fasterxml/aalto/in/ReaderConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/ReaderConfig;->willCoalesceText()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_cfgCoalesceText:Z

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/ReaderConfig;->willReportCData()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_cfgReportTextAsChars:Z

    return-void
.end method

.method public static construct(Lcom/fasterxml/aalto/in/InputBootstrapper;)Lcom/fasterxml/aalto/stax/StreamReaderImpl;
    .locals 1

    new-instance v0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->bootstrap()Lcom/fasterxml/aalto/in/XmlScanner;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;-><init>(Lcom/fasterxml/aalto/in/XmlScanner;)V

    return-object v0
.end method

.method private throwNotTextXxx(I)V
    .locals 2

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getTextXxx() methods can not be called on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    invoke-static {v1}, Lcom/fasterxml/aalto/impl/ErrorConsts;->tokenTypeDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private throwNotTextual(I)V
    .locals 2

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not a textual event ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    invoke-static {v1}, Lcom/fasterxml/aalto/impl/ErrorConsts;->tokenTypeDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public _closeScanner(Z)V
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_parseState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_parseState:I

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->close(Z)V

    return-void
.end method

.method public _reportNonTextEvent(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected a text token, got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/fasterxml/aalto/impl/ErrorConsts;->tokenTypeDesc(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->throwWfe(Ljava/lang/String;)V

    return-void
.end method

.method public final close()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_closeScanner(Z)V

    return-void
.end method

.method public final getAttributeCount()I
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_attrCount:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_STATE_NOT_STELEM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getAttributeLocalName(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_attrCount:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->reportInvalidAttrIndex(I)V

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->getAttrLocalName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_STATE_NOT_STELEM:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getAttributeName(I)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_attrCount:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->reportInvalidAttrIndex(I)V

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->getAttrQName(I)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_STATE_NOT_STELEM:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getAttributeNamespace(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_attrCount:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->reportInvalidAttrIndex(I)V

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->getAttrNsURI(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_STATE_NOT_STELEM:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getAttributePrefix(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_attrCount:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->reportInvalidAttrIndex(I)V

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->getAttrPrefix(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_STATE_NOT_STELEM:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getAttributeType(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_attrCount:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->reportInvalidAttrIndex(I)V

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->getAttrType(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_STATE_NOT_STELEM:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getAttributeValue(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_attrCount:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->reportInvalidAttrIndex(I)V

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->getAttrValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_STATE_NOT_STELEM:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/aalto/in/XmlScanner;->getAttrValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object p2, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_STATE_NOT_STELEM:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getCharacterEncodingScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/XmlScanner;->getConfig()Lcom/fasterxml/aalto/in/ReaderConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/ReaderConfig;->getXmlDeclEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDTDInfo()Lorg/codehaus/stax2/DTDInfo;
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final getDTDInternalSubset()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/XmlScanner;->getText()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/fasterxml/aalto/UncheckedStreamException;->createFrom(Lorg/apache/poi/javax/xml/stream/XMLStreamException;)Lcom/fasterxml/aalto/UncheckedStreamException;

    move-result-object v0

    throw v0
.end method

.method public final getDTDPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/XmlScanner;->getDTDPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDTDRootName()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currName:Lcom/fasterxml/aalto/in/PName;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/PName;->getPrefixedName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public final getDTDSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/XmlScanner;->getDTDSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getElementText()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_STATE_NOT_STELEM:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->throwWfe(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->next()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    goto :goto_0

    :cond_2
    shl-int v5, v1, v0

    and-int/lit16 v5, v5, 0x1250

    if-nez v5, :cond_3

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_reportNonTextEvent(I)V

    :cond_3
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/XmlScanner;->getText()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->next()I

    move-result v6

    if-eq v6, v2, :cond_7

    shl-int v7, v1, v6

    and-int/lit16 v7, v7, 0x1250

    if-eqz v7, :cond_6

    if-nez v5, :cond_5

    new-instance v5, Lcom/fasterxml/aalto/util/TextAccumulator;

    invoke-direct {v5}, Lcom/fasterxml/aalto/util/TextAccumulator;-><init>()V

    invoke-virtual {v5, v0}, Lcom/fasterxml/aalto/util/TextAccumulator;->addText(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fasterxml/aalto/util/TextAccumulator;->addText(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-eq v6, v3, :cond_4

    if-eq v6, v4, :cond_4

    invoke-virtual {p0, v6}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_reportNonTextEvent(I)V

    goto :goto_1

    :cond_7
    if-nez v5, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v5}, Lcom/fasterxml/aalto/util/TextAccumulator;->getAndClear()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public final getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/XmlScanner;->getConfig()Lcom/fasterxml/aalto/in/ReaderConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/ReaderConfig;->getActualEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getEventType()I
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_cfgCoalesceText:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_cfgReportTextAsChars:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x4

    :cond_1
    return v0
.end method

.method public getLastCharLocation()Lorg/apache/poi/javax/xml/stream/Location;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/XmlScanner;->getCurrentLocation()Lorg/codehaus/stax2/XMLStreamLocation2;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalName()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current state not START_ELEMENT, END_ELEMENT or ENTITY_REFERENCE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currName:Lcom/fasterxml/aalto/in/PName;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/PName;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLocation()Lorg/apache/poi/javax/xml/stream/Location;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->getStartLocation()Lorg/codehaus/stax2/XMLStreamLocation2;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_STATE_NOT_ELEM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/XmlScanner;->getQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public final getNamespaceContext()Lorg/apache/poi/javax/xml/namespace/NamespaceContext;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    return-object v0
.end method

.method public final getNamespaceCount()I
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_STATE_NOT_ELEM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/XmlScanner;->getNsCount()I

    move-result v0

    return v0
.end method

.method public final getNamespacePrefix(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_STATE_NOT_ELEM:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    return-object p1
.end method

.method public final getNamespaceURI()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_STATE_NOT_ELEM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/XmlScanner;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method public final getNamespaceURI(I)Ljava/lang/String;
    .locals 2

    .line 2
    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_STATE_NOT_ELEM:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    return-object p1
.end method

.method public final getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3
    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_STATE_NOT_ELEM:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getNonTransientNamespaceContext()Lorg/apache/poi/javax/xml/namespace/NamespaceContext;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/XmlScanner;->getNonTransientNamespaceContext()Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    move-result-object v0

    return-object v0
.end method

.method public final getPIData()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/XmlScanner;->getText()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/fasterxml/aalto/UncheckedStreamException;->createFrom(Lorg/apache/poi/javax/xml/stream/XMLStreamException;)Lcom/fasterxml/aalto/UncheckedStreamException;

    move-result-object v0

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_STATE_NOT_PI:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getPITarget()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currName:Lcom/fasterxml/aalto/in/PName;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/PName;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_STATE_NOT_PI:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_STATE_NOT_ELEM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currName:Lcom/fasterxml/aalto/in/PName;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/PName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method public final getProcessedDTD()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const-string v0, "org.apache.poi.javax.xml.stream.entities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    :cond_0
    const-string v0, "org.apache.poi.javax.xml.stream.notations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/XmlScanner;->getConfig()Lcom/fasterxml/aalto/in/ReaderConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/aalto/in/ReaderConfig;->getProperty(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getStartLocation()Lorg/codehaus/stax2/XMLStreamLocation2;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/XmlScanner;->getStartLocation()Lorg/codehaus/stax2/XMLStreamLocation2;

    move-result-object v0

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    and-int/lit16 v1, v1, 0x1a70

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->throwNotTextual(I)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/XmlScanner;->getText()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/fasterxml/aalto/UncheckedStreamException;->createFrom(Lorg/apache/poi/javax/xml/stream/XMLStreamException;)Lcom/fasterxml/aalto/UncheckedStreamException;

    move-result-object v0

    throw v0
.end method

.method public final getTextCharacters(I[CII)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    and-int/lit16 v1, v1, 0x1070

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->throwNotTextXxx(I)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fasterxml/aalto/in/XmlScanner;->getTextCharacters(I[CII)I

    move-result p1
    :try_end_0
    .catch Lorg/apache/poi/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/fasterxml/aalto/UncheckedStreamException;->createFrom(Lorg/apache/poi/javax/xml/stream/XMLStreamException;)Lcom/fasterxml/aalto/UncheckedStreamException;

    move-result-object p1

    throw p1
.end method

.method public final getTextCharacters()[C
    .locals 2

    .line 2
    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    and-int/lit16 v1, v1, 0x1070

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->throwNotTextXxx(I)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/XmlScanner;->getTextCharacters()[C

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/fasterxml/aalto/UncheckedStreamException;->createFrom(Lorg/apache/poi/javax/xml/stream/XMLStreamException;)Lcom/fasterxml/aalto/UncheckedStreamException;

    move-result-object v0

    throw v0
.end method

.method public final getTextLength()I
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    and-int/lit16 v1, v1, 0x1070

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->throwNotTextXxx(I)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/XmlScanner;->getTextLength()I

    move-result v0
    :try_end_0
    .catch Lorg/apache/poi/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/fasterxml/aalto/UncheckedStreamException;->createFrom(Lorg/apache/poi/javax/xml/stream/XMLStreamException;)Lcom/fasterxml/aalto/UncheckedStreamException;

    move-result-object v0

    throw v0
.end method

.method public final getTextStart()I
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    and-int/lit16 v1, v1, 0x1070

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->throwNotTextXxx(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/XmlScanner;->getConfig()Lcom/fasterxml/aalto/in/ReaderConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/ReaderConfig;->getXmlDeclVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handlePrologEoi(Z)I
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->close()V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/fasterxml/aalto/impl/ErrorConsts;->SUFFIX_IN_PROLOG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->throwUnexpectedEOI(Ljava/lang/String;)V

    :cond_0
    const/16 p1, 0x8

    return p1
.end method

.method public handleTreeEoi()V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->SUFFIX_IN_TREE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->throwUnexpectedEOI(Ljava/lang/String;)V

    return-void
.end method

.method public final hasName()Z
    .locals 3

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasText()Z
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    and-int/lit16 v0, v0, 0x1a70

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isAttributeSpecified(I)Z
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->isAttrSpecified(I)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_STATE_NOT_STELEM:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isCharacters()Z
    .locals 2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->getEventType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEndElement()Z
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isStandalone()Z
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/XmlScanner;->getConfig()Lcom/fasterxml/aalto/in/ReaderConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/ReaderConfig;->getXmlDeclStandalone()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isStartElement()Z
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isWhiteSpace()Z
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/XmlScanner;->isTextWhitespace()Z

    move-result v0
    :try_end_0
    .catch Lorg/apache/poi/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/fasterxml/aalto/UncheckedStreamException;->createFrom(Lorg/apache/poi/javax/xml/stream/XMLStreamException;)Lcom/fasterxml/aalto/UncheckedStreamException;

    move-result-object v0

    throw v0
.end method

.method public final next()I
    .locals 4

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_parseState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/XmlScanner;->nextFromTree()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->handleTreeEoi()V

    :cond_0
    iput v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    const/16 v3, 0xc

    if-ne v0, v3, :cond_2

    iget-boolean v1, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_cfgCoalesceText:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_cfgReportTextAsChars:Z

    if-eqz v1, :cond_4

    :cond_1
    const/4 v0, 0x4

    return v0

    :cond_2
    iget-object v3, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v3}, Lcom/fasterxml/aalto/in/XmlScanner;->getName()Lcom/fasterxml/aalto/in/PName;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currName:Lcom/fasterxml/aalto/in/PName;

    if-ne v0, v1, :cond_3

    iget-object v2, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v2}, Lcom/fasterxml/aalto/in/XmlScanner;->hasEmptyStack()Z

    move-result v2

    if-eqz v2, :cond_4

    iput v1, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_parseState:I

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    iget-object v1, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v1}, Lcom/fasterxml/aalto/in/XmlScanner;->getAttrCount()I

    move-result v1

    iput v1, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_attrCount:I

    :cond_4
    :goto_0
    return v0

    :cond_5
    const/4 v3, 0x0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0, v2}, Lcom/fasterxml/aalto/in/XmlScanner;->nextFromProlog(Z)I

    move-result v0

    if-ne v0, v2, :cond_6

    iput v2, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_parseState:I

    iget-object v1, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v1}, Lcom/fasterxml/aalto/in/XmlScanner;->getAttrCount()I

    move-result v1

    iput v1, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_attrCount:I

    goto :goto_1

    :cond_6
    const/16 v1, 0xb

    if-ne v0, v1, :cond_9

    iget-object v1, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_dtdRootName:Lcom/fasterxml/aalto/in/PName;

    if-eqz v1, :cond_7

    const-string v1, "Duplicate DOCTYPE declaration"

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->throwWfe(Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v1}, Lcom/fasterxml/aalto/in/XmlScanner;->getName()Lcom/fasterxml/aalto/in/PName;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_dtdRootName:Lcom/fasterxml/aalto/in/PName;

    goto :goto_1

    :cond_8
    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0, v3}, Lcom/fasterxml/aalto/in/XmlScanner;->nextFromProlog(Z)I

    move-result v0

    :cond_9
    :goto_1
    if-gez v0, :cond_b

    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_parseState:I

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0, v2}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->handlePrologEoi(Z)I

    move-result v0

    return v0

    :cond_b
    iget-object v1, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v1}, Lcom/fasterxml/aalto/in/XmlScanner;->getName()Lcom/fasterxml/aalto/in/PName;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currName:Lcom/fasterxml/aalto/in/PName;

    iput v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    return v0

    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextTag()I
    .locals 3

    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->next()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_1
    return v0

    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->isWhiteSpace()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Received non-all-whitespace CHARACTERS or CDATA event in nextTag()."

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->throwWfe(Ljava/lang/String;)V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/fasterxml/aalto/impl/ErrorConsts;->tokenTypeDesc(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", instead of START_ELEMENT or END_ELEMENT."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->throwWfe(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public reportInvalidAttrIndex(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    const-string v1, "Illegal attribute index, "

    .line 4
    .line 5
    const-string v2, ", current START_ELEMENT has "

    .line 6
    .line 7
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget v1, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_attrCount:I

    .line 12
    .line 13
    const-string v2, " attributes"

    .line 14
    .line 15
    invoke-static {v2, v1, p1}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

.method public final require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    const/16 v1, 0xc

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_cfgCoalesceText:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_cfgReportTextAsChars:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x4

    .line 18
    :cond_1
    if-eq p1, v0, :cond_2

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "Expected type "

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/fasterxml/aalto/impl/ErrorConsts;->tokenTypeDesc(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, ", current type "

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/fasterxml/aalto/impl/ErrorConsts;->tokenTypeDesc(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->throwWfe(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    const-string p1, ")"

    .line 54
    .line 55
    const/4 v1, 0x2

    .line 56
    const/4 v2, 0x1

    .line 57
    const-string v3, "\'."

    .line 58
    .line 59
    if-eqz p3, :cond_4

    .line 60
    .line 61
    if-eq v0, v2, :cond_3

    .line 62
    .line 63
    if-eq v0, v1, :cond_3

    .line 64
    .line 65
    const/16 v4, 0x9

    .line 66
    .line 67
    if-eq v0, v4, :cond_3

    .line 68
    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v5, "Expected non-null local name, but current token not a START_ELEMENT, END_ELEMENT or ENTITY_REFERENCE (was "

    .line 72
    .line 73
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget v5, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_currToken:I

    .line 77
    .line 78
    invoke-static {v5}, Lcom/fasterxml/aalto/impl/ErrorConsts;->tokenTypeDesc(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {p0, v4}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->throwWfe(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->getLocalName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    if-eq v4, p3, :cond_4

    .line 100
    .line 101
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-nez v5, :cond_4

    .line 106
    .line 107
    const-string v5, "Expected local name \'"

    .line 108
    .line 109
    const-string v6, "\'; current local name \'"

    .line 110
    .line 111
    invoke-static {v5, p3, v6, v4, v3}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    invoke-virtual {p0, p3}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->throwWfe(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    if-eqz p2, :cond_7

    .line 119
    .line 120
    if-eq v0, v2, :cond_5

    .line 121
    .line 122
    if-eq v0, v1, :cond_5

    .line 123
    .line 124
    new-instance p3, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v1, "Expected non-null NS URI, but current token not a START_ELEMENT or END_ELEMENT (was "

    .line 127
    .line 128
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v0}, Lcom/fasterxml/aalto/impl/ErrorConsts;->tokenTypeDesc(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->throwWfe(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->getNamespaceURI()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 153
    .line 154
    .line 155
    move-result p3

    .line 156
    if-nez p3, :cond_6

    .line 157
    .line 158
    if-eqz p1, :cond_7

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    if-lez p2, :cond_7

    .line 165
    .line 166
    new-instance p2, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string p3, "Expected empty namespace, instead have \'"

    .line 169
    .line 170
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    :goto_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->throwWfe(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_6
    if-eq p2, p1, :cond_7

    .line 188
    .line 189
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result p3

    .line 193
    if-nez p3, :cond_7

    .line 194
    .line 195
    const-string p3, "Expected namespace \'"

    .line 196
    .line 197
    const-string v0, "\'; have \'"

    .line 198
    .line 199
    invoke-static {p3, p2, v0, p1, v3}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    goto :goto_0

    .line 204
    :cond_7
    :goto_1
    return-void
.end method

.method public final standaloneSet()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/XmlScanner;->getConfig()Lcom/fasterxml/aalto/in/ReaderConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/ReaderConfig;->getXmlDeclStandalone()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public throwUnexpectedEOI(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected End-of-input"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->throwWfe(Ljava/lang/String;)V

    return-void
.end method

.method public throwWfe(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/fasterxml/aalto/WFCException;

    invoke-virtual {p0}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->getLastCharLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/aalto/WFCException;-><init>(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Aalto stream reader, scanner: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->_scanner:Lcom/fasterxml/aalto/in/XmlScanner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
