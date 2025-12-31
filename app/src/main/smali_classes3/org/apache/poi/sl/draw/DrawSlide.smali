.class public Lorg/apache/poi/sl/draw/DrawSlide;
.super Lorg/apache/poi/sl/draw/DrawSheet;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/Slide;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Slide<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawSheet;-><init>(Lorg/apache/poi/sl/usermodel/Sheet;)V

    return-void
.end method


# virtual methods
.method public draw(Ljava/awt/Graphics2D;)V
    .locals 3

    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->CURRENT_SLIDE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/DrawSheet;->sheet:Lorg/apache/poi/sl/usermodel/Sheet;

    invoke-virtual {p1, v0, v1}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/poi/sl/draw/DrawSheet;->sheet:Lorg/apache/poi/sl/usermodel/Sheet;

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/Sheet;->getBackground()Lorg/apache/poi/sl/usermodel/Background;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Background;)Lorg/apache/poi/sl/draw/DrawBackground;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/poi/sl/draw/Drawable;->draw(Ljava/awt/Graphics2D;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/sl/draw/DrawSheet;->draw(Ljava/awt/Graphics2D;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    return-void
.end method
