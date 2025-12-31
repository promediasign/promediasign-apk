.class public Lsk/mimac/slideshow/utils/MediaUtilsImpl;
.super Lsk/mimac/slideshow/utils/MediaUtils;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/utils/MediaUtilsImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/utils/MediaUtilsImpl;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/utils/MediaUtils;-><init>()V

    return-void
.end method

.method private static addPaddingToRectangle(Lsk/mimac/slideshow/utils/Rectangle;)V
    .locals 3

    iget v0, p0, Lsk/mimac/slideshow/utils/Rectangle;->left:I

    iget v1, p0, Lsk/mimac/slideshow/utils/Rectangle;->width:I

    div-int/lit8 v2, v1, 0x20

    add-int/2addr v2, v0

    iput v2, p0, Lsk/mimac/slideshow/utils/Rectangle;->left:I

    div-int/lit8 v0, v1, 0x10

    sub-int/2addr v1, v0

    iput v1, p0, Lsk/mimac/slideshow/utils/Rectangle;->width:I

    iget v0, p0, Lsk/mimac/slideshow/utils/Rectangle;->top:I

    iget v1, p0, Lsk/mimac/slideshow/utils/Rectangle;->height:I

    div-int/lit8 v2, v1, 0x20

    add-int/2addr v2, v0

    iput v2, p0, Lsk/mimac/slideshow/utils/Rectangle;->top:I

    div-int/lit8 v0, v1, 0x10

    sub-int/2addr v1, v0

    iput v1, p0, Lsk/mimac/slideshow/utils/Rectangle;->height:I

    return-void
.end method

.method private static adjustFontSize(Lsk/mimac/slideshow/utils/Rectangle;IIF)F
    .locals 4

    int-to-float p1, p1

    iget v0, p0, Lsk/mimac/slideshow/utils/Rectangle;->width:I

    int-to-float v1, v0

    const v2, 0x3f9c28f6    # 1.22f

    mul-float v1, v1, v2

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_0

    int-to-float v1, p2

    iget v3, p0, Lsk/mimac/slideshow/utils/Rectangle;->height:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    :cond_0
    const/high16 v1, 0x41700000    # 15.0f

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    const p0, 0x3f99999a    # 1.2f

    :goto_0
    div-float/2addr p3, p0

    goto :goto_1

    :cond_1
    int-to-float v1, v0

    const v2, 0x3f8e147b    # 1.11f

    mul-float v1, v1, v2

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_2

    int-to-float v1, p2

    iget v3, p0, Lsk/mimac/slideshow/utils/Rectangle;->height:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    :cond_2
    const/high16 v1, 0x41300000    # 11.0f

    cmpl-float v1, p3, v1

    if-lez v1, :cond_3

    const p0, 0x3f8ccccd    # 1.1f

    goto :goto_0

    :cond_3
    int-to-float v0, v0

    const v1, 0x3f87ae14    # 1.06f

    mul-float v0, v0, v1

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_4

    int-to-float p1, p2

    iget p0, p0, Lsk/mimac/slideshow/utils/Rectangle;->height:I

    int-to-float p0, p0

    mul-float p0, p0, v1

    cmpl-float p0, p1, p0

    if-lez p0, :cond_5

    :cond_4
    const/high16 p0, 0x41b00000    # 22.0f

    cmpl-float p0, p3, p0

    if-lez p0, :cond_5

    const p0, 0x3f866666    # 1.05f

    goto :goto_0

    :cond_5
    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p3, p0

    :goto_1
    return p3
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 2

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v0, 0x1

    if-le p0, p1, :cond_0

    div-int/lit8 p0, p0, 0x2

    :goto_0
    div-int v1, p0, v0

    if-le v1, p1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static convertBitmapToStream(Landroid/graphics/Bitmap;)Ljava/io/InputStream;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x4d

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p0
.end method

.method private static decodeSampledBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".svg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/scand/svg/SVGHelper;->noContext()Lcom/scand/svg/SVGHelper$SVGLoadData;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/scand/svg/SVGHelper$SVGLoadData;->open(Ljava/io/File;)Lcom/scand/svg/SVGHelper$SVGLoadData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/scand/svg/SVGHelper$SVGLoadData;->checkSVGSize()Lcom/scand/svg/SVGHelper$SVGLoadData;

    move-result-object p0

    invoke-virtual {p0, p1, p1}, Lcom/scand/svg/SVGHelper$SVGLoadData;->setRequestBounds(II)Lcom/scand/svg/SVGHelper$SVGLoadData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/scand/svg/SVGHelper$SVGLoadData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/utils/MediaUtilsImpl;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static drawTextInRectangle(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint;Lsk/mimac/slideshow/utils/Rectangle;)V
    .locals 10

    invoke-static {p3}, Lsk/mimac/slideshow/utils/MediaUtilsImpl;->addPaddingToRectangle(Lsk/mimac/slideshow/utils/Rectangle;)V

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, p1, v3, v2, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int v4, v2, v3

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v6

    iget v8, p3, Lsk/mimac/slideshow/utils/Rectangle;->width:I

    if-ge v4, v8, :cond_0

    iget v9, p3, Lsk/mimac/slideshow/utils/Rectangle;->height:I

    if-lt v7, v9, :cond_1

    :cond_0
    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v9, v0, v9

    if-gtz v9, :cond_2

    :cond_1
    sub-int/2addr v2, v3

    sub-int/2addr v8, v2

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v8, v3

    iget v0, p3, Lsk/mimac/slideshow/utils/Rectangle;->height:I

    sub-int v1, v5, v6

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v5

    iget v2, p3, Lsk/mimac/slideshow/utils/Rectangle;->left:I

    add-int/2addr v2, v8

    int-to-float v2, v2

    iget p3, p3, Lsk/mimac/slideshow/utils/Rectangle;->top:I

    add-int/2addr p3, v0

    sub-int/2addr p3, v1

    int-to-float p3, p3

    invoke-virtual {p0, p1, v2, p3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_2
    invoke-static {p3, v4, v7, v0}, Lsk/mimac/slideshow/utils/MediaUtilsImpl;->adjustFontSize(Lsk/mimac/slideshow/utils/Rectangle;IIF)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method

.method public static getVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-wide/32 v1, 0xf4240

    const/4 p0, 0x2

    invoke-virtual {v0, v1, v2, p0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :try_start_2
    sget-object v1, Lsk/mimac/slideshow/utils/MediaUtilsImpl;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t get video thumbnail"

    invoke-interface {v1, v2, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_4
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    throw p0
.end method

.method private pdfToBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 10

    new-instance v8, Lcom/shockwave/pdfium/PdfiumCore;

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/shockwave/pdfium/PdfiumCore;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    invoke-static {v1, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/shockwave/pdfium/PdfiumCore;->newDocument(Landroid/os/ParcelFileDescriptor;)Lcom/shockwave/pdfium/PdfDocument;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v8, p1, v0}, Lcom/shockwave/pdfium/PdfiumCore;->openPage(Lcom/shockwave/pdfium/PdfDocument;I)J

    invoke-virtual {v8, p1, v0}, Lcom/shockwave/pdfium/PdfiumCore;->getPageWidthPoint(Lcom/shockwave/pdfium/PdfDocument;I)I

    move-result v1

    mul-int v1, v1, p2

    invoke-virtual {v8, p1, v0}, Lcom/shockwave/pdfium/PdfiumCore;->getPageHeightPoint(Lcom/shockwave/pdfium/PdfDocument;I)I

    move-result v0

    div-int v6, v1, v0

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, v9

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/shockwave/pdfium/PdfiumCore;->renderPageBitmap(Lcom/shockwave/pdfium/PdfDocument;Landroid/graphics/Bitmap;IIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {v8, p1}, Lcom/shockwave/pdfium/PdfiumCore;->closeDocument(Lcom/shockwave/pdfium/PdfDocument;)V

    :cond_0
    return-object v9

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_0

    :catchall_1
    move-exception p2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v8, v0}, Lcom/shockwave/pdfium/PdfiumCore;->closeDocument(Lcom/shockwave/pdfium/PdfDocument;)V

    :cond_1
    throw p2
.end method


# virtual methods
.method public createThumb(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 3

    .line 1
    invoke-static {p1}, Lsk/mimac/slideshow/utils/FileUtils2;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->VIDEO_EXTENSIONS:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lsk/mimac/slideshow/utils/MediaUtilsImpl;->getVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    sget-object p2, Lsk/mimac/slideshow/utils/MediaUtilsImpl;->LOG:Lorg/slf4j/Logger;

    .line 38
    .line 39
    const-string v0, "Can\'t create thumbnail from video \'{}\'"

    .line 40
    .line 41
    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 45
    .line 46
    new-array p2, v2, [B

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    mul-int p1, p1, p2

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    div-int/2addr p1, v1

    .line 63
    const/4 v1, 0x1

    .line 64
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->IMAGE_EXTENSIONS:Ljava/util/Set;

    .line 70
    .line 71
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v1, p1, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0, p2}, Lsk/mimac/slideshow/utils/MediaUtilsImpl;->decodeSampledBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-nez v0, :cond_2

    .line 93
    .line 94
    sget-object p2, Lsk/mimac/slideshow/utils/MediaUtilsImpl;->LOG:Lorg/slf4j/Logger;

    .line 95
    .line 96
    const-string v0, "Can\'t decode image from \'{}\'"

    .line 97
    .line 98
    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 102
    .line 103
    new-array p2, v2, [B

    .line 104
    .line 105
    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 106
    .line 107
    .line 108
    return-object p1

    .line 109
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    mul-int p1, p1, p2

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    div-int/2addr p1, v1

    .line 120
    invoke-static {v0, p1, p2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    goto :goto_0

    .line 125
    :cond_3
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->PDF_EXENTENSIONS:Ljava/util/Set;

    .line 126
    .line 127
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_5

    .line 132
    .line 133
    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/utils/MediaUtilsImpl;->pdfToBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    const/4 v0, 0x0

    .line 138
    :goto_0
    invoke-static {p1}, Lsk/mimac/slideshow/utils/MediaUtilsImpl;->convertBitmapToStream(Landroid/graphics/Bitmap;)Ljava/io/InputStream;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    if-eqz v0, :cond_4

    .line 143
    .line 144
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 145
    .line 146
    .line 147
    :cond_4
    return-object p1

    .line 148
    :cond_5
    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 149
    .line 150
    new-array p2, v2, [B

    .line 151
    .line 152
    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 153
    .line 154
    .line 155
    return-object p1
.end method
