.class public Lorg/apache/poi/sl/draw/binding/CTRatio;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_Ratio"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
.end annotation


# instance fields
.field protected d:J
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
        required = true
    .end annotation
.end field

.field protected n:J
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
.method public getD()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/sl/draw/binding/CTRatio;->d:J

    return-wide v0
.end method

.method public getN()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/sl/draw/binding/CTRatio;->n:J

    return-wide v0
.end method

.method public isSetD()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSetN()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setD(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/sl/draw/binding/CTRatio;->d:J

    return-void
.end method

.method public setN(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/sl/draw/binding/CTRatio;->n:J

    return-void
.end method
