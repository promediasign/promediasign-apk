.class public Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_AdjPoint2D"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
.end annotation


# instance fields
.field protected x:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        required = true
    .end annotation
.end field

.field protected y:Ljava/lang/String;
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
.method public getX()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->y:Ljava/lang/String;

    return-object v0
.end method

.method public isSetX()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->x:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetY()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->y:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setX(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->x:Ljava/lang/String;

    return-void
.end method

.method public setY(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;->y:Ljava/lang/String;

    return-void
.end method
