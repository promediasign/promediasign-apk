.class public Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzas;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;->zzc(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;)V

    return-void
.end method

.method private native closeDetectorJni(J)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native detectFacesImageByteArrayJni(J[B[B)[B
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native detectFacesImageByteArrayMultiPlanesJni(J[B[B[BIIIIII[B)[B
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native detectFacesImageByteBufferJni(JLjava/nio/ByteBuffer;[B)[B
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native detectFacesImageByteBufferMultiPlanesJni(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII[B)[B
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native initDetectorJni([BLandroid/content/res/AssetManager;)J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;Landroid/content/res/AssetManager;)J
    .locals 2

    const-string v0, "initialize.start()"

    const-string v1, "FaceDetectorV2Jni"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztu;->zzr()[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->initDetectorJni([BLandroid/content/res/AssetManager;)J

    move-result-wide p1

    const-string v0, "initialize.end()"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p1
.end method

.method public final zzb(J[BLcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;
    .locals 2

    const-string v0, "detectFacesImageByteArray.start()"

    const-string v1, "FaceDetectorV2Jni"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztu;->zzr()[B

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->detectFacesImageByteArrayJni(J[B[B)[B

    move-result-object p1

    if-eqz p1, :cond_0

    array-length p2, p1

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;->zzb([BLcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "detectFacesImageByteArray failed to parse result: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string p1, "detectFacesImageByteArray.end()"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final zzc(J[B[B[BIIIIIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;
    .locals 16

    const-string v0, "detectFacesImageByteArrayMultiPlanes.start()"

    const-string v1, "FaceDetectorV2Jni"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p12 .. p12}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztu;->zzr()[B

    move-result-object v15

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-direct/range {v3 .. v15}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->detectFacesImageByteArrayMultiPlanesJni(J[B[B[BIIIIII[B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v3, v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v3, :cond_0

    move-object/from16 v3, p0

    :try_start_1
    iget-object v4, v3, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;->zzb([BLcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    move-object/from16 v3, p0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v3, p0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "detectFacesImageByteArrayMultiPlanes failed to parse result: "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v0, "%s detectFacesImageByteArrayMultiPlanes.end()"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final zzd(JLjava/nio/ByteBuffer;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;
    .locals 2

    const-string v0, "detectFacesImageByteBuffer.start()"

    const-string v1, "FaceDetectorV2Jni"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztu;->zzr()[B

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->detectFacesImageByteBufferJni(JLjava/nio/ByteBuffer;[B)[B

    move-result-object p1

    if-eqz p1, :cond_0

    array-length p2, p1

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;->zzb([BLcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "detectFacesImageByteBuffer failed to parse result: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string p1, "%s detectFacesImageByteBuffer.end()"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final zze(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;
    .locals 16

    const-string v0, "detectFacesImageByteBufferMultiPlanes.start()"

    const-string v1, "FaceDetectorV2Jni"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p12 .. p12}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztu;->zzr()[B

    move-result-object v15

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-direct/range {v3 .. v15}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->detectFacesImageByteBufferMultiPlanesJni(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII[B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v3, v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v3, :cond_0

    move-object/from16 v3, p0

    :try_start_1
    iget-object v4, v3, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;->zzb([BLcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    move-object/from16 v3, p0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v3, p0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "detectFacesImageByteBufferMultiPlanes failed to parse result: "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v0, "detectFacesImageByteBuffer.end()"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final zzf(J)V
    .locals 2

    const-string v0, "closeDetector.start()"

    const-string v1, "FaceDetectorV2Jni"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->closeDetectorJni(J)V

    const-string p1, "closeDetector.end()"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
