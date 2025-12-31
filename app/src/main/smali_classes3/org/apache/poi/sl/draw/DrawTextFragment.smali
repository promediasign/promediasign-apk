.class public Lorg/apache/poi/sl/draw/DrawTextFragment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/Drawable;


# instance fields
.field final layout:Ljava/awt/font/TextLayout;

.field final str:Ljava/text/AttributedString;

.field x:D

.field y:D


# direct methods
.method public constructor <init>(Ljava/awt/font/TextLayout;Ljava/text/AttributedString;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->layout:Ljava/awt/font/TextLayout;

    iput-object p2, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->str:Ljava/text/AttributedString;

    return-void
.end method


# virtual methods
.method public applyTransform(Ljava/awt/Graphics2D;)V
    .locals 0

    return-void
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->str:Ljava/text/AttributedString;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->y:D

    iget-object v2, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->layout:Ljava/awt/font/TextLayout;

    invoke-virtual {v2}, Ljava/awt/font/TextLayout;->getAscent()F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v0, v2

    sget-object v2, Lorg/apache/poi/sl/draw/Drawable;->TEXT_RENDERING_MODE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v2}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->layout:Ljava/awt/font/TextLayout;

    iget-wide v3, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->x:D

    double-to-float v3, v3

    double-to-float v0, v0

    invoke-virtual {v2, p1, v3, v0}, Ljava/awt/font/TextLayout;->draw(Ljava/awt/Graphics2D;FF)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->str:Ljava/text/AttributedString;

    invoke-virtual {v2}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    iget-wide v3, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->x:D

    double-to-float v3, v3

    double-to-float v0, v0

    invoke-virtual {p1, v2, v3, v0}, Ljava/awt/Graphics2D;->drawString(Ljava/text/AttributedCharacterIterator;FF)V

    :goto_0
    return-void
.end method

.method public drawContent(Ljava/awt/Graphics2D;)V
    .locals 0

    return-void
.end method

.method public getAttributedString()Ljava/text/AttributedString;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->str:Ljava/text/AttributedString;

    return-object v0
.end method

.method public getHeight()F
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->layout:Ljava/awt/font/TextLayout;

    invoke-virtual {v0}, Ljava/awt/font/TextLayout;->getAscent()F

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->layout:Ljava/awt/font/TextLayout;

    invoke-virtual {v1}, Ljava/awt/font/TextLayout;->getDescent()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getLeading()F

    move-result v1

    add-float/2addr v1, v0

    float-to-double v0, v1

    double-to-float v0, v0

    return v0
.end method

.method public getLayout()Ljava/awt/font/TextLayout;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->layout:Ljava/awt/font/TextLayout;

    return-object v0
.end method

.method public getLeading()F
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->layout:Ljava/awt/font/TextLayout;

    invoke-virtual {v0}, Ljava/awt/font/TextLayout;->getLeading()F

    move-result v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->layout:Ljava/awt/font/TextLayout;

    invoke-virtual {v0}, Ljava/awt/font/TextLayout;->getAscent()F

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->layout:Ljava/awt/font/TextLayout;

    invoke-virtual {v1}, Ljava/awt/font/TextLayout;->getDescent()F

    move-result v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3fc3333333333333L    # 0.15

    mul-double v0, v0, v2

    :cond_0
    double-to-float v0, v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->str:Ljava/text/AttributedString;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/text/CharacterIterator;->first()C

    move-result v2

    :goto_0
    const v3, 0xffff

    if-eq v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->next()C

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->layout:Ljava/awt/font/TextLayout;

    invoke-virtual {v0}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result v0

    return v0
.end method

.method public setPosition(DD)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->x:D

    iput-wide p3, p0, Lorg/apache/poi/sl/draw/DrawTextFragment;->y:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
