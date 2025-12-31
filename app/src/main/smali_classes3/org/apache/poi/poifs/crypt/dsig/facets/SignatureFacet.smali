.class public abstract Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$SignatureConfigurable;


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field public static final MS_DIGSIG_NS:Ljava/lang/String; = "http://schemas.microsoft.com/office/2006/digsig"

.field public static final OO_DIGSIG_NS:Ljava/lang/String; = "http://schemas.openxmlformats.org/package/2006/digital-signature"

.field public static final XADES_132_NS:Ljava/lang/String; = "http://uri.etsi.org/01903/v1.3.2#"

.field public static final XADES_141_NS:Ljava/lang/String; = "http://uri.etsi.org/01903/v1.4.1#"

.field public static final XML_DIGSIG_NS:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#"

.field public static final XML_NS:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"


# instance fields
.field protected signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lorg/apache/poi/util/POILogger;
    .locals 1

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    return-object v0
.end method

.method public static brokenJvmWorkaround(Ljavax/xml/crypto/dsig/Reference;)V
    .locals 4

    invoke-interface {p0}, Ljavax/xml/crypto/dsig/Reference;->getDigestMethod()Ljavax/xml/crypto/dsig/DigestMethod;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/crypto/dsig/DigestMethod;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BC"

    invoke-static {v2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "http://www.w3.org/2000/09/xmldsig#sha1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet$1;

    invoke-direct {v1, v0, v2, p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet$1;-><init>(Ljavax/xml/crypto/dsig/DigestMethod;Ljava/security/Provider;Ljavax/xml/crypto/dsig/Reference;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static newReference(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[BLorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)Ljavax/xml/crypto/dsig/Reference;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Transform;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;",
            ")",
            "Ljavax/xml/crypto/dsig/Reference;"
        }
    .end annotation

    invoke-virtual {p5}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestMethodUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v1

    const/4 p5, 0x0

    :try_start_0
    invoke-virtual {v1, v0, p5}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newDigestMethod(Ljava/lang/String;Ljavax/xml/crypto/dsig/spec/DigestMethodParameterSpec;)Ljavax/xml/crypto/dsig/DigestMethod;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    if-nez p4, :cond_0

    invoke-virtual/range {v1 .. v6}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newReference(Ljava/lang/String;Ljavax/xml/crypto/dsig/DigestMethod;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/crypto/dsig/Reference;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newReference(Ljava/lang/String;Ljavax/xml/crypto/dsig/DigestMethod;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[B)Ljavax/xml/crypto/dsig/Reference;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->brokenJvmWorkaround(Ljavax/xml/crypto/dsig/Reference;)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/crypto/dsig/XMLSignatureException;

    const-string p2, "unknown digest method uri: "

    .line 2
    invoke-static {p2, v0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-direct {p1, p2, p0}, Ljavax/xml/crypto/dsig/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v0

    return-object v0
.end method

.method public newReference(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[B)Ljavax/xml/crypto/dsig/Reference;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Transform;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B)",
            "Ljavax/xml/crypto/dsig/Reference;"
        }
    .end annotation

    .line 1
    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->newReference(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[BLorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)Ljavax/xml/crypto/dsig/Reference;

    move-result-object p1

    return-object p1
.end method

.method public newTransform(Ljava/lang/String;)Ljavax/xml/crypto/dsig/Transform;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->newTransform(Ljava/lang/String;Ljavax/xml/crypto/dsig/spec/TransformParameterSpec;)Ljavax/xml/crypto/dsig/Transform;

    move-result-object p1

    return-object p1
.end method

.method public newTransform(Ljava/lang/String;Ljavax/xml/crypto/dsig/spec/TransformParameterSpec;)Ljavax/xml/crypto/dsig/Transform;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newTransform(Ljava/lang/String;Ljavax/xml/crypto/dsig/spec/TransformParameterSpec;)Ljavax/xml/crypto/dsig/Transform;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    new-instance v0, Ljavax/xml/crypto/dsig/XMLSignatureException;

    const-string v1, "unknown canonicalization method: "

    .line 2
    invoke-static {v1, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {v0, p1, p2}, Ljavax/xml/crypto/dsig/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public postSign(Lorg/w3c/dom/Document;)V
    .locals 0

    return-void
.end method

.method public preSign(Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public setSignatureConfig(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    return-void
.end method
