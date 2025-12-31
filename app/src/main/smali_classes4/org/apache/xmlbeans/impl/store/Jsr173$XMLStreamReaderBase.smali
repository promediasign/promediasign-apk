.class abstract Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
.implements Lorg/apache/poi/javax/xml/namespace/NamespaceContext;
.implements Lorg/apache/poi/javax/xml/stream/Location;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Jsr173;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "XMLStreamReaderBase"
.end annotation


# instance fields
.field _column:I

.field _line:I

.field private _locale:Lorg/apache/xmlbeans/impl/store/Locale;

.field _offset:I

.field _uri:Ljava/lang/String;

.field private _version:J


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->_line:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->_column:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->_offset:I

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->_version:J

    return-void
.end method


# virtual methods
.method public final checkChanged()V
    .locals 5

    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->_version:J

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Document changed while streaming"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->checkChanged()V

    return-void
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->checkChanged()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->getStreamCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->getDocProps(Lorg/apache/xmlbeans/impl/store/Cur;Z)Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getEncoding()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCharacterOffset()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->_offset:I

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->_column:I

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->_line:I

    return v0
.end method

.method public getLocation()Lorg/apache/poi/javax/xml/stream/Location;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->checkChanged()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->getStreamCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/store/Jsr173;->class$org$apache$xmlbeans$XmlLineNumber:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.xmlbeans.XmlLineNumber"

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/Jsr173;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/impl/store/Jsr173;->class$org$apache$xmlbeans$XmlLineNumber:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->getBookmark(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/XmlLineNumber;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->_uri:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlLineNumber;->getLine()I

    move-result v1

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->_line:I

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlLineNumber;->getColumn()I

    move-result v1

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->_column:I

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlLineNumber;->getOffset()I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->_offset:I

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->_line:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->_column:I

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public getLocationURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->_uri:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceContext()Lorg/apache/poi/javax/xml/namespace/NamespaceContext;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This version of getNamespaceContext should not be called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->checkChanged()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->getStreamCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->namespaceForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    return-object p1
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->checkChanged()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->getStreamCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->prefixForNamespace(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    return-object p1
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->checkChanged()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->checkChanged()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Property name is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getStreamCur()Lorg/apache/xmlbeans/impl/store/Cur;
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->checkChanged()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->getStreamCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->getDocProps(Lorg/apache/xmlbeans/impl/store/Cur;Z)Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getVersion()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isStandalone()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->checkChanged()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->getStreamCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->getDocProps(Lorg/apache/xmlbeans/impl/store/Cur;Z)Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getStandalone()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public isWhiteSpace()Z
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->checkChanged()V

    invoke-interface {p0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->getCharUtil()Lorg/apache/xmlbeans/impl/store/CharUtil;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->checkChanged()V

    invoke-interface {p0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    invoke-direct {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    invoke-interface {p0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    invoke-direct {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance p1, Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    invoke-direct {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>()V

    throw p1
.end method

.method public standaloneSet()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->checkChanged()V

    const/4 v0, 0x0

    return v0
.end method
