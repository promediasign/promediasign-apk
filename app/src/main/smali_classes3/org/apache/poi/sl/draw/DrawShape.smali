.class public Lorg/apache/poi/sl/draw/DrawShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/Drawable;


# instance fields
.field protected final shape:Lorg/apache/poi/sl/usermodel/Shape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/Shape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    return-void
.end method

.method public static getAnchor(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    return-object p1

    :cond_0
    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p0, v0}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/geom/AffineTransform;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    invoke-interface {p0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public static getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Lorg/apache/poi/sl/usermodel/PlaceableShape<",
            "**>;)",
            "Ljava/awt/geom/Rectangle2D;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public static getStroke(Lorg/apache/poi/sl/usermodel/StrokeStyle;)Ljava/awt/BasicStroke;
    .locals 8

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getLineWidth()D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3e800000    # 0.25f

    const/high16 v5, 0x3e800000    # 0.25f

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->SOLID:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    :cond_1
    iget-object v0, v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->pattern:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v2, v0

    new-array v2, v2, [F

    const/4 v3, 0x0

    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_2

    aget v4, v0, v3

    int-to-float v4, v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float v6, v6, v4

    aput v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object v6, v2

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    move-object v6, v0

    :goto_2
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getLineCap()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    move-result-object p0

    if-nez p0, :cond_4

    sget-object p0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->FLAT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    :cond_4
    sget-object v0, Lorg/apache/poi/sl/draw/DrawShape$1;->$SwitchMap$org$apache$poi$sl$usermodel$StrokeStyle$LineCap:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    const/4 v3, 0x2

    goto :goto_3

    :cond_6
    const/4 v3, 0x1

    :goto_3
    new-instance p0, Ljava/awt/BasicStroke;

    const/4 v7, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move v2, v5

    invoke-direct/range {v1 .. v7}, Ljava/awt/BasicStroke;-><init>(FIIF[FF)V

    return-object p0
.end method

.method public static isHSLF(Lorg/apache/poi/sl/usermodel/Shape;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "hslf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static safeScale(DD)D
    .locals 5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    cmpl-double v4, p0, v2

    if-nez v4, :cond_0

    return-wide v0

    :cond_0
    cmpl-double v4, p2, v2

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    div-double v0, p0, p2

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public applyTransform(Ljava/awt/Graphics2D;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    instance-of v3, v2, Lorg/apache/poi/sl/usermodel/PlaceableShape;

    if-nez v3, :cond_0

    return-void

    :cond_0
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/sl/usermodel/PlaceableShape;

    invoke-static {v2}, Lorg/apache/poi/sl/draw/DrawShape;->isHSLF(Lorg/apache/poi/sl/usermodel/Shape;)Z

    move-result v2

    sget-object v4, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {v1, v4}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/awt/geom/AffineTransform;

    if-nez v4, :cond_1

    new-instance v4, Ljava/awt/geom/AffineTransform;

    invoke-direct {v4}, Ljava/awt/geom/AffineTransform;-><init>()V

    :cond_1
    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v5

    invoke-interface {v5}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v5

    const/4 v6, 0x2

    const/16 v7, 0x72

    const/16 v8, 0x76

    const/16 v9, 0x68

    const/4 v10, 0x3

    const/4 v11, 0x1

    const/4 v12, 0x0

    new-array v13, v10, [C

    if-eqz v2, :cond_2

    aput-char v9, v13, v12

    aput-char v8, v13, v11

    aput-char v7, v13, v6

    goto :goto_0

    :cond_2
    aput-char v7, v13, v12

    aput-char v9, v13, v11

    aput-char v8, v13, v6

    :goto_0
    array-length v6, v13

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v6, :cond_f

    aget-char v15, v13, v14

    move-object/from16 v16, v13

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    if-eq v15, v9, :cond_d

    if-eq v15, v7, :cond_6

    if-ne v15, v8, :cond_5

    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getFlipVertical()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v7

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v17

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v19

    move/from16 v21, v14

    add-double v14, v17, v19

    invoke-virtual {v1, v7, v8, v14, v15}, Ljava/awt/Graphics2D;->translate(DD)V

    invoke-virtual {v1, v10, v11, v12, v13}, Ljava/awt/Graphics2D;->scale(DD)V

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v7

    neg-double v7, v7

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v10

    neg-double v10, v10

    invoke-virtual {v1, v7, v8, v10, v11}, Ljava/awt/Graphics2D;->translate(DD)V

    :cond_3
    :goto_2
    move v8, v2

    move-object/from16 v20, v4

    move-object/from16 v23, v5

    move v13, v6

    move-object v2, v1

    goto/16 :goto_7

    :cond_4
    move/from16 v21, v14

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected transform code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    move/from16 v21, v14

    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getRotation()D

    move-result-wide v7

    const-wide/16 v12, 0x0

    cmpl-double v14, v7, v12

    if-eqz v14, :cond_3

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getCenterX()D

    move-result-wide v14

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getCenterY()D

    move-result-wide v9

    const-wide v19, 0x4076800000000000L    # 360.0

    rem-double v7, v7, v19

    cmpg-double v22, v7, v12

    if-gez v22, :cond_7

    add-double v7, v7, v19

    :cond_7
    double-to-int v11, v7

    add-int/lit8 v11, v11, 0x2d

    div-int/lit8 v11, v11, 0x5a

    rem-int/lit8 v11, v11, 0x4

    const/4 v12, 0x1

    if-eq v11, v12, :cond_9

    const/4 v13, 0x3

    if-ne v11, v13, :cond_8

    goto :goto_3

    :cond_8
    move v13, v6

    move-wide/from16 v23, v7

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v11, 0x0

    move v8, v2

    move-object v2, v1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_5

    :cond_9
    :goto_3
    new-instance v12, Ljava/awt/geom/AffineTransform;

    if-eqz v2, :cond_a

    invoke-direct {v12, v4}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    move v13, v6

    move-wide/from16 v23, v7

    goto :goto_4

    :cond_a
    invoke-direct {v12}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {v12, v14, v15, v9, v10}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    move v13, v6

    move-wide/from16 v23, v7

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-virtual {v12, v6, v7}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    neg-double v6, v14

    neg-double v0, v9

    invoke-virtual {v12, v6, v7, v0, v1}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v12, v4}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    :goto_4
    invoke-virtual {v12, v14, v15, v9, v10}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-virtual {v12, v0, v1}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    neg-double v0, v14

    neg-double v6, v9

    invoke-virtual {v12, v0, v1, v6, v7}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v0

    invoke-interface {v0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v6

    move v8, v2

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v1

    invoke-static {v6, v7, v1, v2}, Lorg/apache/poi/sl/draw/DrawShape;->safeScale(DD)D

    move-result-wide v1

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v6

    move-wide/from16 v17, v1

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v0

    invoke-static {v6, v7, v0, v1}, Lorg/apache/poi/sl/draw/DrawShape;->safeScale(DD)D

    move-result-wide v0

    move-object/from16 v2, p1

    move-wide v6, v0

    move-wide/from16 v0, v17

    :goto_5
    invoke-virtual {v2, v14, v15, v9, v10}, Ljava/awt/Graphics2D;->translate(DD)V

    int-to-double v11, v11

    const-wide v17, 0x4056800000000000L    # 90.0

    mul-double v11, v11, v17

    sub-double v17, v23, v11

    move-object/from16 v20, v4

    move-object/from16 v23, v5

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    const-wide/16 v17, 0x0

    cmpl-double v22, v4, v17

    if-eqz v22, :cond_b

    invoke-virtual {v2, v4, v5}, Ljava/awt/Graphics2D;->rotate(D)V

    :cond_b
    invoke-virtual {v2, v0, v1, v6, v7}, Ljava/awt/Graphics2D;->scale(DD)V

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    cmpl-double v4, v0, v17

    if-eqz v4, :cond_c

    invoke-virtual {v2, v0, v1}, Ljava/awt/Graphics2D;->rotate(D)V

    :cond_c
    neg-double v0, v14

    neg-double v4, v9

    :goto_6
    invoke-virtual {v2, v0, v1, v4, v5}, Ljava/awt/Graphics2D;->translate(DD)V

    goto :goto_7

    :cond_d
    move v8, v2

    move-object/from16 v20, v4

    move-object/from16 v23, v5

    move/from16 v21, v14

    move-object v2, v1

    move-wide v0, v12

    move v13, v6

    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getFlipHorizontal()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual/range {v23 .. v23}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v4

    invoke-virtual/range {v23 .. v23}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual/range {v23 .. v23}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Ljava/awt/Graphics2D;->translate(DD)V

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v0, v1, v4, v5}, Ljava/awt/Graphics2D;->scale(DD)V

    invoke-virtual/range {v23 .. v23}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual/range {v23 .. v23}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v4

    neg-double v4, v4

    goto :goto_6

    :cond_e
    :goto_7
    add-int/lit8 v14, v21, 0x1

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v8

    move v6, v13

    move-object/from16 v13, v16

    move-object/from16 v4, v20

    move-object/from16 v5, v23

    const/16 v7, 0x72

    const/16 v8, 0x76

    const/16 v9, 0x68

    const/4 v10, 0x3

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_f
    return-void
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 0

    return-void
.end method

.method public drawContent(Ljava/awt/Graphics2D;)V
    .locals 0

    return-void
.end method

.method public getShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    return-object v0
.end method
