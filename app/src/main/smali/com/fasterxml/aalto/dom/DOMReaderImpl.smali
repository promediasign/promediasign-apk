.class public Lcom/fasterxml/aalto/dom/DOMReaderImpl;
.super Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;
.source "SourceFile"


# instance fields
.field protected final _config:Lcom/fasterxml/aalto/in/ReaderConfig;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/dom/DOMSource;Lcom/fasterxml/aalto/in/ReaderConfig;)V
    .locals 2

    invoke-virtual {p2}, Lcom/fasterxml/aalto/in/ReaderConfig;->willSupportNamespaces()Z

    move-result v0

    invoke-virtual {p2}, Lcom/fasterxml/aalto/in/ReaderConfig;->willCoalesceText()Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;-><init>(Ljavax/xml/transform/dom/DOMSource;ZZ)V

    iput-object p2, p0, Lcom/fasterxml/aalto/dom/DOMReaderImpl;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {p2}, Lcom/fasterxml/aalto/in/ReaderConfig;->hasInternNamesBeenEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/fasterxml/aalto/in/ReaderConfig;->willInternNames()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->setInternNames(Z)V

    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/aalto/in/ReaderConfig;->hasInternNsURIsBeenEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/fasterxml/aalto/in/ReaderConfig;->willInternNsURIs()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->setInternNsURIs(Z)V

    :cond_1
    return-void
.end method

.method public static createFrom(Ljavax/xml/transform/dom/DOMSource;Lcom/fasterxml/aalto/in/ReaderConfig;)Lcom/fasterxml/aalto/dom/DOMReaderImpl;
    .locals 1

    new-instance v0, Lcom/fasterxml/aalto/dom/DOMReaderImpl;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/aalto/dom/DOMReaderImpl;-><init>(Ljavax/xml/transform/dom/DOMSource;Lcom/fasterxml/aalto/in/ReaderConfig;)V

    return-object v0
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/fasterxml/aalto/dom/DOMReaderImpl;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/aalto/in/ReaderConfig;->getProperty(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public throwStreamException(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)V
    .locals 1

    new-instance v0, Lcom/fasterxml/aalto/WFCException;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/aalto/WFCException;-><init>(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v0
.end method
