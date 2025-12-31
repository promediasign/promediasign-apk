.class public Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;
.super Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private dataObjectFormatMimeTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->dataObjectFormatMimeTypes:Ljava/util/Map;

    return-void
.end method

.method public static insertXChild(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/XmlObject;)V
    .locals 0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/XmlCursor;->moveXml(Lorg/apache/xmlbeans/XmlCursor;)Z

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-void
.end method

.method public static setCertID(Lorg/etsi/uri/x01903/v13/CertIDType;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;ZLjava/security/cert/X509Certificate;)V
    .locals 0

    invoke-interface {p0}, Lorg/etsi/uri/x01903/v13/CertIDType;->addNewIssuerSerial()Lorg/w3/x2000/x09/xmldsig/X509IssuerSerialType;

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, ","

    const-string p2, ", "

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    :goto_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static setDigestAlgAndValue(Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;[BLorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 0

    invoke-interface {p0}, Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;->addNewDigestMethod()Lorg/w3/x2000/x09/xmldsig/DigestMethodType;

    invoke-static {p2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestMethodUri(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/lang/String;

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public addMimeType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->dataObjectFormatMimeTypes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public preSign(Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Reference;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/XMLObject;",
            ">;)V"
        }
    .end annotation

    sget-object p1, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 p2, 0x1

    new-array p3, p2, [Ljava/lang/Object;

    const-string v0, "preSign"

    const/4 v1, 0x0

    aput-object v0, p3, v1

    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument$Factory;->newInstance()Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;

    const/4 p1, 0x0

    throw p1
.end method
