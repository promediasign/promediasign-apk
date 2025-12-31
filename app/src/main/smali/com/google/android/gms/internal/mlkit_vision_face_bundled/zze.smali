.class final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zze;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzi;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzax;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzax;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zze;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zze;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzax;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzi;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzi;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zze;->zza:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzi;->zza()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zze;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzax;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzi;->zzb()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzax;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zze;->zza:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zze;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzax;

    mul-int v0, v0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zze;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzax;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zze;->zza:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v2, "FlagsContext{context="

    .line 14
    .line 15
    const-string v3, ", hermeticFileOverrides="

    .line 16
    .line 17
    const-string v4, "}"

    .line 18
    .line 19
    invoke-static {v2, v1, v3, v0, v4}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public final zza()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zze;->zza:Landroid/content/Context;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzax;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zze;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzax;

    return-object v0
.end method
