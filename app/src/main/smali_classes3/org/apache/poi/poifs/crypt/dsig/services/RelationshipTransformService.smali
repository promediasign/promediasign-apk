.class public Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;
.super Ljavax/xml/crypto/dsig/TransformService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field public static final TRANSFORM_URI:Ljava/lang/String; = "http://schemas.openxmlformats.org/package/2006/RelationshipTransform"


# instance fields
.field private final sourceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljavax/xml/crypto/dsig/TransformService;-><init>()V

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "constructor"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->sourceIds:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized registerDsigProvider()V
    .locals 6

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;

    monitor-enter v0

    :try_start_0
    const-string v1, "POIXmlDsigProvider"

    invoke-static {v1}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$1;

    const-string v2, "POIXmlDsigProvider"

    const-string v3, "POIXmlDsigProvider"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v2, v4, v5, v3}, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$1;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const-string v2, "TransformService.http://schemas.openxmlformats.org/package/2006/RelationshipTransform"

    const-class v3, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "TransformService.http://schemas.openxmlformats.org/package/2006/RelationshipTransform MechanismType"

    const-string v3, "DOM"

    invoke-virtual {v1, v2, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 5

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getParameterSpec"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Ljavax/xml/crypto/XMLStructure;Ljavax/xml/crypto/XMLCryptoContext;)V
    .locals 4

    .line 1
    sget-object p2, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "init(parent,context)"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2, v0, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "parent java type: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {p2, v0, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    check-cast p1, Ljavax/xml/crypto/dom/DOMStructure;

    invoke-virtual {p1}, Ljavax/xml/crypto/dom/DOMStructure;->getNode()Lorg/w3c/dom/Node;

    move-result-object p1

    :try_start_0
    sget-object p2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, p2}, Lorg/w3/x2000/x09/xmldsig/TransformDocument$Factory;->parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/XmlOptions;)Lorg/w3/x2000/x09/xmldsig/TransformDocument;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    throw p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public init(Ljavax/xml/crypto/dsig/spec/TransformParameterSpec;)V
    .locals 5

    .line 2
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "init(params)"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    instance-of v0, p1, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;

    iget-object p1, p1, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;->sourceIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->sourceIds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>()V

    throw p1
.end method

.method public isFeatureSupported(Ljava/lang/String;)Z
    .locals 4

    sget-object p1, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "isFeatureSupported(feature)"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return v3
.end method

.method public marshalParams(Ljavax/xml/crypto/XMLStructure;Ljavax/xml/crypto/XMLCryptoContext;)V
    .locals 6

    sget-object p2, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "marshallParams(parent,context)"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2, v0, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    check-cast p1, Ljavax/xml/crypto/dom/DOMStructure;

    invoke-virtual {p1}, Ljavax/xml/crypto/dom/DOMStructure;->getNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->sourceIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "mdssi:RelationshipReference"

    const-string v3, "http://schemas.openxmlformats.org/package/2006/digital-signature"

    invoke-interface {p2, v3, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v4, "http://www.w3.org/2000/xmlns/"

    const-string v5, "xmlns:mdssi"

    invoke-interface {v2, v4, v5, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SourceId"

    invoke-interface {v2, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public transform(Ljavax/xml/crypto/Data;Ljavax/xml/crypto/XMLCryptoContext;)Ljavax/xml/crypto/Data;
    .locals 10

    .line 1
    sget-object p2, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "transform(data,context)"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2, v0, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data java type: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {p2, v0, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    check-cast p1, Ljavax/xml/crypto/OctetStreamData;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljavax/xml/crypto/OctetStreamData;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {p2, v0, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljavax/xml/crypto/OctetStreamData;->getOctetStream()Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/util/DocumentHelper;->readDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_0
    if-ltz v2, :cond_2

    invoke-interface {p2, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Relationship"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lorg/w3c/dom/Element;

    const-string v6, "Id"

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->sourceIds:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "TargetMode"

    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "Internal"

    invoke-interface {v5, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {p1, v4}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {p1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_3
    sget-object p2, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "# Relationship elements: "

    aput-object v4, v2, v3

    aput-object v1, v2, v0

    invoke-virtual {p2, v0, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    new-instance p2, Lorg/apache/jcp/xml/dsig/internal/dom/ApacheNodeSetData;

    new-instance v0, Lorg/apache/xml/security/signature/XMLSignatureInput;

    invoke-direct {v0, p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;-><init>(Lorg/w3c/dom/Node;)V

    invoke-direct {p2, v0}, Lorg/apache/jcp/xml/dsig/internal/dom/ApacheNodeSetData;-><init>(Lorg/apache/xml/security/signature/XMLSignatureInput;)V

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Ljavax/xml/crypto/dsig/TransformException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljavax/xml/crypto/dsig/TransformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public transform(Ljavax/xml/crypto/Data;Ljavax/xml/crypto/XMLCryptoContext;Ljava/io/OutputStream;)Ljavax/xml/crypto/Data;
    .locals 2

    .line 2
    sget-object p1, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 p2, 0x1

    new-array p3, p2, [Ljava/lang/Object;

    const-string v0, "transform(data,context,os)"

    const/4 v1, 0x0

    aput-object v0, p3, v1

    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
