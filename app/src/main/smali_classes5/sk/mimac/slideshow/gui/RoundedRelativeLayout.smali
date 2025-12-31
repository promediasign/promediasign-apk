.class public Lsk/mimac/slideshow/gui/RoundedRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private cornerRadii:[F

.field private displayItemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

.field private path:Landroid/graphics/Path;

.field private strokeBitmap:Landroid/graphics/Bitmap;

.field private strokePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[FILjava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->setCornerRadii([F)V

    if-eqz p4, :cond_0

    if-lez p3, :cond_0

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->strokePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->strokePaint:Landroid/graphics/Paint;

    mul-int/lit8 p3, p3, 0x2

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method private refreshBorder(II)V
    .locals 5

    iget-object v0, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->cornerRadii:[F

    if-nez v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->strokePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->cornerRadii:[F

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->cornerRadii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    :goto_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->strokePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    if-lez p1, :cond_2

    if-lez p2, :cond_2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->strokeBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->strokeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->path:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object p2, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public changeLayout(ZZ)V
    .locals 10

    iget-object v0, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->cornerRadii:[F

    if-eqz v0, :cond_2

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x6

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    aget p1, v0, v8

    aget v9, v0, v7

    aput v9, v0, v4

    aput v9, v0, v8

    aput p1, v0, v3

    aput p1, v0, v7

    aget p1, v0, v6

    aget v9, v0, v5

    aput v9, v0, v2

    aput v9, v0, v6

    aput p1, v0, v1

    aput p1, v0, v5

    :cond_0
    if-eqz p2, :cond_1

    aget p1, v0, v8

    aget p2, v0, v5

    aput p2, v0, v4

    aput p2, v0, v8

    aput p1, v0, v1

    aput p1, v0, v5

    aget p1, v0, v7

    aget p2, v0, v6

    aput p2, v0, v3

    aput p2, v0, v7

    aput p1, v0, v2

    aput p1, v0, v6

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->refreshBorder(II)V

    :cond_2
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->cornerRadii:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->path:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t render layout"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t render: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->strokeBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public getCornerRadii()[F
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->cornerRadii:[F

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->displayItemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->displayItemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/DisplayItemThread;->getItemClickResolver()Lsk/mimac/slideshow/gui/click/ItemClickResolver;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    mul-float p1, p1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    invoke-virtual {v0, v2, p1}, Lsk/mimac/slideshow/gui/click/ItemClickResolver;->onClick(FF)V

    :cond_2
    :goto_0
    return v1
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->refreshBorder(II)V

    return-void
.end method

.method public setCornerRadii([F)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->cornerRadii:[F

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->cornerRadii:[F

    return-void
.end method

.method public setDisplayItemThread(Lsk/mimac/slideshow/gui/DisplayItemThread;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->displayItemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

    return-void
.end method
