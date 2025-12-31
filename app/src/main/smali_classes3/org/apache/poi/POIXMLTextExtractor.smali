.class public abstract Lorg/apache/poi/POIXMLTextExtractor;
.super Lorg/apache/poi/POITextExtractor;
.source "SourceFile"


# instance fields
.field private final _document:Lorg/apache/poi/POIXMLDocument;


# direct methods
.method public constructor <init>(Lorg/apache/poi/POIXMLDocument;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/POITextExtractor;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/POIXMLTextExtractor;->_document:Lorg/apache/poi/POIXMLDocument;

    return-void
.end method


# virtual methods
.method public checkMaxTextSize(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    add-int/2addr p2, p1

    .line 13
    int-to-long v0, p2

    .line 14
    invoke-static {}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->getMaxTextSize()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    cmp-long p1, v0, v2

    .line 19
    .line 20
    if-gtz p1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "The text would exceed the max allowed overall size of extracted text. By default this is prevented as some documents may exhaust available memory and it may indicate that the file is used to inflate memory usage and thus could pose a security risk. You can adjust this limit via ZipSecureFile.setMaxTextSize() if you need to work with files which have a lot of text. Size: "

    .line 26
    .line 27
    const-string v1, ", limit: MAX_TEXT_SIZE: "

    .line 28
    .line 29
    invoke-static {p2, v0, v1}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->getMaxTextSize()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLTextExtractor;->_document:Lorg/apache/poi/POIXMLDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/POITextExtractor;->close()V

    return-void
.end method

.method public getCoreProperties()Lorg/apache/poi/POIXMLProperties$CoreProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLTextExtractor;->_document:Lorg/apache/poi/POIXMLDocument;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocument;->getProperties()Lorg/apache/poi/POIXMLProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLProperties;->getCoreProperties()Lorg/apache/poi/POIXMLProperties$CoreProperties;

    move-result-object v0

    return-object v0
.end method

.method public getCustomProperties()Lorg/apache/poi/POIXMLProperties$CustomProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLTextExtractor;->_document:Lorg/apache/poi/POIXMLDocument;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocument;->getProperties()Lorg/apache/poi/POIXMLProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLProperties;->getCustomProperties()Lorg/apache/poi/POIXMLProperties$CustomProperties;

    move-result-object v0

    return-object v0
.end method

.method public final getDocument()Lorg/apache/poi/POIXMLDocument;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLTextExtractor;->_document:Lorg/apache/poi/POIXMLDocument;

    return-object v0
.end method

.method public getExtendedProperties()Lorg/apache/poi/POIXMLProperties$ExtendedProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLTextExtractor;->_document:Lorg/apache/poi/POIXMLDocument;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocument;->getProperties()Lorg/apache/poi/POIXMLProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLProperties;->getExtendedProperties()Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetadataTextExtractor()Lorg/apache/poi/POITextExtractor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLTextExtractor;->getMetadataTextExtractor()Lorg/apache/poi/POIXMLPropertiesTextExtractor;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataTextExtractor()Lorg/apache/poi/POIXMLPropertiesTextExtractor;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/POIXMLPropertiesTextExtractor;

    iget-object v1, p0, Lorg/apache/poi/POIXMLTextExtractor;->_document:Lorg/apache/poi/POIXMLDocument;

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLPropertiesTextExtractor;-><init>(Lorg/apache/poi/POIXMLDocument;)V

    return-object v0
.end method

.method public getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLTextExtractor;->_document:Lorg/apache/poi/POIXMLDocument;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    return-object v0
.end method
