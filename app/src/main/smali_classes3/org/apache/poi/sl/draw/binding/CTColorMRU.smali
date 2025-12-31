.class public Lorg/apache/poi/sl/draw/binding/CTColorMRU;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_ColorMRU"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    propOrder = {
        "egColorChoice"
    }
.end annotation


# instance fields
.field protected egColorChoice:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElements;
        value = {
            .subannotation Ljavax/xml/bind/annotation/XmlElement;
                name = "prstClr"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElement;
                name = "sysClr"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElement;
                name = "hslClr"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Lorg/apache/poi/sl/draw/binding/CTHslColor;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElement;
                name = "srgbClr"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElement;
                name = "scrgbClr"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElement;
                name = "schemeClr"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
            .end subannotation
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEGColorChoice()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTColorMRU;->egColorChoice:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTColorMRU;->egColorChoice:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTColorMRU;->egColorChoice:Ljava/util/List;

    return-object v0
.end method

.method public isSetEGColorChoice()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTColorMRU;->egColorChoice:Ljava/util/List;

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

.method public unsetEGColorChoice()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTColorMRU;->egColorChoice:Ljava/util/List;

    return-void
.end method
