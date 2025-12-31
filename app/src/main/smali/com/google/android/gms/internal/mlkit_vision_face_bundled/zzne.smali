.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznb;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmz;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznc;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzna;

.field private final zze:Ljava/lang/Boolean;

.field private final zzf:Ljava/lang/Float;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmy;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmy;->zzi(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmy;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznb;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznb;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmy;->zzg(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmy;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmz;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmz;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmy;->zzj(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmy;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznc;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznc;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmy;->zzh(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmy;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzna;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzna;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmy;->zzl(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmy;)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zze:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmy;->zzm(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmy;)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zzf:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznb;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznb;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmz;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmz;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznc;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznc;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzna;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzna;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zze:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zze:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zzf:Ljava/lang/Float;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zzf:Ljava/lang/Float;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznb;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmz;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznc;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzna;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zze:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zzf:Ljava/lang/Float;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmz;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzcb;
        zza = 0x2
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmz;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzna;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzcb;
        zza = 0x4
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzna;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznb;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzcb;
        zza = 0x1
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznb;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznc;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzcb;
        zza = 0x3
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznc;

    return-object v0
.end method

.method public final zze()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzcb;
        zza = 0x5
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zze:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzf()Ljava/lang/Float;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzcb;
        zza = 0x6
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;->zzf:Ljava/lang/Float;

    return-object v0
.end method
