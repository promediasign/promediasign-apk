.class public Lorg/apache/poi/sl/draw/DrawFreeformShape;
.super Lorg/apache/poi/sl/draw/DrawAutoShape;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/FreeformShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/FreeformShape<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawAutoShape;-><init>(Lorg/apache/poi/sl/usermodel/AutoShape;)V

    return-void
.end method


# virtual methods
.method public computeOutlines(Ljava/awt/Graphics2D;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/sl/draw/geom/Outline;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawFreeformShape;->getShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/usermodel/FreeformShape;

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/FreeformShape;->getPath()Ljava/awt/geom/Path2D$Double;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v3}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/geom/AffineTransform;

    if-nez p1, :cond_0

    new-instance p1, Ljava/awt/geom/AffineTransform;

    invoke-direct {p1}, Ljava/awt/geom/AffineTransform;-><init>()V

    :cond_0
    invoke-virtual {p1, v2}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p1

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getFillStyle()Lorg/apache/poi/sl/usermodel/FillStyle;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getStrokeStyle()Lorg/apache/poi/sl/usermodel/StrokeStyle;

    move-result-object v1

    new-instance v3, Lorg/apache/poi/sl/draw/geom/Path;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/4 v4, 0x1

    :cond_2
    invoke-direct {v3, v2, v4}, Lorg/apache/poi/sl/draw/geom/Path;-><init>(ZZ)V

    new-instance v1, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-direct {v1, p1, v3}, Lorg/apache/poi/sl/draw/geom/Outline;-><init>(Ljava/awt/Shape;Lorg/apache/poi/sl/draw/geom/Path;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawFreeformShape;->getShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawFreeformShape;->getShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v0

    return-object v0
.end method

.method public getShape()Lorg/apache/poi/sl/usermodel/TextShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/TextShape<",
            "*+",
            "Lorg/apache/poi/sl/usermodel/TextParagraph<",
            "**+",
            "Lorg/apache/poi/sl/usermodel/TextRun;",
            ">;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    check-cast v0, Lorg/apache/poi/sl/usermodel/TextShape;

    return-object v0
.end method
