.class public Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SignaturePart"
.end annotation


# instance fields
.field private certChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final signaturePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

.field private signer:Ljava/security/cert/X509Certificate;

.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;


# direct methods
.method private constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->this$0:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->signaturePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;-><init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method


# virtual methods
.method public getCertChain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->certChain:Ljava/util/List;

    return-object v0
.end method

.method public getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->signaturePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    return-object v0
.end method

.method public getSignatureDocument()Lorg/w3/x2000/x09/xmldsig/SignatureDocument;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->signaturePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1}, Lorg/w3/x2000/x09/xmldsig/SignatureDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/w3/x2000/x09/xmldsig/SignatureDocument;

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSigner()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->signer:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public validate()Z
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;

    invoke-direct {v3}, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;-><init>()V

    const/4 v4, 0x7

    :try_start_0
    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->signaturePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/poi/util/DocumentHelper;->readDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v6

    const-string v7, "//*[@Id]"

    invoke-interface {v6, v7}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v6

    sget-object v7, Ljavax/xml/xpath/XPathConstants;->NODESET:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v6, v5, v7}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/NodeList;

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_0

    invoke-interface {v6, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    const-string v10, "Id"

    invoke-interface {v9, v10, v2}, Lorg/w3c/dom/Element;->setIdAttribute(Ljava/lang/String;Z)V

    add-int/2addr v8, v2

    goto :goto_0

    :catch_0
    move-exception v3

    goto/16 :goto_3

    :catch_1
    move-exception v3

    goto/16 :goto_4

    :catch_2
    move-exception v3

    goto/16 :goto_5

    :catch_3
    move-exception v3

    goto/16 :goto_6

    :catch_4
    move-exception v3

    goto/16 :goto_7

    :cond_0
    new-instance v6, Ljavax/xml/crypto/dsig/dom/DOMValidateContext;

    invoke-direct {v6, v3, v5}, Ljavax/xml/crypto/dsig/dom/DOMValidateContext;-><init>(Ljavax/xml/crypto/KeySelector;Lorg/w3c/dom/Node;)V

    const-string v5, "org.jcp.xml.dsig.validateManifests"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, v7}, Ljavax/xml/crypto/dsig/dom/DOMValidateContext;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->this$0:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    invoke-static {v5}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$000(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getUriDereferencer()Ljavax/xml/crypto/URIDereferencer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljavax/xml/crypto/dsig/dom/DOMValidateContext;->setURIDereferencer(Ljavax/xml/crypto/URIDereferencer;)V

    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->this$0:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    invoke-static {v5, v6}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$100(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljavax/xml/crypto/dsig/XMLValidateContext;)V

    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->this$0:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    invoke-static {v5}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$000(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->unmarshalXMLSignature(Ljavax/xml/crypto/dsig/XMLValidateContext;)Ljavax/xml/crypto/dsig/XMLSignature;

    move-result-object v5

    invoke-interface {v5}, Ljavax/xml/crypto/dsig/XMLSignature;->getSignedInfo()Ljavax/xml/crypto/dsig/SignedInfo;

    move-result-object v7

    invoke-interface {v7}, Ljavax/xml/crypto/dsig/SignedInfo;->getReferences()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/xml/crypto/dsig/Reference;

    invoke-static {v8}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->brokenJvmWorkaround(Ljavax/xml/crypto/dsig/Reference;)V

    goto :goto_1

    :cond_1
    invoke-interface {v5}, Ljavax/xml/crypto/dsig/XMLSignature;->getObjects()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/xml/crypto/dsig/XMLObject;

    invoke-interface {v8}, Ljavax/xml/crypto/dsig/XMLObject;->getContent()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/xml/crypto/XMLStructure;

    instance-of v10, v9, Ljavax/xml/crypto/dsig/Manifest;

    if-eqz v10, :cond_3

    check-cast v9, Ljavax/xml/crypto/dsig/Manifest;

    invoke-interface {v9}, Ljavax/xml/crypto/dsig/Manifest;->getReferences()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavax/xml/crypto/dsig/Reference;

    invoke-static {v10}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->brokenJvmWorkaround(Ljavax/xml/crypto/dsig/Reference;)V

    goto :goto_2

    :cond_4
    invoke-interface {v5, v6}, Ljavax/xml/crypto/dsig/XMLSignature;->validate(Ljavax/xml/crypto/dsig/XMLValidateContext;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->getSigner()Ljava/security/cert/X509Certificate;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->signer:Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->getCertChain()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;->certChain:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/crypto/MarshalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/crypto/dsig/XMLSignatureException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return v5

    :goto_3
    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$200()Lorg/apache/poi/util/POILogger;

    move-result-object v5

    const-string v6, "error in validating the signature"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v6, v0, v1

    aput-object v3, v0, v2

    invoke-virtual {v5, v4, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v0, v6, v3}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_4
    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$200()Lorg/apache/poi/util/POILogger;

    move-result-object v5

    const-string v6, "error in unmarshalling the signature"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v6, v0, v1

    aput-object v3, v0, v2

    invoke-virtual {v5, v4, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v0, v6, v3}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_5
    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$200()Lorg/apache/poi/util/POILogger;

    move-result-object v5

    const-string v6, "error in searching document with xpath expression"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v6, v0, v1

    aput-object v3, v0, v2

    invoke-virtual {v5, v4, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v0, v6, v3}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_6
    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$200()Lorg/apache/poi/util/POILogger;

    move-result-object v5

    const-string v6, "error in parsing document"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v6, v0, v1

    aput-object v3, v0, v2

    invoke-virtual {v5, v4, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v0, v6, v3}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_7
    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$200()Lorg/apache/poi/util/POILogger;

    move-result-object v5

    const-string v6, "error in reading document"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v6, v0, v1

    aput-object v3, v0, v2

    invoke-virtual {v5, v4, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v0, v6, v3}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
