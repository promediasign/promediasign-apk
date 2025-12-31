.class public Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_PolarAdjustHandle"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    propOrder = {
        "pos"
    }
.end annotation


# instance fields
.field protected gdRefAng:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
        value = Ljavax/xml/bind/annotation/adapters/CollapsedStringAdapter;
    .end annotation
.end field

.field protected gdRefR:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
        value = Ljavax/xml/bind/annotation/adapters/CollapsedStringAdapter;
    .end annotation
.end field

.field protected maxAng:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected maxR:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected minAng:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected minR:Ljava/lang/String;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
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
.method public getGdRefAng()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;->gdRefAng:Ljava/lang/String;

    return-object v0
.end method

.method public getGdRefR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;->gdRefR:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAng()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;->maxAng:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;->maxR:Ljava/lang/String;

    return-object v0
.end method

.method public getMinAng()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;->minAng:Ljava/lang/String;

    return-object v0
.end method

.method public getMinR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;->minR:Ljava/lang/String;

    return-object v0
.end method

.method public getPos()Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;->pos:Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    return-object v0
.end method

.method public isSetGdRefAng()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;->gdRefAng:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetGdRefR()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;->gdRefR:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetMaxAng()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;->maxAng:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetMaxR()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;->maxR:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetMinAng()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;->minAng:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetMinR()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;->minR:Ljava/lang/String;

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

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;->pos:Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setGdRefAng(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;->gdRefAng:Ljava/lang/String;

    return-void
.end method

.method public setGdRefR(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;->gdRefR:Ljava/lang/String;

    return-void
.end method

.method public setMaxAng(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;->maxAng:Ljava/lang/String;

    return-void
.end method

.method public setMaxR(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;->maxR:Ljava/lang/String;

    return-void
.end method

.method public setMinAng(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;->minAng:Ljava/lang/String;

    return-void
.end method

.method public setMinR(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;->minR:Ljava/lang/String;

    return-void
.end method

.method public setPos(Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;->pos:Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    return-void
.end method
