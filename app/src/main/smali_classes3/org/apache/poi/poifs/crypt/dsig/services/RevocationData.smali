.class public Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final crls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final ocsps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->crls:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->ocsps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCRL(Ljava/security/cert/X509CRL;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->addCRL([B)V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CRL coding error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public addCRL([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->crls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOCSP([B)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->ocsps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCRLs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->crls:Ljava/util/List;

    return-object v0
.end method

.method public getOCSPs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->ocsps:Ljava/util/List;

    return-object v0
.end method

.method public hasCRLs()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->crls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasOCSPs()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->ocsps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasRevocationDataEntries()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->hasOCSPs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->hasCRLs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
