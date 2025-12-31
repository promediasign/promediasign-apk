.class public Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/face/FaceDetectorOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:I

.field private zzd:I

.field private zze:Z

.field private zzf:F

.field private zzg:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->zza:I

    iput v0, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->zzb:I

    iput v0, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->zzc:I

    iput v0, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->zzd:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->zze:Z

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->zzf:F

    return-void
.end method


# virtual methods
.method public build()Lcom/google/mlkit/vision/face/FaceDetectorOptions;
    .locals 10

    new-instance v9, Lcom/google/mlkit/vision/face/FaceDetectorOptions;

    iget v1, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->zza:I

    iget v2, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->zzb:I

    iget v3, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->zzc:I

    iget v4, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->zzd:I

    iget-boolean v5, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->zze:Z

    iget v6, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->zzf:F

    iget-object v7, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->zzg:Ljava/util/concurrent/Executor;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/mlkit/vision/face/FaceDetectorOptions;-><init>(IIIIZFLjava/util/concurrent/Executor;Lcom/google/mlkit/vision/face/zza;)V

    return-object v9
.end method

.method public enableTracking()Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->zze:Z

    return-object p0
.end method

.method public setClassificationMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->zzc:I

    return-object p0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->zzg:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public setLandmarkMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->zza:I

    return-object p0
.end method

.method public setPerformanceMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->zzd:I

    return-object p0
.end method
