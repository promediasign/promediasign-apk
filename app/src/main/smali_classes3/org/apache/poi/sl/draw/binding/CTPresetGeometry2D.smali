.class public Lorg/apache/poi/sl/draw/binding/CTPresetGeometry2D;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_PresetGeometry2D"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    propOrder = {
        "avLst"
    }
.end annotation


# instance fields
.field protected avLst:Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    .end annotation
.end field

.field protected prst:Lorg/apache/poi/sl/draw/binding/STShapeType;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        required = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvLst()Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPresetGeometry2D;->avLst:Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;

    return-object v0
.end method

.method public getPrst()Lorg/apache/poi/sl/draw/binding/STShapeType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPresetGeometry2D;->prst:Lorg/apache/poi/sl/draw/binding/STShapeType;

    return-object v0
.end method

.method public isSetAvLst()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPresetGeometry2D;->avLst:Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetPrst()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPresetGeometry2D;->prst:Lorg/apache/poi/sl/draw/binding/STShapeType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAvLst(Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTPresetGeometry2D;->avLst:Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;

    return-void
.end method

.method public setPrst(Lorg/apache/poi/sl/draw/binding/STShapeType;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTPresetGeometry2D;->prst:Lorg/apache/poi/sl/draw/binding/STShapeType;

    return-void
.end method
