.class public Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;
.super Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;-><init>()V

    return-void
.end method


# virtual methods
.method public postSign(Lorg/w3c/dom/Document;)V
    .locals 10

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "postSign"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    const-string v0, "Object"

    const-string v2, "http://www.w3.org/2000/09/xmldsig#"

    invoke-interface {p1, v2, v0}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getKeyInfoFactory()Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSigningCertificateChain()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v8}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->isIncludeKeyValue()Z

    move-result v8

    if-eqz v8, :cond_1

    :try_start_0
    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;->newKeyValue(Ljava/security/PublicKey;)Ljavax/xml/crypto/dsig/keyinfo/KeyValue;

    move-result-object v8
    :try_end_0
    .catch Ljava/security/KeyException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "key exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_1
    iget-object v8, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v8}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->isIncludeIssuerSerial()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;->newX509IssuerSerial(Ljava/lang/String;Ljava/math/BigInteger;)Ljavax/xml/crypto/dsig/keyinfo/X509IssuerSerial;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v8, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v8}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->isIncludeEntireCertificateChain()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v6, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSigningCertificateChain()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v3, v5}, Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;->newX509Data(Ljava/util/List;)Ljavax/xml/crypto/dsig/keyinfo/X509Data;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v3, v7}, Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;->newKeyInfo(Ljava/util/List;)Ljavax/xml/crypto/dsig/keyinfo/KeyInfo;

    move-result-object v3

    check-cast v3, Lorg/apache/jcp/xml/dsig/internal/dom/DOMKeyInfo;

    new-instance v5, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet$1;

    invoke-direct {v5, p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet$1;-><init>(Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;)V

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    new-instance v7, Ljavax/xml/crypto/dsig/dom/DOMSignContext;

    if-nez v0, :cond_5

    invoke-direct {v7, v5, v6}, Ljavax/xml/crypto/dsig/dom/DOMSignContext;-><init>(Ljava/security/Key;Lorg/w3c/dom/Node;)V

    goto :goto_3

    :cond_5
    invoke-direct {v7, v5, v6, v0}, Ljavax/xml/crypto/dsig/dom/DOMSignContext;-><init>(Ljava/security/Key;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    :goto_3
    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getNamespacePrefixes()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v9, v8}, Ljavax/xml/crypto/dsig/dom/DOMSignContext;->putNamespacePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    :cond_6
    new-instance v5, Ljavax/xml/crypto/dom/DOMStructure;

    invoke-direct {v5, v6}, Ljavax/xml/crypto/dom/DOMStructure;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v3, v5, v7}, Lorg/apache/jcp/xml/dsig/internal/dom/DOMKeyInfo;->marshal(Ljavax/xml/crypto/XMLStructure;Ljavax/xml/crypto/XMLCryptoContext;)V

    if-eqz v0, :cond_8

    const-string v3, "KeyInfo"

    invoke-interface {p1, v2, v3}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ne v2, v1, :cond_7

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {p1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_5

    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "KeyInfo wasn\'t set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_5
    return-void
.end method
