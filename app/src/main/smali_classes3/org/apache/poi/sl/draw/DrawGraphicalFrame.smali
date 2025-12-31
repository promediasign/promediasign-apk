.class public Lorg/apache/poi/sl/draw/DrawGraphicalFrame;
.super Lorg/apache/poi/sl/draw/DrawShape;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/GraphicalFrame;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/GraphicalFrame<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawShape;-><init>(Lorg/apache/poi/sl/usermodel/Shape;)V

    return-void
.end method


# virtual methods
.method public draw(Ljava/awt/Graphics2D;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawShape;->getShape()Lorg/apache/poi/sl/usermodel/Shape;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/GraphicalFrame;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/GraphicalFrame;->getFallbackPicture()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/PictureShape;)Lorg/apache/poi/sl/draw/DrawPictureShape;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->draw(Ljava/awt/Graphics2D;)V

    return-void
.end method
