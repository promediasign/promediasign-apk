.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:I

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzca;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzca;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzca;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbx;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzca;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbx;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbx;->zza:I

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzcb;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbw;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbx;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbx;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzca;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbw;-><init>(ILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzca;)V

    return-object v0
.end method
