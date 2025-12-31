.class Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/common/ValidatorListener$Event;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElementEventImpl"
.end annotation


# instance fields
.field private _buf:[C

.field private _length:I

.field private _supportForGetTextCharacters:Z

.field private _xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_buf:[C

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_supportForGetTextCharacters:Z

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;-><init>()V

    return-void
.end method

.method public static synthetic access$400(Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->setXMLStreamReader(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method private addTextToBuffer()V
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->ensureBufferLength(I)V

    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_supportForGetTextCharacters:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_buf:[C

    iget v4, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_length:I

    invoke-interface {v2, v1, v3, v4, v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getTextCharacters(I[CII)I

    move-result v2

    iput v2, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_length:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_supportForGetTextCharacters:Z

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_supportForGetTextCharacters:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v2}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_buf:[C

    iget v4, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_length:I

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_length:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_length:I

    :cond_1
    return-void
.end method

.method private ensureBufferLength(I)V
    .locals 4

    iget v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_length:I

    add-int v1, v0, p1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_buf:[C

    array-length v3, v2

    if-le v1, v3, :cond_1

    add-int/2addr p1, v0

    new-array p1, p1, [C

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_buf:[C

    :cond_1
    return-void
.end method

.method private setXMLStreamReader(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    return-void
.end method


# virtual methods
.method public getLocation()Lorg/apache/poi/javax/xml/stream/Location;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    return-object v0
.end method

.method public getLocationAsCursor()Lorg/apache/xmlbeans/XmlCursor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v2}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_length:I

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->addTextToBuffer()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_buf:[C

    iget v3, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_length:I

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public getText(I)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/common/XmlWhitespace;->collapse(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getXsiLoc()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    const-string v1, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v2, "schemaLocation"

    invoke-interface {v0, v1, v2}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXsiNil()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    const-string v1, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v2, "nil"

    invoke-interface {v0, v1, v2}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXsiNoLoc()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    const-string v1, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v2, "noNamespaceSchemaLocation"

    invoke-interface {v0, v1, v2}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXsiType()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    const-string v1, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v2, "type"

    invoke-interface {v0, v1, v2}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public textIsWhitespace()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->isWhiteSpace()Z

    move-result v0

    return v0
.end method
