.class public Lsk/mimac/slideshow/panel/DateTimePanel;
.super Lsk/mimac/slideshow/panel/Panel;
.source "SourceFile"


# instance fields
.field private final boldTime:Z

.field private final dateFormat:Ljava/text/DateFormat;

.field private final paint:Landroid/graphics/Paint;

.field private final timeFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(IILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/panel/Panel;-><init>(II)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/panel/DateTimePanel;->paint:Landroid/graphics/Paint;

    new-instance p2, Ljava/util/Locale;

    const-string v0, "locale"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v0, "textColor"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lsk/mimac/slideshow/utils/ColorUtils;->parseColorRGBA(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string v1, "fontFamily"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lsk/mimac/slideshow/utils/FontUtils;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const-string p1, "timeFormat"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lsk/mimac/slideshow/panel/DateTimePanel;->timeFormat:Ljava/text/DateFormat;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lsk/mimac/slideshow/panel/DateTimePanel;->timeFormat:Ljava/text/DateFormat;

    :goto_0
    const-string p1, "dateFormat"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :cond_1
    iput-object v1, p0, Lsk/mimac/slideshow/panel/DateTimePanel;->dateFormat:Ljava/text/DateFormat;

    const-string p1, "boldTime"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "false"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lsk/mimac/slideshow/panel/DateTimePanel;->boldTime:Z

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 9

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget v1, p0, Lsk/mimac/slideshow/panel/Panel;->width:I

    iget v2, p0, Lsk/mimac/slideshow/panel/Panel;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lsk/mimac/slideshow/panel/DateTimePanel;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lsk/mimac/slideshow/panel/Panel;->height:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lsk/mimac/slideshow/panel/DateTimePanel;->timeFormat:Ljava/text/DateFormat;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lsk/mimac/slideshow/panel/DateTimePanel;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    iget-boolean v5, p0, Lsk/mimac/slideshow/panel/DateTimePanel;->boldTime:Z

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v3, Lsk/mimac/slideshow/utils/Rectangle;

    iget v4, p0, Lsk/mimac/slideshow/panel/Panel;->width:I

    div-int/lit8 v5, v4, 0x1e

    iget v6, p0, Lsk/mimac/slideshow/panel/Panel;->height:I

    div-int/lit8 v7, v6, 0x1e

    div-int/lit8 v8, v4, 0xf

    sub-int/2addr v4, v8

    iget-object v8, p0, Lsk/mimac/slideshow/panel/DateTimePanel;->dateFormat:Ljava/text/DateFormat;

    if-nez v8, :cond_0

    div-int/lit8 v8, v6, 0xf

    sub-int/2addr v6, v8

    goto :goto_0

    :cond_0
    mul-int/lit8 v8, v6, 0x3

    div-int/lit8 v8, v8, 0x4

    div-int/lit8 v6, v6, 0x1e

    sub-int v6, v8, v6

    :goto_0
    invoke-direct {v3, v5, v7, v4, v6}, Lsk/mimac/slideshow/utils/Rectangle;-><init>(IIII)V

    iget-object v4, p0, Lsk/mimac/slideshow/panel/DateTimePanel;->timeFormat:Ljava/text/DateFormat;

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lsk/mimac/slideshow/panel/DateTimePanel;->paint:Landroid/graphics/Paint;

    invoke-static {v2, v4, v5, v3}, Lsk/mimac/slideshow/utils/MediaUtilsImpl;->drawTextInRectangle(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint;Lsk/mimac/slideshow/utils/Rectangle;)V

    iget-object v3, p0, Lsk/mimac/slideshow/panel/DateTimePanel;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lsk/mimac/slideshow/panel/Panel;->height:I

    int-to-float v4, v4

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_1
    iget-object v3, p0, Lsk/mimac/slideshow/panel/DateTimePanel;->dateFormat:Ljava/text/DateFormat;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lsk/mimac/slideshow/panel/DateTimePanel;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v3, p0, Lsk/mimac/slideshow/panel/DateTimePanel;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lsk/mimac/slideshow/panel/DateTimePanel;->timeFormat:Ljava/text/DateFormat;

    if-nez v3, :cond_2

    new-instance v3, Lsk/mimac/slideshow/utils/Rectangle;

    iget v4, p0, Lsk/mimac/slideshow/panel/Panel;->width:I

    div-int/lit8 v5, v4, 0x1e

    iget v6, p0, Lsk/mimac/slideshow/panel/Panel;->height:I

    div-int/lit8 v7, v6, 0x1e

    div-int/lit8 v8, v4, 0xf

    sub-int/2addr v4, v8

    div-int/lit8 v8, v6, 0xf

    sub-int/2addr v6, v8

    invoke-direct {v3, v5, v7, v4, v6}, Lsk/mimac/slideshow/utils/Rectangle;-><init>(IIII)V

    goto :goto_1

    :cond_2
    new-instance v3, Lsk/mimac/slideshow/utils/Rectangle;

    iget v4, p0, Lsk/mimac/slideshow/panel/Panel;->width:I

    div-int/lit8 v5, v4, 0x1e

    iget v6, p0, Lsk/mimac/slideshow/panel/Panel;->height:I

    mul-int/lit8 v7, v6, 0x3

    div-int/lit8 v7, v7, 0x4

    div-int/lit8 v8, v4, 0xf

    sub-int/2addr v4, v8

    div-int/lit8 v8, v6, 0x4

    div-int/lit8 v6, v6, 0x1e

    sub-int/2addr v8, v6

    invoke-direct {v3, v5, v7, v4, v8}, Lsk/mimac/slideshow/utils/Rectangle;-><init>(IIII)V

    :goto_1
    iget-object v4, p0, Lsk/mimac/slideshow/panel/DateTimePanel;->paint:Landroid/graphics/Paint;

    invoke-static {v2, v0, v4, v3}, Lsk/mimac/slideshow/utils/MediaUtilsImpl;->drawTextInRectangle(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint;Lsk/mimac/slideshow/utils/Rectangle;)V

    :cond_3
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method
