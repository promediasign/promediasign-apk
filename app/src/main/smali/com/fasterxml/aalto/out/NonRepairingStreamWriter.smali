.class public final Lcom/fasterxml/aalto/out/NonRepairingStreamWriter;
.super Lcom/fasterxml/aalto/out/StreamWriterBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/fasterxml/aalto/out/WriterConfig;Lcom/fasterxml/aalto/out/XmlWriter;Lcom/fasterxml/aalto/out/WNameTable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/aalto/out/StreamWriterBase;-><init>(Lcom/fasterxml/aalto/out/WriterConfig;Lcom/fasterxml/aalto/out/XmlWriter;Lcom/fasterxml/aalto/out/WNameTable;)V

    return-void
.end method


# virtual methods
.method public _setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/aalto/out/OutputElement;->addPrefix(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultNamespace(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/OutputElement;->setDefaultNsURI(Ljava/lang/String;)V

    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateStartElementOpen:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->WERR_ATTR_NO_ELEM:Ljava/lang/String;

    invoke-static {v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->throwOutputError(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    iget-object v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_rootNsContext:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/aalto/out/OutputElement;->getExplicitPrefix(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unbound namespace URI \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->throwOutputError(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {p1, p2}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeAttribute(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;)V

    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-boolean p2, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateStartElementOpen:Z

    if-nez p2, :cond_0

    sget-object p2, Lcom/fasterxml/aalto/impl/ErrorConsts;->WERR_ATTR_NO_ELEM:Ljava/lang/String;

    invoke-static {p2}, Lcom/fasterxml/aalto/out/StreamWriterBase;->throwOutputError(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {p2, p1, p3}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

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
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeDefaultNamespace(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/NonRepairingStreamWriter;->setDefaultNamespace(Ljava/lang/String;)V

    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/OutputElement;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unbound namespace URI \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->throwOutputError(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {v0, p2}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object v0

    const/4 v1, 0x0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {v1, v0, p2}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_verifyStartElement(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p0, v1, p2, p1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeStartTag(Lcom/fasterxml/aalto/out/WName;ZLjava/lang/String;)V

    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_verifyStartElement(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {p1, p2}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    :goto_1
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeStartTag(Lcom/fasterxml/aalto/out/WName;ZLjava/lang/String;)V

    return-void
.end method

.method public writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

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
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/aalto/out/StreamWriterBase;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/aalto/out/NonRepairingStreamWriter;->writeDefaultNamespace(Ljava/lang/String;)V

    return-void
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/OutputElement;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unbound namespace URI \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->throwOutputError(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {p1, p2}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_verifyStartElement(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeStartTag(Lcom/fasterxml/aalto/out/WName;Z)V

    return-void
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_verifyStartElement(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {p1, p2}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    :goto_1
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeStartTag(Lcom/fasterxml/aalto/out/WName;ZLjava/lang/String;)V

    return-void
.end method
