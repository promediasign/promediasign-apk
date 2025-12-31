.class public Lorg/apache/poi/poifs/crypt/dsig/facets/Office2010SignatureFacet;
.super Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;-><init>()V

    return-void
.end method


# virtual methods
.method public postSign(Lorg/w3c/dom/Document;)V
    .locals 2

    const-string v0, "http://uri.etsi.org/01903/v1.3.2#"

    const-string v1, "QualifyingProperties"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance p1, Ljavax/xml/crypto/MarshalException;

    const-string v0, "no XAdES-BES extension present"

    invoke-direct {p1, v0}, Ljavax/xml/crypto/MarshalException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType$Factory;->parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/XmlOptions;)Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    throw p1

    :catch_0
    move-exception p1

    new-instance v0, Ljavax/xml/crypto/MarshalException;

    invoke-direct {v0, p1}, Ljavax/xml/crypto/MarshalException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
