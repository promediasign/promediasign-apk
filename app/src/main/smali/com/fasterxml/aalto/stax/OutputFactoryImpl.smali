.class public final Lcom/fasterxml/aalto/stax/OutputFactoryImpl;
.super Lorg/codehaus/stax2/XMLOutputFactory2;
.source "SourceFile"


# instance fields
.field protected final _config:Lcom/fasterxml/aalto/out/WriterConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/codehaus/stax2/XMLOutputFactory2;-><init>()V

    new-instance v0, Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-direct {v0}, Lcom/fasterxml/aalto/out/WriterConfig;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/aalto/stax/OutputFactoryImpl;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    return-void
.end method

.method private createSW(Ljava/io/OutputStream;Ljava/io/Writer;Ljava/lang/String;Z)Lorg/codehaus/stax2/XMLStreamWriter2;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/aalto/stax/OutputFactoryImpl;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/WriterConfig;->createNonShared()Lcom/fasterxml/aalto/out/WriterConfig;

    move-result-object v0

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    invoke-virtual {v0, p4}, Lcom/fasterxml/aalto/out/WriterConfig;->doAutoCloseOutput(Z)V

    :cond_0
    if-nez p2, :cond_6

    const-string p2, "US-ASCII"

    const-string p4, "ISO-8859-1"

    const-string v1, "UTF-8"

    if-nez p3, :cond_1

    move-object p3, v1

    goto :goto_0

    :cond_1
    if-eq p3, v1, :cond_2

    if-eq p3, p4, :cond_2

    if-eq p3, p2, :cond_2

    invoke-static {p3}, Lcom/fasterxml/aalto/util/CharsetNames;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-virtual {v0, p3}, Lcom/fasterxml/aalto/out/WriterConfig;->setActualEncodingIfNotSet(Ljava/lang/String;)V

    if-ne p3, v1, :cond_3

    :try_start_0
    new-instance p2, Lcom/fasterxml/aalto/out/Utf8XmlWriter;

    invoke-direct {p2, v0, p1}, Lcom/fasterxml/aalto/out/Utf8XmlWriter;-><init>(Lcom/fasterxml/aalto/out/WriterConfig;Ljava/io/OutputStream;)V

    iget-object p1, p0, Lcom/fasterxml/aalto/stax/OutputFactoryImpl;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {p1, p2}, Lcom/fasterxml/aalto/out/WriterConfig;->getUtf8Symbols(Lcom/fasterxml/aalto/out/WNameFactory;)Lcom/fasterxml/aalto/out/WNameTable;

    move-result-object p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    if-ne p3, p4, :cond_4

    new-instance p2, Lcom/fasterxml/aalto/out/Latin1XmlWriter;

    invoke-direct {p2, v0, p1}, Lcom/fasterxml/aalto/out/Latin1XmlWriter;-><init>(Lcom/fasterxml/aalto/out/WriterConfig;Ljava/io/OutputStream;)V

    iget-object p1, p0, Lcom/fasterxml/aalto/stax/OutputFactoryImpl;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {p1, p2}, Lcom/fasterxml/aalto/out/WriterConfig;->getLatin1Symbols(Lcom/fasterxml/aalto/out/WNameFactory;)Lcom/fasterxml/aalto/out/WNameTable;

    move-result-object p1

    goto :goto_3

    :cond_4
    if-ne p3, p2, :cond_5

    new-instance p2, Lcom/fasterxml/aalto/out/AsciiXmlWriter;

    invoke-direct {p2, v0, p1}, Lcom/fasterxml/aalto/out/AsciiXmlWriter;-><init>(Lcom/fasterxml/aalto/out/WriterConfig;Ljava/io/OutputStream;)V

    iget-object p1, p0, Lcom/fasterxml/aalto/stax/OutputFactoryImpl;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {p1, p2}, Lcom/fasterxml/aalto/out/WriterConfig;->getAsciiSymbols(Lcom/fasterxml/aalto/out/WNameFactory;)Lcom/fasterxml/aalto/out/WNameTable;

    move-result-object p1

    goto :goto_3

    :cond_5
    new-instance p2, Ljava/io/OutputStreamWriter;

    invoke-direct {p2, p1, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    new-instance p1, Lcom/fasterxml/aalto/out/CharXmlWriter;

    invoke-direct {p1, v0, p2}, Lcom/fasterxml/aalto/out/CharXmlWriter;-><init>(Lcom/fasterxml/aalto/out/WriterConfig;Ljava/io/Writer;)V

    iget-object p2, p0, Lcom/fasterxml/aalto/stax/OutputFactoryImpl;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {p2, p1}, Lcom/fasterxml/aalto/out/WriterConfig;->getCharSymbols(Lcom/fasterxml/aalto/out/WNameFactory;)Lcom/fasterxml/aalto/out/WNameTable;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p2, Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    invoke-direct {p2, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_6
    if-nez p3, :cond_7

    invoke-static {p2}, Lcom/fasterxml/aalto/util/CharsetNames;->findEncodingFor(Ljava/io/Writer;)Ljava/lang/String;

    move-result-object p3

    :cond_7
    if-eqz p3, :cond_8

    invoke-virtual {v0, p3}, Lcom/fasterxml/aalto/out/WriterConfig;->setActualEncodingIfNotSet(Ljava/lang/String;)V

    :cond_8
    new-instance p1, Lcom/fasterxml/aalto/out/CharXmlWriter;

    invoke-direct {p1, v0, p2}, Lcom/fasterxml/aalto/out/CharXmlWriter;-><init>(Lcom/fasterxml/aalto/out/WriterConfig;Ljava/io/Writer;)V

    iget-object p2, p0, Lcom/fasterxml/aalto/stax/OutputFactoryImpl;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {p2, p1}, Lcom/fasterxml/aalto/out/WriterConfig;->getCharSymbols(Lcom/fasterxml/aalto/out/WNameFactory;)Lcom/fasterxml/aalto/out/WNameTable;

    move-result-object p2

    :goto_2
    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    :goto_3
    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/WriterConfig;->willRepairNamespaces()Z

    move-result p3

    if-eqz p3, :cond_9

    new-instance p3, Lcom/fasterxml/aalto/out/RepairingStreamWriter;

    invoke-direct {p3, v0, p2, p1}, Lcom/fasterxml/aalto/out/RepairingStreamWriter;-><init>(Lcom/fasterxml/aalto/out/WriterConfig;Lcom/fasterxml/aalto/out/XmlWriter;Lcom/fasterxml/aalto/out/WNameTable;)V

    return-object p3

    :cond_9
    new-instance p3, Lcom/fasterxml/aalto/out/NonRepairingStreamWriter;

    invoke-direct {p3, v0, p2, p1}, Lcom/fasterxml/aalto/out/NonRepairingStreamWriter;-><init>(Lcom/fasterxml/aalto/out/WriterConfig;Lcom/fasterxml/aalto/out/XmlWriter;Lcom/fasterxml/aalto/out/WNameTable;)V

    return-object p3
.end method

.method private createSW(Ljavax/xml/transform/Result;)Lorg/codehaus/stax2/XMLStreamWriter2;
    .locals 5

    .line 2
    instance-of v0, p1, Ljavax/xml/transform/stream/StreamResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    instance-of v0, p1, Ljavax/xml/transform/sax/SAXResult;

    if-eqz v0, :cond_6

    check-cast p1, Ljavax/xml/transform/sax/SAXResult;

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXResult;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_5

    move-object p1, v2

    move-object v3, p1

    const/4 v4, 0x1

    :goto_1
    if-eqz v3, :cond_2

    invoke-direct {p0, v3, v2, v2, v4}, Lcom/fasterxml/aalto/stax/OutputFactoryImpl;->createSW(Ljava/io/OutputStream;Ljava/io/Writer;Ljava/lang/String;Z)Lorg/codehaus/stax2/XMLStreamWriter2;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0, v2, p1, v2, v4}, Lcom/fasterxml/aalto/stax/OutputFactoryImpl;->createSW(Ljava/io/OutputStream;Ljava/io/Writer;Ljava/lang/String;Z)Lorg/codehaus/stax2/XMLStreamWriter2;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    :try_start_0
    invoke-static {v0}, Lcom/fasterxml/aalto/util/URLUtil;->urlFromSystemId(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/aalto/util/URLUtil;->outputStreamFromURL(Ljava/net/URL;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p1, v2, v2, v1}, Lcom/fasterxml/aalto/stax/OutputFactoryImpl;->createSW(Ljava/io/OutputStream;Ljava/io/Writer;Ljava/lang/String;Z)Lorg/codehaus/stax2/XMLStreamWriter2;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {v0, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_4
    new-instance p1, Lcom/fasterxml/aalto/impl/StreamExceptionBase;

    const-string v0, "Can not create XMLStreamWriter for passed-in Result -- neither writer, output stream nor system id (to create one) was accessible"

    invoke-direct {p1, v0}, Lcom/fasterxml/aalto/impl/StreamExceptionBase;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lcom/fasterxml/aalto/impl/StreamExceptionBase;

    const-string v0, "Can not create a stream writer for a SAXResult that does not have System Id (support for using SAX input source not implemented)"

    invoke-direct {p1, v0}, Lcom/fasterxml/aalto/impl/StreamExceptionBase;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    instance-of v0, p1, Ljavax/xml/transform/dom/DOMResult;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/OutputFactoryImpl;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/WriterConfig;->createNonShared()Lcom/fasterxml/aalto/out/WriterConfig;

    move-result-object v0

    check-cast p1, Ljavax/xml/transform/dom/DOMResult;

    invoke-static {v0, p1}, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->createFrom(Lcom/fasterxml/aalto/out/WriterConfig;Ljavax/xml/transform/dom/DOMResult;)Lcom/fasterxml/aalto/dom/DOMWriterImpl;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not create XMLStreamWriter for Result type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (unrecognized type)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createXMLEventWriter(Ljava/io/OutputStream;)Lorg/apache/poi/javax/xml/stream/XMLEventWriter;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/aalto/stax/OutputFactoryImpl;->createXMLEventWriter(Ljava/io/OutputStream;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/XMLEventWriter;

    move-result-object p1

    return-object p1
.end method

.method public createXMLEventWriter(Ljava/io/OutputStream;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/XMLEventWriter;
    .locals 3

    .line 2
    new-instance v0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/fasterxml/aalto/stax/OutputFactoryImpl;->createSW(Ljava/io/OutputStream;Ljava/io/Writer;Ljava/lang/String;Z)Lorg/codehaus/stax2/XMLStreamWriter2;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;-><init>(Lorg/codehaus/stax2/XMLStreamWriter2;)V

    return-object v0
.end method

.method public createXMLEventWriter(Ljava/io/Writer;)Lorg/apache/poi/javax/xml/stream/XMLEventWriter;
    .locals 3

    .line 3
    new-instance v0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v1, v2}, Lcom/fasterxml/aalto/stax/OutputFactoryImpl;->createSW(Ljava/io/OutputStream;Ljava/io/Writer;Ljava/lang/String;Z)Lorg/codehaus/stax2/XMLStreamWriter2;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;-><init>(Lorg/codehaus/stax2/XMLStreamWriter2;)V

    return-object v0
.end method

.method public createXMLEventWriter(Ljavax/xml/transform/Result;)Lorg/apache/poi/javax/xml/stream/XMLEventWriter;
    .locals 1

    .line 4
    new-instance v0, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;

    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/stax/OutputFactoryImpl;->createSW(Ljavax/xml/transform/Result;)Lorg/codehaus/stax2/XMLStreamWriter2;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/codehaus/stax2/ri/Stax2EventWriterImpl;-><init>(Lorg/codehaus/stax2/XMLStreamWriter2;)V

    return-object v0
.end method

.method public createXMLStreamWriter(Ljava/io/OutputStream;)Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/aalto/stax/OutputFactoryImpl;->createXMLStreamWriter(Ljava/io/OutputStream;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;

    move-result-object p1

    return-object p1
.end method

.method public createXMLStreamWriter(Ljava/io/OutputStream;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;
    .locals 2

    .line 2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/fasterxml/aalto/stax/OutputFactoryImpl;->createSW(Ljava/io/OutputStream;Ljava/io/Writer;Ljava/lang/String;Z)Lorg/codehaus/stax2/XMLStreamWriter2;

    move-result-object p1

    return-object p1
.end method

.method public createXMLStreamWriter(Ljava/io/Writer;)Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;
    .locals 2

    .line 3
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v0, v1}, Lcom/fasterxml/aalto/stax/OutputFactoryImpl;->createSW(Ljava/io/OutputStream;Ljava/io/Writer;Ljava/lang/String;Z)Lorg/codehaus/stax2/XMLStreamWriter2;

    move-result-object p1

    return-object p1
.end method

.method public createXMLStreamWriter(Ljavax/xml/transform/Result;)Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/stax/OutputFactoryImpl;->createSW(Ljavax/xml/transform/Result;)Lorg/codehaus/stax2/XMLStreamWriter2;

    move-result-object p1

    return-object p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/OutputFactoryImpl;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/aalto/out/WriterConfig;->getProperty(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isPropertySupported(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/OutputFactoryImpl;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/WriterConfig;->isPropertySupported(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/stax/OutputFactoryImpl;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/aalto/out/WriterConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method
