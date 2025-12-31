.class public Lorg/apache/xmlbeans/impl/tool/Extension;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/tool/Extension$Param;
    }
.end annotation


# instance fields
.field private className:Ljava/lang/Class;

.field private params:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/tool/Extension;->params:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createParam()Lorg/apache/xmlbeans/impl/tool/Extension$Param;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/tool/Extension$Param;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/tool/Extension$Param;-><init>(Lorg/apache/xmlbeans/impl/tool/Extension;)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/Extension;->params:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getClassName()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/Extension;->className:Ljava/lang/Class;

    return-object v0
.end method

.method public getParams()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/Extension;->params:Ljava/util/List;

    return-object v0
.end method

.method public setClassName(Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/tool/Extension;->className:Ljava/lang/Class;

    return-void
.end method
