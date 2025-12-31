.class public Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;
.super Ljavax/xml/crypto/KeySelector;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/crypto/KeySelectorResult;


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/xml/crypto/KeySelector;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

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

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    return-object v0
.end method

.method public getKey()Ljava/security/Key;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSigner()Ljava/security/cert/X509Certificate;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    :goto_0
    return-object v0
.end method

.method public select(Ljavax/xml/crypto/dsig/keyinfo/KeyInfo;Ljavax/xml/crypto/KeySelector$Purpose;Ljavax/xml/crypto/AlgorithmMethod;Ljavax/xml/crypto/XMLCryptoContext;)Ljavax/xml/crypto/KeySelectorResult;
    .locals 5

    sget-object p2, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 p3, 0x1

    new-array p4, p3, [Ljava/lang/Object;

    const-string v0, "select key"

    const/4 v1, 0x0

    aput-object v0, p4, v1

    invoke-virtual {p2, p3, p4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljavax/xml/crypto/dsig/keyinfo/KeyInfo;->getContent()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/xml/crypto/XMLStructure;

    instance-of p4, p2, Ljavax/xml/crypto/dsig/keyinfo/X509Data;

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    check-cast p2, Ljavax/xml/crypto/dsig/keyinfo/X509Data;

    invoke-interface {p2}, Ljavax/xml/crypto/dsig/keyinfo/X509Data;->getContent()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    instance-of v0, p4, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    check-cast p4, Ljava/security/cert/X509Certificate;

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->LOG:Lorg/apache/poi/util/POILogger;

    invoke-virtual {p4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "certificate"

    aput-object v4, v3, v1

    aput-object v2, v3, p3

    invoke-virtual {v0, p3, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    return-object p0

    :cond_4
    new-instance p1, Ljavax/xml/crypto/KeySelectorException;

    const-string p2, "No key found!"

    invoke-direct {p1, p2}, Ljavax/xml/crypto/KeySelectorException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljavax/xml/crypto/KeySelectorException;

    const-string p2, "no ds:KeyInfo present"

    invoke-direct {p1, p2}, Ljavax/xml/crypto/KeySelectorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
