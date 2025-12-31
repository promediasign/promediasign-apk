.class public Lorg/apache/poi/sl/draw/DrawMasterSheet;
.super Lorg/apache/poi/sl/draw/DrawSheet;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/MasterSheet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/MasterSheet<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawSheet;-><init>(Lorg/apache/poi/sl/usermodel/Sheet;)V

    return-void
.end method


# virtual methods
.method public canDraw(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/Shape;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;)Z"
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->CURRENT_SLIDE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/sl/usermodel/Slide;

    instance-of v0, p2, Lorg/apache/poi/sl/usermodel/SimpleShape;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/apache/poi/sl/usermodel/SimpleShape;

    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Lorg/apache/poi/sl/usermodel/Slide;->getDisplayPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/Sheet;->getFollowMasterGraphics()Z

    move-result p1

    return p1
.end method
