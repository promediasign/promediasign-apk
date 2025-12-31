.class public final Lcom/fasterxml/aalto/stax/InputFactoryImpl;
.super Lcom/fasterxml/aalto/AsyncXMLInputFactory;
.source "SourceFile"


# instance fields
.field protected _allocator:Lorg/apache/poi/javax/xml/stream/util/XMLEventAllocator;

.field final _config:Lcom/fasterxml/aalto/in/ReaderConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/fasterxml/aalto/AsyncXMLInputFactory;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->_allocator:Lorg/apache/poi/javax/xml/stream/util/XMLEventAllocator;

    new-instance v0, Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-direct {v0}, Lcom/fasterxml/aalto/in/ReaderConfig;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    return-void
.end method


# virtual methods
.method public constructER(Lorg/codehaus/stax2/XMLStreamReader2;)Lorg/codehaus/stax2/XMLEventReader2;
    .locals 2

    new-instance v0, Lcom/fasterxml/aalto/evt/EventReaderImpl;

    invoke-virtual {p0}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->createEventAllocator()Lorg/apache/poi/javax/xml/stream/util/XMLEventAllocator;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/aalto/evt/EventReaderImpl;-><init>(Lorg/apache/poi/javax/xml/stream/util/XMLEventAllocator;Lorg/codehaus/stax2/XMLStreamReader2;)V

    return-object v0
.end method

.method public constructSR(Ljava/io/InputStream;Ljava/lang/String;Z)Lorg/codehaus/stax2/XMLStreamReader2;
    .locals 6

    .line 1
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->getNonSharedConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/fasterxml/aalto/in/ReaderConfig;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->construct(Lcom/fasterxml/aalto/in/ReaderConfig;Ljava/io/InputStream;)Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->construct(Lcom/fasterxml/aalto/in/InputBootstrapper;)Lcom/fasterxml/aalto/stax/StreamReaderImpl;

    move-result-object p1

    return-object p1
.end method

.method public constructSR(Ljava/lang/String;Ljava/io/InputStream;Z)Lorg/codehaus/stax2/XMLStreamReader2;
    .locals 6

    .line 2
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->getNonSharedConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/fasterxml/aalto/in/ReaderConfig;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->construct(Lcom/fasterxml/aalto/in/ReaderConfig;Ljava/io/InputStream;)Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->construct(Lcom/fasterxml/aalto/in/InputBootstrapper;)Lcom/fasterxml/aalto/stax/StreamReaderImpl;

    move-result-object p1

    return-object p1
.end method

.method public constructSR(Ljava/lang/String;Ljava/io/Reader;Z)Lorg/codehaus/stax2/XMLStreamReader2;
    .locals 6

    .line 3
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->getNonSharedConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/fasterxml/aalto/in/ReaderConfig;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->construct(Lcom/fasterxml/aalto/in/ReaderConfig;Ljava/io/Reader;)Lcom/fasterxml/aalto/in/CharSourceBootstrapper;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->construct(Lcom/fasterxml/aalto/in/InputBootstrapper;)Lcom/fasterxml/aalto/stax/StreamReaderImpl;

    move-result-object p1

    return-object p1
.end method

.method public constructSR(Ljavax/xml/transform/Source;Z)Lorg/codehaus/stax2/XMLStreamReader2;
    .locals 12

    .line 4
    instance-of v0, p1, Ljavax/xml/transform/stream/StreamSource;

    const/4 v1, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v1

    :cond_0
    move-object v7, v2

    move-object v9, v5

    goto :goto_1

    :cond_1
    instance-of v0, p1, Ljavax/xml/transform/sax/SAXSource;

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    :cond_2
    move-object p1, v1

    move-object v1, v3

    goto :goto_0

    :cond_3
    move-object p1, v1

    move-object v2, v3

    :goto_0
    move-object v3, v1

    move-object v7, v2

    move-object v9, v5

    move-object v1, p1

    :goto_1
    const/4 v11, 0x0

    if-eqz v3, :cond_4

    move-object v6, p0

    move-object v8, v0

    move v10, p2

    invoke-virtual/range {v6 .. v11}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->getNonSharedConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/fasterxml/aalto/in/ReaderConfig;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->construct(Lcom/fasterxml/aalto/in/ReaderConfig;Ljava/io/InputStream;)Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->construct(Lcom/fasterxml/aalto/in/InputBootstrapper;)Lcom/fasterxml/aalto/stax/StreamReaderImpl;

    move-result-object p1

    return-object p1

    :cond_4
    if-eqz v1, :cond_5

    move-object v6, p0

    move-object v8, v0

    move v10, p2

    invoke-virtual/range {v6 .. v11}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->getNonSharedConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/fasterxml/aalto/in/ReaderConfig;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/fasterxml/aalto/in/CharSourceBootstrapper;->construct(Lcom/fasterxml/aalto/in/ReaderConfig;Ljava/io/Reader;)Lcom/fasterxml/aalto/in/CharSourceBootstrapper;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->construct(Lcom/fasterxml/aalto/in/InputBootstrapper;)Lcom/fasterxml/aalto/stax/StreamReaderImpl;

    move-result-object p1

    return-object p1

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    const/4 v11, 0x1

    move-object v6, p0

    move-object v8, v0

    move v10, p2

    invoke-virtual/range {v6 .. v11}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->getNonSharedConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/fasterxml/aalto/in/ReaderConfig;

    move-result-object p1

    :try_start_0
    invoke-static {v0}, Lcom/fasterxml/aalto/util/URLUtil;->urlFromSystemId(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p2

    invoke-static {p2}, Lcom/fasterxml/aalto/util/URLUtil;->inputStreamFromURL(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;->construct(Lcom/fasterxml/aalto/in/ReaderConfig;Ljava/io/InputStream;)Lcom/fasterxml/aalto/in/ByteSourceBootstrapper;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/aalto/stax/StreamReaderImpl;->construct(Lcom/fasterxml/aalto/in/InputBootstrapper;)Lcom/fasterxml/aalto/stax/StreamReaderImpl;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {p2, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw p2

    :cond_6
    new-instance p1, Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    const-string p2, "Can not create Stax reader for the Source passed -- neither reader, input stream nor system id was accessible; can not use other types of sources (like embedded SAX streams)"

    invoke-direct {p1, p2}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    instance-of v0, p1, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v0, :cond_8

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->getNonSharedConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/fasterxml/aalto/in/ReaderConfig;

    move-result-object p2

    check-cast p1, Ljavax/xml/transform/dom/DOMSource;

    invoke-static {p1, p2}, Lcom/fasterxml/aalto/dom/DOMReaderImpl;->createFrom(Ljavax/xml/transform/dom/DOMSource;Lcom/fasterxml/aalto/in/ReaderConfig;)Lcom/fasterxml/aalto/dom/DOMReaderImpl;

    move-result-object p1

    return-object p1

    :cond_8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can not instantiate StAX reader for XML source type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (unrecognized type)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public createEventAllocator()Lorg/apache/poi/javax/xml/stream/util/XMLEventAllocator;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->_allocator:Lorg/apache/poi/javax/xml/stream/util/XMLEventAllocator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/util/XMLEventAllocator;->newInstance()Lorg/apache/poi/javax/xml/stream/util/XMLEventAllocator;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/ReaderConfig;->willPreserveLocation()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/fasterxml/aalto/evt/EventAllocatorImpl;->getDefaultInstance()Lcom/fasterxml/aalto/evt/EventAllocatorImpl;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/fasterxml/aalto/evt/EventAllocatorImpl;->getFastInstance()Lcom/fasterxml/aalto/evt/EventAllocatorImpl;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public createFilteredReader(Lorg/apache/poi/javax/xml/stream/XMLEventReader;Lorg/apache/poi/javax/xml/stream/EventFilter;)Lorg/apache/poi/javax/xml/stream/XMLEventReader;
    .locals 1

    .line 1
    new-instance v0, Lorg/codehaus/stax2/ri/evt/Stax2FilteredEventReader;

    invoke-static {p1}, Lorg/codehaus/stax2/ri/evt/Stax2EventReaderAdapter;->wrapIfNecessary(Lorg/apache/poi/javax/xml/stream/XMLEventReader;)Lorg/codehaus/stax2/XMLEventReader2;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/codehaus/stax2/ri/evt/Stax2FilteredEventReader;-><init>(Lorg/codehaus/stax2/XMLEventReader2;Lorg/apache/poi/javax/xml/stream/EventFilter;)V

    return-object v0
.end method

.method public createFilteredReader(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/poi/javax/xml/stream/StreamFilter;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
    .locals 1

    .line 2
    new-instance v0, Lorg/codehaus/stax2/ri/Stax2FilteredStreamReader;

    invoke-direct {v0, p1, p2}, Lorg/codehaus/stax2/ri/Stax2FilteredStreamReader;-><init>(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/poi/javax/xml/stream/StreamFilter;)V

    invoke-interface {p2, v0}, Lorg/apache/poi/javax/xml/stream/StreamFilter;->accept(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lorg/codehaus/stax2/ri/Stax2FilteredStreamReader;->next()I

    :cond_0
    return-object v0
.end method

.method public createXMLEventReader(Ljava/io/InputStream;)Lorg/apache/poi/javax/xml/stream/XMLEventReader;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->createXMLEventReader(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/XMLEventReader;

    move-result-object p1

    return-object p1
.end method

.method public createXMLEventReader(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/XMLEventReader;
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->constructSR(Ljava/io/InputStream;Ljava/lang/String;Z)Lorg/codehaus/stax2/XMLStreamReader2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->constructER(Lorg/codehaus/stax2/XMLStreamReader2;)Lorg/codehaus/stax2/XMLEventReader2;

    move-result-object p1

    return-object p1
.end method

.method public createXMLEventReader(Ljava/io/Reader;)Lorg/apache/poi/javax/xml/stream/XMLEventReader;
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->createXMLEventReader(Ljava/lang/String;Ljava/io/Reader;)Lorg/apache/poi/javax/xml/stream/XMLEventReader;

    move-result-object p1

    return-object p1
.end method

.method public createXMLEventReader(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/javax/xml/stream/XMLEventReader;
    .locals 1

    .line 4
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->constructSR(Ljava/lang/String;Ljava/io/InputStream;Z)Lorg/codehaus/stax2/XMLStreamReader2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->constructER(Lorg/codehaus/stax2/XMLStreamReader2;)Lorg/codehaus/stax2/XMLEventReader2;

    move-result-object p1

    return-object p1
.end method

.method public createXMLEventReader(Ljava/lang/String;Ljava/io/Reader;)Lorg/apache/poi/javax/xml/stream/XMLEventReader;
    .locals 1

    .line 5
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->constructSR(Ljava/lang/String;Ljava/io/Reader;Z)Lorg/codehaus/stax2/XMLStreamReader2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->constructER(Lorg/codehaus/stax2/XMLStreamReader2;)Lorg/codehaus/stax2/XMLEventReader2;

    move-result-object p1

    return-object p1
.end method

.method public createXMLEventReader(Ljavax/xml/transform/Source;)Lorg/apache/poi/javax/xml/stream/XMLEventReader;
    .locals 1

    .line 6
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->constructSR(Ljavax/xml/transform/Source;Z)Lorg/codehaus/stax2/XMLStreamReader2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->constructER(Lorg/codehaus/stax2/XMLStreamReader2;)Lorg/codehaus/stax2/XMLEventReader2;

    move-result-object p1

    return-object p1
.end method

.method public createXMLEventReader(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Lorg/apache/poi/javax/xml/stream/XMLEventReader;
    .locals 0

    .line 7
    invoke-static {p1}, Lorg/codehaus/stax2/ri/Stax2ReaderAdapter;->wrapIfNecessary(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Lorg/codehaus/stax2/XMLStreamReader2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->constructER(Lorg/codehaus/stax2/XMLStreamReader2;)Lorg/codehaus/stax2/XMLEventReader2;

    move-result-object p1

    return-object p1
.end method

.method public createXMLStreamReader(Ljava/io/InputStream;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->constructSR(Ljava/io/InputStream;Ljava/lang/String;Z)Lorg/codehaus/stax2/XMLStreamReader2;

    move-result-object p1

    return-object p1
.end method

.method public createXMLStreamReader(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->constructSR(Ljava/io/InputStream;Ljava/lang/String;Z)Lorg/codehaus/stax2/XMLStreamReader2;

    move-result-object p1

    return-object p1
.end method

.method public createXMLStreamReader(Ljava/io/Reader;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
    .locals 2

    .line 3
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->constructSR(Ljava/lang/String;Ljava/io/Reader;Z)Lorg/codehaus/stax2/XMLStreamReader2;

    move-result-object p1

    return-object p1
.end method

.method public createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->constructSR(Ljava/lang/String;Ljava/io/InputStream;Z)Lorg/codehaus/stax2/XMLStreamReader2;

    move-result-object p1

    return-object p1
.end method

.method public createXMLStreamReader(Ljava/lang/String;Ljava/io/Reader;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->constructSR(Ljava/lang/String;Ljava/io/Reader;Z)Lorg/codehaus/stax2/XMLStreamReader2;

    move-result-object p1

    return-object p1
.end method

.method public createXMLStreamReader(Ljavax/xml/transform/Source;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
    .locals 1

    .line 6
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->constructSR(Ljavax/xml/transform/Source;Z)Lorg/codehaus/stax2/XMLStreamReader2;

    move-result-object p1

    return-object p1
.end method

.method public getEventAllocator()Lorg/apache/poi/javax/xml/stream/util/XMLEventAllocator;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->_allocator:Lorg/apache/poi/javax/xml/stream/util/XMLEventAllocator;

    return-object v0
.end method

.method public getNonSharedConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/fasterxml/aalto/in/ReaderConfig;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v0, p2, p1, p3}, Lcom/fasterxml/aalto/in/ReaderConfig;->createNonShared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/aalto/in/ReaderConfig;

    move-result-object p1

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/fasterxml/aalto/in/ReaderConfig;->doParseLazily(Z)V

    :cond_0
    if-eqz p5, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/fasterxml/aalto/in/ReaderConfig;->doAutoCloseInput(Z)V

    :cond_1
    return-object p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/aalto/in/ReaderConfig;->getProperty(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getXMLReporter()Lorg/apache/poi/javax/xml/stream/XMLReporter;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/ReaderConfig;->getXMLReporter()Lorg/apache/poi/javax/xml/stream/XMLReporter;

    move-result-object v0

    return-object v0
.end method

.method public getXMLResolver()Lorg/apache/poi/javax/xml/stream/XMLResolver;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/ReaderConfig;->getXMLResolver()Lorg/apache/poi/javax/xml/stream/XMLResolver;

    move-result-object v0

    return-object v0
.end method

.method public isPropertySupported(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/ReaderConfig;->isPropertySupported(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setEventAllocator(Lorg/apache/poi/javax/xml/stream/util/XMLEventAllocator;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->_allocator:Lorg/apache/poi/javax/xml/stream/util/XMLEventAllocator;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/aalto/in/ReaderConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setXMLReporter(Lorg/apache/poi/javax/xml/stream/XMLReporter;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/ReaderConfig;->setXMLReporter(Lorg/apache/poi/javax/xml/stream/XMLReporter;)V

    return-void
.end method

.method public setXMLResolver(Lorg/apache/poi/javax/xml/stream/XMLResolver;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/InputFactoryImpl;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/ReaderConfig;->setXMLResolver(Lorg/apache/poi/javax/xml/stream/XMLResolver;)V

    return-void
.end method
