.class final Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/common/ValidatorListener$Event;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttributeEventImpl"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _attIndex:I

.field private _xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->class$org$apache$xmlbeans$impl$validator$ValidatingXMLStreamReader:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.validator.ValidatingXMLStreamReader"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->class$org$apache$xmlbeans$impl$validator$ValidatingXMLStreamReader:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->$assertionsDisabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;-><init>()V

    return-void
.end method

.method public static synthetic access$500(Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->setXMLStreamReader(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method public static synthetic access$700(Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->setAttributeIndex(I)V

    return-void
.end method

.method private setAttributeIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->_attIndex:I

    return-void
.end method

.method private setXMLStreamReader(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    return-void
.end method


# virtual methods
.method public getLocation()Lorg/apache/poi/javax/xml/stream/Location;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

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
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->isStartElement()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Not on Start Element."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    iget v1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->_attIndex:I

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/javax/xml/namespace/QName;

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    iget v3, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->_attIndex:I

    invoke-interface {v2, v3}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->isStartElement()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Not on Start Element."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->isStartElement()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Not on Start Element."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    iget v1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->_attIndex:I

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 2

    .line 2
    sget-boolean v0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->isStartElement()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Not on Start Element."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    iget v1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->_attIndex:I

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/common/XmlWhitespace;->collapse(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getXsiLoc()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getXsiNil()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getXsiNoLoc()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getXsiType()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public textIsWhitespace()Z
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
