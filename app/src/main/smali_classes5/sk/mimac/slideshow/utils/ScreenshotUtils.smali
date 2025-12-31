.class public abstract Lsk/mimac/slideshow/utils/ScreenshotUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/utils/ScreenshotUtils;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/utils/ScreenshotUtils;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/gui/PercentageLayout;Landroid/graphics/Bitmap;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/utils/ScreenshotUtils;->lambda$getScreenshotOld$0(Lsk/mimac/slideshow/gui/PercentageLayout;Landroid/graphics/Bitmap;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lsk/mimac/slideshow/utils/BooleanHolder;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/utils/ScreenshotUtils;->lambda$getScreenshotNew$1(Lsk/mimac/slideshow/utils/BooleanHolder;I)V

    return-void
.end method

.method private static declared-synchronized getScreencapScreenshot(Ljava/lang/Integer;)Ljava/io/InputStream;
    .locals 6

    const-string v0, "Unexpected error with screencap screenshot: "

    const-string v1, "Unexpected error with screencap screenshot: "

    const-class v2, Lsk/mimac/slideshow/utils/ScreenshotUtils;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/utils/Shell;->isRootEnabled()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    :try_start_1
    const-string v3, "screenshot"

    const-string v4, "jpg"

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/system/bin/screencap -p "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string v5, "-d "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lsk/mimac/slideshow/utils/Shell;->process(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lsk/mimac/slideshow/utils/ScreenshotUtils$1;

    invoke-direct {p0, v3, v3}, Lsk/mimac/slideshow/utils/ScreenshotUtils$1;-><init>(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object p0

    :goto_1
    :try_start_2
    sget-object v0, Lsk/mimac/slideshow/utils/ScreenshotUtils;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    sget-object v1, Lsk/mimac/slideshow/utils/ScreenshotUtils;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_3
    monitor-exit v2

    const/4 p0, 0x0

    return-object p0

    :goto_4
    monitor-exit v2

    throw p0
.end method

.method public static getScreenshot(Ljava/lang/Integer;Z)Ljava/io/InputStream;
    .locals 2

    invoke-static {p0}, Lsk/mimac/slideshow/utils/ScreenshotUtils;->getScreencapScreenshot(Ljava/lang/Integer;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1

    :cond_0
    return-object v0

    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_2

    invoke-static {p0}, Lsk/mimac/slideshow/utils/ScreenshotUtils;->getScreenshotNew(Ljava/lang/Integer;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lsk/mimac/slideshow/utils/ScreenshotUtils;->getScreenshotOld(Ljava/lang/Integer;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static getScreenshotNew(Ljava/lang/Integer;)Ljava/io/InputStream;
    .locals 9

    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/gui/GuiCreator;->getLayoutByDisplayId(Ljava/lang/Integer;)Lsk/mimac/slideshow/gui/PercentageLayout;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance p0, Ljava/io/ByteArrayInputStream;

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v3, Lsk/mimac/slideshow/utils/BooleanHolder;

    invoke-direct {v3}, Lsk/mimac/slideshow/utils/BooleanHolder;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    aget v5, v2, v0

    const/4 v6, 0x1

    aget v7, v2, v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v5

    aget v2, v2, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-direct {v4, v5, v7, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/PercentageLayout;->getWindow()Landroid/view/Window;

    move-result-object p0

    new-instance v2, Lu1/b;

    invoke-direct {v2, v3}, Lu1/b;-><init>(Lsk/mimac/slideshow/utils/BooleanHolder;)V

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p0, v4, v1, v2, v5}, Lf/a;->q(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Lu1/b;Landroid/os/Handler;)V

    monitor-enter v3

    const-wide/16 v4, 0x2710

    :try_start_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Lsk/mimac/slideshow/utils/BooleanHolder;->getValue()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/io/ByteArrayInputStream;

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x4b

    invoke-virtual {v1, v0, v2, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static getScreenshotOld(Ljava/lang/Integer;)Ljava/io/InputStream;
    .locals 6

    const-string v0, "Can\'t get screenshot"

    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object v1

    invoke-virtual {v1, p0}, Lsk/mimac/slideshow/gui/GuiCreator;->getLayoutByDisplayId(Ljava/lang/Integer;)Lsk/mimac/slideshow/gui/PercentageLayout;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-instance p0, Ljava/io/ByteArrayInputStream;

    new-array v0, v1, [B

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v4, Lk1/n;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v2, v5}, Lk1/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v3}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    invoke-virtual {v2, v3, v4, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    sget-object v2, Lsk/mimac/slideshow/utils/ScreenshotUtils;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, v0, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Ljava/io/ByteArrayInputStream;

    new-array v0, v1, [B

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p0

    :goto_1
    sget-object v2, Lsk/mimac/slideshow/utils/ScreenshotUtils;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, v0, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    new-instance p0, Ljava/io/ByteArrayInputStream;

    new-array v0, v1, [B

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p0
.end method

.method private static synthetic lambda$getScreenshotNew$1(Lsk/mimac/slideshow/utils/BooleanHolder;I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/utils/BooleanHolder;->setValue(Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/utils/ScreenshotUtils;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t get screenshot: {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static synthetic lambda$getScreenshotOld$0(Lsk/mimac/slideshow/gui/PercentageLayout;Landroid/graphics/Bitmap;)Ljava/lang/Void;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, p1, v1}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/4 p0, 0x0

    return-object p0
.end method
