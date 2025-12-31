.class final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvc;


# instance fields
.field final zza:I

.field final zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzym;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvq;ILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzym;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0xc0b2142

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvk;->zza:I

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzym;

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvk;

    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvk;->zza:I

    const/4 p1, 0x0

    return p1
.end method

.method public final zza()I
    .locals 1

    const v0, 0xc0b2142

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzym;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzym;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzym;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzym;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyn;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zze()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
