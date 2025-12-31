.class public Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_CustomGeometry2D"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    propOrder = {
        "avLst",
        "gdLst",
        "ahLst",
        "cxnLst",
        "rect",
        "pathLst"
    }
.end annotation


# instance fields
.field protected ahLst:Lorg/apache/poi/sl/draw/binding/CTAdjustHandleList;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    .end annotation
.end field

.field protected avLst:Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    .end annotation
.end field

.field protected cxnLst:Lorg/apache/poi/sl/draw/binding/CTConnectionSiteList;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    .end annotation
.end field

.field protected gdLst:Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    .end annotation
.end field

.field protected pathLst:Lorg/apache/poi/sl/draw/binding/CTPath2DList;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        required = true
    .end annotation
.end field

.field protected rect:Lorg/apache/poi/sl/draw/binding/CTGeomRect;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAhLst()Lorg/apache/poi/sl/draw/binding/CTAdjustHandleList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->ahLst:Lorg/apache/poi/sl/draw/binding/CTAdjustHandleList;

    return-object v0
.end method

.method public getAvLst()Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->avLst:Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;

    return-object v0
.end method

.method public getCxnLst()Lorg/apache/poi/sl/draw/binding/CTConnectionSiteList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->cxnLst:Lorg/apache/poi/sl/draw/binding/CTConnectionSiteList;

    return-object v0
.end method

.method public getGdLst()Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->gdLst:Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;

    return-object v0
.end method

.method public getPathLst()Lorg/apache/poi/sl/draw/binding/CTPath2DList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->pathLst:Lorg/apache/poi/sl/draw/binding/CTPath2DList;

    return-object v0
.end method

.method public getRect()Lorg/apache/poi/sl/draw/binding/CTGeomRect;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->rect:Lorg/apache/poi/sl/draw/binding/CTGeomRect;

    return-object v0
.end method

.method public isSetAhLst()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->ahLst:Lorg/apache/poi/sl/draw/binding/CTAdjustHandleList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetAvLst()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->avLst:Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetCxnLst()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->cxnLst:Lorg/apache/poi/sl/draw/binding/CTConnectionSiteList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetGdLst()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->gdLst:Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetPathLst()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->pathLst:Lorg/apache/poi/sl/draw/binding/CTPath2DList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetRect()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->rect:Lorg/apache/poi/sl/draw/binding/CTGeomRect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAhLst(Lorg/apache/poi/sl/draw/binding/CTAdjustHandleList;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->ahLst:Lorg/apache/poi/sl/draw/binding/CTAdjustHandleList;

    return-void
.end method

.method public setAvLst(Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->avLst:Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;

    return-void
.end method

.method public setCxnLst(Lorg/apache/poi/sl/draw/binding/CTConnectionSiteList;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->cxnLst:Lorg/apache/poi/sl/draw/binding/CTConnectionSiteList;

    return-void
.end method

.method public setGdLst(Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->gdLst:Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;

    return-void
.end method

.method public setPathLst(Lorg/apache/poi/sl/draw/binding/CTPath2DList;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->pathLst:Lorg/apache/poi/sl/draw/binding/CTPath2DList;

    return-void
.end method

.method public setRect(Lorg/apache/poi/sl/draw/binding/CTGeomRect;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->rect:Lorg/apache/poi/sl/draw/binding/CTGeomRect;

    return-void
.end method
