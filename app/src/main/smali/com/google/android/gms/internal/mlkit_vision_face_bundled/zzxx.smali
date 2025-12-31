.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;


# instance fields
.field private zzb:I

.field private zzc:[I

.field private zzd:[Ljava/lang/Object;

.field private zze:I

.field private zzf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzc:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzd:[Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzf:Z

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;

    return-object v0
.end method

.method public static zze(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;
    .locals 6

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    iget v1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzc:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzc:[I

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    iget v4, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzd:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzd:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method public static zzf()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;

    const/16 v1, 0x8

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object v0
.end method

.method private final zzm(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzc:[I

    array-length v1, v0

    if-le p1, v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v1

    if-lt v2, p1, :cond_0

    move p1, v2

    :cond_0
    const/16 v1, 0x8

    if-ge p1, v1, :cond_1

    const/16 p1, 0x8

    :cond_1
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzc:[I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzd:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzd:[Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    iget v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    if-ne v2, v3, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzc:[I

    iget-object v4, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzc:[I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_4

    aget v6, v3, v5

    aget v7, v4, v5

    if-eq v6, v7, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzd:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzd:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    add-int/lit16 v1, v0, 0x20f

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzc:[I

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/16 v6, 0x11

    :goto_0
    if-ge v5, v0, :cond_0

    mul-int/lit8 v6, v6, 0x1f

    aget v7, v2, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzd:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    :goto_1
    if-ge v3, v2, :cond_1

    mul-int/lit8 v4, v4, 0x1f

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v4

    return v1
.end method

.method public final zza()I
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zze:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzc:[I

    aget v2, v2, v0

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v4, 0x5

    if-ne v2, v4, :cond_0

    shl-int/lit8 v2, v3, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzd:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzw(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    :goto_1
    add-int/2addr v2, v1

    move v1, v2

    goto :goto_3

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvu;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    shl-int/lit8 v2, v3, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzw(I)I

    move-result v2

    add-int/2addr v2, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzd:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zza()I

    move-result v3

    :goto_2
    add-int/2addr v3, v2

    add-int/2addr v3, v1

    move v1, v3

    goto :goto_3

    :cond_2
    shl-int/lit8 v2, v3, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzd:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzul;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzw(I)I

    move-result v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzul;->zzd()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzw(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    move v1, v4

    goto :goto_3

    :cond_3
    shl-int/lit8 v2, v3, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzd:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzw(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    goto :goto_1

    :cond_4
    shl-int/lit8 v2, v3, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzd:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzw(I)I

    move-result v2

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzx(J)I

    move-result v3

    goto :goto_2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zze:I

    return v1

    :cond_6
    return v0
.end method

.method public final zzb()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zze:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    .line 9
    .line 10
    if-ge v0, v2, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzc:[I

    .line 13
    .line 14
    aget v2, v2, v0

    .line 15
    .line 16
    ushr-int/lit8 v2, v2, 0x3

    .line 17
    .line 18
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzd:[Ljava/lang/Object;

    .line 19
    .line 20
    aget-object v3, v3, v0

    .line 21
    .line 22
    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzul;

    .line 23
    .line 24
    const/16 v4, 0x8

    .line 25
    .line 26
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzw(I)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    add-int/2addr v4, v4

    .line 31
    const/16 v5, 0x10

    .line 32
    .line 33
    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzw(I)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzw(I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    add-int/2addr v2, v5

    .line 42
    const/16 v5, 0x18

    .line 43
    .line 44
    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzw(I)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzul;->zzd()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-static {v3, v3, v5}, Lch/qos/logback/core/joran/util/a;->a(III)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-static {v4, v2, v3, v1}, LA/g;->a(IIII)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zze:I

    .line 64
    .line 65
    return v1

    .line 66
    :cond_1
    return v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzg()V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    iget v1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzm(I)V

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzc:[I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzc:[I

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    iget v4, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzd:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzd:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    invoke-static {v1, v5, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    return-object p0
.end method

.method public final zzg()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzf:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final zzh()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzf:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzf:Z

    :cond_0
    return-void
.end method

.method public final zzi(Ljava/lang/StringBuilder;I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzc:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwu;->zzb(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzj(ILjava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzg()V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzm(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzc:[I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    aput p1, v0, v1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzd:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzc:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;->zzw(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;)V
    .locals 6

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzb:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzc:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    and-int/lit8 v3, v1, 0x7

    const/4 v4, 0x3

    ushr-int/2addr v1, v4

    if-eqz v3, :cond_4

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;->zzk(II)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvu;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;->zzF(I)V

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzl(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;->zzh(I)V

    goto :goto_1

    :cond_2
    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzul;

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;->zzd(ILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzul;)V

    goto :goto_1

    :cond_3
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;->zzm(IJ)V

    goto :goto_1

    :cond_4
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;->zzt(IJ)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
