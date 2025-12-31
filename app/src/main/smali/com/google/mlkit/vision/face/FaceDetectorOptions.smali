.class public Lcom/google/mlkit/vision/face/FaceDetectorOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;
    }
.end annotation


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:I

.field private final zzd:I

.field private final zze:Z

.field private final zzf:F

.field private final zzg:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(IIIIZFLjava/util/concurrent/Executor;Lcom/google/mlkit/vision/face/zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zza:I

    iput p2, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzb:I

    iput p3, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzc:I

    iput p4, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzd:I

    iput-boolean p5, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zze:Z

    iput p6, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzf:F

    iput-object p7, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzg:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/mlkit/vision/face/FaceDetectorOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/mlkit/vision/face/FaceDetectorOptions;

    iget v1, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzf:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget v3, p1, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzf:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zza:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zza:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzb:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zze:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zze:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzg:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzg:Ljava/util/concurrent/Executor;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 9

    iget v0, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzf:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zza:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzb:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zze:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget v5, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzc:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzg:Ljava/util/concurrent/Executor;

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    const/4 v0, 0x6

    aput-object v6, v7, v0

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "FaceDetectorOptions"

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzw;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    move-result-object v0

    const-string v1, "landmarkMode"

    iget v2, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zza:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zzb(Ljava/lang/String;I)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    const-string v1, "contourMode"

    iget v2, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzb:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zzb(Ljava/lang/String;I)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    const-string v1, "classificationMode"

    iget v2, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzc:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zzb(Ljava/lang/String;I)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    const-string v1, "performanceMode"

    iget v2, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzd:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zzb(Ljava/lang/String;I)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    const-string v1, "trackingEnabled"

    iget-boolean v2, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zze:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    const-string v1, "minFaceSize"

    iget v2, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzf:F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zza(Ljava/lang/String;F)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()F
    .locals 1

    iget v0, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzf:F

    return v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzc:I

    return v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzb:I

    return v0
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zza:I

    return v0
.end method

.method public final zze()I
    .locals 1

    iget v0, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzd:I

    return v0
.end method

.method public final zzf()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzg:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final zzg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zze:Z

    return v0
.end method
