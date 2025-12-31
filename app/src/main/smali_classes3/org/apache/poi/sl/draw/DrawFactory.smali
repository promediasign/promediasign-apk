.class public Lorg/apache/poi/sl/draw/DrawFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final defaultFactory:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/poi/sl/draw/DrawFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/sl/draw/DrawFactory;->defaultFactory:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Lorg/apache/poi/sl/draw/Drawable;->DRAW_FACTORY:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p0, v1}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/draw/DrawFactory;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    sget-object v1, Lorg/apache/poi/sl/draw/DrawFactory;->defaultFactory:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/draw/DrawFactory;

    :cond_2
    if-nez v1, :cond_3

    new-instance v1, Lorg/apache/poi/sl/draw/DrawFactory;

    invoke-direct {v1}, Lorg/apache/poi/sl/draw/DrawFactory;-><init>()V

    :cond_3
    if-eqz p0, :cond_4

    if-nez v0, :cond_4

    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->DRAW_FACTORY:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p0, v0, v1}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    :cond_4
    return-object v1
.end method

.method public static setDefaultFactory(Lorg/apache/poi/sl/draw/DrawFactory;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/draw/DrawFactory;->defaultFactory:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public drawShape(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/Shape;Ljava/awt/geom/Rectangle2D;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;",
            "Ljava/awt/geom/Rectangle2D;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/Shape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/awt/geom/Rectangle2D;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v1}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/geom/AffineTransform;

    new-instance v3, Ljava/awt/geom/AffineTransform;

    invoke-direct {v3}, Ljava/awt/geom/AffineTransform;-><init>()V

    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p3}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v4

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-virtual {p3}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v6

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-virtual {p3}, Ljava/awt/geom/Rectangle2D;->getCenterX()D

    move-result-wide v8

    invoke-virtual {p3}, Ljava/awt/geom/Rectangle2D;->getCenterY()D

    move-result-wide v10

    invoke-virtual {v3, v8, v9, v10, v11}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getCenterX()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getCenterY()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, v1, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Shape;)Lorg/apache/poi/sl/draw/Drawable;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/apache/poi/sl/draw/Drawable;->applyTransform(Ljava/awt/Graphics2D;)V

    invoke-interface {p2, p1}, Lorg/apache/poi/sl/draw/Drawable;->draw(Ljava/awt/Graphics2D;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1, v2}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    return-void

    :goto_1
    sget-object p3, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, p3, v2}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    throw p2

    :cond_2
    :goto_2
    return-void
.end method

.method public fixFonts(Ljava/awt/Graphics2D;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const-string v3, "Lucida Bright"

    invoke-static {}, Lorg/apache/poi/util/JvmBugs;->hasLineBreakMeasurerBug()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    sget-object v4, Lorg/apache/poi/sl/draw/Drawable;->FONT_MAP:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v4}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v4, v5}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    :cond_1
    new-array p1, v1, [[Ljava/lang/String;

    const-string v4, "Calibri"

    const-string v6, "Lucida Sans"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v0

    const-string v4, "Cambria"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v2

    const-string v4, "Times New Roman"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, p1, v6

    const-string v4, "serif"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, p1, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v4, v0

    aget-object v4, v4, v2

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/2addr v3, v2

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/Background;)Lorg/apache/poi/sl/draw/DrawBackground;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Background<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawBackground;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/poi/sl/draw/DrawBackground;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawBackground;-><init>(Lorg/apache/poi/sl/usermodel/Background;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/ConnectorShape;)Lorg/apache/poi/sl/draw/DrawConnectorShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/ConnectorShape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawConnectorShape;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/poi/sl/draw/DrawConnectorShape;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawConnectorShape;-><init>(Lorg/apache/poi/sl/usermodel/ConnectorShape;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/FreeformShape;)Lorg/apache/poi/sl/draw/DrawFreeformShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/FreeformShape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawFreeformShape;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/poi/sl/draw/DrawFreeformShape;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawFreeformShape;-><init>(Lorg/apache/poi/sl/usermodel/FreeformShape;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/GraphicalFrame;)Lorg/apache/poi/sl/draw/DrawGraphicalFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/GraphicalFrame<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawGraphicalFrame;"
        }
    .end annotation

    .line 4
    new-instance v0, Lorg/apache/poi/sl/draw/DrawGraphicalFrame;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawGraphicalFrame;-><init>(Lorg/apache/poi/sl/usermodel/GraphicalFrame;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/GroupShape;)Lorg/apache/poi/sl/draw/DrawGroupShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/GroupShape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawGroupShape;"
        }
    .end annotation

    .line 5
    new-instance v0, Lorg/apache/poi/sl/draw/DrawGroupShape;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawGroupShape;-><init>(Lorg/apache/poi/sl/usermodel/GroupShape;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/MasterSheet;)Lorg/apache/poi/sl/draw/DrawMasterSheet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/MasterSheet<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawMasterSheet;"
        }
    .end annotation

    .line 6
    new-instance v0, Lorg/apache/poi/sl/draw/DrawMasterSheet;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawMasterSheet;-><init>(Lorg/apache/poi/sl/usermodel/MasterSheet;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/PictureShape;)Lorg/apache/poi/sl/draw/DrawPictureShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/PictureShape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawPictureShape;"
        }
    .end annotation

    .line 7
    new-instance v0, Lorg/apache/poi/sl/draw/DrawPictureShape;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawPictureShape;-><init>(Lorg/apache/poi/sl/usermodel/PictureShape;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/Sheet;)Lorg/apache/poi/sl/draw/DrawSheet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Sheet<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawSheet;"
        }
    .end annotation

    .line 8
    new-instance v0, Lorg/apache/poi/sl/draw/DrawSheet;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawSheet;-><init>(Lorg/apache/poi/sl/usermodel/Sheet;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/Slide;)Lorg/apache/poi/sl/draw/DrawSlide;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Slide<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawSlide;"
        }
    .end annotation

    .line 9
    new-instance v0, Lorg/apache/poi/sl/draw/DrawSlide;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawSlide;-><init>(Lorg/apache/poi/sl/usermodel/Slide;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/TableShape;)Lorg/apache/poi/sl/draw/DrawTableShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TableShape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawTableShape;"
        }
    .end annotation

    .line 10
    new-instance v0, Lorg/apache/poi/sl/draw/DrawTableShape;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawTableShape;-><init>(Lorg/apache/poi/sl/usermodel/TableShape;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/TextBox;)Lorg/apache/poi/sl/draw/DrawTextBox;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TextBox<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawTextBox;"
        }
    .end annotation

    .line 11
    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextBox;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawTextBox;-><init>(Lorg/apache/poi/sl/usermodel/TextBox;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/TextParagraph;)Lorg/apache/poi/sl/draw/DrawTextParagraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TextParagraph<",
            "***>;)",
            "Lorg/apache/poi/sl/draw/DrawTextParagraph;"
        }
    .end annotation

    .line 12
    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawTextParagraph;-><init>(Lorg/apache/poi/sl/usermodel/TextParagraph;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/TextShape;)Lorg/apache/poi/sl/draw/DrawTextShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TextShape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawTextShape;"
        }
    .end annotation

    .line 13
    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextShape;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawTextShape;-><init>(Lorg/apache/poi/sl/usermodel/TextShape;)V

    return-object v0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/Shape;)Lorg/apache/poi/sl/draw/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/Drawable;"
        }
    .end annotation

    .line 14
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/TextBox;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/sl/usermodel/TextBox;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/TextBox;)Lorg/apache/poi/sl/draw/DrawTextBox;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/FreeformShape;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/poi/sl/usermodel/FreeformShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/FreeformShape;)Lorg/apache/poi/sl/draw/DrawFreeformShape;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/TextShape;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/apache/poi/sl/usermodel/TextShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/TextShape;)Lorg/apache/poi/sl/draw/DrawTextShape;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/TableShape;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/apache/poi/sl/usermodel/TableShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/TableShape;)Lorg/apache/poi/sl/draw/DrawTableShape;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/GroupShape;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/apache/poi/sl/usermodel/GroupShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/GroupShape;)Lorg/apache/poi/sl/draw/DrawGroupShape;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/PictureShape;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/apache/poi/sl/usermodel/PictureShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/PictureShape;)Lorg/apache/poi/sl/draw/DrawPictureShape;

    move-result-object p1

    return-object p1

    :cond_5
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/GraphicalFrame;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/apache/poi/sl/usermodel/GraphicalFrame;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/GraphicalFrame;)Lorg/apache/poi/sl/draw/DrawGraphicalFrame;

    move-result-object p1

    return-object p1

    :cond_6
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/Background;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/apache/poi/sl/usermodel/Background;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Background;)Lorg/apache/poi/sl/draw/DrawBackground;

    move-result-object p1

    return-object p1

    :cond_7
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/ConnectorShape;

    if-eqz v0, :cond_8

    check-cast p1, Lorg/apache/poi/sl/usermodel/ConnectorShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/ConnectorShape;)Lorg/apache/poi/sl/draw/DrawConnectorShape;

    move-result-object p1

    return-object p1

    :cond_8
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/Slide;

    if-eqz v0, :cond_9

    check-cast p1, Lorg/apache/poi/sl/usermodel/Slide;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Slide;)Lorg/apache/poi/sl/draw/DrawSlide;

    move-result-object p1

    return-object p1

    :cond_9
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/MasterSheet;

    if-eqz v0, :cond_a

    check-cast p1, Lorg/apache/poi/sl/usermodel/MasterSheet;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/MasterSheet;)Lorg/apache/poi/sl/draw/DrawMasterSheet;

    move-result-object p1

    return-object p1

    :cond_a
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/Sheet;

    if-eqz v0, :cond_b

    check-cast p1, Lorg/apache/poi/sl/usermodel/Sheet;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Sheet;)Lorg/apache/poi/sl/draw/DrawSheet;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/poi/sl/draw/DrawNotImplemented;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lorg/apache/poi/sl/draw/DrawNothing;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawNothing;-><init>(Lorg/apache/poi/sl/usermodel/Shape;)V

    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported shape type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontManager(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFontManager;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->FONT_HANDLER:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/sl/draw/DrawFontManager;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/sl/draw/DrawFontManagerDefault;

    invoke-direct {p1}, Lorg/apache/poi/sl/draw/DrawFontManagerDefault;-><init>()V

    :goto_0
    return-object p1
.end method

.method public getPaint(Lorg/apache/poi/sl/usermodel/PlaceableShape;)Lorg/apache/poi/sl/draw/DrawPaint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/PlaceableShape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawPaint;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/sl/draw/DrawPaint;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawPaint;-><init>(Lorg/apache/poi/sl/usermodel/PlaceableShape;)V

    return-object v0
.end method

.method public getTextFragment(Ljava/awt/font/TextLayout;Ljava/text/AttributedString;)Lorg/apache/poi/sl/draw/DrawTextFragment;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/sl/draw/DrawTextFragment;-><init>(Ljava/awt/font/TextLayout;Ljava/text/AttributedString;)V

    return-object v0
.end method
