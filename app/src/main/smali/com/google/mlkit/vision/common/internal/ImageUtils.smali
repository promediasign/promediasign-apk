.class public Lcom/google/mlkit/vision/common/internal/ImageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/common/internal/GmsLogger;

.field private static zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "MLKitImageUtils"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/mlkit/vision/common/internal/ImageUtils;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    new-instance v0, Lcom/google/mlkit/vision/common/internal/ImageUtils;

    invoke-direct {v0}, Lcom/google/mlkit/vision/common/internal/ImageUtils;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/common/internal/ImageUtils;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/mlkit/vision/common/internal/ImageUtils;
    .locals 1

    sget-object v0, Lcom/google/mlkit/vision/common/internal/ImageUtils;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    return-object v0
.end method


# virtual methods
.method public getImageDataWrapper(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/16 v1, 0x11

    .line 9
    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const/16 v1, 0x23

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const v1, 0x32315659

    .line 17
    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const-string v1, "Unsupported image format: "

    .line 29
    .line 30
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v1, 0x3

    .line 35
    invoke-direct {v0, p1, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getMediaImage()Landroid/media/Image;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getBitmapInternal()Landroid/graphics/Bitmap;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroid/graphics/Bitmap;

    .line 68
    .line 69
    goto :goto_0
.end method

.method public getMobileVisionImageFormat(Lcom/google/mlkit/vision/common/InputImage;)I
    .locals 0

    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    move-result p1

    return p1
.end method

.method public getMobileVisionImageSize(Lcom/google/mlkit/vision/common/InputImage;)I
    .locals 3

    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getBitmapInternal()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    move-result v0

    const v1, 0x32315659

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/media/Image$Plane;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x2

    return p1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    :goto_1
    return p1
.end method
