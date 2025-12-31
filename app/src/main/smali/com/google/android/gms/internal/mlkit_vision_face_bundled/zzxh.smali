.class abstract Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I

.field private static final zzb:Ljava/lang/Class;

.field private static final zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;

.field private static final zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.protobuf.GeneratedMessage"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :goto_0
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxh;->zzb:Ljava/lang/Class;

    :try_start_1
    const-string v1, "com.google.protobuf.UnknownFieldSetSchema"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    move-object v1, v0

    :goto_1
    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v1

    :catchall_2
    :goto_2
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;

    return-void
.end method

.method public static zzA(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;->zzs(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzB(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;->zzu(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzC(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuu;

    invoke-virtual {v2, p0, v1, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuu;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static zzD(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;->zzy(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzE(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;->zzA(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzF(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;->zzC(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzG(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;->zzE(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzH(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;->zzH(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public static zzI(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;->zzJ(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzJ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;->zzL(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzK(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static zza(Ljava/util/List;)I
    .locals 5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvo;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvo;

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    throw p0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzx(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public static zzb(ILjava/util/List;Z)I
    .locals 0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzw(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    mul-int p0, p0, p1

    return p0
.end method

.method public static zzc(Ljava/util/List;)I
    .locals 0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzd(ILjava/util/List;Z)I
    .locals 0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzw(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    mul-int p0, p0, p1

    return p0
.end method

.method public static zze(Ljava/util/List;)I
    .locals 0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzf(Ljava/util/List;)I
    .locals 5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvo;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvo;

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    throw p0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzx(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public static zzg(Ljava/util/List;)I
    .locals 5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwh;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwh;

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    throw p0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzx(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public static zzh(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzw(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzu(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzi(Ljava/util/List;)I
    .locals 5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvo;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvo;

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    throw p0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int v4, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzw(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public static zzj(Ljava/util/List;)I
    .locals 8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwh;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwh;

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    throw p0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long v5, v3, v3

    const/16 v7, 0x3f

    shr-long/2addr v3, v7

    xor-long/2addr v3, v5

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzx(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public static zzk(Ljava/util/List;)I
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvo;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvo;

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    throw p0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzw(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public static zzl(Ljava/util/List;)I
    .locals 5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwh;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwh;

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    throw p0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzx(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public static zzm()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;

    return-object v0
.end method

.method public static zzn()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;

    return-object v0
.end method

.method public static zzo(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;)Ljava/lang/Object;
    .locals 2

    if-nez p3, :cond_0

    invoke-virtual {p4, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_0
    int-to-long v0, p2

    invoke-virtual {p4, p3, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;->zzf(Ljava/lang/Object;IJ)V

    return-object p3
.end method

.method public static zzp(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;

    move-result-object p2

    iget-object v0, p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxs;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;->zzi(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;)V

    :cond_0
    return-void
.end method

.method public static zzq(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;->zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;->zzh(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static zzr(Ljava/lang/Class;)V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxh;->zzb:Ljava/lang/Class;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static zzs(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;->zzc(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzt(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;->zze(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public static zzu(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;->zzg(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzv(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;->zzj(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzw(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;->zzl(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzx(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;->zzn(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzy(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;->zzp(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzz(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuu;

    invoke-virtual {v2, p0, v1, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuu;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
