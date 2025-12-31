.class public Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;

    invoke-direct {v0}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->zza:Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bufferWithBackingArray(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;
    .locals 1

    sget-object v0, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->zza:Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;

    return-object v0
.end method

.method public static yv12ToNv21Buffer(Ljava/nio/ByteBuffer;Z)Ljava/nio/ByteBuffer;
    .locals 6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    div-int/lit8 v1, v0, 0x6

    if-eqz p1, :cond_0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    mul-int/lit8 v3, v1, 0x4

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int v2, v1, v1

    if-ge v0, v2, :cond_2

    add-int v2, v3, v0

    rem-int/lit8 v4, v0, 0x2

    mul-int v4, v4, v1

    add-int/2addr v4, v3

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v4

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-object p1
.end method

.method private static zza(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p0, p1, p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static final zzc(Landroid/media/Image$Plane;II[BII)V
    .locals 7

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    div-int/2addr v2, v1

    if-nez v2, :cond_0

    return-void

    :cond_0
    div-int/2addr p2, v2

    div-int/2addr p1, p2

    const/4 p2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    move v5, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_1

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    aput-byte v6, p3, p4

    add-int/2addr p4, p5

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public convertJpegToUpRightBitmap(Landroid/media/Image;I)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x100

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Only JPEG is supported now"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-ne v0, v2, :cond_1

    aget-object p1, p1, v3

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->zza(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected image format, JPEG should have exactly 1 image plane"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public convertToNv21Buffer(Lcom/google/mlkit/vision/common/InputImage;Z)Ljava/nio/ByteBuffer;
    .locals 18

    move/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    const/16 v2, 0x11

    if-eq v1, v2, :cond_2

    const/16 v2, 0x23

    if-eq v1, v2, :cond_1

    const v2, 0x32315659

    if-ne v1, v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/mlkit/vision/common/InputImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->yv12ToNv21Buffer(Ljava/nio/ByteBuffer;Z)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Unsupported image format"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/mlkit/vision/common/InputImage;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/Image$Plane;

    invoke-virtual/range {p1 .. p1}, Lcom/google/mlkit/vision/common/InputImage;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/mlkit/vision/common/InputImage;->getHeight()I

    move-result v2

    move-object/from16 v3, p0

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->yuv420ThreePlanesToNV21([Landroid/media/Image$Plane;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_2
    move-object/from16 v3, p0

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/google/mlkit/vision/common/InputImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->bufferWithBackingArray(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/mlkit/vision/common/InputImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    :goto_0
    return-object v0

    :cond_4
    move-object/from16 v3, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/mlkit/vision/common/InputImage;->getBitmapInternal()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {}, Lf/a;->f()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    if-ne v2, v4, :cond_5

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_5
    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v12, v1, v2

    new-array v13, v12, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v5, v13

    move v7, v1

    move v10, v1

    move v11, v2

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    int-to-double v4, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v4, v4

    int-to-double v8, v1

    div-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    mul-int v4, v4, v5

    add-int/2addr v4, v12

    if-eqz v0, :cond_6

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v5, v2, :cond_9

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v1, :cond_8

    aget v9, v13, v6

    shr-int/lit8 v10, v9, 0x10

    const/16 v11, 0xff

    and-int/2addr v10, v11

    shr-int/lit8 v14, v9, 0x8

    and-int/2addr v14, v11

    and-int/2addr v9, v11

    mul-int/lit8 v15, v10, -0x26

    mul-int/lit8 v16, v14, 0x4a

    sub-int v15, v15, v16

    mul-int/lit8 v16, v9, 0x70

    add-int v15, v16, v15

    add-int/lit16 v15, v15, 0x80

    shr-int/lit8 v15, v15, 0x8

    add-int/lit16 v15, v15, 0x80

    mul-int/lit8 v16, v10, 0x70

    mul-int/lit8 v17, v14, 0x5e

    sub-int v16, v16, v17

    mul-int/lit8 v17, v9, 0x12

    sub-int v4, v16, v17

    add-int/lit16 v4, v4, 0x80

    shr-int/lit8 v4, v4, 0x8

    add-int/lit16 v4, v4, 0x80

    add-int/lit8 v16, v7, 0x1

    mul-int/lit8 v10, v10, 0x42

    mul-int/lit16 v14, v14, 0x81

    add-int/2addr v14, v10

    mul-int/lit8 v9, v9, 0x19

    add-int/2addr v9, v14

    add-int/lit16 v9, v9, 0x80

    shr-int/lit8 v9, v9, 0x8

    add-int/lit8 v9, v9, 0x10

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-byte v9, v9

    invoke-virtual {v0, v7, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    rem-int/lit8 v7, v5, 0x2

    if-nez v7, :cond_7

    rem-int/lit8 v7, v6, 0x2

    if-nez v7, :cond_7

    add-int/lit8 v7, v12, 0x1

    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v0, v12, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v12, v12, 0x2

    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v0, v7, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :cond_7
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v16

    goto :goto_3

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    return-object v0
.end method

.method public yuv420ThreePlanesToNV21([Landroid/media/Image$Plane;II)Ljava/nio/ByteBuffer;
    .locals 12

    mul-int v4, p2, p3

    div-int/lit8 v0, v4, 0x4

    add-int/2addr v0, v0

    add-int/2addr v0, v4

    new-array v11, v0, [B

    const/4 v0, 0x1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v6

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    add-int v7, v4, v4

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    div-int/lit8 v7, v7, 0x4

    add-int/lit8 v9, v7, -0x2

    const/4 v10, 0x0

    if-ne v8, v9, :cond_0

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-eqz v8, :cond_1

    aget-object p2, p1, v10

    invoke-virtual {p2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v11, v10, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    aget-object p2, p1, v0

    invoke-virtual {p2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v11, v4, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v4, v0

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p2, v11, v4, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    aget-object v5, p1, v10

    const/4 v9, 0x0

    const/4 v10, 0x1

    move v6, p2

    move v7, p3

    move-object v8, v11

    invoke-static/range {v5 .. v10}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->zzc(Landroid/media/Image$Plane;II[BII)V

    aget-object v5, p1, v0

    add-int/lit8 v9, v4, 0x1

    const/4 v10, 0x2

    invoke-static/range {v5 .. v10}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->zzc(Landroid/media/Image$Plane;II[BII)V

    aget-object v0, p1, v2

    const/4 v5, 0x2

    move v1, p2

    move v2, p3

    move-object v3, v11

    invoke-static/range {v0 .. v5}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->zzc(Landroid/media/Image$Plane;II[BII)V

    :goto_1
    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method
