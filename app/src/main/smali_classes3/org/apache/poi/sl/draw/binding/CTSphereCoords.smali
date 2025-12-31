.class public Lorg/apache/poi/sl/draw/binding/CTSphereCoords;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_SphereCoords"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
.end annotation


# instance fields
.field protected lat:I
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        required = true
    .end annotation
.end field

.field protected lon:I
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        required = true
    .end annotation
.end field

.field protected rev:I
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
.method public getLat()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/sl/draw/binding/CTSphereCoords;->lat:I

    return v0
.end method

.method public getLon()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/sl/draw/binding/CTSphereCoords;->lon:I

    return v0
.end method

.method public getRev()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/sl/draw/binding/CTSphereCoords;->rev:I

    return v0
.end method

.method public isSetLat()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSetLon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSetRev()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setLat(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/sl/draw/binding/CTSphereCoords;->lat:I

    return-void
.end method

.method public setLon(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/sl/draw/binding/CTSphereCoords;->lon:I

    return-void
.end method

.method public setRev(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/sl/draw/binding/CTSphereCoords;->rev:I

    return-void
.end method
