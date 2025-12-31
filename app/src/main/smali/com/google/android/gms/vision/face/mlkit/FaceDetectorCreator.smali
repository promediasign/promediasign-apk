.class public Lcom/google/android/gms/vision/face/mlkit/FaceDetectorCreator;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztp;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztp;-><init>()V

    return-void
.end method


# virtual methods
.method public newFaceDetector(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztn;
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/vision/face/mlkit/zzb;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/google/android/gms/vision/face/mlkit/zzb;-><init>(Landroid/content/Context;Z)V

    :try_start_0
    const-string v3, "face_detector_v2_jni"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const/4 v0, 0x0

    invoke-virtual {v2, p2, v0, v3, v4}, Lcom/google/android/gms/vision/face/mlkit/zzb;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;Ljava/lang/String;J)V

    new-instance v0, Lcom/google/android/gms/vision/face/mlkit/zza;

    new-instance v1, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;

    invoke-direct {v1}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;-><init>()V

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/vision/face/mlkit/zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;Lcom/google/android/gms/vision/face/mlkit/zzb;)V

    return-object v0

    :catch_0
    move-exception p1

    const-string v3, "FaceDetectorCreator"

    const-string v4, "Failed to load library face_detector_v2_jni"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, p2, v4, v5, v6}, Lcom/google/android/gms/vision/face/mlkit/zzb;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;Ljava/lang/String;J)V

    invoke-static {v4}, Lcom/google/android/gms/vision/face/mlkit/zze;->zza(Ljava/lang/String;)Landroid/os/RemoteException;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteException;

    throw p1
.end method
