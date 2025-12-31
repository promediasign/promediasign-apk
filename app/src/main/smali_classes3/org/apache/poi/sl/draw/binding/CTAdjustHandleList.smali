.class public Lorg/apache/poi/sl/draw/binding/CTAdjustHandleList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_AdjustHandleList"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    propOrder = {
        "ahXYOrAhPolar"
    }
.end annotation


# instance fields
.field protected ahXYOrAhPolar:Ljava/util/List;
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
                name = "ahXY"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElement;
                name = "ahPolar"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;
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
.method public getAhXYOrAhPolar()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTAdjustHandleList;->ahXYOrAhPolar:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTAdjustHandleList;->ahXYOrAhPolar:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTAdjustHandleList;->ahXYOrAhPolar:Ljava/util/List;

    return-object v0
.end method

.method public isSetAhXYOrAhPolar()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTAdjustHandleList;->ahXYOrAhPolar:Ljava/util/List;

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

.method public unsetAhXYOrAhPolar()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTAdjustHandleList;->ahXYOrAhPolar:Ljava/util/List;

    return-void
.end method
