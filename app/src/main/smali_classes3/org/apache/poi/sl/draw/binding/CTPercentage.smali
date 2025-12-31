.class public Lorg/apache/poi/sl/draw/binding/CTPercentage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_Percentage"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
.end annotation


# instance fields
.field protected val:I
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
.method public getVal()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/sl/draw/binding/CTPercentage;->val:I

    return v0
.end method

.method public isSetVal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setVal(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/sl/draw/binding/CTPercentage;->val:I

    return-void
.end method
