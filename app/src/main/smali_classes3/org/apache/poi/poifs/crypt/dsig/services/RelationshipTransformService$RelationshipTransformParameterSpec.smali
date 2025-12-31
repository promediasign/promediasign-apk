.class public Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/crypto/dsig/spec/TransformParameterSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelationshipTransformParameterSpec"
.end annotation


# instance fields
.field sourceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;->sourceIds:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addRelationshipReference(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;->sourceIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public hasSourceIds()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;->sourceIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
