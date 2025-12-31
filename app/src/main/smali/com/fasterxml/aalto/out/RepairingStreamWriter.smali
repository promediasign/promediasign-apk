.class public final Lcom/fasterxml/aalto/out/RepairingStreamWriter;
.super Lcom/fasterxml/aalto/out/StreamWriterBase;
.source "SourceFile"


# instance fields
.field _autoNsSeq:[I

.field final _cfgAutomaticNsPrefix:Ljava/lang/String;

.field _suggestedDefNs:Ljava/lang/String;

.field _suggestedPrefixes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fasterxml/aalto/out/WriterConfig;Lcom/fasterxml/aalto/out/XmlWriter;Lcom/fasterxml/aalto/out/WNameTable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/aalto/out/StreamWriterBase;-><init>(Lcom/fasterxml/aalto/out/WriterConfig;Lcom/fasterxml/aalto/out/XmlWriter;Lcom/fasterxml/aalto/out/WNameTable;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_autoNsSeq:[I

    iput-object p2, p0, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_suggestedDefNs:Ljava/lang/String;

    iput-object p2, p0, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_suggestedPrefixes:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/WriterConfig;->getAutomaticNsPrefix()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_cfgAutomaticNsPrefix:Ljava/lang/String;

    return-void
.end method

.method private final _writeStartAndVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_verifyStartElement(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    invoke-virtual {p0, p1, p4, p3}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeStartTag(Lcom/fasterxml/aalto/out/WName;ZLjava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_verifyStartElement(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {p1, p2}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    invoke-virtual {p0, p1, p4, p3}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeStartTag(Lcom/fasterxml/aalto/out/WName;ZLjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public _generateAttrName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    sget-object v1, Lcom/fasterxml/aalto/out/RepairingStreamWriter$1;->$SwitchMap$com$fasterxml$aalto$out$OutputElement$PrefixState:[I

    iget-object v2, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    iget-object v3, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_rootNsContext:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    invoke-virtual {v2, p1, p3, v3}, Lcom/fasterxml/aalto/out/OutputElement;->checkPrefixValidity(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Lcom/fasterxml/aalto/out/OutputElement$PrefixState;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {v0, p1, p3}, Lcom/fasterxml/aalto/out/OutputElement;->addPrefix(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p3, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    iget-object v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_rootNsContext:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    invoke-virtual {p1, p3, v1}, Lcom/fasterxml/aalto/out/OutputElement;->getExplicitPrefix(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_autoNsSeq:[I

    if-nez p1, :cond_3

    new-array p1, v0, [I

    iput-object p1, p0, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_autoNsSeq:[I

    const/4 v1, 0x0

    aput v0, p1, v1

    :cond_3
    iget-object p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_rootNsContext:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    iget-object v1, p0, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_cfgAutomaticNsPrefix:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_autoNsSeq:[I

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/aalto/out/OutputElement;->generatePrefix(Lorg/apache/poi/javax/xml/namespace/NamespaceContext;Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public final _generateElemPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_suggestedDefNs:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_suggestedPrefixes:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_autoNsSeq:[I

    if-nez p1, :cond_2

    const/4 p1, 0x1

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_autoNsSeq:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    :cond_2
    iget-object p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_rootNsContext:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    iget-object v1, p0, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_cfgAutomaticNsPrefix:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_autoNsSeq:[I

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/aalto/out/OutputElement;->generatePrefix(Lorg/apache/poi/javax/xml/namespace/NamespaceContext;Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public _setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_suggestedPrefixes:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_suggestedPrefixes:Ljava/util/HashMap;

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_suggestedPrefixes:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_suggestedPrefixes:Ljava/util/HashMap;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public _writeStartOrEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {p1, p3}, Lcom/fasterxml/aalto/out/OutputElement;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_writeStartAndVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p3}, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_generateElemPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_writeStartAndVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    :goto_0
    invoke-virtual {p0, p3}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeDefaultNamespace(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {p1, p3}, Lcom/fasterxml/aalto/out/OutputElement;->setDefaultNsURI(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {p2, p1, p3}, Lcom/fasterxml/aalto/out/OutputElement;->addPrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_writeStartAndVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    iget-object p4, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_rootNsContext:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    invoke-virtual {p4, p1, p3, v0}, Lcom/fasterxml/aalto/out/OutputElement;->isPrefixBoundTo(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Z

    move-result p4

    if-nez p4, :cond_4

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_verifyStartElement(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {v0, p2}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p2

    invoke-virtual {p0, p2, p4, p1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeStartTag(Lcom/fasterxml/aalto/out/WName;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/OutputElement;->hasEmptyDefaultNs()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, p3}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeDefaultNamespace(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/fasterxml/aalto/out/OutputElement;->setDefaultNsURI(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public setDefaultNamespace(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iput-object p1, p0, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_suggestedDefNs:Ljava/lang/String;

    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateStartElementOpen:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->WERR_ATTR_NO_ELEM:Ljava/lang/String;

    invoke-static {v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->throwOutputError(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_generateAttrName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {p1, p2}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeAttribute(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;)V

    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateStartElementOpen:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->WERR_ATTR_NO_ELEM:Ljava/lang/String;

    invoke-static {v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->throwOutputError(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p3, p2}, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_generateAttrName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {p1, p3}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1, p4}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeAttribute(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;)V

    return-void
.end method

.method public writeDefaultNamespace(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateStartElementOpen:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->WERR_NS_NO_ELEM:Ljava/lang/String;

    invoke-static {v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->throwOutputError(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/OutputElement;->hasPrefix()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/OutputElement;->setDefaultNsURI(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeDefaultNamespace(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeDefaultNamespace(Ljava/lang/String;)V

    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_writeStartOrEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_writeStartOrEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateStartElementOpen:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->WERR_NS_NO_ELEM:Ljava/lang/String;

    invoke-static {v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->throwOutputError(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    iget-object v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_rootNsContext:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/aalto/out/OutputElement;->isPrefixUnbound(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/aalto/out/OutputElement;->addPrefix(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->writeDefaultNamespace(Ljava/lang/String;)V

    return-void
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_writeStartOrEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/aalto/out/RepairingStreamWriter;->_writeStartOrEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
