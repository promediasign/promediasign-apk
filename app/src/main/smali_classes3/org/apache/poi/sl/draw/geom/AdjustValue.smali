.class public Lorg/apache/poi/sl/draw/geom/AdjustValue;
.super Lorg/apache/poi/sl/draw/geom/Guide;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/draw/binding/CTGeomGuide;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTGeomGuide;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTGeomGuide;->getFmla()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/sl/draw/geom/Guide;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public evaluate(Lorg/apache/poi/sl/draw/geom/Context;)D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/geom/Guide;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/sl/draw/geom/Context;->getAdjustValue(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/Guide;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/poi/sl/draw/geom/Guide;->evaluate(Lorg/apache/poi/sl/draw/geom/Context;)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/sl/draw/geom/Guide;->evaluate(Lorg/apache/poi/sl/draw/geom/Context;)D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
