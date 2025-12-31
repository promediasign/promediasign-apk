.class public abstract Lcom/fasterxml/aalto/out/StreamWriterBase;
.super Lorg/codehaus/stax2/ri/Stax2WriterImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/namespace/NamespaceContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/aalto/out/StreamWriterBase$State;
    }
.end annotation


# instance fields
.field protected final _cfgCDataAsText:Z

.field protected _cfgCheckAttrs:Z

.field protected _cfgCheckContent:Z

.field protected _cfgCheckStructure:Z

.field protected final _config:Lcom/fasterxml/aalto/out/WriterConfig;

.field protected _currElem:Lcom/fasterxml/aalto/out/OutputElement;

.field protected _dtdRootElemName:Ljava/lang/String;

.field protected _outputElemPool:Lcom/fasterxml/aalto/out/OutputElement;

.field protected _poolSize:I

.field protected _rootNsContext:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

.field protected _state:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

.field protected _stateAnyOutput:Z

.field protected _stateEmptyElement:Z

.field protected _stateStartElementOpen:Z

.field protected _symbols:Lcom/fasterxml/aalto/out/WNameTable;

.field protected _vldContent:I

.field protected final _xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;


# direct methods
.method public constructor <init>(Lcom/fasterxml/aalto/out/WriterConfig;Lcom/fasterxml/aalto/out/XmlWriter;Lcom/fasterxml/aalto/out/WNameTable;)V
    .locals 2

    invoke-direct {p0}, Lorg/codehaus/stax2/ri/Stax2WriterImpl;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_vldContent:I

    sget-object v0, Lcom/fasterxml/aalto/out/StreamWriterBase$State;->PROLOG:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    iput-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_state:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    invoke-static {}, Lcom/fasterxml/aalto/out/OutputElement;->createRoot()Lcom/fasterxml/aalto/out/OutputElement;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateAnyOutput:Z

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateStartElementOpen:Z

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateEmptyElement:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_dtdRootElemName:Ljava/lang/String;

    iput-object v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_outputElemPool:Lcom/fasterxml/aalto/out/OutputElement;

    iput v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_poolSize:I

    iput-object p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    iput-object p2, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    iput-object p3, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/WriterConfig;->willCheckStructure()Z

    move-result p2

    iput-boolean p2, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_cfgCheckStructure:Z

    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/WriterConfig;->willCheckContent()Z

    move-result p2

    iput-boolean p2, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_cfgCheckContent:Z

    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/WriterConfig;->willCheckAttributes()Z

    move-result p1

    iput-boolean p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_cfgCheckAttrs:Z

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_cfgCDataAsText:Z

    return-void
.end method

.method private final _finishDocument(Z)V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_state:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    sget-object v1, Lcom/fasterxml/aalto/out/StreamWriterBase$State;->EPILOG:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    if-eq v0, v1, :cond_2

    iget-boolean v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_cfgCheckStructure:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/fasterxml/aalto/out/StreamWriterBase$State;->PROLOG:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->WERR_PROLOG_NO_ROOT:Ljava/lang/String;

    invoke-static {v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_reportNwfStructure(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateStartElementOpen:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateEmptyElement:Z

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_closeStartElement(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_state:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    sget-object v1, Lcom/fasterxml/aalto/out/StreamWriterBase$State;->EPILOG:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->writeEndElement()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/WNameTable;->maybeDirty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/WNameTable;->mergeToParent()Z

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;->close(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {v0, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public static _reportNwfContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->throwOutputError(Ljava/lang/String;)V

    return-void
.end method

.method public static _reportNwfContent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->throwOutputError(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static _reportNwfStructure(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->throwOutputError(Ljava/lang/String;)V

    return-void
.end method

.method public static _reportNwfStructure(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->throwOutputError(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static throwOutputError(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/fasterxml/aalto/impl/StreamExceptionBase;

    invoke-direct {v0, p0}, Lcom/fasterxml/aalto/impl/StreamExceptionBase;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static throwOutputError(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->throwOutputError(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _closeStartElement(Z)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateStartElementOpen:Z

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/XmlWriter;->writeStartTagEmptyEnd()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/XmlWriter;->writeStartTagEnd()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/OutputElement;->getParent()Lcom/fasterxml/aalto/out/OutputElement;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/OutputElement;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fasterxml/aalto/out/StreamWriterBase$State;->EPILOG:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    iput-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_state:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    :cond_1
    iget v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_poolSize:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_outputElemPool:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {p1, v0}, Lcom/fasterxml/aalto/out/OutputElement;->addToPool(Lcom/fasterxml/aalto/out/OutputElement;)V

    iput-object p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_outputElemPool:Lcom/fasterxml/aalto/out/OutputElement;

    iget p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_poolSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_poolSize:I

    :cond_2
    return-void

    :goto_1
    new-instance v0, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {v0, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public _reportInvalidContent(I)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v3, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_vldContent:I

    if-eqz v3, :cond_2

    if-eq v3, v2, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Internal error: trying to report invalid content for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_reportValidationProblem(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/fasterxml/aalto/impl/ErrorConsts;->VERR_ANY:Ljava/lang/String;

    iget-object v4, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {v4}, Lcom/fasterxml/aalto/out/OutputElement;->getNameDesc()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/fasterxml/aalto/impl/ErrorConsts;->tokenTypeDesc(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v1

    aput-object p1, v0, v2

    invoke-static {v3, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/fasterxml/aalto/impl/ErrorConsts;->VERR_NON_MIXED:Ljava/lang/String;

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/OutputElement;->getNameDesc()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {p1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/fasterxml/aalto/impl/ErrorConsts;->VERR_EMPTY:Ljava/lang/String;

    iget-object v4, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {v4}, Lcom/fasterxml/aalto/out/OutputElement;->getNameDesc()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/fasterxml/aalto/impl/ErrorConsts;->tokenTypeDesc(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v1

    aput-object p1, v0, v2

    invoke-static {v3, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public _reportValidationProblem(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/codehaus/stax2/validation/XMLValidationProblem;

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->getValidationLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, p1, v2}, Lorg/codehaus/stax2/validation/XMLValidationProblem;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->reportProblem(Lorg/codehaus/stax2/validation/XMLValidationProblem;)V

    return-void
.end method

.method public abstract _setPrefix(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public _verifyRootElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-object p1, Lcom/fasterxml/aalto/out/StreamWriterBase$State;->TREE:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    iput-object p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_state:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    return-void
.end method

.method public _verifyStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateStartElementOpen:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateEmptyElement:Z

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_closeStartElement(Z)V

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_state:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    .line 12
    .line 13
    sget-object v1, Lcom/fasterxml/aalto/out/StreamWriterBase$State;->PROLOG:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_verifyRootElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    sget-object v1, Lcom/fasterxml/aalto/out/StreamWriterBase$State;->EPILOG:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    .line 22
    .line 23
    if-ne v0, v1, :cond_4

    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_cfgCheckStructure:Z

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const-string v0, ":"

    .line 33
    .line 34
    invoke-static {p1, v0, p2}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    :goto_0
    sget-object p1, Lcom/fasterxml/aalto/impl/ErrorConsts;->WERR_PROLOG_SECOND_ROOT:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p1, p2}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_reportNwfStructure(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_3
    sget-object p1, Lcom/fasterxml/aalto/out/StreamWriterBase$State;->TREE:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_state:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    .line 46
    .line 47
    :cond_4
    :goto_1
    return-void
.end method

.method public final _verifyWriteAttr(Lcom/fasterxml/aalto/out/WName;)V
    .locals 0

    return-void
.end method

.method public final _verifyWriteCData()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateAnyOutput:Z

    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateStartElementOpen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateEmptyElement:Z

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_closeStartElement(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_cfgCheckStructure:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->inPrologOrEpilog()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->WERR_PROLOG_CDATA:Ljava/lang/String;

    invoke-static {v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_reportNwfStructure(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final _verifyWriteDTD()V
    .locals 3

    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_cfgCheckStructure:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_state:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    sget-object v1, Lcom/fasterxml/aalto/out/StreamWriterBase$State;->PROLOG:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_dtdRootElemName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    const-string v1, "Trying to write multiple DOCTYPE declarations"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not write DOCTYPE declaration (DTD) when not in prolog any more (state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_state:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; start element(s) written)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public final _writeAttribute(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_cfgCheckAttrs:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_verifyWriteAttr(Lcom/fasterxml/aalto/out/WName;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/aalto/out/XmlWriter;->writeAttribute(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {p2, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public final _writeDefaultNamespace(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    const-string v1, "xmlns"

    invoke-virtual {v0, v1}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    invoke-virtual {v1, v0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;->writeAttribute(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {v0, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final _writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    const-string v1, "xmlns"

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/aalto/out/XmlWriter;->writeAttribute(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {p2, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public _writeStartDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_cfgCheckStructure:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateAnyOutput:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->WERR_DUP_XML_DECL:Ljava/lang/String;

    invoke-static {v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_reportNwfStructure(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateAnyOutput:Z

    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_cfgCheckContent:Z

    const-string v1, "1.1"

    const-string v2, "1.0"

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Illegal version argument (\'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'); should only use \'1.0\' or \'1.1\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_reportNwfContent(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move-object p1, v2

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/WriterConfig;->enableXml11()V

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/XmlWriter;->enableXml11()V

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {v0, p2}, Lcom/fasterxml/aalto/out/WriterConfig;->setActualEncodingIfNotSet(Ljava/lang/String;)V

    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/aalto/out/XmlWriter;->writeXmlDeclaration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {p2, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public _writeStartTag(Lcom/fasterxml/aalto/out/WName;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateAnyOutput:Z

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateStartElementOpen:Z

    iget-object v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_outputElemPool:Lcom/fasterxml/aalto/out/OutputElement;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/aalto/out/OutputElement;->reuseAsChild(Lcom/fasterxml/aalto/out/OutputElement;Lcom/fasterxml/aalto/out/WName;)Lcom/fasterxml/aalto/out/OutputElement;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_outputElemPool:Lcom/fasterxml/aalto/out/OutputElement;

    iget v2, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_poolSize:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_poolSize:I

    iput-object v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/OutputElement;->createChild(Lcom/fasterxml/aalto/out/WName;)Lcom/fasterxml/aalto/out/OutputElement;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;->writeStartTagStart(Lcom/fasterxml/aalto/out/WName;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean p2, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateEmptyElement:Z

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {p2, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public _writeStartTag(Lcom/fasterxml/aalto/out/WName;ZLjava/lang/String;)V
    .locals 3

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateAnyOutput:Z

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateStartElementOpen:Z

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_outputElemPool:Lcom/fasterxml/aalto/out/OutputElement;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {v1, v2, p1, p3}, Lcom/fasterxml/aalto/out/OutputElement;->reuseAsChild(Lcom/fasterxml/aalto/out/OutputElement;Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;)Lcom/fasterxml/aalto/out/OutputElement;

    move-result-object p3

    iput-object p3, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_outputElemPool:Lcom/fasterxml/aalto/out/OutputElement;

    iget p3, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_poolSize:I

    sub-int/2addr p3, v0

    iput p3, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_poolSize:I

    iput-object v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {v0, p1, p3}, Lcom/fasterxml/aalto/out/OutputElement;->createChild(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;)Lcom/fasterxml/aalto/out/OutputElement;

    move-result-object p3

    iput-object p3, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    :goto_0
    :try_start_0
    iget-object p3, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    invoke-virtual {p3, p1}, Lcom/fasterxml/aalto/out/XmlWriter;->writeStartTagStart(Lcom/fasterxml/aalto/out/WName;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean p2, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateEmptyElement:Z

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {p2, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_finishDocument(Z)V

    return-void
.end method

.method public flush()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/XmlWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {v1, v0}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public getLocation()Lorg/codehaus/stax2/XMLStreamLocation2;
    .locals 7

    new-instance v6, Lcom/fasterxml/aalto/impl/LocationImpl;

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/XmlWriter;->getAbsOffset()I

    move-result v3

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/XmlWriter;->getRow()I

    move-result v4

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/XmlWriter;->getColumn()I

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/aalto/impl/LocationImpl;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    return-object v6
.end method

.method public final getNamespaceContext()Lorg/apache/poi/javax/xml/namespace/NamespaceContext;
    .locals 0

    return-object p0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/OutputElement;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_rootNsContext:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lorg/apache/poi/javax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/OutputElement;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_rootNsContext:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lorg/apache/poi/javax/xml/namespace/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    iget-object v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_rootNsContext:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/aalto/out/OutputElement;->getPrefixes(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/aalto/out/WriterConfig;->getProperty(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValidationLocation()Lorg/apache/poi/javax/xml/stream/Location;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->getLocation()Lorg/codehaus/stax2/XMLStreamLocation2;

    move-result-object v0

    return-object v0
.end method

.method public final inPrologOrEpilog()Z
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_state:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    sget-object v1, Lcom/fasterxml/aalto/out/StreamWriterBase$State;->TREE:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reportProblem(Lorg/codehaus/stax2/validation/XMLValidationProblem;)V
    .locals 2

    invoke-virtual {p1}, Lorg/codehaus/stax2/validation/XMLValidationProblem;->getSeverity()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/fasterxml/aalto/ValidationException;->create(Lorg/codehaus/stax2/validation/XMLValidationProblem;)Lcom/fasterxml/aalto/ValidationException;

    move-result-object p1

    throw p1
.end method

.method public abstract setDefaultNamespace(Ljava/lang/String;)V
.end method

.method public setNamespaceContext(Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_state:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    sget-object v1, Lcom/fasterxml/aalto/out/StreamWriterBase$State;->PROLOG:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    if-eq v0, v1, :cond_0

    const-string v0, "Called setNamespaceContext() after having already output root element."

    invoke-static {v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->throwOutputError(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_rootNsContext:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    return-void
.end method

.method public final setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/fasterxml/aalto/out/StreamWriterBase;->setDefaultNamespace(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    if-eqz v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_NS_REDECL_XML:Ljava/lang/String;

    :goto_0
    invoke-static {v0, p2}, Lcom/fasterxml/aalto/out/StreamWriterBase;->throwOutputError(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "http://www.w3.org/2000/xmlns/"

    if-eqz v0, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_NS_REDECL_XMLNS:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_NS_REDECL_XML_URI:Ljava/lang/String;

    :goto_1
    invoke-static {v0, p1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->throwOutputError(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_NS_REDECL_XMLNS_URI:Ljava/lang/String;

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/WriterConfig;->isXml11()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_NS_EMPTY:Ljava/lang/String;

    invoke-static {v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->throwOutputError(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[StreamWriter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", underlying outputter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    if-nez v1, :cond_0

    const-string v1, "NULL"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateStartElementOpen:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->WERR_ATTR_NO_ELEM:Ljava/lang/String;

    invoke-static {v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->throwOutputError(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeAttribute(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;)V

    return-void
.end method

.method public writeCData(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_cfgCDataAsText:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->writeCharacters(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_verifyWriteCData()V

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;->writeCData(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->WERR_CDATA_CONTENT:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_reportNwfContent(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    new-instance v0, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {v0, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public writeCharacters(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateAnyOutput:Z

    iget-boolean v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateStartElementOpen:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateEmptyElement:Z

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_closeStartElement(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->inPrologOrEpilog()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->writeSpace(Ljava/lang/String;)V

    return-void

    :cond_1
    iget v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_vldContent:I

    if-gt v1, v0, :cond_3

    const/4 v0, 0x4

    if-nez v1, :cond_2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_reportInvalidContent(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {v1}, Lcom/fasterxml/aalto/out/WriterConfig;->isXml11()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/fasterxml/aalto/util/TextUtil;->isAllWhitespace(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;->writeCharacters(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {v0, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public writeCharacters([CII)V
    .locals 2

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateAnyOutput:Z

    iget-boolean v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateStartElementOpen:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateEmptyElement:Z

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_closeStartElement(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->inPrologOrEpilog()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/aalto/out/StreamWriterBase;->writeSpace([CII)V

    return-void

    :cond_1
    iget v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_vldContent:I

    if-gt v1, v0, :cond_3

    const/4 v0, 0x4

    if-nez v1, :cond_2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_reportInvalidContent(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {v1}, Lcom/fasterxml/aalto/out/WriterConfig;->isXml11()Z

    move-result v1

    invoke-static {p1, p2, p3, v1}, Lcom/fasterxml/aalto/util/TextUtil;->isAllWhitespace([CIIZ)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    if-lez p3, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/aalto/out/XmlWriter;->writeCharacters([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {p2, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw p2

    :cond_4
    :goto_2
    return-void
.end method

.method public writeComment(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateAnyOutput:Z

    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateStartElementOpen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateEmptyElement:Z

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_closeStartElement(Z)V

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_vldContent:I

    if-nez v0, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_reportInvalidContent(I)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;->writeComment(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_2

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->WERR_COMMENT_CONTENT:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_reportNwfContent(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :goto_1
    new-instance v0, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {v0, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final writeDTD(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_verifyWriteDTD()V

    const-string v0, ""

    iput-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_dtdRootElemName:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;->writeDTD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {v0, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public writeDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_verifyWriteDTD()V

    iput-object p1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_dtdRootElemName:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    iget-object v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {v1, p1}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fasterxml/aalto/out/XmlWriter;->writeDTD(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {p2, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public writeEmptyElement(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_verifyStartElement(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeStartTag(Lcom/fasterxml/aalto/out/WName;Z)V

    return-void
.end method

.method public writeEndDocument()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_finishDocument(Z)V

    return-void
.end method

.method public writeEndElement()V
    .locals 5

    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateStartElementOpen:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateEmptyElement:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateEmptyElement:Z

    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_closeStartElement(Z)V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_state:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    sget-object v3, Lcom/fasterxml/aalto/out/StreamWriterBase$State;->TREE:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    if-eq v0, v3, :cond_1

    const-string v0, "No open start element, when trying to write end element"

    invoke-static {v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_reportNwfStructure(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/OutputElement;->getParent()Lcom/fasterxml/aalto/out/OutputElement;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    iget v3, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_poolSize:I

    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_outputElemPool:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {v0, v3}, Lcom/fasterxml/aalto/out/OutputElement;->addToPool(Lcom/fasterxml/aalto/out/OutputElement;)V

    iput-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_outputElemPool:Lcom/fasterxml/aalto/out/OutputElement;

    iget v3, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_poolSize:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_poolSize:I

    :cond_2
    :try_start_0
    iget-boolean v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateStartElementOpen:Z

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateStartElementOpen:Z

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/XmlWriter;->writeStartTagEmptyEnd()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/OutputElement;->getName()Lcom/fasterxml/aalto/out/WName;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fasterxml/aalto/out/XmlWriter;->writeEndTag(Lcom/fasterxml/aalto/out/WName;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_currElem:Lcom/fasterxml/aalto/out/OutputElement;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/OutputElement;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/fasterxml/aalto/out/StreamWriterBase$State;->EPILOG:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    iput-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_state:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    :cond_4
    return-void

    :goto_1
    new-instance v1, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {v1, v0}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public writeEntityRef(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateAnyOutput:Z

    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateStartElementOpen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateEmptyElement:Z

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_closeStartElement(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_cfgCheckStructure:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->inPrologOrEpilog()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->WERR_PROLOG_ENTITY:Ljava/lang/String;

    invoke-static {v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_reportNwfStructure(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_vldContent:I

    if-nez v0, :cond_2

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_reportInvalidContent(I)V

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    iget-object v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {v1, p1}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;->writeEntityReference(Lcom/fasterxml/aalto/out/WName;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {v0, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public writeProcessingInstruction(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateAnyOutput:Z

    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateStartElementOpen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateEmptyElement:Z

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_closeStartElement(Z)V

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_vldContent:I

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_reportInvalidContent(I)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    iget-object v1, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {v1, p1}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/aalto/out/XmlWriter;->writePI(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_2

    sget-object p2, Lcom/fasterxml/aalto/impl/ErrorConsts;->WERR_PI_CONTENT:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_reportNwfContent(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :goto_1
    new-instance p2, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {p2, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateAnyOutput:Z

    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateStartElementOpen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_stateEmptyElement:Z

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_closeStartElement(Z)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/fasterxml/aalto/out/XmlWriter;->writeRaw(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {v0, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public writeSpace(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;->writeSpace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {v0, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public writeSpace([CII)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_xmlWriter:Lcom/fasterxml/aalto/out/XmlWriter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/aalto/out/XmlWriter;->writeSpace([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {p2, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public writeStartDocument()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/WriterConfig;->getActualEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lcom/fasterxml/aalto/out/WriterConfig;->setActualEncodingIfNotSet(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v1, "1.0"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeStartDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeStartDocument(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/WriterConfig;->getActualEncoding()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeStartDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeStartDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeStartElement(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_verifyStartElement(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fasterxml/aalto/out/StreamWriterBase;->_symbols:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/WNameTable;->findSymbol(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/aalto/out/StreamWriterBase;->_writeStartTag(Lcom/fasterxml/aalto/out/WName;Z)V

    return-void
.end method
