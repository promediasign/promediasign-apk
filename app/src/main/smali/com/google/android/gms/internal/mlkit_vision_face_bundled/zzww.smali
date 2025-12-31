.class final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;->zzg(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;->zzb(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zzc:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;->zzb()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zzc:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxs;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zze()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzy()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;->zzK()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwr;->zzp()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;->zzg(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;->zze(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxh;->zzq(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxh;->zzp(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzty;)V
    .locals 10

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzf()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvj;->zzb()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    if-ge p3, p4, :cond_a

    invoke-static {p2, p3, p5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztz;->zzi([BILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzty;)I

    move-result v4

    iget p3, p5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzty;->zza:I

    const/16 v3, 0xb

    const/4 v5, 0x2

    if-eq p3, v3, :cond_3

    and-int/lit8 v3, p3, 0x7

    if-ne v3, v5, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;

    iget-object v3, p5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzty;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;

    ushr-int/lit8 v6, p3, 0x3

    invoke-virtual {v2, v3, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;

    move-result-object p3

    move-object v2, v8

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;

    iget-object v3, v2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;

    move-result-object p3

    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztz;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;[BIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzty;)I

    move-result p3

    iget-object v3, p5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzty;->zzc:Ljava/lang/Object;

    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvk;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;->zzj(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvc;Ljava/lang/Object;)V

    :goto_1
    move-object v2, v8

    goto :goto_0

    :cond_1
    move v2, p3

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztz;->zzh(I[BIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzty;)I

    move-result p3

    goto :goto_1

    :cond_2
    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztz;->zzo(I[BIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzty;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v3, v0

    :goto_2
    if-ge v4, p4, :cond_8

    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztz;->zzi([BILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzty;)I

    move-result v4

    iget v6, p5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzty;->zza:I

    ushr-int/lit8 v7, v6, 0x3

    and-int/lit8 v8, v6, 0x7

    if-eq v7, v5, :cond_6

    const/4 v9, 0x3

    if-eq v7, v9, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;

    move-result-object v6

    move-object v7, v2

    check-cast v7, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;

    iget-object v8, v7, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;

    move-result-object v6

    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztz;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;[BIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzty;)I

    move-result v4

    iget-object v6, p5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzty;->zzc:Ljava/lang/Object;

    iget-object v7, v7, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvk;

    invoke-virtual {p1, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;->zzj(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvc;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-ne v8, v5, :cond_7

    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztz;->zza([BILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzty;)I

    move-result v4

    iget-object v3, p5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzty;->zzc:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzul;

    goto :goto_2

    :cond_6
    if-nez v8, :cond_7

    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztz;->zzi([BILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzty;)I

    move-result v4

    iget p3, p5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzty;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;

    iget-object v6, p5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzty;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;

    invoke-virtual {v2, v6, v7, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_7
    :goto_3
    const/16 v7, 0xc

    if-eq v6, v7, :cond_8

    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztz;->zzo(I[BIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzty;)I

    move-result v4

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p3, v5

    invoke-virtual {v1, p3, v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzj(ILjava/lang/Object;)V

    :cond_9
    move p3, v4

    goto/16 :goto_0

    :cond_a
    if-ne p3, p4, :cond_b

    return-void

    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv;->zze()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv;

    move-result-object p1

    throw p1
.end method

.method public final zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;->zzf()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvc;->zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyn;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyn;->zzi:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyn;

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvc;->zze()Z

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;)V

    return-void
.end method

.method public final zzj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zzc:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;->zzl()Z

    move-result p1

    return p1
.end method
