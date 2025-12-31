.class public Lcom/google/mlkit/vision/common/InputImage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mlkit/common/sdkinternal/MLTaskInput;


# instance fields
.field private volatile zza:Landroid/graphics/Bitmap;

.field private volatile zzb:Ljava/nio/ByteBuffer;

.field private volatile zzc:Lcom/google/mlkit/vision/common/zzb;

.field private final zzd:I

.field private final zze:I

.field private final zzf:I

.field private final zzg:I

.field private final zzh:Landroid/graphics/Matrix;


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/mlkit/vision/common/InputImage;->zza:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    iput p2, p0, Lcom/google/mlkit/vision/common/InputImage;->zzf:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/mlkit/vision/common/InputImage;->zzh:Landroid/graphics/Matrix;

    return-void
.end method

.method private constructor <init>(Landroid/media/Image;IIILandroid/graphics/Matrix;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/mlkit/vision/common/zzb;

    invoke-direct {v0, p1}, Lcom/google/mlkit/vision/common/zzb;-><init>(Landroid/media/Image;)V

    iput-object v0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzc:Lcom/google/mlkit/vision/common/zzb;

    iput p2, p0, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    iput p3, p0, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    iput p4, p0, Lcom/google/mlkit/vision/common/InputImage;->zzf:I

    const/16 p1, 0x23

    iput p1, p0, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    iput-object p5, p0, Lcom/google/mlkit/vision/common/InputImage;->zzh:Landroid/graphics/Matrix;

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;IIII)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x32315659

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p5, v0, :cond_0

    const/16 v0, 0x11

    if-ne p5, v0, :cond_1

    const/16 p5, 0x11

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    mul-int v3, p2, p3

    if-le v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    const-string v0, "Image dimension, ByteBuffer size and format don\'t match. Please check if the ByteBuffer is in the decalred format."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iput p2, p0, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    iput p3, p0, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    iput p4, p0, Lcom/google/mlkit/vision/common/InputImage;->zzf:I

    iput p5, p0, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/mlkit/vision/common/InputImage;->zzh:Landroid/graphics/Matrix;

    return-void
.end method

.method public static fromByteBuffer(Ljava/nio/ByteBuffer;IIII)Lcom/google/mlkit/vision/common/InputImage;
    .locals 11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v10, Lcom/google/mlkit/vision/common/InputImage;

    move-object v4, v10

    move-object v5, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/google/mlkit/vision/common/InputImage;-><init>(Ljava/nio/ByteBuffer;IIII)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v6

    move v0, p4

    move v4, p2

    move v5, p1

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/google/mlkit/vision/common/InputImage;->zzb(IIJIIII)V

    return-object v10
.end method

.method public static fromMediaImage(Landroid/media/Image;I)Lcom/google/mlkit/vision/common/InputImage;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/mlkit/vision/common/InputImage;->zza(Landroid/media/Image;ILandroid/graphics/Matrix;)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Landroid/media/Image;ILandroid/graphics/Matrix;)Lcom/google/mlkit/vision/common/InputImage;
    .locals 11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v0, "Please provide a valid image"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/16 v4, 0x5a

    if-eq p1, v4, :cond_0

    const/16 v4, 0xb4

    if-eq p1, v4, :cond_0

    const/16 v4, 0x10e

    if-ne p1, v4, :cond_1

    const/16 p1, 0x10e

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const-string v5, "Invalid rotation. Only 0, 90, 180, 270 are supported currently."

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v4

    const/16 v5, 0x100

    if-eq v4, v5, :cond_3

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v4

    const/16 v6, 0x23

    if-ne v4, v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    const-string v4, "Only JPEG and YUV_420_888 are supported now"

    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v4

    if-ne v4, v5, :cond_4

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p2

    aget-object p2, p2, v0

    invoke-virtual {p2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    new-instance v1, Lcom/google/mlkit/vision/common/InputImage;

    invoke-static {}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->getInstance()Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->convertJpegToUpRightBitmap(Landroid/media/Image;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/google/mlkit/vision/common/InputImage;-><init>(Landroid/graphics/Bitmap;I)V

    :goto_2
    move v6, p2

    move-object p2, v1

    goto :goto_4

    :cond_4
    array-length v4, v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_6

    aget-object v6, v1, v5

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    new-instance v1, Lcom/google/mlkit/vision/common/InputImage;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v8

    move-object v5, v1

    move-object v6, p0

    move v9, p1

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/mlkit/vision/common/InputImage;-><init>(Landroid/media/Image;IIILandroid/graphics/Matrix;)V

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p2

    aget-object p2, p2, v0

    invoke-virtual {p2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 p2, p2, 0x2

    goto :goto_2

    :goto_4
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v5

    const/4 v1, 0x5

    move v7, p1

    invoke-static/range {v0 .. v7}, Lcom/google/mlkit/vision/common/InputImage;->zzb(IIJIIII)V

    return-object p2
.end method

.method private static zzb(IIJIIII)V
    .locals 10

    const-string v0, "vision-common"

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlg;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzkx;

    move-result-object v1

    move v2, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_common/zzli;->zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzkx;IIJIIII)V

    return-void
.end method


# virtual methods
.method public getBitmapInternal()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/common/InputImage;->zza:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzb:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getCoordinatesMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzh:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getFormat()I
    .locals 1

    iget v0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    return v0
.end method

.method public getMediaImage()Landroid/media/Image;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzc:Lcom/google/mlkit/vision/common/zzb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzc:Lcom/google/mlkit/vision/common/zzb;

    invoke-virtual {v0}, Lcom/google/mlkit/vision/common/zzb;->zza()Landroid/media/Image;

    move-result-object v0

    return-object v0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzc:Lcom/google/mlkit/vision/common/zzb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzc:Lcom/google/mlkit/vision/common/zzb;

    invoke-virtual {v0}, Lcom/google/mlkit/vision/common/zzb;->zzb()[Landroid/media/Image$Plane;

    move-result-object v0

    return-object v0
.end method

.method public getRotationDegrees()I
    .locals 1

    iget v0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzf:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    return v0
.end method
