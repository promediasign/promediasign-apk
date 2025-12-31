.class public Lorg/apache/poi/xdgf/usermodel/shape/ShapeDataAcceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->isDeleted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->hasText()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTextAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->isShape1D()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->hasMaster()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->hasMasterShape()Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->hasMaster()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->hasMasterShape()Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->hasMasterShape()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getMasterShape()Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->isTopmost()Z

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v1
.end method
