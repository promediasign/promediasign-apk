.class public Lcom/google/mlkit/vision/face/FaceContour;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:I

.field private final zzb:Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/mlkit/vision/face/FaceContour;->zza:I

    iput-object p2, p0, Lcom/google/mlkit/vision/face/FaceContour;->zzb:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "FaceContour"

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzw;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    move-result-object v0

    const-string v1, "type"

    iget v2, p0, Lcom/google/mlkit/vision/face/FaceContour;->zza:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zzb(Ljava/lang/String;I)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    iget-object v1, p0, Lcom/google/mlkit/vision/face/FaceContour;->zzb:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "points"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zzc(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
