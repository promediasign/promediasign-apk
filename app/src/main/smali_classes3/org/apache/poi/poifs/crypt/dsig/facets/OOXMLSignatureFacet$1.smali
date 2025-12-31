.class Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->addManifestReferences(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljavax/xml/crypto/dsig/Reference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet$1;->this$0:Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljavax/xml/crypto/dsig/Reference;

    check-cast p2, Ljavax/xml/crypto/dsig/Reference;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet$1;->compare(Ljavax/xml/crypto/dsig/Reference;Ljavax/xml/crypto/dsig/Reference;)I

    move-result p1

    return p1
.end method

.method public compare(Ljavax/xml/crypto/dsig/Reference;Ljavax/xml/crypto/dsig/Reference;)I
    .locals 0

    .line 2
    invoke-interface {p1}, Ljavax/xml/crypto/dsig/Reference;->getURI()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Ljavax/xml/crypto/dsig/Reference;->getURI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
