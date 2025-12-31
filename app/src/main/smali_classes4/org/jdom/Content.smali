.class public abstract Lorg/jdom/Content;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field protected parent:Lorg/jdom/Parent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom/Content;->parent:Lorg/jdom/Parent;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Content;

    iput-object v0, v1, Lorg/jdom/Content;->parent:Lorg/jdom/Parent;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public detach()Lorg/jdom/Content;
    .locals 1

    iget-object v0, p0, Lorg/jdom/Content;->parent:Lorg/jdom/Parent;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lorg/jdom/Parent;->removeContent(Lorg/jdom/Content;)Z

    :cond_0
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDocument()Lorg/jdom/Document;
    .locals 1

    iget-object v0, p0, Lorg/jdom/Content;->parent:Lorg/jdom/Parent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/jdom/Parent;->getDocument()Lorg/jdom/Document;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/jdom/Parent;
    .locals 1

    iget-object v0, p0, Lorg/jdom/Content;->parent:Lorg/jdom/Parent;

    return-object v0
.end method

.method public getParentElement()Lorg/jdom/Element;
    .locals 2

    invoke-virtual {p0}, Lorg/jdom/Content;->getParent()Lorg/jdom/Parent;

    move-result-object v0

    instance-of v1, v0, Lorg/jdom/Element;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lorg/jdom/Element;

    return-object v0
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setParent(Lorg/jdom/Parent;)Lorg/jdom/Content;
    .locals 0

    iput-object p1, p0, Lorg/jdom/Content;->parent:Lorg/jdom/Parent;

    return-object p0
.end method
