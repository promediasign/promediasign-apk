.class public Lorg/apache/poi/sl/draw/binding/CTPoint3D;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_Point3D"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
.end annotation


# instance fields
.field protected x:J
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        required = true
    .end annotation
.end field

.field protected y:J
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        required = true
    .end annotation
.end field

.field protected z:J
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
.method public getX()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/sl/draw/binding/CTPoint3D;->x:J

    return-wide v0
.end method

.method public getY()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/sl/draw/binding/CTPoint3D;->y:J

    return-wide v0
.end method

.method public getZ()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/sl/draw/binding/CTPoint3D;->z:J

    return-wide v0
.end method

.method public isSetX()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSetY()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSetZ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setX(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/sl/draw/binding/CTPoint3D;->x:J

    return-void
.end method

.method public setY(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/sl/draw/binding/CTPoint3D;->y:J

    return-void
.end method

.method public setZ(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/sl/draw/binding/CTPoint3D;->z:J

    return-void
.end method
