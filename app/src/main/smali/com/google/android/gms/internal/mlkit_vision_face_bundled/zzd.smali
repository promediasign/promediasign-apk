.class public abstract Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Landroid/graphics/Bitmap;Z)Ljava/nio/ByteBuffer;
    .locals 16

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v10, v8, v9

    new-array v11, v10, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    int-to-double v0, v9

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-double v4, v8

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v0, v0

    mul-int v0, v0, v1

    add-int/2addr v0, v10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v9, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_1

    aget v6, v11, v4

    shr-int/lit8 v7, v6, 0x10

    shr-int/lit8 v12, v6, 0x8

    const/16 v13, 0xff

    and-int/2addr v6, v13

    add-int/lit8 v14, v3, 0x1

    and-int/2addr v7, v13

    and-int/2addr v12, v13

    mul-int/lit8 v15, v7, 0x42

    mul-int/lit16 v1, v12, 0x81

    add-int/2addr v1, v15

    mul-int/lit8 v15, v6, 0x19

    add-int/2addr v15, v1

    add-int/lit16 v15, v15, 0x80

    shr-int/lit8 v1, v15, 0x8

    add-int/lit8 v1, v1, 0x10

    invoke-static {v13, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v3, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    rem-int/lit8 v1, v2, 0x2

    if-nez v1, :cond_0

    rem-int/lit8 v1, v4, 0x2

    if-nez v1, :cond_0

    mul-int/lit8 v1, v12, 0x5e

    mul-int/lit8 v3, v7, 0x70

    mul-int/lit8 v12, v12, 0x4a

    mul-int/lit8 v7, v7, -0x26

    sub-int/2addr v3, v1

    mul-int/lit8 v1, v6, 0x12

    sub-int/2addr v7, v12

    mul-int/lit8 v6, v6, 0x70

    sub-int/2addr v3, v1

    add-int/lit16 v3, v3, 0x80

    add-int/2addr v7, v6

    add-int/lit16 v7, v7, 0x80

    shr-int/lit8 v1, v3, 0x8

    shr-int/lit8 v3, v7, 0x8

    add-int/lit16 v1, v1, 0x80

    add-int/lit16 v3, v3, 0x80

    add-int/lit8 v6, v10, 0x1

    invoke-static {v13, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v10, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v10, v10, 0x2

    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v6, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    move v3, v14

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
