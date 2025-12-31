.class public Lcom/scand/svg/parser/support/GraphicsSVG;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private composite:Landroid/graphics/Xfermode;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mFontNames:[Ljava/lang/String;

.field private mGradient:Landroid/graphics/Shader;

.field private mGradientOpacity:Lcom/scand/svg/parser/support/ColorSVG;

.field private mPaintFill:Landroid/graphics/Paint;

.field private mPaintStroke:Landroid/graphics/Paint;

.field private mPaintText:Landroid/graphics/Paint;

.field private storedPaintFillColor:I

.field private storedPaintStrokeColor:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/scand/svg/parser/support/GraphicsSVG;-><init>(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Canvas;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mCanvas:Landroid/graphics/Canvas;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintStroke:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintText:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->composite:Landroid/graphics/Xfermode;

    return-void
.end method

.method private checkAndroidFont(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 1

    const-string v0, "serif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    :goto_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string v0, "sans-serif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_1
    const-string v0, "monospace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private clearGradient(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintFill:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintStroke:Landroid/graphics/Paint;

    :goto_0
    if-eqz p1, :cond_1

    iget p1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->storedPaintFillColor:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->storedPaintStrokeColor:I

    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iput-object p1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mGradient:Landroid/graphics/Shader;

    iput-object p1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mGradientOpacity:Lcom/scand/svg/parser/support/ColorSVG;

    return-void
.end method

.method private colorsProcess([Lcom/scand/svg/parser/support/ColorSVG;)[I
    .locals 5

    array-length v0, p1

    new-array v0, v0, [I

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, p1, v2

    iget v4, v4, Lcom/scand/svg/parser/support/ColorSVG;->mValue:I

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createNewFont([Ljava/lang/String;ILcom/scand/svg/parser/ExternalSupport;)Landroid/graphics/Typeface;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v0, p1, v3

    invoke-static {v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->dequote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/scand/svg/parser/support/GraphicsSVG;->checkAndroidFont(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    if-nez v4, :cond_0

    aget-object v5, p1, v2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v0, p2, p3}, Lcom/scand/svg/parser/support/GraphicsSVG;->getExternalFont(Ljava/lang/String;ILcom/scand/svg/parser/ExternalSupport;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    :cond_0
    move-object v0, v4

    :goto_1
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public static dequote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method private getExternalFont(Ljava/lang/String;ILcom/scand/svg/parser/ExternalSupport;)Landroid/graphics/Typeface;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method private setGradientFill(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintFill:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintStroke:Landroid/graphics/Paint;

    :goto_0
    iget-object v1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mGradient:Landroid/graphics/Shader;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    iput p1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->storedPaintFillColor:I

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    iput p1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->storedPaintStrokeColor:I

    :goto_1
    iget-object p1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mGradientOpacity:Lcom/scand/svg/parser/support/ColorSVG;

    iget p1, p1, Lcom/scand/svg/parser/support/ColorSVG;->mValue:I

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mGradient:Landroid/graphics/Shader;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_2
    return-void
.end method


# virtual methods
.method public deriveFont()V
    .locals 0

    .line 1
    return-void
.end method

.method public deriveFont(F)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public deriveFont(IILcom/scand/svg/parser/ExternalSupport;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mFontNames:[Ljava/lang/String;

    invoke-direct {p0, v0, p1, p3}, Lcom/scand/svg/parser/support/GraphicsSVG;->createNewFont([Ljava/lang/String;ILcom/scand/svg/parser/ExternalSupport;)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object p3, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintText:Landroid/graphics/Paint;

    int-to-float p2, p2

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p2, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public deriveFont(ILcom/scand/svg/parser/ExternalSupport;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mFontNames:[Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/scand/svg/parser/support/GraphicsSVG;->createNewFont([Ljava/lang/String;ILcom/scand/svg/parser/ExternalSupport;)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object p2, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public draw(Lcom/scand/svg/parser/support/GraphElement;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->setGradientFill(Z)V

    iget-object v1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v1

    iget-object v2, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->composite:Landroid/graphics/Xfermode;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_0
    iget-object v2, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintStroke:Landroid/graphics/Paint;

    invoke-interface {p1, v2, v3}, Lcom/scand/svg/parser/support/GraphElement;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->composite:Landroid/graphics/Xfermode;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_1
    invoke-direct {p0, v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->clearGradient(Z)V

    return-void
.end method

.method public drawString(Ljava/lang/String;FF)V
    .locals 2

    iget-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public fill(Lcom/scand/svg/parser/support/GraphElement;)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->setGradientFill(Z)V

    iget-object v1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v1

    iget-object v2, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->composite:Landroid/graphics/Xfermode;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_0
    iget-object v2, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintFill:Landroid/graphics/Paint;

    invoke-interface {p1, v2, v3}, Lcom/scand/svg/parser/support/GraphElement;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->composite:Landroid/graphics/Xfermode;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_1
    invoke-direct {p0, v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->clearGradient(Z)V

    return-void
.end method

.method public fillRect(IIII)V
    .locals 6

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getFontSize()I
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getFontStyle()I
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    return v0
.end method

.method public postTranslate(II)V
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mCanvas:Landroid/graphics/Canvas;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public restore()V
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setFont([Ljava/lang/String;IILcom/scand/svg/parser/ExternalSupport;)V
    .locals 0

    iput-object p1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mFontNames:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, p4}, Lcom/scand/svg/parser/support/GraphicsSVG;->createNewFont([Ljava/lang/String;ILcom/scand/svg/parser/ExternalSupport;)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object p2, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintText:Landroid/graphics/Paint;

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p2, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setGradient(Lcom/scand/svg/parser/support/LinearGradientPaint;Lcom/scand/svg/parser/support/ColorSVG;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/scand/svg/parser/support/LinearGradientPaint;->colors:[Lcom/scand/svg/parser/support/ColorSVG;

    invoke-direct {p0, v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->colorsProcess([Lcom/scand/svg/parser/support/ColorSVG;)[I

    move-result-object v6

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p1, Lcom/scand/svg/parser/support/LinearGradientPaint;->x1:F

    iget v3, p1, Lcom/scand/svg/parser/support/LinearGradientPaint;->y1:F

    iget v4, p1, Lcom/scand/svg/parser/support/LinearGradientPaint;->x2:F

    iget v5, p1, Lcom/scand/svg/parser/support/LinearGradientPaint;->y2:F

    iget-object v7, p1, Lcom/scand/svg/parser/support/LinearGradientPaint;->positions:[F

    iget-object v8, p1, Lcom/scand/svg/parser/support/LinearGradientPaint;->mTileMode:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mGradient:Landroid/graphics/Shader;

    iget-object p1, p1, Lcom/scand/svg/parser/support/LinearGradientPaint;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iput-object p2, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mGradientOpacity:Lcom/scand/svg/parser/support/ColorSVG;

    return-void
.end method

.method public setGradient(Lcom/scand/svg/parser/support/RadialGradientPaint;Lcom/scand/svg/parser/support/ColorSVG;)V
    .locals 8

    .line 2
    iget-object v0, p1, Lcom/scand/svg/parser/support/RadialGradientPaint;->colors:[Lcom/scand/svg/parser/support/ColorSVG;

    invoke-direct {p0, v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->colorsProcess([Lcom/scand/svg/parser/support/ColorSVG;)[I

    move-result-object v5

    new-instance v0, Landroid/graphics/RadialGradient;

    iget v2, p1, Lcom/scand/svg/parser/support/RadialGradientPaint;->x:F

    iget v3, p1, Lcom/scand/svg/parser/support/RadialGradientPaint;->y:F

    iget v4, p1, Lcom/scand/svg/parser/support/RadialGradientPaint;->rad:F

    iget-object v6, p1, Lcom/scand/svg/parser/support/RadialGradientPaint;->positions:[F

    iget-object v7, p1, Lcom/scand/svg/parser/support/RadialGradientPaint;->tileMode:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mGradient:Landroid/graphics/Shader;

    iget-object p1, p1, Lcom/scand/svg/parser/support/RadialGradientPaint;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iput-object p2, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mGradientOpacity:Lcom/scand/svg/parser/support/ColorSVG;

    return-void
.end method

.method public setStroke(Lcom/scand/svg/parser/support/BasicStroke;)V
    .locals 3

    iget-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintStroke:Landroid/graphics/Paint;

    iget v1, p1, Lcom/scand/svg/parser/support/BasicStroke;->mLineWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintStroke:Landroid/graphics/Paint;

    iget-object v1, p1, Lcom/scand/svg/parser/support/BasicStroke;->mCapStyle:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintStroke:Landroid/graphics/Paint;

    iget-object v1, p1, Lcom/scand/svg/parser/support/BasicStroke;->mJoinStyle:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p1, Lcom/scand/svg/parser/support/BasicStroke;->mDashArray:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintStroke:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    iget-object v2, p1, Lcom/scand/svg/parser/support/BasicStroke;->mDashArray:[F

    iget p1, p1, Lcom/scand/svg/parser/support/BasicStroke;->mDashOffset:F

    invoke-direct {v1, v2, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintStroke:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :goto_0
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    return-void
.end method

.method public stringWidth(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [F

    iget-object v2, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, v1, v2

    add-float/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public transform(Landroid/graphics/Matrix;Lcom/scand/svg/parser/support/ClipPath;)V
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/scand/svg/parser/support/GraphicsSVG;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Lcom/scand/svg/parser/support/ClipPath;->getPath()Landroid/graphics/Path;

    move-result-object p2

    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :cond_1
    return-void
.end method
