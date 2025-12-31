.class public final Lcom/google/mlkit/vision/face/internal/zzc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/mlkit/vision/face/internal/zze;

.field private final zzb:Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/vision/face/internal/zze;Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/face/internal/zzc;->zza:Lcom/google/mlkit/vision/face/internal/zze;

    iput-object p2, p0, Lcom/google/mlkit/vision/face/internal/zzc;->zzb:Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/mlkit/vision/face/FaceDetectorOptions;)Lcom/google/mlkit/vision/face/internal/FaceDetectorImpl;
    .locals 4

    const-string v0, "You must provide a valid FaceDetectorOptions."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/mlkit/vision/face/internal/FaceDetectorImpl;

    iget-object v1, p0, Lcom/google/mlkit/vision/face/internal/zzc;->zza:Lcom/google/mlkit/vision/face/internal/zze;

    invoke-virtual {v1, p1}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/vision/face/internal/zzh;

    iget-object v2, p0, Lcom/google/mlkit/vision/face/internal/zzc;->zzb:Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/mlkit/vision/face/internal/FaceDetectorImpl;-><init>(Lcom/google/mlkit/vision/face/internal/zzh;Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;Lcom/google/mlkit/vision/face/FaceDetectorOptions;Lcom/google/mlkit/vision/face/internal/zzd;)V

    return-object v0
.end method
