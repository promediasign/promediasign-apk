.class Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;->postSign(Lorg/w3c/dom/Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet$1;->this$0:Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
