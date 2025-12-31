.class public Lsk/mimac/slideshow/gui/ShowHelperImpl;
.super Lsk/mimac/slideshow/gui/ShowHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/gui/ShowHelperImpl$VideoOnPreparedListener;
    }
.end annotation


# static fields
.field private static final CURLY_BRACES_PATTERN:Ljava/util/regex/Pattern;

.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private bitmapPreloadCache:Lsk/mimac/slideshow/utils/Couple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/lang/Integer;",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/gui/ShowHelperImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->LOG:Lorg/slf4j/Logger;

    const-string v0, "\\{[A-Za-z]+\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->CURLY_BRACES_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lsk/mimac/slideshow/gui/PlaylistPanel;)V
    .locals 2

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/ShowHelper;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getTextView()Lsk/mimac/slideshow/gui/ScrollTextView;

    move-result-object p1

    new-instance v0, LD/j;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, LD/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/gui/ScrollTextView;->setOnScrollDoneListener(Lsk/mimac/slideshow/utils/Consumer;)V

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZIILjava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->lambda$showDrawableInternal$15(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZIILjava/util/Set;)V

    return-void
.end method

.method public static synthetic access$000(Lsk/mimac/slideshow/gui/ShowHelperImpl;)Lsk/mimac/slideshow/gui/PlaylistPanel;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    return-object p0
.end method

.method public static synthetic b(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->lambda$showYouTube$11(Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;I)V

    return-void
.end method

.method public static synthetic c(Lsk/mimac/slideshow/gui/ShowHelperImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->lambda$pauseYouTube$6()V

    return-void
.end method

.method private calculateInSampleSize(II)I
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getWidth()I

    move-result v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getHeight()I

    move-result v1

    if-lez v0, :cond_0

    if-gtz v1, :cond_1

    :cond_0
    const/16 v0, 0x1000

    const/16 v1, 0x1000

    :cond_1
    div-int/2addr p1, v0

    div-int/2addr p2, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private calculateTextSize(Lsk/mimac/slideshow/model/TextModel;Landroid/text/TextPaint;II)I
    .locals 2

    invoke-virtual {p1}, Lsk/mimac/slideshow/model/TextModel;->getFontSize()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lsk/mimac/slideshow/model/TextModel;->getFontSize()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/model/TextModel;->isHorizontalScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 p4, p4, 0x11

    div-int/lit8 p4, p4, 0x19

    return p4

    :cond_1
    invoke-virtual {p1}, Lsk/mimac/slideshow/model/TextModel;->getLines()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    mul-int/lit8 p4, p4, 0x11

    div-int/lit8 p4, p4, 0x19

    goto :goto_0

    :cond_2
    mul-int/lit8 p4, p4, 0x3

    div-int/lit8 p4, p4, 0x4

    invoke-virtual {p1}, Lsk/mimac/slideshow/model/TextModel;->getLines()I

    move-result v0

    div-int/2addr p4, v0

    :goto_0
    int-to-float v0, p4

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/model/TextModel;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->checkTextWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Z

    move-result v0

    if-eqz v0, :cond_3

    return p4

    :cond_3
    add-int/lit8 p4, p4, -0x1

    goto :goto_0
.end method

.method private checkOrientation(Landroid/media/ExifInterface;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const-string v0, "Orientation"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    const/high16 v0, 0x42b40000    # 90.0f

    const/high16 v1, 0x43870000    # 270.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    packed-switch p1, :pswitch_data_0

    return-object p2

    :goto_0
    :pswitch_0
    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_2

    :pswitch_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {v5, v3, v2, p1, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    :goto_1
    :pswitch_2
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_2

    :pswitch_3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v5, v3, v2, p1, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_1

    :pswitch_4
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {v5, v3, v2, p1, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_2

    :pswitch_5
    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_2

    :pswitch_6
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {v5, v2, v3, p1, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :goto_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkTextWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Z
    .locals 9

    new-instance v8, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v3, 0x2710

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v8}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    int-to-float v2, p3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private clearBitmapPreloadCache()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->bitmapPreloadCache:Lsk/mimac/slideshow/utils/Couple;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->bitmapPreloadCache:Lsk/mimac/slideshow/utils/Couple;

    :cond_1
    return-void
.end method

.method public static synthetic d(Lsk/mimac/slideshow/gui/video/VideoViewInterface;Ljava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->lambda$prepareVideo$1(Lsk/mimac/slideshow/gui/video/VideoViewInterface;Ljava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V

    return-void
.end method

.method public static synthetic e(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/Integer;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->lambda$showUrl$3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/Integer;Z)V

    return-void
.end method

.method private executeVideoViewConsumer(Lsk/mimac/slideshow/utils/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/utils/Consumer<",
            "Lsk/mimac/slideshow/gui/video/VideoViewInterface;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getVideoViewOrNull()Lsk/mimac/slideshow/gui/video/VideoViewInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, LG/c;

    const/16 v2, 0xe

    invoke-direct {v1, p1, v0, v2}, LG/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private executeVideoViewFunction(Lsk/mimac/slideshow/utils/Function;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/utils/Function<",
            "Lsk/mimac/slideshow/gui/video/VideoViewInterface;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const-string v0, "Can\'t get video data"

    iget-object v1, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getVideoViewOrNull()Lsk/mimac/slideshow/gui/video/VideoViewInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lk1/n;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v1, v4}, Lk1/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v2}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    sget-object v1, Lsk/mimac/slideshow/gui/ShowHelperImpl;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v1, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :goto_1
    sget-object v1, Lsk/mimac/slideshow/gui/ShowHelperImpl;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v1, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    const/4 p1, -0x1

    return p1
.end method

.method public static synthetic f(Lsk/mimac/slideshow/gui/ShowHelperImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->lambda$clearScreen$5()V

    return-void
.end method

.method public static synthetic g(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->lambda$showHtml$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method private getFromBitmapPreloadCache(I)Lsk/mimac/slideshow/utils/Couple;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->bitmapPreloadCache:Lsk/mimac/slideshow/utils/Couple;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->bitmapPreloadCache:Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsk/mimac/slideshow/utils/Couple;

    iput-object v1, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->bitmapPreloadCache:Lsk/mimac/slideshow/utils/Couple;

    return-object p1

    :cond_0
    invoke-direct {p0}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->clearBitmapPreloadCache()V

    :cond_1
    return-object v1
.end method

.method private getVolume(Lsk/mimac/slideshow/enums/MusicType;)I
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/enums/MusicType;->VIDEO:Lsk/mimac/slideshow/enums/MusicType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic h(Lsk/mimac/slideshow/gui/ShowHelperImpl;ZLandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->lambda$resolveBitmap$16(ZLandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method

.method public static synthetic i(Lsk/mimac/slideshow/gui/ShowHelperImpl;ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->lambda$showWidget$13(ILandroid/appwidget/AppWidgetProviderInfo;)V

    return-void
.end method

.method public static synthetic j(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->lambda$showVideoInternal$14(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V

    return-void
.end method

.method public static synthetic k(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;IZI)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->lambda$showVideoInput$10(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;IZI)V

    return-void
.end method

.method public static synthetic l(Lsk/mimac/slideshow/utils/Consumer;Lsk/mimac/slideshow/gui/video/VideoViewInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->lambda$executeVideoViewConsumer$8(Lsk/mimac/slideshow/utils/Consumer;Lsk/mimac/slideshow/gui/video/VideoViewInterface;)V

    return-void
.end method

.method private synthetic lambda$clearScreen$5()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->hideViewsExcept(Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getDescText()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static synthetic lambda$executeVideoViewConsumer$8(Lsk/mimac/slideshow/utils/Consumer;Lsk/mimac/slideshow/gui/video/VideoViewInterface;)V
    .locals 0

    invoke-interface {p0, p1}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$executeVideoViewFunction$9(Lsk/mimac/slideshow/utils/Function;Lsk/mimac/slideshow/gui/video/VideoViewInterface;)Ljava/lang/Integer;
    .locals 0

    invoke-interface {p0, p1}, Lsk/mimac/slideshow/utils/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelper;->itemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/gui/ItemThread;->interruptIfPlayId(I)V

    return-void
.end method

.method private synthetic lambda$pauseYouTube$6()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getYoutubeView()Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->pause()V

    return-void
.end method

.method private static synthetic lambda$prepareVideo$1(Lsk/mimac/slideshow/gui/video/VideoViewInterface;Ljava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lsk/mimac/slideshow/gui/video/VideoViewInterface;->prepareNext(Ljava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V

    return-void
.end method

.method private synthetic lambda$prepareYouTube$12(Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;I)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getYoutubeView()Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

    move-result-object v0

    invoke-direct {p0, p2}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->getVolume(Lsk/mimac/slideshow/enums/MusicType;)I

    move-result p2

    invoke-virtual {v0, p1, p2, p3}, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->prepare(Ljava/lang/String;II)V

    return-void
.end method

.method private synthetic lambda$resolveBitmap$16(ZLandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p3}, LV/a;->p(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-static {p3}, LV/a;->p(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/util/Size;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-direct {p0, p1, p3}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->calculateInSampleSize(II)I

    move-result p1

    invoke-static {p2, p1}, LV/a;->t(Landroid/graphics/ImageDecoder;I)V

    :cond_0
    invoke-static {p2}, LV/a;->s(Landroid/graphics/ImageDecoder;)V

    return-void
.end method

.method private synthetic lambda$resolveBitmap$17(ZLandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p3}, LV/a;->p(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-static {p3}, LV/a;->p(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/util/Size;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-direct {p0, p1, p3}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->calculateInSampleSize(II)I

    move-result p1

    invoke-static {p2, p1}, LV/a;->t(Landroid/graphics/ImageDecoder;I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$resumeYouTube$7()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getYoutubeView()Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->resume()V

    return-void
.end method

.method private synthetic lambda$showDrawableInternal$15(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZIILjava/util/Set;)V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    sget-object v1, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->IMAGE:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->hideViewsExcept(Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;)V

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->showDescription(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getImageView()Lsk/mimac/slideshow/gui/image/ImageViewWrapper;

    move-result-object p1

    invoke-virtual {p1, p3}, Lsk/mimac/slideshow/gui/image/ImageViewWrapper;->showWithTransition(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getImageView()Lsk/mimac/slideshow/gui/image/ImageViewWrapper;

    move-result-object p1

    invoke-virtual {p1, p4}, Lsk/mimac/slideshow/gui/image/ImageViewWrapper;->setZoomPan(Z)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getImageView()Lsk/mimac/slideshow/gui/image/ImageViewWrapper;

    move-result-object p1

    invoke-virtual {p1, p5, p6, p7}, Lsk/mimac/slideshow/gui/image/ImageViewWrapper;->setAnimation(IILjava/util/Set;)V

    return-void
.end method

.method private synthetic lambda$showHtml$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    sget-object v1, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->WEB:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->hideViewsExcept(Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;)V

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->showDescription(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getWebView()Lsk/mimac/slideshow/gui/ClearingWebView;

    move-result-object v0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/gui/ClearingWebView;->setVisibility(I)V

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->MAIN_PATH:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v2, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lsk/mimac/slideshow/gui/ClearingWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method private synthetic lambda$showTextView$4(Lsk/mimac/slideshow/gui/ScrollTextView;Lsk/mimac/slideshow/model/TextModel;II)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, v0}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->showDescription(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    sget-object v1, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->TEXT:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->hideViewsExcept(Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/gui/ScrollTextView;->setVisibility(I)V

    invoke-virtual {p1, p2, p3, p4}, Lsk/mimac/slideshow/gui/ScrollTextView;->setText(Lsk/mimac/slideshow/model/TextModel;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lsk/mimac/slideshow/gui/ShowHelperImpl;->LOG:Lorg/slf4j/Logger;

    const-string p3, "Error while displaying text"

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showUrl$3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/Integer;Z)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    sget-object v2, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->WEB:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/gui/PlaylistPanel;->hideViewsExcept(Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;)V

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->showDescription(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getWebView()Lsk/mimac/slideshow/gui/ClearingWebView;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lsk/mimac/slideshow/gui/ClearingWebView;->setVisibility(I)V

    const/4 v5, 0x1

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Lsk/mimac/slideshow/gui/ClearingWebView;->loadUrl(Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/Integer;Z)V

    return-void
.end method

.method private synthetic lambda$showVideoInput$10(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;IZI)V
    .locals 6

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    sget-object v1, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->VIDEO_INPUT:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->hideViewsExcept(Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;)V

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->showDescription(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ShowHelper;->itemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/ItemThread;->isShouldStop()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getVideoInputView()Lsk/mimac/slideshow/gui/input/VideoInputView;

    move-result-object v0

    invoke-direct {p0, p4}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->getVolume(Lsk/mimac/slideshow/enums/MusicType;)I

    move-result v2

    move-object v1, p3

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lsk/mimac/slideshow/gui/input/VideoInputView;->show(Ljava/lang/String;IIZI)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showVideoInternal$14(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    sget-object v1, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->VIDEO:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->hideViewsExcept(Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;)V

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->showDescription(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getVideoView()Lsk/mimac/slideshow/gui/video/VideoViewInterface;

    move-result-object p1

    new-instance p2, Lsk/mimac/slideshow/gui/ShowHelperImpl$VideoOnPreparedListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p3, p4, v0}, Lsk/mimac/slideshow/gui/ShowHelperImpl$VideoOnPreparedListener;-><init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;IZLsk/mimac/slideshow/gui/ShowHelperImpl$1;)V

    invoke-interface {p1, p2}, Lsk/mimac/slideshow/gui/video/VideoViewInterface;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-interface {p1, p5, p6}, Lsk/mimac/slideshow/gui/video/VideoViewInterface;->prepare(Ljava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V

    return-void
.end method

.method private synthetic lambda$showWidget$13(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v0, p1, p2}, Lsk/mimac/slideshow/gui/PlaylistPanel;->initializeAppWidgetHostView(ILandroid/appwidget/AppWidgetProviderInfo;)V

    return-void
.end method

.method private synthetic lambda$showYouTube$11(Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;I)V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    sget-object v1, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->YOUTUBE:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->hideViewsExcept(Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getYoutubeView()Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

    move-result-object v0

    invoke-direct {p0, p3}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->getVolume(Lsk/mimac/slideshow/enums/MusicType;)I

    move-result p3

    invoke-virtual {v0, p1, p2, p3, p4}, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->play(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic m(Lsk/mimac/slideshow/utils/Function;Lsk/mimac/slideshow/gui/video/VideoViewInterface;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->lambda$executeVideoViewFunction$9(Lsk/mimac/slideshow/utils/Function;Lsk/mimac/slideshow/gui/video/VideoViewInterface;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lsk/mimac/slideshow/gui/ShowHelperImpl;ZLandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->lambda$resolveBitmap$17(ZLandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method

.method public static synthetic o(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->lambda$new$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic p(Lsk/mimac/slideshow/gui/ShowHelperImpl;Lsk/mimac/slideshow/gui/ScrollTextView;Lsk/mimac/slideshow/model/TextModel;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->lambda$showTextView$4(Lsk/mimac/slideshow/gui/ScrollTextView;Lsk/mimac/slideshow/model/TextModel;II)V

    return-void
.end method

.method private prepareTextFromExif(Landroid/media/ExifInterface;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->CURLY_BRACES_PATTERN:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-static {v1, v2, v2}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p1, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    const-string v2, ""

    .line 29
    .line 30
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v4, "DateTime"

    .line 36
    .line 37
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 44
    .line 45
    const-string v4, "yyyy:MM:dd HH:mm:ss"

    .line 46
    .line 47
    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 v4, 0x2

    .line 51
    const/4 v5, 0x3

    .line 52
    invoke-static {v4, v5}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_1

    .line 65
    :catch_0
    move-exception v2

    .line 66
    sget-object v4, Lsk/mimac/slideshow/gui/ShowHelperImpl;->LOG:Lorg/slf4j/Logger;

    .line 67
    .line 68
    const-string v5, "Can\'t parse exif date \'{}\'"

    .line 69
    .line 70
    invoke-interface {v4, v5, v3, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_1
    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    return-object p2
.end method

.method private processImageBackground(Landroid/graphics/drawable/Drawable;Lsk/mimac/slideshow/enums/ImageBackgroundType;)Landroid/graphics/drawable/Drawable;
    .locals 11

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p1, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object p1, v0

    :goto_2
    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getWidth()I

    move-result v0

    iget-object v3, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v3}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    div-int/lit8 v7, v0, 0x2

    div-int/lit8 v8, v3, 0x2

    invoke-static {p1, v7, v8, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v9, 0xa

    invoke-virtual {p2}, Lsk/mimac/slideshow/enums/ImageBackgroundType;->getColorShift()Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v1, v9, p2}, Lsk/mimac/slideshow/gui/image/BitmapBlur;->blur(Landroid/graphics/Bitmap;ILjava/lang/Boolean;)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v9, 0x0

    invoke-virtual {v5, p2, v9, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    int-to-float v1, v0

    div-float/2addr p2, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v10, v3

    div-float/2addr v1, v10

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    cmpl-float p2, p2, v1

    if-lez p2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v10

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    new-instance v1, Landroid/graphics/Rect;

    sub-int v3, v8, p2

    add-int/2addr v8, p2

    invoke-direct {v1, v2, v3, v0, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, p1, v9, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v10

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    new-instance v0, Landroid/graphics/Rect;

    sub-int v1, v7, p2

    add-int/2addr v7, p2

    invoke-direct {v0, v1, v2, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, p1, v9, v0, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object p2, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p1, p2, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public static synthetic q(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->lambda$prepareYouTube$12(Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;I)V

    return-void
.end method

.method public static synthetic r(Lsk/mimac/slideshow/gui/ShowHelperImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->lambda$resumeYouTube$7()V

    return-void
.end method

.method private renderPdfToBitmap(Lcom/shockwave/pdfium/PdfiumCore;Lcom/shockwave/pdfium/PdfDocument;I)Landroid/graphics/Bitmap;
    .locals 10

    invoke-virtual {p1, p2, p3}, Lcom/shockwave/pdfium/PdfiumCore;->openPage(Lcom/shockwave/pdfium/PdfDocument;I)J

    invoke-virtual {p1, p2, p3}, Lcom/shockwave/pdfium/PdfiumCore;->getPageWidthPoint(Lcom/shockwave/pdfium/PdfDocument;I)I

    move-result v0

    invoke-virtual {p1, p2, p3}, Lcom/shockwave/pdfium/PdfiumCore;->getPageHeightPoint(Lcom/shockwave/pdfium/PdfDocument;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->resolveResolution(II)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move v5, p3

    invoke-virtual/range {v2 .. v9}, Lcom/shockwave/pdfium/PdfiumCore;->renderPageBitmap(Lcom/shockwave/pdfium/PdfDocument;Landroid/graphics/Bitmap;IIIII)V

    return-object v0
.end method

.method private resolveBitmap(Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/ImageBackgroundType;)Lsk/mimac/slideshow/utils/Couple;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lsk/mimac/slideshow/enums/ImageBackgroundType;",
            ")",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->IMAGE_SCALE_TYPE:Lsk/mimac/slideshow/settings/UserSettings;

    const-class v1, Lsk/mimac/slideshow/enums/ScaleType;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/settings/UserSettings;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/enums/ScaleType;->CENTER:Lsk/mimac/slideshow/enums/ScaleType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    sget-object v0, Lsk/mimac/slideshow/enums/ImageBackgroundType;->NONE:Lsk/mimac/slideshow/enums/ImageBackgroundType;

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sget-object v1, Lsk/mimac/slideshow/enums/ImageBackgroundType;->NONE:Lsk/mimac/slideshow/enums/ImageBackgroundType;

    if-eq p3, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-direct {p0, p1, p2, v0, v2}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->resolveBitmap(Ljava/lang/String;Ljava/lang/String;ZZ)Lsk/mimac/slideshow/utils/Couple;

    move-result-object p1

    if-eq p3, v1, :cond_3

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p2, p3}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->processImageBackground(Landroid/graphics/drawable/Drawable;Lsk/mimac/slideshow/enums/ImageBackgroundType;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/utils/Couple;->setFirst(Ljava/lang/Object;)V

    :cond_3
    return-object p1
.end method

.method private resolveBitmap(Ljava/lang/String;Ljava/lang/String;ZZ)Lsk/mimac/slideshow/utils/Couple;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lsk/mimac/slideshow/utils/FileUtils2;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "svg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->resolveSvg(Ljava/lang/String;Ljava/lang/String;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object p1

    return-object p1

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const-string v3, "Can\'t read EXIF from file \'{}\'"

    if-lt v1, v2, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, LV/a;->f(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v1

    if-nez p4, :cond_2

    :try_start_0
    const-string p4, "webp"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    const-string p4, "gif"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_3

    :cond_1
    new-instance p4, Lk1/f;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0, p3}, Lk1/f;-><init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;IZ)V

    invoke-static {v1, p4}, LV/a;->g(Landroid/graphics/ImageDecoder$Source;Lk1/f;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p4, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v2, Lk1/f;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v4, p3}, Lk1/f;-><init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;IZ)V

    invoke-static {v1, v2}, LV/a;->d(Landroid/graphics/ImageDecoder$Source;Lk1/f;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-direct {p4, v0, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p3, p4

    :goto_1
    :try_start_1
    new-instance p4, Landroid/media/ExifInterface;

    invoke-direct {p4, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    invoke-direct {p0, p4, p2}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->prepareTextFromExif(Landroid/media/ExifInterface;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p4

    sget-object v0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v0, v3, p1, p4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_2
    new-instance p1, Lsk/mimac/slideshow/utils/Couple;

    invoke-direct {p1, p3, p2}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :goto_3
    new-instance p3, Lsk/mimac/slideshow/item/CantShowException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t display file \'"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lsk/mimac/slideshow/item/CantShowException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_4
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    if-eqz p3, :cond_5

    iput-boolean v1, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, p4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget p3, p4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, p4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, p3, v2}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->calculateInSampleSize(II)I

    move-result p3

    iput p3, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_5
    const/4 p3, 0x0

    iput-boolean p3, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v1, p4, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    iput-boolean p3, p4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean p3, p4, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p3, p4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    const-string p4, "jpg"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_6

    const-string p4, "jpeg"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    :cond_6
    sget-object p4, Lsk/mimac/slideshow/settings/UserSettings;->IMAGE_RESPECT_ORIENTATION:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {p4}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p2, :cond_9

    :cond_7
    :try_start_2
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-direct {p0, v0, p3}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->checkOrientation(Landroid/media/ExifInterface;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_4

    :catch_2
    move-exception p4

    goto :goto_5

    :cond_8
    :goto_4
    if-eqz p2, :cond_9

    invoke-direct {p0, v0, p2}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->prepareTextFromExif(Landroid/media/ExifInterface;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :goto_5
    sget-object v0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v0, v3, p1, p4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    :goto_6
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object p4, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-direct {p1, p4, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance p3, Lsk/mimac/slideshow/utils/Couple;

    invoke-direct {p3, p1, p2}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method

.method private resolvePdf(Ljava/lang/String;I)Lsk/mimac/slideshow/utils/Couple;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Can\'t show PDF file: "

    new-instance v1, Lcom/shockwave/pdfium/PdfiumCore;

    sget-object v2, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/shockwave/pdfium/PdfiumCore;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    invoke-static {v3, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/shockwave/pdfium/PdfiumCore;->newDocument(Landroid/os/ParcelFileDescriptor;)Lcom/shockwave/pdfium/PdfDocument;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shockwave/pdfium/PdfiumCore;->getPageCount(Lcom/shockwave/pdfium/PdfDocument;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v1, v2, p2}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->renderPdfToBitmap(Lcom/shockwave/pdfium/PdfiumCore;Lcom/shockwave/pdfium/PdfDocument;I)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v4, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance p2, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v3, p1}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lcom/shockwave/pdfium/PdfiumCore;->closeDocument(Lcom/shockwave/pdfium/PdfDocument;)V

    :cond_0
    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lsk/mimac/slideshow/item/CantShowException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lsk/mimac/slideshow/item/CantShowException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/shockwave/pdfium/PdfiumCore;->closeDocument(Lcom/shockwave/pdfium/PdfDocument;)V

    :cond_1
    throw p1
.end method

.method private resolveResolution(II)Lsk/mimac/slideshow/utils/Couple;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    iget-object v1, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getWidth()I

    move-result v1

    iget-object v2, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v2}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getHeight()I

    move-result v2

    if-lez v2, :cond_7

    if-gtz v1, :cond_0

    goto :goto_3

    :cond_0
    int-to-float p1, v1

    int-to-float p2, v2

    div-float v3, p1, p2

    const/4 v4, 0x1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    sget-object v5, Lsk/mimac/slideshow/gui/ShowHelperImpl$1;->$SwitchMap$sk$mimac$slideshow$enums$ScaleType:[I

    sget-object v6, Lsk/mimac/slideshow/settings/UserSettings;->IMAGE_SCALE_TYPE:Lsk/mimac/slideshow/settings/UserSettings;

    const-class v7, Lsk/mimac/slideshow/enums/ScaleType;

    invoke-virtual {v6, v7}, Lsk/mimac/slideshow/settings/UserSettings;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lsk/mimac/slideshow/enums/ScaleType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v4, :cond_6

    const/4 v4, 0x2

    if-eq v5, v4, :cond_4

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    mul-float p2, p2, v0

    float-to-int v1, p2

    :goto_1
    if-eqz v3, :cond_6

    :cond_3
    div-float/2addr p1, v0

    float-to-int v2, p1

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    mul-float p2, p2, v0

    float-to-int v1, p2

    :cond_5
    if-eqz v3, :cond_3

    :cond_6
    :goto_2
    new-instance p1, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_7
    :goto_3
    const/high16 v1, 0x44480000    # 800.0f

    const/16 v2, 0x320

    if-le p1, p2, :cond_8

    new-instance p1, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_8
    new-instance p1, Lsk/mimac/slideshow/utils/Couple;

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private resolveSvg(Ljava/lang/String;Ljava/lang/String;)Lsk/mimac/slideshow/utils/Couple;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/scand/svg/SVGHelper;->noContext()Lcom/scand/svg/SVGHelper$SVGLoadData;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/scand/svg/SVGHelper$SVGLoadData;->open(Ljava/io/File;)Lcom/scand/svg/SVGHelper$SVGLoadData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scand/svg/SVGHelper$SVGLoadData;->checkSVGSize()Lcom/scand/svg/SVGHelper$SVGLoadData;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getWidth()I

    move-result v1

    iget-object v2, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v2}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/scand/svg/SVGHelper$SVGLoadData;->setRequestBounds(II)Lcom/scand/svg/SVGHelper$SVGLoadData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scand/svg/SVGHelper$SVGLoadData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v0, Lsk/mimac/slideshow/utils/Couple;

    invoke-direct {v0, v1, p2}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p2

    new-instance v0, Lsk/mimac/slideshow/item/CantShowException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t display file \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lsk/mimac/slideshow/item/CantShowException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private showDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getDescText()Landroid/widget/TextView;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lsk/mimac/slideshow/gui/ShowHelperImpl;->CURLY_BRACES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x19

    div-int/lit8 v2, v1, 0x2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v1, v2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/4 p1, 0x0

    invoke-virtual {v0, v2, p1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-static {p2}, Lsk/mimac/slideshow/utils/ColorUtils;->parseColorRGBA(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p2}, Lsk/mimac/slideshow/utils/ColorUtils;->getBackgroundComplementaryColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    :goto_1
    const/16 p1, 0x8

    goto :goto_0

    :goto_2
    return-void
.end method

.method private showDrawableInternal(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/util/Set;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Set<",
            "Lsk/mimac/slideshow/enums/AnimationType;",
            ">;Z)V"
        }
    .end annotation

    new-instance v9, Lk1/k;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move/from16 v5, p7

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lk1/k;-><init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZIILjava/util/Set;)V

    invoke-static {v9}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showVideoInternal(Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;ZLjava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V
    .locals 8

    invoke-direct {p0, p2}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->getVolume(Lsk/mimac/slideshow/enums/MusicType;)I

    move-result v4

    new-instance p2, Lk1/i;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move v5, p3

    move-object v6, p1

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lk1/i;-><init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V

    invoke-static {p2}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public clearScreen()V
    .locals 2

    new-instance v0, Lk1/g;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lk1/g;-><init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;I)V

    invoke-static {v0}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public close()V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->clearBitmapPreloadCache()V

    return-void
.end method

.method public geYouTubeDuration()I
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getYoutubeView()Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->getDuration()I

    move-result v0

    return v0
.end method

.method public getVideoCurrentPosition()I
    .locals 2

    new-instance v0, LA0/a;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, LA0/a;-><init>(I)V

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->executeVideoViewFunction(Lsk/mimac/slideshow/utils/Function;)I

    move-result v0

    return v0
.end method

.method public getVideoDuration()I
    .locals 2

    new-instance v0, Lk1/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk1/p;-><init>(I)V

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->executeVideoViewFunction(Lsk/mimac/slideshow/utils/Function;)I

    move-result v0

    return v0
.end method

.method public getYouTubeCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getYoutubeView()Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public pauseVideo()V
    .locals 2

    new-instance v0, LA0/a;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, LA0/a;-><init>(I)V

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->executeVideoViewConsumer(Lsk/mimac/slideshow/utils/Consumer;)V

    return-void
.end method

.method public pauseYouTube()V
    .locals 2

    new-instance v0, Lk1/g;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lk1/g;-><init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;I)V

    invoke-static {v0}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public prepareCustomPanel(Lsk/mimac/slideshow/database/entity/Item;I)V
    .locals 6

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->clearBitmapPreloadCache()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getWidth()I

    move-result v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getHeight()I

    move-result v1

    if-lez v0, :cond_2

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getType()Lsk/mimac/slideshow/enums/ItemType;

    move-result-object v2

    sget-object v3, Lsk/mimac/slideshow/enums/ItemType;->WEATHER:Lsk/mimac/slideshow/enums/ItemType;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    new-instance v2, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v3, Lsk/mimac/slideshow/utils/Couple;

    new-instance v5, Lsk/mimac/slideshow/panel/WeatherPanel;

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v5, v0, v1, p1}, Lsk/mimac/slideshow/panel/WeatherPanel;-><init>(IILjava/util/Map;)V

    invoke-virtual {v5}, Lsk/mimac/slideshow/panel/WeatherPanel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v3, p1, v4}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, p2, v3}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    iput-object v2, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->bitmapPreloadCache:Lsk/mimac/slideshow/utils/Couple;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getType()Lsk/mimac/slideshow/enums/ItemType;

    move-result-object v2

    sget-object v3, Lsk/mimac/slideshow/enums/ItemType;->DATE_TIME:Lsk/mimac/slideshow/enums/ItemType;

    if-ne v2, v3, :cond_2

    new-instance v2, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v3, Lsk/mimac/slideshow/utils/Couple;

    new-instance v5, Lsk/mimac/slideshow/panel/DateTimePanel;

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v5, v0, v1, p1}, Lsk/mimac/slideshow/panel/DateTimePanel;-><init>(IILjava/util/Map;)V

    invoke-virtual {v5}, Lsk/mimac/slideshow/panel/DateTimePanel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v3, p1, v4}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, p2, v3}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public prepareImage(Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/ImageBackgroundType;I)V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->clearBitmapPreloadCache()V

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->resolveBitmap(Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/ImageBackgroundType;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object p2

    invoke-virtual {p2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    new-instance p3, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {p3, p4, p2}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->bitmapPreloadCache:Lsk/mimac/slideshow/utils/Couple;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object p3, Lsk/mimac/slideshow/gui/ShowHelperImpl;->LOG:Lorg/slf4j/Logger;

    const-string p4, "Can\'t prepare image from {}"

    invoke-interface {p3, p4, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public preparePdf(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->clearBitmapPreloadCache()V

    :try_start_0
    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->resolvePdf(Ljava/lang/String;I)Lsk/mimac/slideshow/utils/Couple;

    move-result-object p2

    invoke-virtual {p2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v0, p3, p2}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->bitmapPreloadCache:Lsk/mimac/slideshow/utils/Couple;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object p3, Lsk/mimac/slideshow/gui/ShowHelperImpl;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Can\'t prepare image from {}"

    invoke-interface {p3, v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public prepareVideo(Ljava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getVideoViewOrNull()Lsk/mimac/slideshow/gui/video/VideoViewInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, LD/f;

    const/4 v2, 0x3

    invoke-direct {v1, v0, p1, p2, v2}, LD/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public prepareYouTube(Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;I)V
    .locals 1

    new-instance v0, Lk1/l;

    invoke-direct {v0, p0, p1, p2, p3}, Lk1/l;-><init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;I)V

    invoke-static {v0}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resumeVideo()V
    .locals 2

    new-instance v0, LA0/a;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, LA0/a;-><init>(I)V

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->executeVideoViewConsumer(Lsk/mimac/slideshow/utils/Consumer;)V

    return-void
.end method

.method public resumeYouTube()V
    .locals 2

    new-instance v0, Lk1/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lk1/g;-><init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;I)V

    invoke-static {v0}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setItemThread(Lsk/mimac/slideshow/gui/DisplayItemThread;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/ShowHelper;->itemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

    return-void
.end method

.method public showCustomPanel(Lsk/mimac/slideshow/database/entity/Item;I)Z
    .locals 11

    invoke-direct {p0, p2}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->getFromBitmapPreloadCache(I)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->showDrawableInternal(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/util/Set;Z)V

    return v1

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getWidth()I

    move-result v0

    iget-object v2, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v2}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getHeight()I

    move-result v2

    if-lez v0, :cond_6

    if-gtz v2, :cond_1

    goto/16 :goto_3

    :cond_1
    sget-object v3, Lsk/mimac/slideshow/gui/ShowHelperImpl$1;->$SwitchMap$sk$mimac$slideshow$enums$ItemType:[I

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getType()Lsk/mimac/slideshow/enums/ItemType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v1, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    new-instance v3, Lsk/mimac/slideshow/panel/NameDayPanel;

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v3, v0, v2, p1}, Lsk/mimac/slideshow/panel/NameDayPanel;-><init>(IILjava/util/Map;)V

    invoke-virtual {v3}, Lsk/mimac/slideshow/panel/NameDayPanel;->getTextModel()Lsk/mimac/slideshow/model/TextModel;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1, p2}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->showTextView(Lsk/mimac/slideshow/model/TextModel;I)V

    goto :goto_2

    :cond_2
    new-instance p2, Lsk/mimac/slideshow/item/CantShowException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Item type ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getType()Lsk/mimac/slideshow/enums/ItemType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] not expected in custom panel"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lsk/mimac/slideshow/item/CantShowException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p2, Lsk/mimac/slideshow/panel/DateTimePanel;

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p2, v0, v2, p1}, Lsk/mimac/slideshow/panel/DateTimePanel;-><init>(IILjava/util/Map;)V

    invoke-virtual {p2}, Lsk/mimac/slideshow/panel/DateTimePanel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->showDrawableInternal(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/util/Set;Z)V

    goto :goto_2

    :cond_4
    new-instance p2, Lsk/mimac/slideshow/panel/WeatherPanel;

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p2, v0, v2, p1}, Lsk/mimac/slideshow/panel/WeatherPanel;-><init>(IILjava/util/Map;)V

    invoke-virtual {p2}, Lsk/mimac/slideshow/panel/WeatherPanel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1

    :cond_5
    new-instance v3, Lsk/mimac/slideshow/panel/RssPanel;

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v3, v0, v2, p1}, Lsk/mimac/slideshow/panel/RssPanel;-><init>(IILjava/util/Map;)V

    invoke-virtual {v3}, Lsk/mimac/slideshow/panel/RssPanel;->getTextModel()Lsk/mimac/slideshow/model/TextModel;

    move-result-object p1

    goto :goto_0

    :goto_2
    return v1

    :cond_6
    :goto_3
    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getType()Lsk/mimac/slideshow/enums/ItemType;

    move-result-object p2

    sget-object v1, Lsk/mimac/slideshow/enums/ItemType;->RSS:Lsk/mimac/slideshow/enums/ItemType;

    if-ne p2, v1, :cond_7

    new-instance p2, Lsk/mimac/slideshow/panel/RssPanel;

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p2, v0, v2, p1}, Lsk/mimac/slideshow/panel/RssPanel;-><init>(IILjava/util/Map;)V

    invoke-virtual {p2}, Lsk/mimac/slideshow/panel/RssPanel;->getTextModel()Lsk/mimac/slideshow/model/TextModel;

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public showHtml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 8

    new-instance v7, Lk1/o;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move v5, p5

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lk1/o;-><init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-static {v7}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/ImageBackgroundType;IILjava/util/Set;ZI)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lsk/mimac/slideshow/enums/ImageBackgroundType;",
            "II",
            "Ljava/util/Set<",
            "Lsk/mimac/slideshow/enums/AnimationType;",
            ">;ZI)V"
        }
    .end annotation

    move-object v8, p0

    move-object v0, p1

    move/from16 v1, p9

    invoke-direct {p0, v1}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->getFromBitmapPreloadCache(I)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v2, p2

    move-object v3, p4

    invoke-direct {p0, p1, p2, p4}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->resolveBitmap(Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/ImageBackgroundType;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, p3

    move v4, p5

    move v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->showDrawableInternal(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/util/Set;Z)V

    return-void

    :cond_1
    new-instance v1, Lsk/mimac/slideshow/item/CantShowException;

    const-string v2, "Bitmap from image \'"

    const-string v3, "\' is null, check if the image file is correct"

    .line 1
    invoke-static {v2, p1, v3}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {v1, v0}, Lsk/mimac/slideshow/item/CantShowException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public showInstructionScreen()V
    .locals 8

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getWidth()I

    move-result v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lsk/mimac/slideshow/gui/InstructionScreen;->buildHtml(II)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->showHtml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public showPdf(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/util/Set;ZI)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Set<",
            "Lsk/mimac/slideshow/enums/AnimationType;",
            ">;ZI)I"
        }
    .end annotation

    move-object v8, p0

    move/from16 v0, p9

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->getFromBitmapPreloadCache(I)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->resolvePdf(Ljava/lang/String;I)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v0

    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->showDrawableInternal(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/util/Set;Z)V

    invoke-virtual {v9}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public showStream(Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->showVideoInternal(Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;ZLjava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V

    return-void
.end method

.method public showTextView(Lsk/mimac/slideshow/model/TextModel;I)V
    .locals 7

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getTextView()Lsk/mimac/slideshow/gui/ScrollTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p1}, Lsk/mimac/slideshow/model/TextModel;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsk/mimac/slideshow/utils/FontUtils;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getWidth()I

    move-result v1

    iget-object v2, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl;->playlistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v2}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getHeight()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->calculateTextSize(Lsk/mimac/slideshow/model/TextModel;Landroid/text/TextPaint;II)I

    move-result v5

    new-instance v0, Lk1/h;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lk1/h;-><init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;Lsk/mimac/slideshow/gui/ScrollTextView;Lsk/mimac/slideshow/model/TextModel;II)V

    invoke-static {v0}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    new-instance v10, Lk1/m;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move/from16 v5, p8

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lk1/m;-><init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/Integer;Z)V

    invoke-static {v10}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showVideo(Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V
    .locals 8

    const-string v0, "file://"

    .line 1
    invoke-static {v0, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 2
    invoke-direct/range {v1 .. v7}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->showVideoInternal(Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;ZLjava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V

    return-void
.end method

.method public showVideoInput(Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;IZLjava/lang/String;Ljava/lang/String;I)V
    .locals 10

    new-instance v9, Lk1/k;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p5

    move-object/from16 v3, p6

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lk1/k;-><init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;IZI)V

    invoke-static {v9}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showWidget(I)V
    .locals 3

    .line 1
    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, LW/a;

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-direct {v1, p0, p1, v0, v2}, LW/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v0, Lsk/mimac/slideshow/item/CantShowException;

    .line 24
    .line 25
    const-string v1, "No widget found for appWidgetId="

    .line 26
    .line 27
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Lsk/mimac/slideshow/item/CantShowException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public showYouTube(Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;I)V
    .locals 7

    new-instance v6, Lk1/j;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lk1/j;-><init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;I)V

    invoke-static {v6}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
