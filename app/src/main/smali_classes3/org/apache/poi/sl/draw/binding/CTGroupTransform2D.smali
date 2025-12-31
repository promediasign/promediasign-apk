.class public Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_GroupTransform2D"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    propOrder = {
        "off",
        "ext",
        "chOff",
        "chExt"
    }
.end annotation


# instance fields
.field protected chExt:Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    .end annotation
.end field

.field protected chOff:Lorg/apache/poi/sl/draw/binding/CTPoint2D;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    .end annotation
.end field

.field protected ext:Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    .end annotation
.end field

.field protected flipH:Ljava/lang/Boolean;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected flipV:Ljava/lang/Boolean;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected off:Lorg/apache/poi/sl/draw/binding/CTPoint2D;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    .end annotation
.end field

.field protected rot:Ljava/lang/Integer;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChExt()Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->chExt:Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;

    return-object v0
.end method

.method public getChOff()Lorg/apache/poi/sl/draw/binding/CTPoint2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->chOff:Lorg/apache/poi/sl/draw/binding/CTPoint2D;

    return-object v0
.end method

.method public getExt()Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->ext:Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;

    return-object v0
.end method

.method public getOff()Lorg/apache/poi/sl/draw/binding/CTPoint2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->off:Lorg/apache/poi/sl/draw/binding/CTPoint2D;

    return-object v0
.end method

.method public getRot()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->rot:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isFlipH()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->flipH:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isFlipV()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->flipV:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSetChExt()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->chExt:Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetChOff()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->chOff:Lorg/apache/poi/sl/draw/binding/CTPoint2D;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetExt()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->ext:Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetFlipH()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->flipH:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetFlipV()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->flipV:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetOff()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->off:Lorg/apache/poi/sl/draw/binding/CTPoint2D;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetRot()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->rot:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setChExt(Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->chExt:Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;

    return-void
.end method

.method public setChOff(Lorg/apache/poi/sl/draw/binding/CTPoint2D;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->chOff:Lorg/apache/poi/sl/draw/binding/CTPoint2D;

    return-void
.end method

.method public setExt(Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->ext:Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;

    return-void
.end method

.method public setFlipH(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->flipH:Ljava/lang/Boolean;

    return-void
.end method

.method public setFlipV(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->flipV:Ljava/lang/Boolean;

    return-void
.end method

.method public setOff(Lorg/apache/poi/sl/draw/binding/CTPoint2D;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->off:Lorg/apache/poi/sl/draw/binding/CTPoint2D;

    return-void
.end method

.method public setRot(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->rot:Ljava/lang/Integer;

    return-void
.end method

.method public unsetFlipH()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->flipH:Ljava/lang/Boolean;

    return-void
.end method

.method public unsetFlipV()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->flipV:Ljava/lang/Boolean;

    return-void
.end method

.method public unsetRot()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;->rot:Ljava/lang/Integer;

    return-void
.end method
