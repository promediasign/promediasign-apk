.class public Lorg/apache/poi/sl/draw/geom/Path;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field _fill:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

.field _h:J

.field _stroke:Z

.field _w:J

.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/geom/PathCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lorg/apache/poi/sl/draw/geom/Path;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/draw/binding/CTPath2D;)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/poi/sl/draw/geom/Path$1;->$SwitchMap$org$apache$poi$sl$draw$binding$STPathFillMode:[I

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTPath2D;->getFill()Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NORM:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->_fill:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->LIGHTEN_LESS:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->LIGHTEN:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->DARKEN_LESS:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->DARKEN:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    goto :goto_0

    :cond_4
    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NONE:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTPath2D;->isStroke()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->_stroke:Z

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTPath2D;->isSetW()Z

    move-result v0

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTPath2D;->getW()J

    move-result-wide v5

    goto :goto_2

    :cond_5
    move-wide v5, v3

    :goto_2
    iput-wide v5, p0, Lorg/apache/poi/sl/draw/geom/Path;->_w:J

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTPath2D;->isSetH()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTPath2D;->getH()J

    move-result-wide v3

    :cond_6
    iput-wide v3, p0, Lorg/apache/poi/sl/draw/geom/Path;->_h:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTPath2D;->getCloseOrMoveToOrLnTo()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lorg/apache/poi/sl/draw/binding/CTPath2DMoveTo;

    if-eqz v3, :cond_7

    check-cast v0, Lorg/apache/poi/sl/draw/binding/CTPath2DMoveTo;

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/binding/CTPath2DMoveTo;->getPt()Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    new-instance v4, Lorg/apache/poi/sl/draw/geom/MoveToCommand;

    invoke-direct {v4, v0}, Lorg/apache/poi/sl/draw/geom/MoveToCommand;-><init>(Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;)V

    :goto_4
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    instance-of v3, v0, Lorg/apache/poi/sl/draw/binding/CTPath2DLineTo;

    if-eqz v3, :cond_8

    check-cast v0, Lorg/apache/poi/sl/draw/binding/CTPath2DLineTo;

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/binding/CTPath2DLineTo;->getPt()Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    new-instance v4, Lorg/apache/poi/sl/draw/geom/LineToCommand;

    invoke-direct {v4, v0}, Lorg/apache/poi/sl/draw/geom/LineToCommand;-><init>(Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;)V

    goto :goto_4

    :cond_8
    instance-of v3, v0, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;

    if-eqz v3, :cond_9

    check-cast v0, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;

    iget-object v3, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    new-instance v4, Lorg/apache/poi/sl/draw/geom/ArcToCommand;

    invoke-direct {v4, v0}, Lorg/apache/poi/sl/draw/geom/ArcToCommand;-><init>(Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;)V

    goto :goto_4

    :cond_9
    instance-of v3, v0, Lorg/apache/poi/sl/draw/binding/CTPath2DQuadBezierTo;

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    check-cast v0, Lorg/apache/poi/sl/draw/binding/CTPath2DQuadBezierTo;

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/binding/CTPath2DQuadBezierTo;->getPt()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/binding/CTPath2DQuadBezierTo;->getPt()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    iget-object v4, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    new-instance v5, Lorg/apache/poi/sl/draw/geom/QuadToCommand;

    invoke-direct {v5, v3, v0}, Lorg/apache/poi/sl/draw/geom/QuadToCommand;-><init>(Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    instance-of v3, v0, Lorg/apache/poi/sl/draw/binding/CTPath2DCubicBezierTo;

    if-eqz v3, :cond_b

    check-cast v0, Lorg/apache/poi/sl/draw/binding/CTPath2DCubicBezierTo;

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/binding/CTPath2DCubicBezierTo;->getPt()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/binding/CTPath2DCubicBezierTo;->getPt()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/binding/CTPath2DCubicBezierTo;->getPt()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    iget-object v5, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    new-instance v6, Lorg/apache/poi/sl/draw/geom/CurveToCommand;

    invoke-direct {v6, v3, v4, v0}, Lorg/apache/poi/sl/draw/geom/CurveToCommand;-><init>(Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_b
    instance-of v3, v0, Lorg/apache/poi/sl/draw/binding/CTPath2DClose;

    if-eqz v3, :cond_c

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/sl/draw/geom/ClosePathCommand;

    invoke-direct {v3}, Lorg/apache/poi/sl/draw/geom/ClosePathCommand;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported path segment: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->_w:J

    iput-wide v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->_h:J

    if-eqz p1, :cond_0

    sget-object p1, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NORM:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NONE:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/Path;->_fill:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    iput-boolean p2, p0, Lorg/apache/poi/sl/draw/geom/Path;->_stroke:Z

    return-void
.end method


# virtual methods
.method public addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFill()Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->_fill:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    return-object v0
.end method

.method public getH()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->_h:J

    return-wide v0
.end method

.method public getPath(Lorg/apache/poi/sl/draw/geom/Context;)Ljava/awt/geom/Path2D$Double;
    .locals 3

    new-instance v0, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Path2D$Double;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/Path;->commands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/sl/draw/geom/PathCommand;

    invoke-interface {v2, v0, p1}, Lorg/apache/poi/sl/draw/geom/PathCommand;->execute(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/sl/draw/geom/Context;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getW()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->_w:J

    return-wide v0
.end method

.method public isFilled()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->_fill:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NONE:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStroked()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/sl/draw/geom/Path;->_stroke:Z

    return v0
.end method
