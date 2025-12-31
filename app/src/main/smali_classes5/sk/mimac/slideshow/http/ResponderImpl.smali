.class public Lsk/mimac/slideshow/http/ResponderImpl;
.super Lsk/mimac/slideshow/http/Responder;
.source "SourceFile"


# instance fields
.field private final apiService:Lsk/mimac/slideshow/ApiServiceImpl;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/database/entity/AccessUser;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/http/Responder;-><init>(Lsk/mimac/slideshow/database/entity/AccessUser;Z)V

    new-instance p1, Lsk/mimac/slideshow/ApiServiceImpl;

    invoke-direct {p1}, Lsk/mimac/slideshow/ApiServiceImpl;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/http/ResponderImpl;->apiService:Lsk/mimac/slideshow/ApiServiceImpl;

    return-void
.end method

.method public static getLogcat()Ljava/lang/String;
    .locals 7

    const-string v0, "</div>"

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "logcat -d -v threadtime -t 1000"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "<h2>Logcat</h2><i>"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "logcat_help"

    invoke-static {v3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</i><br><br><div class=\'logs\'>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "---"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "<br>"

    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "<"

    const-string v6, "&lt;"

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ">"

    const-string v6, "&gt;"

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "<b>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    const-string v6, "</b> "

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :goto_2
    sget-object v2, Lsk/mimac/slideshow/http/Responder;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t get logcat"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<h2>Logcat</h2><br><div class=\'errorBubble\'>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "logcat_error"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private processApiCall(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 5

    const-string v0, "success"

    const-string v1, "application/json"

    :try_start_0
    iget-object v2, p0, Lsk/mimac/slideshow/http/ResponderImpl;->apiService:Lsk/mimac/slideshow/ApiServiceImpl;

    iget-object v3, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    iget-object v4, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Lsk/mimac/slideshow/ApiService;->process(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object p1

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1
    :try_end_0
    .catch Lsk/mimac/slideshow/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lsk/mimac/slideshow/exception/ApiException;->getType()Lsk/mimac/slideshow/exception/ApiException$Type;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/exception/ApiException$Type;->getCode()I

    move-result v2

    invoke-static {v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;->lookup(I)Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "errorCode"

    invoke-virtual {p1}, Lsk/mimac/slideshow/exception/ApiException;->getType()Lsk/mimac/slideshow/exception/ApiException$Type;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "errorMessage"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method private processNextKeyCode()Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 5

    new-instance v0, Lsk/mimac/slideshow/http/ResponderImpl$1;

    invoke-direct {v0, p0}, Lsk/mimac/slideshow/http/ResponderImpl$1;-><init>(Lsk/mimac/slideshow/http/ResponderImpl;)V

    invoke-static {v0}, Lsk/mimac/slideshow/userinput/KeyboardListener;->setKeyDownConsumer(Lsk/mimac/slideshow/utils/Consumer;)V

    monitor-enter v0

    const-wide/16 v1, 0x2710

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/http/ResponderImpl$1;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v2, "text/plain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lsk/mimac/slideshow/userinput/KeyMapper;->KEYCODES:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static setBootanimation()V
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lsk/mimac/slideshow/FileConstants;->TEMP_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bootanimation.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lsk/mimac/slideshow/InitializerImpl;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mount -o rw,remount /system; mount -o rw,remount /;busybox cp "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->TEMP_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bootanimation.zip /system/media/bootanimation.zip && chmod a+r /system/media/bootanimation.zip && rm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->TEMP_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bootanimation.zip && sync;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/utils/Shell;->processWithOutput(Ljava/lang/String;)Lsk/mimac/slideshow/utils/Shell$Response;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/http/Responder;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Setting bootanimation, result: {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setWallpaper()V
    .locals 13

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v3, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lsk/mimac/slideshow/R$drawable;->wallpaper:I

    invoke-static {v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    sget-object v4, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v5, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v6

    if-lez v6, :cond_0

    move v4, v6

    :cond_0
    invoke-virtual {v5}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v6

    if-lez v6, :cond_1

    move v3, v6

    :cond_1
    invoke-static {v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v6, -0x1000000

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v4, v4

    int-to-float v3, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v12

    move v9, v4

    move v10, v3

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v4, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v3, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v6

    sub-float/2addr v4, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v6

    sub-float/2addr v3, v8

    div-float/2addr v3, v7

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v7, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v7, v6, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v12, v0, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v5, v2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    sget-object v0, Lsk/mimac/slideshow/http/Responder;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Wallpaper set"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getResponseInternal(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation

    const-string v0, "/template"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p3, Lsk/mimac/slideshow/http/page/ShowFormPage;

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    invoke-direct {p3, p2, v0}, Lsk/mimac/slideshow/http/page/ShowFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    :goto_0
    invoke-virtual {p3}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->getPage()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_3

    :cond_0
    const-string v0, "/about_hardware"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p3, Lsk/mimac/slideshow/http/page/AboutHardwarePage;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Lsk/mimac/slideshow/http/page/AboutHardwarePage;-><init>(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "/update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lsk/mimac/slideshow/http/page/UpdateFormPage;

    iget-object v2, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    invoke-direct {v0, p2, v2, p3}, Lsk/mimac/slideshow/http/page/UpdateFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->getPage()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_3

    :cond_2
    const-string v0, "/about_software"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p3, Lsk/mimac/slideshow/http/page/AboutSoftwarePage;

    invoke-direct {p3}, Lsk/mimac/slideshow/http/page/AboutSoftwarePage;-><init>()V

    goto :goto_0

    :cond_3
    const-string v0, "/reporter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p3, Lsk/mimac/slideshow/http/page/ReporterFormPage;

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    invoke-direct {p3, p2, v0}, Lsk/mimac/slideshow/http/page/ReporterFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_2

    :cond_5
    const-string v0, "/dashboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Lsk/mimac/slideshow/http/page/DashboardPage;

    iget-object p3, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-direct {p1, p2, p3, v0}, Lsk/mimac/slideshow/http/page/DashboardPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Lsk/mimac/slideshow/database/entity/AccessUser;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->getPage()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string p3, "text/html"

    invoke-static {p2, p3, p1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v0, "/api/file/browser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p1, Lsk/mimac/slideshow/http/api/ApiResponder;

    invoke-direct {p1}, Lsk/mimac/slideshow/http/api/ApiResponder;-><init>()V

    iget-object p2, p0, Lsk/mimac/slideshow/http/Responder;->session:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    invoke-virtual {p1, p2, p3}, Lsk/mimac/slideshow/http/api/ApiResponder;->process(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_7
    const-string p3, "/about_hdmi"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {p3}, Lsk/mimac/slideshow/database/entity/AccessUser;->isNotUser()Z

    move-result p3

    if-eqz p3, :cond_8

    new-instance p3, Lsk/mimac/slideshow/http/page/AboutHdmiPage;

    invoke-direct {p3}, Lsk/mimac/slideshow/http/page/AboutHdmiPage;-><init>()V

    :goto_1
    invoke-virtual {p3}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->getPage()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_3

    :cond_8
    const-string p3, "/device_owner"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {p3}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result p3

    if-eqz p3, :cond_9

    new-instance p3, Lsk/mimac/slideshow/http/page/DeviceOwnerPage;

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    invoke-direct {p3, p2, v0}, Lsk/mimac/slideshow/http/page/DeviceOwnerPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    goto :goto_1

    :cond_9
    const-string p3, "/benchmark"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    iget-object p3, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {p3}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result p3

    if-eqz p3, :cond_a

    new-instance p3, Lsk/mimac/slideshow/http/page/BenchmarkPage;

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    invoke-direct {p3, p2, v0}, Lsk/mimac/slideshow/http/page/BenchmarkPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    goto :goto_1

    :cond_a
    const-string p3, "/items/edit"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    iget-object p3, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {p3}, Lsk/mimac/slideshow/database/entity/AccessUser;->isNotUser()Z

    move-result p3

    if-eqz p3, :cond_b

    new-instance p3, Lsk/mimac/slideshow/http/page/ItemFormPage;

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    iget-object v2, p0, Lsk/mimac/slideshow/http/Responder;->session:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    invoke-interface {v2}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParameters()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p3, p2, v0, v2}, Lsk/mimac/slideshow/http/page/ItemFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_b
    const-string p3, "/face_detection"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    iget-object p3, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {p3}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result p3

    if-eqz p3, :cond_c

    new-instance p3, Lsk/mimac/slideshow/http/page/FaceDetectionPage;

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    invoke-direct {p3, p2, v0}, Lsk/mimac/slideshow/http/page/FaceDetectionPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    goto :goto_1

    :cond_c
    const-string p3, "/key_mapping"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    iget-object p3, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {p3}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result p3

    if-eqz p3, :cond_d

    new-instance p3, Lsk/mimac/slideshow/http/page/KeyMappingPage;

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    invoke-direct {p3, p2, v0}, Lsk/mimac/slideshow/http/page/KeyMappingPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_d
    const-string p3, "/log/config"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    iget-object p3, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {p3}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result p3

    if-eqz p3, :cond_e

    new-instance p3, Lsk/mimac/slideshow/http/page/LoggingConfigPage;

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    invoke-direct {p3, p2, v0}, Lsk/mimac/slideshow/http/page/LoggingConfigPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_e
    const-string p3, "/remote_control"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    iget-object p3, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {p3}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result p3

    if-eqz p3, :cond_f

    new-instance p3, Lsk/mimac/slideshow/http/page/RemoteControlPage;

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    invoke-direct {p3, p2, v0}, Lsk/mimac/slideshow/http/page/RemoteControlPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_f
    move-object p3, v1

    goto :goto_3

    :cond_10
    :goto_2
    new-instance p3, Lsk/mimac/slideshow/http/page/DashboardPage;

    iget-object v0, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    iget-object v2, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-direct {p3, p2, v0, v2}, Lsk/mimac/slideshow/http/page/DashboardPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Lsk/mimac/slideshow/database/entity/AccessUser;)V

    goto/16 :goto_1

    :goto_3
    if-eqz p3, :cond_11

    iget-object p1, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    iget-boolean p2, p0, Lsk/mimac/slideshow/http/Responder;->isLocalhost:Z

    invoke-virtual {p0, p3, p1, p2}, Lsk/mimac/slideshow/http/Responder;->createResponse(Ljava/lang/String;Lsk/mimac/slideshow/database/entity/AccessUser;Z)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_11
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "<div class=\'errorBubble\'>"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "page_not_found"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</div>"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->GET:Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v3, "text/plain"

    if-ne p2, v2, :cond_1c

    const-string p2, "/logcat"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    iget-object p2, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result p2

    if-eqz p2, :cond_12

    invoke-static {}, Lsk/mimac/slideshow/http/ResponderImpl;->getLogcat()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_5

    :cond_12
    const-string p2, "/screenshot.jpg"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    iget-object p1, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    const-string p2, "displayId"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_13

    goto :goto_4

    :cond_13
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_14
    :goto_4
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/4 p2, 0x0

    invoke-static {v1, p2}, Lsk/mimac/slideshow/utils/ScreenshotUtils;->getScreenshot(Ljava/lang/Integer;Z)Ljava/io/InputStream;

    move-result-object p2

    const-string p3, "image/jpeg"

    invoke-static {p1, p3, p2}, Lfi/iki/elonen/NanoHTTPD;->newChunkedResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_15
    const-string p2, "/face_detection/image.svg"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Lsk/mimac/slideshow/face/FaceDetectionService;->getLastImage()[B

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p3, "image/svg+xml"

    invoke-static {p1, p3, p2}, Lfi/iki/elonen/NanoHTTPD;->newChunkedResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_16
    const-string p2, "/ajax/wallpaper"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "<div class=\'okBubble\'>"

    if-eqz p2, :cond_17

    iget-object p2, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result p2

    if-eqz p2, :cond_17

    invoke-static {}, Lsk/mimac/slideshow/http/ResponderImpl;->setWallpaper()V

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "set_wallpaper_success"

    invoke-static {p3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v3, p2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_17
    const-string p2, "/ajax/bootanimation"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    iget-object p2, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-static {}, Lsk/mimac/slideshow/http/ResponderImpl;->setBootanimation()V

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "set_bootanimation_success"

    invoke-static {p3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v3, p2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_18
    const-string p2, "/ajax/panels"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "application/json"

    if-eqz p2, :cond_19

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {}, Lsk/mimac/slideshow/ApiServiceImpl;->getPanels()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_19
    const-string p2, "/ajax/deviceInfo"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lsk/mimac/slideshow/ApiServiceImpl;->getDeviceDataMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_1a
    const-string p2, "/ajax/webpageParser"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    iget-object p2, p0, Lsk/mimac/slideshow/http/Responder;->params:Ljava/util/Map;

    const-string p3, "url"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lsk/mimac/slideshow/utils/WebpageParserUtils;->getPageElements(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_1b
    const-string p2, "/serialMqtt/reload"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    invoke-static {}, Lsk/mimac/slideshow/serial/SerialServiceHolder;->start()V

    const-string p3, "redirect:/about_hardware"

    goto :goto_5

    :cond_1c
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    if-ne p2, v0, :cond_1e

    const-string p2, "/ajax/hideWelcome"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    invoke-static {}, Lsk/mimac/slideshow/http/page/DashboardPage;->clearWelcomeMessage()V

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string p2, "OK"

    invoke-static {p1, v3, p2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_1d
    const-string p2, "/ajax/getNextKeyCode"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    iget-object p2, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    move-result p2

    if-eqz p2, :cond_1e

    invoke-direct {p0}, Lsk/mimac/slideshow/http/ResponderImpl;->processNextKeyCode()Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_1e
    :goto_5
    const-string p2, "/ajax/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1f

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/http/ResponderImpl;->processApiCall(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_1f
    iget-object p1, p0, Lsk/mimac/slideshow/http/Responder;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    iget-boolean p2, p0, Lsk/mimac/slideshow/http/Responder;->isLocalhost:Z

    invoke-virtual {p0, p3, p1, p2}, Lsk/mimac/slideshow/http/Responder;->createResponse(Ljava/lang/String;Lsk/mimac/slideshow/database/entity/AccessUser;Z)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method
