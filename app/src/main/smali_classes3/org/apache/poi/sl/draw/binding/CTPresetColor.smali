.class public Lorg/apache/poi/sl/draw/binding/CTPresetColor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_PresetColor"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    propOrder = {
        "egColorTransform"
    }
.end annotation


# instance fields
.field protected egColorTransform:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/xml/bind/JAXBElement<",
            "*>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementRefs;
        value = {
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "shade"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "hue"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "blue"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "satOff"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "alphaMod"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "blueOff"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "green"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "red"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "gray"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "lum"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "invGamma"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "comp"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "lumOff"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "greenOff"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "sat"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "redMod"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "greenMod"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "lumMod"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "alpha"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "alphaOff"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "hueMod"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "inv"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "hueOff"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "gamma"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "tint"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "satMod"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "redOff"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElementRef;
                name = "blueMod"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Ljavax/xml/bind/JAXBElement;
            .end subannotation
        }
    .end annotation
.end field

.field protected val:Lorg/apache/poi/sl/draw/binding/STPresetColorVal;
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
.method public getEGColorTransform()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/xml/bind/JAXBElement<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPresetColor;->egColorTransform:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPresetColor;->egColorTransform:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPresetColor;->egColorTransform:Ljava/util/List;

    return-object v0
.end method

.method public getVal()Lorg/apache/poi/sl/draw/binding/STPresetColorVal;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPresetColor;->val:Lorg/apache/poi/sl/draw/binding/STPresetColorVal;

    return-object v0
.end method

.method public isSetEGColorTransform()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPresetColor;->egColorTransform:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetVal()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPresetColor;->val:Lorg/apache/poi/sl/draw/binding/STPresetColorVal;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setVal(Lorg/apache/poi/sl/draw/binding/STPresetColorVal;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTPresetColor;->val:Lorg/apache/poi/sl/draw/binding/STPresetColorVal;

    return-void
.end method

.method public unsetEGColorTransform()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPresetColor;->egColorTransform:Ljava/util/List;

    return-void
.end method
