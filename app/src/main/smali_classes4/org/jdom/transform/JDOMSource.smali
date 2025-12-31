.class public Lorg/jdom/transform/JDOMSource;
.super Ljavax/xml/transform/sax/SAXSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom/transform/JDOMSource$DocumentReader;,
        Lorg/jdom/transform/JDOMSource$JDOMInputSource;
    }
.end annotation


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: JDOMSource.java,v $ $Revision: 1.20 $ $Date: 2007/11/10 05:29:02 $ $Name:  $"

.field public static final JDOM_FEATURE:Ljava/lang/String; = "http://org.jdom.transform.JDOMSource/feature"


# instance fields
.field private resolver:Lorg/xml/sax/EntityResolver;

.field private xmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    invoke-virtual {p0, p1}, Lorg/jdom/transform/JDOMSource;->setNodes(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom/Document;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    invoke-virtual {p0, p1}, Lorg/jdom/transform/JDOMSource;->setDocument(Lorg/jdom/Document;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom/Document;Lorg/xml/sax/EntityResolver;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    invoke-virtual {p0, p1}, Lorg/jdom/transform/JDOMSource;->setDocument(Lorg/jdom/Document;)V

    iput-object p2, p0, Lorg/jdom/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method public constructor <init>(Lorg/jdom/Element;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lorg/jdom/transform/JDOMSource;->setNodes(Ljava/util/List;)V

    return-void
.end method

.method private buildDocumentReader()Lorg/xml/sax/XMLReader;
    .locals 2

    new-instance v0, Lorg/jdom/transform/JDOMSource$DocumentReader;

    invoke-direct {v0}, Lorg/jdom/transform/JDOMSource$DocumentReader;-><init>()V

    iget-object v1, p0, Lorg/jdom/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/jdom/output/SAXOutputter;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getDocument()Lorg/jdom/Document;
    .locals 2

    invoke-virtual {p0}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v0

    check-cast v0, Lorg/jdom/transform/JDOMSource$JDOMInputSource;

    invoke-virtual {v0}, Lorg/jdom/transform/JDOMSource$JDOMInputSource;->getSource()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/jdom/Document;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/jdom/Document;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNodes()Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v0

    check-cast v0, Lorg/jdom/transform/JDOMSource$JDOMInputSource;

    invoke-virtual {v0}, Lorg/jdom/transform/JDOMSource$JDOMInputSource;->getSource()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    iget-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/jdom/transform/JDOMSource;->buildDocumentReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    :cond_0
    iget-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public setDocument(Lorg/jdom/Document;)V
    .locals 1

    new-instance v0, Lorg/jdom/transform/JDOMSource$JDOMInputSource;

    invoke-direct {v0, p1}, Lorg/jdom/transform/JDOMSource$JDOMInputSource;-><init>(Lorg/jdom/Document;)V

    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public setInputSource(Lorg/xml/sax/InputSource;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setNodes(Ljava/util/List;)V
    .locals 1

    new-instance v0, Lorg/jdom/transform/JDOMSource$JDOMInputSource;

    invoke-direct {v0, p1}, Lorg/jdom/transform/JDOMSource$JDOMInputSource;-><init>(Ljava/util/List;)V

    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 2

    instance-of v0, p1, Lorg/xml/sax/XMLFilter;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/xml/sax/XMLFilter;

    :goto_0
    invoke-interface {v0}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1

    instance-of v1, v1, Lorg/xml/sax/XMLFilter;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/XMLFilter;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/jdom/transform/JDOMSource;->buildDocumentReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    iput-object p1, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
