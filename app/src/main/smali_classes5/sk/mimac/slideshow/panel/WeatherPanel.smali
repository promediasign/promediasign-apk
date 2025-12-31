.class public Lsk/mimac/slideshow/panel/WeatherPanel;
.super Lsk/mimac/slideshow/panel/Panel;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final city:Ljava/lang/String;

.field private final columns:I

.field private final dateTimeFormat:Ljava/text/DateFormat;

.field private final fahrenheit:Z

.field private final iconStyle:Ljava/lang/String;

.field private final numDays:I

.field private final paint:Landroid/graphics/Paint;

.field private final rows:F

.field private final showIcon:Z

.field private textBefore:Ljava/lang/String;

.field private final weatherType:Lsk/mimac/slideshow/weather/WeatherType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/panel/WeatherPanel;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/panel/WeatherPanel;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

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

    iput-object p1, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->paint:Landroid/graphics/Paint;

    const-string p2, "fahrenheit"

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->fahrenheit:Z

    const-string v0, "weatherText"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p2}, Lsk/mimac/slideshow/weather/WeatherReader;->getDefaultWeatherText(Z)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "%d"

    const-string v1, "%.0f"

    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "locale"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->dateTimeFormat:Ljava/text/DateFormat;

    const-string p2, "weatherCity"

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->city:Ljava/lang/String;

    const-string p2, "textColor"

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lsk/mimac/slideshow/utils/ColorUtils;->parseColorRGBA(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string v0, "fontFamily"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lsk/mimac/slideshow/utils/FontUtils;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const-string p1, "weatherType"

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lsk/mimac/slideshow/weather/WeatherType;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/weather/WeatherType;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p1, Lsk/mimac/slideshow/weather/WeatherType;->FORECAST:Lsk/mimac/slideshow/weather/WeatherType;

    :goto_1
    iput-object p1, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->weatherType:Lsk/mimac/slideshow/weather/WeatherType;

    sget-object v0, Lsk/mimac/slideshow/weather/WeatherType;->CURRENT:Lsk/mimac/slideshow/weather/WeatherType;

    if-ne p1, v0, :cond_2

    iput p2, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->numDays:I

    iput p2, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->columns:I

    goto :goto_3

    :cond_2
    const-string p1, "numDays"

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_3

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_3
    iput v1, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->numDays:I

    const-string p1, "columns"

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x1

    :goto_2
    iput p1, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->columns:I

    :goto_3
    const-string p1, "weatherIcon"

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_4

    :cond_5
    const-string p1, "default"

    :goto_4
    iput-object p1, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->iconStyle:Ljava/lang/String;

    const-string v0, "textBefore"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->textBefore:Ljava/lang/String;

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_6

    const/4 p3, 0x0

    iput-object p3, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->textBefore:Ljava/lang/String;

    :cond_6
    const-string p3, "none"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->showIcon:Z

    iget p1, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->numDays:I

    iget p2, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->columns:I

    invoke-static {p1, p2}, Lsk/mimac/slideshow/panel/WeatherPanel;->roundUp(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->rows:F

    return-void
.end method

.method private drawWeatherForDay(Lsk/mimac/slideshow/weather/WeatherModel$Forecast;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p6

    const/4 v4, 0x2

    iget-object v5, v0, Lsk/mimac/slideshow/panel/WeatherPanel;->dateTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->getDay()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, v0, Lsk/mimac/slideshow/panel/WeatherPanel;->fahrenheit:Z

    invoke-virtual {p1}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->getMinTemperature()D

    move-result-wide v9

    if-eqz v6, :cond_0

    invoke-static {v9, v10}, Lsk/mimac/slideshow/panel/WeatherPanel;->toFahrenheit(D)D

    move-result-wide v9

    :cond_0
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-boolean v9, v0, Lsk/mimac/slideshow/panel/WeatherPanel;->fahrenheit:Z

    if-eqz v9, :cond_1

    invoke-virtual {p1}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->getMaxTemperature()D

    move-result-wide v9

    invoke-static {v9, v10}, Lsk/mimac/slideshow/panel/WeatherPanel;->toFahrenheit(D)D

    move-result-wide v9

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->getMaxTemperature()D

    move-result-wide v9

    :goto_0
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v6, v10, v7

    aput-object v9, v10, v8

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, v0, Lsk/mimac/slideshow/panel/WeatherPanel;->showIcon:Z

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->getCondition()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lsk/mimac/slideshow/panel/WeatherPanel;->getWeatherIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_2

    mul-int/lit8 v8, p7, 0x3

    div-int/lit8 v8, v8, 0x4

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int v9, p7, v8

    div-int/lit8 v10, p7, 0x5

    sub-int/2addr v9, v10

    div-int/2addr v9, v4

    add-int v9, v9, p5

    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-direct {v10, v7, v7, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    sub-int v11, v3, v8

    div-int/2addr v11, v4

    add-int v11, v11, p4

    add-int v12, v11, v8

    add-int v13, v9, v8

    invoke-direct {v7, v11, v9, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v6, v10, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move v7, v8

    goto :goto_1

    :cond_2
    move/from16 v9, p5

    goto :goto_1

    :cond_3
    add-int/lit8 v9, p5, 0x1

    :goto_1
    new-instance v6, Lsk/mimac/slideshow/utils/Rectangle;

    div-int/lit8 v8, v3, 0x1e

    add-int v8, v8, p4

    if-eqz v9, :cond_4

    add-int/2addr v9, v7

    goto :goto_2

    :cond_4
    div-int/lit8 v7, p7, 0x3

    add-int v9, v7, p5

    :goto_2
    div-int/lit8 v7, v3, 0xf

    sub-int/2addr v3, v7

    iget-boolean v7, v0, Lsk/mimac/slideshow/panel/WeatherPanel;->showIcon:Z

    if-eqz v7, :cond_5

    div-int/lit8 v4, p7, 0x7

    goto :goto_3

    :cond_5
    add-int/lit8 v4, p7, -0x2

    :goto_3
    invoke-direct {v6, v8, v9, v3, v4}, Lsk/mimac/slideshow/utils/Rectangle;-><init>(IIII)V

    invoke-static {v1, v5, v2, v6}, Lsk/mimac/slideshow/utils/MediaUtilsImpl;->drawTextInRectangle(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint;Lsk/mimac/slideshow/utils/Rectangle;)V

    return-void
.end method

.method private getWeatherIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "Can\'t load picture for style \'{}\' and condition \'{}\'"

    const-class v3, Lsk/mimac/slideshow/panel/WeatherPanel;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "weather/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->iconStyle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    sget-object v0, Lsk/mimac/slideshow/panel/WeatherPanel;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Picture for style \'{}\' and condition \'{}\' doesn\'t exist"

    iget-object v2, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->iconStyle:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v5, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    iput-boolean v0, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v0, v5, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_1

    sget-object v6, Lsk/mimac/slideshow/panel/WeatherPanel;->LOG:Lorg/slf4j/Logger;

    iget-object v7, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->iconStyle:Ljava/lang/String;

    invoke-interface {v6, v2, v7, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_4

    :cond_2
    :goto_1
    return-object v5

    :goto_2
    if-eqz v3, :cond_3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sget-object v5, Lsk/mimac/slideshow/panel/WeatherPanel;->LOG:Lorg/slf4j/Logger;

    iget-object v6, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->iconStyle:Ljava/lang/String;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v0

    aput-object p1, v7, v1

    const/4 p1, 0x2

    aput-object v3, v7, p1

    invoke-interface {v5, v2, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4
.end method

.method private paint(Landroid/graphics/Bitmap;Lsk/mimac/slideshow/weather/WeatherModel;)V
    .locals 12

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->textBefore:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lsk/mimac/slideshow/panel/Panel;->height:I

    int-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->textBefore:Ljava/lang/String;

    iget-object v1, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->paint:Landroid/graphics/Paint;

    new-instance v2, Lsk/mimac/slideshow/utils/Rectangle;

    iget v3, p0, Lsk/mimac/slideshow/panel/Panel;->width:I

    div-int/lit8 v4, v3, 0x1e

    div-int/lit8 v5, v3, 0xf

    sub-int/2addr v3, v5

    iget v5, p0, Lsk/mimac/slideshow/panel/Panel;->height:I

    div-int/lit8 v5, v5, 0xa

    invoke-direct {v2, v4, v0, v3, v5}, Lsk/mimac/slideshow/utils/Rectangle;-><init>(IIII)V

    invoke-static {v8, p1, v1, v2}, Lsk/mimac/slideshow/utils/MediaUtilsImpl;->drawTextInRectangle(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint;Lsk/mimac/slideshow/utils/Rectangle;)V

    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lsk/mimac/slideshow/weather/WeatherModel;->getForecast()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->textBefore:Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget p1, p0, Lsk/mimac/slideshow/panel/Panel;->height:I

    div-int/lit8 p1, p1, 0xa

    :goto_0
    iget v1, p0, Lsk/mimac/slideshow/panel/Panel;->width:I

    iget v2, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->columns:I

    div-int v9, v1, v2

    iget v1, p0, Lsk/mimac/slideshow/panel/Panel;->height:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    iget v2, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->rows:F

    div-float/2addr v1, v2

    float-to-int v10, v1

    const/4 v11, 0x0

    :goto_1
    iget v0, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->numDays:I

    if-ge v11, v0, :cond_3

    iget-object v0, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->paint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->showIcon:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lsk/mimac/slideshow/panel/Panel;->height:I

    div-int/lit8 v1, v1, 0x5

    :goto_2
    int-to-float v1, v1

    goto :goto_3

    :cond_2
    iget v1, p0, Lsk/mimac/slideshow/panel/Panel;->height:I

    int-to-double v1, v1

    const-wide v3, 0x3ff3333333333333L    # 1.2

    div-double/2addr v1, v3

    double-to-int v1, v1

    goto :goto_2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p2}, Lsk/mimac/slideshow/weather/WeatherModel;->getForecast()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;

    iget-object v3, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->columns:I

    rem-int v2, v11, v0

    mul-int v4, v2, v9

    div-int v0, v11, v0

    mul-int v0, v0, v10

    add-int v5, v0, p1

    move-object v0, p0

    move-object v2, v8

    move v6, v9

    move v7, v10

    invoke-direct/range {v0 .. v7}, Lsk/mimac/slideshow/panel/WeatherPanel;->drawWeatherForDay(Lsk/mimac/slideshow/weather/WeatherModel$Forecast;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static roundUp(II)I
    .locals 0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, p1

    return p0
.end method

.method private static toFahrenheit(D)D
    .locals 2

    const-wide/high16 v0, 0x4022000000000000L    # 9.0

    mul-double p0, p0, v0

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    div-double/2addr p0, v0

    const-wide/high16 v0, 0x4040000000000000L    # 32.0

    add-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget v0, p0, Lsk/mimac/slideshow/panel/Panel;->width:I

    iget v1, p0, Lsk/mimac/slideshow/panel/Panel;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->city:Ljava/lang/String;

    iget-object v2, p0, Lsk/mimac/slideshow/panel/WeatherPanel;->weatherType:Lsk/mimac/slideshow/weather/WeatherType;

    invoke-static {v1, v2}, Lsk/mimac/slideshow/weather/WeatherReader;->getWeather(Ljava/lang/String;Lsk/mimac/slideshow/weather/WeatherType;)Lsk/mimac/slideshow/weather/WeatherModel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/panel/WeatherPanel;->paint(Landroid/graphics/Bitmap;Lsk/mimac/slideshow/weather/WeatherModel;)V

    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method
