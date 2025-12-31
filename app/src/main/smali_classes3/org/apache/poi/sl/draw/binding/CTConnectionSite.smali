.class public Lorg/apache/poi/sl/draw/binding/CTConnectionSite;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_ConnectionSite"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    propOrder = {
        "pos"
    }
.end annotation


# instance fields
.field protected ang:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        required = true
    .end annotation
.end field

.field protected pos:Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;
    .annotation runtime Ljavax/xml/bind/annotation/XmlElement;
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
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
.method public getAng()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTConnectionSite;->ang:Ljava/lang/String;

    return-object v0
.end method

.method public getPos()Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTConnectionSite;->pos:Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    return-object v0
.end method

.method public isSetAng()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTConnectionSite;->ang:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetPos()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTConnectionSite;->pos:Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAng(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTConnectionSite;->ang:Ljava/lang/String;

    return-void
.end method

.method public setPos(Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTConnectionSite;->pos:Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    return-void
.end method
