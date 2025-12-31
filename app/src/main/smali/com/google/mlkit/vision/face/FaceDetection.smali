.class public abstract Lcom/google/mlkit/vision/face/FaceDetection;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getClient(Lcom/google/mlkit/vision/face/FaceDetectorOptions;)Lcom/google/mlkit/vision/face/FaceDetector;
    .locals 2

    const-string v0, "You must provide a valid FaceDetectorOptions."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v0

    const-class v1, Lcom/google/mlkit/vision/face/internal/zzc;

    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/vision/face/internal/zzc;

    invoke-virtual {v0, p0}, Lcom/google/mlkit/vision/face/internal/zzc;->zzb(Lcom/google/mlkit/vision/face/FaceDetectorOptions;)Lcom/google/mlkit/vision/face/internal/FaceDetectorImpl;

    move-result-object p0

    return-object p0
.end method
