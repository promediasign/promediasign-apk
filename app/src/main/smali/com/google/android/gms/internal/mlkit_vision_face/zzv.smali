.class public final Lcom/google/android/gms/internal/mlkit_vision_face/zzv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzu;

.field private zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzu;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_face/zzs;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_face/zzu;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzu;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzs;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzu;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzu;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zza:Ljava/lang/String;

    return-void
.end method

.method private final zze(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzt;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzs;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzu;

    iput-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzu;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzu;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzu;

    iput-object p2, v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzu;->zzb:Ljava/lang/Object;

    iput-object p1, v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzu;->zza:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzu;

    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_face/zzu;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzu;

    const-string v3, ""

    :goto_0
    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/google/android/gms/internal/mlkit_vision_face/zzu;->zzb:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/google/android/gms/internal/mlkit_vision_face/zzu;->zza:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_face/zzu;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzu;

    const-string v3, ", "

    goto :goto_0

    :cond_2
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;F)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;
    .locals 0

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zze(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;I)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;
    .locals 0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zze(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzu;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzs;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzu;

    iput-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzu;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzu;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzu;

    iput-object p2, v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzu;->zzb:Ljava/lang/Object;

    iput-object p1, v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzu;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;
    .locals 0

    const-string p1, "trackingEnabled"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zze(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    return-object p0
.end method
