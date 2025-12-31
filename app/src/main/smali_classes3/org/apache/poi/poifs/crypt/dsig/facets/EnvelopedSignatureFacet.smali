.class public Lorg/apache/poi/poifs/crypt/dsig/facets/EnvelopedSignatureFacet;
.super Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;-><init>()V

    return-void
.end method


# virtual methods
.method public preSign(Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V
    .locals 6
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

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "http://www.w3.org/2000/09/xmldsig#enveloped-signature"

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->newTransform(Ljava/lang/String;)Ljavax/xml/crypto/dsig/Transform;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "http://www.w3.org/2001/10/xml-exc-c14n#"

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->newTransform(Ljava/lang/String;)Ljavax/xml/crypto/dsig/Transform;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, ""

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->newReference(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[B)Ljavax/xml/crypto/dsig/Reference;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
