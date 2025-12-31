.class public Lorg/apache/poi/sl/draw/geom/Context;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final _anchor:Ljava/awt/geom/Rectangle2D;

.field final _ctx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field final _props:Lorg/apache/poi/sl/draw/geom/IAdjustableShape;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/draw/geom/CustomGeometry;Ljava/awt/geom/Rectangle2D;Lorg/apache/poi/sl/draw/geom/IAdjustableShape;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/Context;->_ctx:Ljava/util/Map;

    iput-object p3, p0, Lorg/apache/poi/sl/draw/geom/Context;->_props:Lorg/apache/poi/sl/draw/geom/IAdjustableShape;

    iput-object p2, p0, Lorg/apache/poi/sl/draw/geom/Context;->_anchor:Ljava/awt/geom/Rectangle2D;

    iget-object p2, p1, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->adjusts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/poi/sl/draw/geom/Guide;

    invoke-virtual {p0, p3}, Lorg/apache/poi/sl/draw/geom/Context;->evaluate(Lorg/apache/poi/sl/draw/geom/Formula;)D

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->guides:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/sl/draw/geom/Guide;

    invoke-virtual {p0, p2}, Lorg/apache/poi/sl/draw/geom/Context;->evaluate(Lorg/apache/poi/sl/draw/geom/Formula;)D

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public evaluate(Lorg/apache/poi/sl/draw/geom/Formula;)D
    .locals 4

    invoke-interface {p1, p0}, Lorg/apache/poi/sl/draw/geom/Formula;->evaluate(Lorg/apache/poi/sl/draw/geom/Context;)D

    move-result-wide v0

    instance-of v2, p1, Lorg/apache/poi/sl/draw/geom/Guide;

    if-eqz v2, :cond_0

    check-cast p1, Lorg/apache/poi/sl/draw/geom/Guide;

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/geom/Guide;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/apache/poi/sl/draw/geom/Context;->_ctx:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-wide v0
.end method

.method public getAdjustValue(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/Guide;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/Context;->_props:Lorg/apache/poi/sl/draw/geom/IAdjustableShape;

    invoke-interface {v0, p1}, Lorg/apache/poi/sl/draw/geom/IAdjustableShape;->getAdjustValue(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/Guide;

    move-result-object p1

    return-object p1
.end method

.method public getShapeAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/Context;->_anchor:Ljava/awt/geom/Rectangle2D;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)D
    .locals 2

    const-string v0, "(\\+|-)?\\d+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/Context;->_ctx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-string v0, "_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/sl/draw/geom/BuiltInGuide;->valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/BuiltInGuide;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/geom/Context;->evaluate(Lorg/apache/poi/sl/draw/geom/Formula;)D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
