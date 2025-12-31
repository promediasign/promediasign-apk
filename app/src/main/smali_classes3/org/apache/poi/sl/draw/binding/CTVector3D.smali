.class public Lorg/apache/poi/sl/draw/binding/CTVector3D;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_Vector3D"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
.end annotation


# instance fields
.field protected dx:J
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        required = true
    .end annotation
.end field

.field protected dy:J
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        required = true
    .end annotation
.end field

.field protected dz:J
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
.method public getDx()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/sl/draw/binding/CTVector3D;->dx:J

    return-wide v0
.end method

.method public getDy()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/sl/draw/binding/CTVector3D;->dy:J

    return-wide v0
.end method

.method public getDz()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/sl/draw/binding/CTVector3D;->dz:J

    return-wide v0
.end method

.method public isSetDx()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSetDy()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSetDz()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setDx(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/sl/draw/binding/CTVector3D;->dx:J

    return-void
.end method

.method public setDy(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/sl/draw/binding/CTVector3D;->dy:J

    return-void
.end method

.method public setDz(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/sl/draw/binding/CTVector3D;->dz:J

    return-void
.end method
