.class public Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/crypto/URIDereferencer;
.implements Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$SignatureConfigurable;


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private baseUriDereferencer:Ljavax/xml/crypto/URIDereferencer;

.field private signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findPart(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 7

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "dereference"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v3, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v2}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getOpcPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    return-object p1

    :catch_0
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "illegal part name (not expected)"

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    const/4 p1, 0x5

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object v5

    :cond_1
    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "illegal part name (expected)"

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object v5
.end method


# virtual methods
.method public dereference(Ljavax/xml/crypto/URIReference;Ljavax/xml/crypto/XMLCryptoContext;)Ljavax/xml/crypto/Data;
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->baseUriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->getURIDereferencer()Ljavax/xml/crypto/URIDereferencer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->baseUriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    :cond_0
    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-interface {p1}, Ljavax/xml/crypto/URIReference;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-direct {p0, v1}, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->findPart(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "cannot resolve, delegating to base DOM URI dereferencer"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    aput-object v1, v3, v0

    invoke-virtual {v2, v0, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->baseUriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    invoke-interface {v0, p1, p2}, Ljavax/xml/crypto/URIDereferencer;->dereference(Ljavax/xml/crypto/URIReference;Ljavax/xml/crypto/XMLCryptoContext;)Ljavax/xml/crypto/Data;

    move-result-object p1

    return-object p1

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, ".rels"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/16 v2, 0xd

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    new-instance p2, Ljavax/xml/crypto/OctetStreamData;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1}, Ljavax/xml/crypto/OctetStreamData;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :goto_1
    new-instance p2, Ljavax/xml/crypto/URIReferenceException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "I/O error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljavax/xml/crypto/URIReferenceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p2

    new-instance v0, Ljavax/xml/crypto/URIReferenceException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "could not URL decode the uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/xml/crypto/URIReference;->getURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljavax/xml/crypto/URIReferenceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "XMLCrytoContext cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "URIReference cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSignatureConfig(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    return-void
.end method
