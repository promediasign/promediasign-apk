.class public Lorg/apache/poi/sl/draw/binding/CTRelativeRect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_RelativeRect"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
.end annotation


# instance fields
.field protected b:Ljava/lang/Integer;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected l:Ljava/lang/Integer;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected r:Ljava/lang/Integer;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected t:Ljava/lang/Integer;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getB()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->b:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getL()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->l:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getR()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->r:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getT()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->t:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isSetB()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetL()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetR()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->r:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetT()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->t:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setB(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->b:Ljava/lang/Integer;

    return-void
.end method

.method public setL(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->l:Ljava/lang/Integer;

    return-void
.end method

.method public setR(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->r:Ljava/lang/Integer;

    return-void
.end method

.method public setT(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->t:Ljava/lang/Integer;

    return-void
.end method

.method public unsetB()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->b:Ljava/lang/Integer;

    return-void
.end method

.method public unsetL()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->l:Ljava/lang/Integer;

    return-void
.end method

.method public unsetR()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->r:Ljava/lang/Integer;

    return-void
.end method

.method public unsetT()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;->t:Ljava/lang/Integer;

    return-void
.end method
