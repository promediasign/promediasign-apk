.class public Lorg/apache/poi/sl/draw/geom/ArcToCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/PathCommand;


# instance fields
.field private hr:Ljava/lang/String;

.field private stAng:Ljava/lang/String;

.field private swAng:Ljava/lang/String;

.field private wr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;->getHR()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->hr:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;->getWR()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->wr:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;->getStAng()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->stAng:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;->getSwAng()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->swAng:Ljava/lang/String;

    return-void
.end method

.method private convertOoxml2AwtAngle(DDD)D
    .locals 6

    div-double/2addr p5, p3

    neg-double p1, p1

    const-wide p3, 0x4076800000000000L    # 360.0

    rem-double v0, p1, p3

    sub-double/2addr p1, v0

    const-wide v2, 0x4056800000000000L    # 90.0

    div-double v2, v0, v2

    double-to-int v2, v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_3

    const/4 v3, -0x2

    const-wide v4, 0x4066800000000000L    # 180.0

    if-eq v2, v3, :cond_2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-double/2addr p1, p3

    sub-double/2addr v0, p3

    goto :goto_0

    :cond_1
    add-double/2addr p1, v4

    sub-double/2addr v0, v4

    goto :goto_0

    :cond_2
    sub-double/2addr p1, v4

    add-double/2addr v0, v4

    goto :goto_0

    :cond_3
    sub-double/2addr p1, p3

    add-double/2addr v0, p3

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide p3

    invoke-static {p3, p4, p5, p6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p3

    add-double/2addr p3, p1

    return-wide p3
.end method


# virtual methods
.method public execute(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/sl/draw/geom/Context;)V
    .locals 30

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    iget-object v1, v7, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->wr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v8

    iget-object v1, v7, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->hr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v10

    iget-object v1, v7, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->stAng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v1

    const-wide v3, 0x40ed4c0000000000L    # 60000.0

    div-double v12, v1, v3

    iget-object v1, v7, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->swAng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v0

    div-double v14, v0, v3

    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide v3, v8

    move-wide v5, v10

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->convertOoxml2AwtAngle(DDD)D

    move-result-wide v25

    add-double v1, v12, v14

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->convertOoxml2AwtAngle(DDD)D

    move-result-wide v0

    sub-double v27, v0, v25

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v0, v0, v10

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Path2D$Double;->getCurrentPoint()Ljava/awt/geom/Point2D;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v5, v5, v8

    sub-double/2addr v3, v5

    sub-double v17, v3, v8

    invoke-virtual {v2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, v10

    sub-double/2addr v2, v0

    sub-double v19, v2, v10

    new-instance v0, Ljava/awt/geom/Arc2D$Double;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double v21, v8, v1

    mul-double v23, v10, v1

    const/16 v29, 0x0

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v29}, Ljava/awt/geom/Arc2D$Double;-><init>(DDDDDDI)V

    const/4 v1, 0x1

    move-object/from16 v2, p1

    invoke-virtual {v2, v0, v1}, Ljava/awt/geom/Path2D$Double;->append(Ljava/awt/Shape;Z)V

    return-void
.end method
