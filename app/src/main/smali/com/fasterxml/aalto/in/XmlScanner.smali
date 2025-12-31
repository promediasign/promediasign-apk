.class public abstract Lcom/fasterxml/aalto/in/XmlScanner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/stream/XMLStreamConstants;
.implements Lorg/apache/poi/javax/xml/namespace/NamespaceContext;


# instance fields
.field protected final CDATA_STR:Ljava/lang/String;

.field protected final _attrCollector:Lcom/fasterxml/aalto/in/AttributeCollector;

.field protected _attrCount:I

.field protected final _cfgCoalescing:Z

.field protected _cfgLazyParsing:Z

.field protected final _config:Lcom/fasterxml/aalto/in/ReaderConfig;

.field protected _currElem:Lcom/fasterxml/aalto/in/ElementScope;

.field protected _currNsCount:I

.field protected _currRow:I

.field protected _currToken:I

.field protected _defaultNs:Lcom/fasterxml/aalto/in/NsBinding;

.field protected _depth:I

.field protected _entityPending:Z

.field protected _isEmptyTag:Z

.field protected _lastNsContext:Lcom/fasterxml/aalto/in/FixedNsContext;

.field protected _lastNsDecl:Lcom/fasterxml/aalto/in/NsDeclaration;

.field protected _nameBuffer:[C

.field protected _nsBindMisses:I

.field protected _nsBindingCache:[Lcom/fasterxml/aalto/in/PName;

.field protected _nsBindingCount:I

.field protected _nsBindings:[Lcom/fasterxml/aalto/in/NsBinding;

.field protected _pastBytesOrChars:J

.field protected _publicId:Ljava/lang/String;

.field protected _rowStartOffset:I

.field protected _startColumn:J

.field protected _startRawOffset:J

.field protected _startRow:J

.field protected _systemId:Ljava/lang/String;

.field protected final _textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

.field protected _tokenIncomplete:Z

.field protected _tokenName:Lcom/fasterxml/aalto/in/PName;

.field protected final _xml11:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/aalto/in/ReaderConfig;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CDATA["

    iput-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->CDATA_STR:Ljava/lang/String;

    const/4 v0, 0x7

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_depth:I

    iput-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_entityPending:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nameBuffer:[C

    iput-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenName:Lcom/fasterxml/aalto/in/PName;

    iput-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_isEmptyTag:Z

    iput-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_lastNsDecl:Lcom/fasterxml/aalto/in/NsDeclaration;

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currNsCount:I

    invoke-static {}, Lcom/fasterxml/aalto/in/NsBinding;->createDefaultNs()Lcom/fasterxml/aalto/in/NsBinding;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_defaultNs:Lcom/fasterxml/aalto/in/NsBinding;

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindingCount:I

    iput-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindingCache:[Lcom/fasterxml/aalto/in/PName;

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindMisses:I

    sget-object v1, Lcom/fasterxml/aalto/in/FixedNsContext;->EMPTY_CONTEXT:Lcom/fasterxml/aalto/in/FixedNsContext;

    iput-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_lastNsContext:Lcom/fasterxml/aalto/in/FixedNsContext;

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_attrCount:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_startRow:J

    iput-wide v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_startColumn:J

    iput-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/ReaderConfig;->willCoalesceText()Z

    move-result v1

    iput-boolean v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_cfgCoalescing:Z

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/ReaderConfig;->willParseLazily()Z

    move-result v1

    iput-boolean v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_cfgLazyParsing:Z

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/ReaderConfig;->isXml11()Z

    move-result v1

    iput-boolean v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_xml11:Z

    invoke-static {p1}, Lcom/fasterxml/aalto/util/TextBuilder;->createRecyclableBuffer(Lcom/fasterxml/aalto/in/ReaderConfig;)Lcom/fasterxml/aalto/util/TextBuilder;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    new-instance v1, Lcom/fasterxml/aalto/in/AttributeCollector;

    invoke-direct {v1, p1}, Lcom/fasterxml/aalto/in/AttributeCollector;-><init>(Lcom/fasterxml/aalto/in/ReaderConfig;)V

    iput-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_attrCollector:Lcom/fasterxml/aalto/in/AttributeCollector;

    const/16 v1, 0x3c

    invoke-virtual {p1, v1}, Lcom/fasterxml/aalto/in/ReaderConfig;->allocSmallCBuffer(I)[C

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nameBuffer:[C

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currRow:I

    return-void
.end method

.method private findCurrNsDecl(I)Lcom/fasterxml/aalto/in/NsDeclaration;
    .locals 4

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_lastNsDecl:Lcom/fasterxml/aalto/in/NsDeclaration;

    iget v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_depth:I

    iget v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currNsCount:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, p1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/NsDeclaration;->getLevel()I

    move-result v3

    if-ne v3, v1, :cond_2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/NsDeclaration;->getPrev()Lcom/fasterxml/aalto/in/NsDeclaration;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInvalidNsIndex(I)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public abstract _closeSource()V
.end method

.method public _releaseBuffers()V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fasterxml/aalto/util/TextBuilder;->recycle(Z)V

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nameBuffer:[C

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nameBuffer:[C

    iget-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v1, v0}, Lcom/fasterxml/aalto/in/ReaderConfig;->freeSmallCBuffer([C)V

    :cond_0
    return-void
.end method

.method public final bindName(Lcom/fasterxml/aalto/in/PName;Ljava/lang/String;)Lcom/fasterxml/aalto/in/PName;
    .locals 5

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindingCache:[Lcom/fasterxml/aalto/in/PName;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/PName;->unboundHashCode()I

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/PName;->unboundEquals(Lcom/fasterxml/aalto/in/PName;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindingCount:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindings:[Lcom/fasterxml/aalto/in/NsBinding;

    aget-object v3, v2, v1

    iget-object v4, v3, Lcom/fasterxml/aalto/in/NsBinding;->mPrefix:Ljava/lang/String;

    if-eq v4, p2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    add-int/lit8 p2, v1, -0x1

    aget-object v0, v2, p2

    aput-object v0, v2, v1

    aput-object v3, v2, p2

    :cond_2
    invoke-virtual {p1, v3}, Lcom/fasterxml/aalto/in/PName;->createBoundName(Lcom/fasterxml/aalto/in/NsBinding;)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    iget-object p2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindingCache:[Lcom/fasterxml/aalto/in/PName;

    if-nez p2, :cond_4

    iget p2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindMisses:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindMisses:I

    const/16 v0, 0xa

    if-ge p2, v0, :cond_3

    return-object p1

    :cond_3
    const/16 p2, 0x40

    new-array p2, p2, [Lcom/fasterxml/aalto/in/PName;

    iput-object p2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindingCache:[Lcom/fasterxml/aalto/in/PName;

    :cond_4
    iget-object p2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindingCache:[Lcom/fasterxml/aalto/in/PName;

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/PName;->unboundHashCode()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    aput-object p1, p2, v0

    return-object p1

    :cond_5
    const-string v0, "xml"

    if-ne p2, v0, :cond_6

    sget-object p2, Lcom/fasterxml/aalto/in/NsBinding;->XML_BINDING:Lcom/fasterxml/aalto/in/NsBinding;

    invoke-virtual {p1, p2}, Lcom/fasterxml/aalto/in/PName;->createBoundName(Lcom/fasterxml/aalto/in/NsBinding;)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    return-object p1

    :cond_6
    iget v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindMisses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindMisses:I

    new-instance v0, Lcom/fasterxml/aalto/in/NsBinding;

    invoke-direct {v0, p2}, Lcom/fasterxml/aalto/in/NsBinding;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindingCount:I

    if-nez p2, :cond_7

    const/16 p2, 0x10

    new-array p2, p2, [Lcom/fasterxml/aalto/in/NsBinding;

    iput-object p2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindings:[Lcom/fasterxml/aalto/in/NsBinding;

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindings:[Lcom/fasterxml/aalto/in/NsBinding;

    array-length v2, v1

    if-lt p2, v2, :cond_8

    array-length p2, v1

    invoke-static {v1, p2}, Lcom/fasterxml/aalto/util/DataUtil;->growAnyArrayBy(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/fasterxml/aalto/in/NsBinding;

    iput-object p2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindings:[Lcom/fasterxml/aalto/in/NsBinding;

    :cond_8
    :goto_1
    iget-object p2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindings:[Lcom/fasterxml/aalto/in/NsBinding;

    iget v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindingCount:I

    aput-object v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindingCount:I

    invoke-virtual {p1, v0}, Lcom/fasterxml/aalto/in/PName;->createBoundName(Lcom/fasterxml/aalto/in/NsBinding;)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    return-object p1
.end method

.method public final bindNs(Lcom/fasterxml/aalto/in/PName;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/PName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_defaultNs:Lcom/fasterxml/aalto/in/NsBinding;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/PName;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->findOrCreateBinding(Ljava/lang/String;)Lcom/fasterxml/aalto/in/NsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/NsBinding;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/aalto/in/XmlScanner;->checkImmutableBinding(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/NsBinding;->isImmutable()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    if-ne p2, v1, :cond_2

    const-string v2, "xml"

    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportIllegalNsDecl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v1, "http://www.w3.org/2000/xmlns/"

    if-ne p2, v1, :cond_3

    const-string v2, "xmlns"

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_lastNsDecl:Lcom/fasterxml/aalto/in/NsDeclaration;

    if-eqz v1, :cond_4

    iget v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_depth:I

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/aalto/in/NsDeclaration;->alreadyDeclared(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportDuplicateNsDecl(Ljava/lang/String;)V

    :cond_4
    new-instance v0, Lcom/fasterxml/aalto/in/NsDeclaration;

    iget-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_lastNsDecl:Lcom/fasterxml/aalto/in/NsDeclaration;

    iget v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_depth:I

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/fasterxml/aalto/in/NsDeclaration;-><init>(Lcom/fasterxml/aalto/in/NsBinding;Ljava/lang/String;Lcom/fasterxml/aalto/in/NsDeclaration;I)V

    iput-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_lastNsDecl:Lcom/fasterxml/aalto/in/NsDeclaration;

    return-void
.end method

.method public final checkImmutableBinding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "xml"

    if-ne p1, v0, :cond_0

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportIllegalNsDecl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final close(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->_releaseBuffers()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/ReaderConfig;->willAutoCloseInput()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->_closeSource()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {v0, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final findOrCreateBinding(Ljava/lang/String;)Lcom/fasterxml/aalto/in/NsBinding;
    .locals 5

    iget v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindingCount:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindings:[Lcom/fasterxml/aalto/in/NsBinding;

    aget-object v3, v2, v1

    iget-object v4, v3, Lcom/fasterxml/aalto/in/NsBinding;->mPrefix:Ljava/lang/String;

    if-ne v4, p1, :cond_1

    if-lez v1, :cond_0

    add-int/lit8 p1, v1, -0x1

    aget-object v0, v2, p1

    aput-object v0, v2, v1

    aput-object v3, v2, p1

    :cond_0
    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "xml"

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/fasterxml/aalto/in/NsBinding;->XML_BINDING:Lcom/fasterxml/aalto/in/NsBinding;

    return-object p1

    :cond_3
    const-string v0, "xmlns"

    if-ne p1, v0, :cond_4

    sget-object p1, Lcom/fasterxml/aalto/in/NsBinding;->XMLNS_BINDING:Lcom/fasterxml/aalto/in/NsBinding;

    return-object p1

    :cond_4
    new-instance v0, Lcom/fasterxml/aalto/in/NsBinding;

    invoke-direct {v0, p1}, Lcom/fasterxml/aalto/in/NsBinding;-><init>(Ljava/lang/String;)V

    iget p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindingCount:I

    if-nez p1, :cond_5

    const/16 p1, 0x10

    new-array p1, p1, [Lcom/fasterxml/aalto/in/NsBinding;

    iput-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindings:[Lcom/fasterxml/aalto/in/NsBinding;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindings:[Lcom/fasterxml/aalto/in/NsBinding;

    array-length v2, v1

    if-lt p1, v2, :cond_6

    array-length p1, v1

    invoke-static {v1, p1}, Lcom/fasterxml/aalto/util/DataUtil;->growAnyArrayBy(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/fasterxml/aalto/in/NsBinding;

    iput-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindings:[Lcom/fasterxml/aalto/in/NsBinding;

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindings:[Lcom/fasterxml/aalto/in/NsBinding;

    iget v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindingCount:I

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_nsBindingCount:I

    return-object v0
.end method

.method public abstract finishCData()V
.end method

.method public abstract finishCharacters()V
.end method

.method public abstract finishComment()V
.end method

.method public abstract finishDTD(Z)V
.end method

.method public abstract finishPI()V
.end method

.method public abstract finishToken()V
.end method

.method public final getAttrCount()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_attrCount:I

    return v0
.end method

.method public final getAttrLocalName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_attrCollector:Lcom/fasterxml/aalto/in/AttributeCollector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/AttributeCollector;->getName(I)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/PName;->getLocalName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getAttrNsURI(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_attrCollector:Lcom/fasterxml/aalto/in/AttributeCollector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/AttributeCollector;->getName(I)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/PName;->getNsUri()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getAttrPrefix(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_attrCollector:Lcom/fasterxml/aalto/in/AttributeCollector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/AttributeCollector;->getName(I)Lcom/fasterxml/aalto/in/PName;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/PName;->getPrefix()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getAttrQName(I)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_attrCollector:Lcom/fasterxml/aalto/in/AttributeCollector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/AttributeCollector;->getQName(I)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    return-object p1
.end method

.method public final getAttrType(I)Ljava/lang/String;
    .locals 0

    const-string p1, "CDATA"

    return-object p1
.end method

.method public final getAttrValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_attrCollector:Lcom/fasterxml/aalto/in/AttributeCollector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/AttributeCollector;->getValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getAttrValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    iget v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_attrCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_attrCollector:Lcom/fasterxml/aalto/in/AttributeCollector;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/aalto/in/AttributeCollector;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getConfig()Lcom/fasterxml/aalto/in/ReaderConfig;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    return-object v0
.end method

.method public abstract getCurrentLocation()Lorg/codehaus/stax2/XMLStreamLocation2;
.end method

.method public final getDTDPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_publicId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDTDSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_systemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Lcom/fasterxml/aalto/in/PName;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenName:Lcom/fasterxml/aalto/in/PName;

    return-object v0
.end method

.method public final getNamespacePrefix(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->findCurrNsDecl(I)Lcom/fasterxml/aalto/in/NsDeclaration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/NsDeclaration;->getBinding()Lcom/fasterxml/aalto/in/NsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/fasterxml/aalto/in/NsBinding;->mPrefix:Ljava/lang/String;

    return-object p1
.end method

.method public final getNamespaceURI()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenName:Lcom/fasterxml/aalto/in/PName;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/PName;->getNsUri()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_defaultNs:Lcom/fasterxml/aalto/in/NsBinding;

    iget-object v0, v0, Lcom/fasterxml/aalto/in/NsBinding;->mURI:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public final getNamespaceURI(I)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->findCurrNsDecl(I)Lcom/fasterxml/aalto/in/NsDeclaration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/NsDeclaration;->getBinding()Lcom/fasterxml/aalto/in/NsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/fasterxml/aalto/in/NsBinding;->mURI:Ljava/lang/String;

    return-object p1
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_defaultNs:Lcom/fasterxml/aalto/in/NsBinding;

    iget-object p1, p1, Lcom/fasterxml/aalto/in/NsBinding;->mURI:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1

    :cond_1
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "http://www.w3.org/XML/1998/namespace"

    return-object p1

    :cond_2
    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "http://www.w3.org/2000/xmlns/"

    return-object p1

    :cond_3
    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_lastNsDecl:Lcom/fasterxml/aalto/in/NsDeclaration;

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/NsDeclaration;->hasPrefix(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/NsDeclaration;->getCurrNsURI()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/NsDeclaration;->getPrev()Lcom/fasterxml/aalto/in/NsDeclaration;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_NULL_ARG:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getNonTransientNamespaceContext()Lorg/apache/poi/javax/xml/namespace/NamespaceContext;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_lastNsContext:Lcom/fasterxml/aalto/in/FixedNsContext;

    iget-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_lastNsDecl:Lcom/fasterxml/aalto/in/NsDeclaration;

    invoke-virtual {v0, v1}, Lcom/fasterxml/aalto/in/FixedNsContext;->reuseOrCreate(Lcom/fasterxml/aalto/in/NsDeclaration;)Lcom/fasterxml/aalto/in/FixedNsContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_lastNsContext:Lcom/fasterxml/aalto/in/FixedNsContext;

    return-object v0
.end method

.method public final getNsCount()I
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currNsCount:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_lastNsDecl:Lcom/fasterxml/aalto/in/NsDeclaration;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_depth:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/aalto/in/NsDeclaration;->countDeclsOnLevel(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_7

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "xml"

    return-object p1

    :cond_0
    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "xmlns"

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_defaultNs:Lcom/fasterxml/aalto/in/NsBinding;

    iget-object v0, v0, Lcom/fasterxml/aalto/in/NsBinding;->mURI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, ""

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_lastNsDecl:Lcom/fasterxml/aalto/in/NsDeclaration;

    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/NsDeclaration;->hasNsURI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/NsDeclaration;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_lastNsDecl:Lcom/fasterxml/aalto/in/NsDeclaration;

    :goto_1
    if-eq v2, v0, :cond_4

    invoke-virtual {v2, v1}, Lcom/fasterxml/aalto/in/NsDeclaration;->hasPrefix(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/fasterxml/aalto/in/NsDeclaration;->getPrev()Lcom/fasterxml/aalto/in/NsDeclaration;

    move-result-object v2

    goto :goto_1

    :cond_4
    return-object v1

    :cond_5
    :goto_2
    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/NsDeclaration;->getPrev()Lcom/fasterxml/aalto/in/NsDeclaration;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    return-object p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_NULL_ARG:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 5
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

    if-eqz p1, :cond_a

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/fasterxml/aalto/util/SingletonIterator;

    const-string v0, "xml"

    invoke-direct {p1, v0}, Lcom/fasterxml/aalto/util/SingletonIterator;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/fasterxml/aalto/util/SingletonIterator;

    const-string v0, "xmlns"

    invoke-direct {p1, v0}, Lcom/fasterxml/aalto/util/SingletonIterator;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_defaultNs:Lcom/fasterxml/aalto/in/NsBinding;

    iget-object v0, v0, Lcom/fasterxml/aalto/in/NsBinding;->mURI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_lastNsDecl:Lcom/fasterxml/aalto/in/NsDeclaration;

    :goto_1
    if-eqz v1, :cond_7

    invoke-virtual {v1, p1}, Lcom/fasterxml/aalto/in/NsDeclaration;->hasNsURI(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/fasterxml/aalto/in/NsDeclaration;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_lastNsDecl:Lcom/fasterxml/aalto/in/NsDeclaration;

    :goto_2
    if-eq v3, v1, :cond_4

    invoke-virtual {v3, v2}, Lcom/fasterxml/aalto/in/NsDeclaration;->hasPrefix(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/fasterxml/aalto/in/NsDeclaration;->getPrev()Lcom/fasterxml/aalto/in/NsDeclaration;

    move-result-object v3

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    invoke-virtual {v1}, Lcom/fasterxml/aalto/in/NsDeclaration;->getPrev()Lcom/fasterxml/aalto/in/NsDeclaration;

    move-result-object v1

    goto :goto_1

    :cond_7
    if-nez v0, :cond_8

    invoke-static {}, Lcom/fasterxml/aalto/util/EmptyIterator;->getInstance()Lcom/fasterxml/aalto/util/EmptyIterator;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_9

    new-instance p1, Lcom/fasterxml/aalto/util/SingletonIterator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/fasterxml/aalto/util/SingletonIterator;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_NULL_ARG:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getQName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenName:Lcom/fasterxml/aalto/in/PName;

    iget-object v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_defaultNs:Lcom/fasterxml/aalto/in/NsBinding;

    invoke-virtual {v0, v1}, Lcom/fasterxml/aalto/in/PName;->constructQName(Lcom/fasterxml/aalto/in/NsBinding;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public final getStartLocation()Lorg/codehaus/stax2/XMLStreamLocation2;
    .locals 8

    iget-wide v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_startRow:J

    long-to-int v6, v0

    iget-wide v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_startColumn:J

    long-to-int v7, v0

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/ReaderConfig;->getPublicId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/ReaderConfig;->getSystemId()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_startRawOffset:J

    invoke-static/range {v2 .. v7}, Lcom/fasterxml/aalto/impl/LocationImpl;->fromZeroBased(Ljava/lang/String;Ljava/lang/String;JII)Lcom/fasterxml/aalto/impl/LocationImpl;

    move-result-object v0

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->finishToken()V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/util/TextBuilder;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTextCharacters(I[CII)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->finishToken()V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fasterxml/aalto/util/TextBuilder;->contentsToArray(I[CII)I

    move-result p1

    return p1
.end method

.method public final getTextCharacters()[C
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->finishToken()V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/util/TextBuilder;->getTextBuffer()[C

    move-result-object v0

    return-object v0
.end method

.method public final getTextLength()I
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->finishToken()V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/util/TextBuilder;->size()I

    move-result v0

    return v0
.end method

.method public handleInvalidXmlChar(I)C
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/ReaderConfig;->getIllegalCharHandler()Lcom/fasterxml/aalto/util/IllegalCharHandler;

    .line 4
    .line 5
    .line 6
    int-to-char v0, p1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->throwNullChar()V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "Illegal XML character ("

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/fasterxml/aalto/util/XmlChars;->getCharDesc(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ")"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-boolean v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_xml11:Z

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    const/16 v2, 0x20

    .line 40
    .line 41
    if-ge p1, v2, :cond_1

    .line 42
    .line 43
    const-string p1, " [note: in XML 1.1, it could be included via entity expansion]"

    .line 44
    .line 45
    invoke-static {v1, p1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :cond_1
    invoke-virtual {p0, v1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return v0
.end method

.method public final hasEmptyStack()Z
    .locals 1

    iget v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_depth:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isAttrSpecified(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final isTextWhitespace()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->finishToken()V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_textBuilder:Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/util/TextBuilder;->isAllWhitespace()Z

    move-result v0

    return v0
.end method

.method public abstract loadMore()Z
.end method

.method public final loadMoreGuaranteed()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMore()Z

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
    return-void
.end method

.method public final loadMoreGuaranteed(I)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->loadMore()Z

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
    return-void
.end method

.method public abstract nextFromProlog(Z)I
.end method

.method public abstract nextFromTree()I
.end method

.method public reportDoubleHyphenInComments()V
    .locals 1

    const-string v0, "String \'--\' not allowed in comment (missing \'>\'?)"

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    return-void
.end method

.method public reportDuplicateNsDecl(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "Duplicate namespace declaration for the default namespace"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Duplicate namespace declaration for prefix \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public reportEntityOverflow()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal character entity: value higher than max allowed (0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x10ffff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    return-void
.end method

.method public reportEofInName([CI)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unexpected end-of-input in name (parsing "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    invoke-static {p2}, Lcom/fasterxml/aalto/impl/ErrorConsts;->tokenTypeDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    return-void
.end method

.method public reportIllegalCDataEnd()V
    .locals 1

    const-string v0, "String \']]>\' not allowed in textual content, except as the end marker of CDATA section"

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    return-void
.end method

.method public reportIllegalNsDecl(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal namespace declaration: can not re-bind prefix \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    return-void
.end method

.method public reportIllegalNsDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "Illegal namespace declaration: can not bind URI \'"

    const-string v1, "\' to prefix other than \'"

    const-string v2, "\'"

    .line 2
    invoke-static {v0, p2, v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    return-void
.end method

.method public reportInputProblem(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/fasterxml/aalto/WFCException;

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->getCurrentLocation()Lorg/codehaus/stax2/XMLStreamLocation2;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/aalto/WFCException;-><init>(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v0
.end method

.method public reportInvalidNameChar(II)V
    .locals 2

    const/16 v0, 0x3a

    if-ne p1, v0, :cond_0

    const-string v0, "Invalid colon in name: at most one colon allowed in element/attribute names, and none in PI target or entity names"

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    :cond_0
    const-string v0, ")"

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Invalid name start character (0x"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Invalid name character (0x"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    return-void
.end method

.method public reportInvalidNsIndex(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 2
    .line 3
    const-string v1, "Illegal namespace declaration index, "

    .line 4
    .line 5
    const-string v2, ", current START_ELEMENT/END_ELEMENT has "

    .line 6
    .line 7
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->getNsCount()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " declarations"

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public reportInvalidXmlChar(I)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "Invalid null character"

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x20

    const-string v1, ")"

    if-ge p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid white space character (0x"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid xml content character (0x"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    return-void
.end method

.method public reportMissingPISpace(I)V
    .locals 1

    const-string v0, ": expected either white space, or closing \'?>\'"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->throwUnexpectedChar(ILjava/lang/String;)V

    return-void
.end method

.method public reportMultipleColonsInName()V
    .locals 1

    const-string v0, "Multiple colons not allowed in names"

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    return-void
.end method

.method public reportPrologUnexpChar(ZILjava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/fasterxml/aalto/impl/ErrorConsts;->SUFFIX_IN_PROLOG:Ljava/lang/String;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/fasterxml/aalto/impl/ErrorConsts;->SUFFIX_IN_EPILOG:Ljava/lang/String;

    .line 7
    .line 8
    :goto_0
    if-nez p3, :cond_1

    .line 9
    .line 10
    const/16 p3, 0x26

    .line 11
    .line 12
    if-ne p2, p3, :cond_2

    .line 13
    .line 14
    new-instance p3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, "; no entities allowed"

    .line 23
    .line 24
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/aalto/in/XmlScanner;->throwUnexpectedChar(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-static {p1, p3}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :cond_2
    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->throwUnexpectedChar(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public reportTreeUnexpChar(ILjava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->SUFFIX_IN_TREE:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p2}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->throwUnexpectedChar(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public reportUnboundPrefix(Lcom/fasterxml/aalto/in/PName;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unbound namespace prefix \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/PName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' (for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p2, "attribute"

    goto :goto_0

    :cond_0
    const-string p2, "element"

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " name \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/PName;->getPrefixedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    return-void
.end method

.method public reportUnexpandedEntityInAttr(Lcom/fasterxml/aalto/in/PName;Z)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpanded ENTITY_REFERENCE ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenName:Lcom/fasterxml/aalto/in/PName;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p2, "namespace declaration"

    goto :goto_0

    :cond_0
    const-string p2, "attribute value"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    return-void
.end method

.method public reportUnexpectedEndTag(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end tag: expected </"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    return-void
.end method

.method public abstract skipCData()V
.end method

.method public abstract skipCharacters()Z
.end method

.method public abstract skipCoalescedText()Z
.end method

.method public abstract skipComment()V
.end method

.method public abstract skipPI()V
.end method

.method public abstract skipSpace()V
.end method

.method public final skipToken()Z
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_tokenIncomplete:Z

    iget v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/16 v4, 0x9

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->skipCData()V

    iget-boolean v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_cfgCoalescing:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->skipCoalescedText()Z

    iget-boolean v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_entityPending:Z

    if-eqz v1, :cond_7

    iput v4, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    return v3

    :cond_0
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Internal error, unexpected incomplete token type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    invoke-static {v2}, Lcom/fasterxml/aalto/impl/ErrorConsts;->tokenTypeDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->finishDTD(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->skipSpace()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->skipComment()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->skipCharacters()Z

    move-result v1

    if-eqz v1, :cond_5

    iput v4, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    return v3

    :cond_5
    iget-boolean v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_cfgCoalescing:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->skipCoalescedText()Z

    move-result v1

    if-eqz v1, :cond_7

    iput v4, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_currToken:I

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->skipPI()V

    :cond_7
    :goto_0
    return v0
.end method

.method public throwInvalidSpace(I)V
    .locals 3

    .line 1
    int-to-char v0, p1

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/XmlScanner;->throwNullChar()V

    .line 5
    .line 6
    .line 7
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Illegal character ("

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/fasterxml/aalto/util/XmlChars;->getCharDesc(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, ")"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-boolean v1, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_xml11:Z

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const/16 v1, 0x20

    .line 35
    .line 36
    if-ge p1, v1, :cond_1

    .line 37
    .line 38
    const-string p1, " [note: in XML 1.1, it could be included via entity expansion]"

    .line 39
    .line 40
    invoke-static {v0, p1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :cond_1
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public throwNullChar()V
    .locals 1

    const-string v0, "Illegal character (NULL, unicode 0) encountered: not valid in any content"

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    return-void
.end method

.method public throwUnexpectedChar(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->throwInvalidSpace(I)V

    :cond_0
    int-to-char p1, p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected character "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/fasterxml/aalto/util/XmlChars;->getCharDesc(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInputProblem(Ljava/lang/String;)V

    return-void
.end method

.method public final verifyXmlChar(I)V
    .locals 1

    const v0, 0xd800

    if-lt p1, v0, :cond_2

    const v0, 0xe000

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInvalidXmlChar(I)V

    :cond_0
    const v0, 0xfffe

    if-eq p1, v0, :cond_1

    const v0, 0xffff

    if-ne p1, v0, :cond_3

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/XmlScanner;->reportInvalidXmlChar(I)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x20

    if-ge p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/XmlScanner;->_xml11:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
