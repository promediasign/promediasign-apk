.class public Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$SignatureConfigurable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field private static isInitialized:Z


# instance fields
.field private signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->isInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->initXmlProvider()V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljavax/xml/crypto/dsig/XMLValidateContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->brokenJvmWorkaround(Ljavax/xml/crypto/dsig/XMLValidateContext;)V

    return-void
.end method

.method public static synthetic access$200()Lorg/apache/poi/util/POILogger;
    .locals 1

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->LOG:Lorg/apache/poi/util/POILogger;

    return-object v0
.end method

.method private brokenJvmWorkaround(Ljavax/xml/crypto/dsig/XMLSignContext;)V
    .locals 2

    .line 1
    const-string v0, "BC"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "org.jcp.xml.dsig.internal.dom.SignatureProvider"

    invoke-interface {p1, v1, v0}, Ljavax/xml/crypto/dsig/XMLSignContext;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private brokenJvmWorkaround(Ljavax/xml/crypto/dsig/XMLValidateContext;)V
    .locals 2

    .line 2
    const-string v0, "BC"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "org.jcp.xml.dsig.internal.dom.SignatureProvider"

    invoke-interface {p1, v1, v0}, Ljavax/xml/crypto/dsig/XMLValidateContext;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static declared-synchronized initXmlProvider()V
    .locals 4

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->isInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->isInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lorg/apache/xml/security/Init;->init()V

    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->registerDsigProvider()V

    invoke-static {}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->registerBouncyCastle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Xml & BouncyCastle-Provider initialization failed"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit v0

    throw v1
.end method

.method private static safe(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-nez p0, :cond_0

    move-object p0, v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public confirmSignature()V
    .locals 2

    invoke-static {}, Lorg/apache/poi/util/DocumentHelper;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->preSign(Lorg/w3c/dom/Document;Ljava/util/List;)Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;->digestValue:[B

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signDigest([B)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->postSign(Lorg/w3c/dom/Document;[B)V

    return-void
.end method

.method public getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    return-object v0
.end method

.method public getSignatureParts()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->init(Z)V

    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;-><init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)V

    return-object v0
.end method

.method public postSign(Lorg/w3c/dom/Document;[B)V
    .locals 5

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "postSign"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getPackageSignatureId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v3, "Id"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string v2, "SignatureValue"

    invoke-interface {p1, v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/xml/security/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureFacets()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->postSign(Lorg/w3c/dom/Document;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->writeDocument(Lorg/w3c/dom/Document;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "preSign has to be called before postSign"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ds:Signature not found for @Id: "

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public preSign(Lorg/w3c/dom/Document;Ljava/util/List;)Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;",
            ">;)",
            "Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->init(Z)V

    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureMarshalListener()Lorg/w3c/dom/events/EventListener;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    instance-of v4, v2, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;

    invoke-virtual {v4, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->setEventTarget(Lorg/w3c/dom/events/EventTarget;)V

    :cond_0
    invoke-static {v0, v2, v3}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->setListener(Lorg/w3c/dom/events/EventTarget;Lorg/w3c/dom/events/EventListener;Z)V

    :cond_1
    new-instance v0, Ljavax/xml/crypto/dsig/dom/DOMSignContext;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getKey()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljavax/xml/crypto/dsig/dom/DOMSignContext;-><init>(Ljava/security/Key;Lorg/w3c/dom/Node;)V

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getUriDereferencer()Ljavax/xml/crypto/URIDereferencer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v2}, Ljavax/xml/crypto/dsig/XMLSignContext;->setURIDereferencer(Ljavax/xml/crypto/URIDereferencer;)V

    :cond_2
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getNamespacePrefixes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Ljavax/xml/crypto/dsig/XMLSignContext;->putNamespacePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v2, ""

    invoke-interface {v0, v2}, Ljavax/xml/crypto/dsig/XMLSignContext;->setDefaultNamespacePrefix(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->brokenJvmWorkaround(Ljavax/xml/crypto/dsig/XMLSignContext;)V

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->safe(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;

    iget-object v10, v5, Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;->digestValue:[B

    new-instance v6, Ljava/io/File;

    iget-object v5, v5, Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;->description:Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    iget-object v11, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->newReference(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[BLorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)Ljavax/xml/crypto/dsig/Reference;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureFacets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;

    sget-object v7, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->LOG:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "invoking signature facet: "

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v8, v9, v1

    invoke-virtual {v7, v3, v9}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-virtual {v6, p1, v2, p2}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->preSign(Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    :cond_5
    :try_start_0
    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureMethodUri()Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newSignatureMethod(Ljava/lang/String;Ljavax/xml/crypto/dsig/spec/SignatureMethodParameterSpec;)Ljavax/xml/crypto/dsig/SignatureMethod;

    move-result-object p1

    iget-object v6, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getCanonicalizationMethod()Ljava/lang/String;

    move-result-object v6

    move-object v7, v5

    check-cast v7, Ljavax/xml/crypto/dsig/spec/C14NMethodParameterSpec;

    invoke-virtual {v4, v6, v5}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newCanonicalizationMethod(Ljava/lang/String;Ljavax/xml/crypto/dsig/spec/C14NMethodParameterSpec;)Ljavax/xml/crypto/dsig/CanonicalizationMethod;

    move-result-object v5

    invoke-virtual {v4, v5, p1, v2}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newSignedInfo(Ljavax/xml/crypto/dsig/CanonicalizationMethod;Ljavax/xml/crypto/dsig/SignatureMethod;Ljava/util/List;)Ljavax/xml/crypto/dsig/SignedInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getPackageSignatureId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-signature-value"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getPackageSignatureId()Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x0

    move-object v5, p1

    move-object v7, p2

    invoke-virtual/range {v4 .. v9}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newXMLSignature(Ljavax/xml/crypto/dsig/SignedInfo;Ljavax/xml/crypto/dsig/keyinfo/KeyInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/crypto/dsig/XMLSignature;

    move-result-object v2

    invoke-interface {v2, v0}, Ljavax/xml/crypto/dsig/XMLSignature;->sign(Ljavax/xml/crypto/dsig/XMLSignContext;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/crypto/dsig/XMLObject;

    sget-object v4, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->LOG:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "object java type: "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v5, v6, v1

    invoke-virtual {v4, v3, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-interface {v2}, Ljavax/xml/crypto/dsig/XMLObject;->getContent()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/xml/crypto/XMLStructure;

    sget-object v5, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->LOG:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "object content java type: "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v1

    invoke-virtual {v5, v3, v7}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    instance-of v5, v4, Ljavax/xml/crypto/dsig/Manifest;

    if-nez v5, :cond_8

    goto :goto_3

    :cond_8
    check-cast v4, Ljavax/xml/crypto/dsig/Manifest;

    invoke-interface {v4}, Ljavax/xml/crypto/dsig/Manifest;->getReferences()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/xml/crypto/dsig/Reference;

    invoke-interface {v5}, Ljavax/xml/crypto/dsig/Reference;->getDigestValue()[B

    move-result-object v6

    if-eqz v6, :cond_9

    goto :goto_4

    :cond_9
    check-cast v5, Lorg/apache/jcp/xml/dsig/internal/dom/DOMReference;

    invoke-virtual {v5, v0}, Lorg/apache/jcp/xml/dsig/internal/dom/DOMReference;->digest(Ljavax/xml/crypto/dsig/XMLSignContext;)V

    goto :goto_4

    :cond_a
    invoke-interface {p1}, Ljavax/xml/crypto/dsig/SignedInfo;->getReferences()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/crypto/dsig/Reference;

    check-cast v1, Lorg/apache/jcp/xml/dsig/internal/dom/DOMReference;

    invoke-virtual {v1}, Lorg/apache/jcp/xml/dsig/internal/dom/DOMReference;->getDigestValue()[B

    move-result-object v2

    if-eqz v2, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v1, v0}, Lorg/apache/jcp/xml/dsig/internal/dom/DOMReference;->digest(Ljavax/xml/crypto/dsig/XMLSignContext;)V

    goto :goto_5

    :cond_c
    check-cast p1, Lorg/apache/jcp/xml/dsig/internal/dom/DOMSignedInfo;

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1, v0, p2}, Lorg/apache/jcp/xml/dsig/internal/dom/DOMSignedInfo;->canonicalize(Ljavax/xml/crypto/XMLCryptoContext;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    iget-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureDescription()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;-><init>([BLorg/apache/poi/poifs/crypt/HashAlgorithm;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Ljavax/xml/crypto/dsig/XMLSignatureException;

    invoke-direct {p2, p1}, Ljavax/xml/crypto/dsig/XMLSignatureException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setSignatureConfig(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    return-void
.end method

.method public signDigest([B)[B
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getKey()Ljava/security/PrivateKey;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rsa:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    sget-object v3, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    const/4 v5, 0x1

    const-string v6, "PKCS1Padding"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getHashMagic()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public verifySignature()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureParts()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->validate()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public writeDocument(Lorg/w3c/dom/Document;)V
    .locals 6

    const/4 v0, 0x1

    new-instance v1, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getNamespacePrefixes()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSuggestedPrefixes(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/XmlOptions;->setUseDefaultNamespace()Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "output signed Office OpenXML document"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getOpcPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    :try_start_0
    const-string v1, "/_xmlsignatures/sig1.xml"

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    const-string v2, "/_xmlsignatures/origin.sigs"

    invoke-static {v2}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "application/vnd.openxmlformats-package.digital-signature-xmlsignature+xml"

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/w3/x2000/x09/xmldsig/SignatureDocument$Factory;->parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/XmlOptions;)Lorg/w3/x2000/x09/xmldsig/SignatureDocument;

    const/4 p1, 0x0

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljavax/xml/crypto/MarshalException;

    const-string v1, "Unable to write signature document"

    invoke-direct {v0, v1, p1}, Ljavax/xml/crypto/MarshalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Ljavax/xml/crypto/MarshalException;

    invoke-direct {v0, p1}, Ljavax/xml/crypto/MarshalException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
