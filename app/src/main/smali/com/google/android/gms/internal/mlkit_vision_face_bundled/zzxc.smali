.class final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztw;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;


# instance fields
.field private zzb:[Ljava/lang/Object;

.field private zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;-><init>([Ljava/lang/Object;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;IZ)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztw;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzb:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzc:I

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;

    return-object v0
.end method

.method private final zzf(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzc:I

    .line 2
    .line 3
    const-string v1, "Index:"

    .line 4
    .line 5
    const-string v2, ", Size:"

    .line 6
    .line 7
    invoke-static {v1, p1, v2, v0}, LA/g;->f(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private final zzg(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzc:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztw;->zza()V

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzc:I

    if-gt p1, v0, :cond_1

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzb:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    sub-int/2addr v0, p1

    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzb:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzc:I

    sub-int/2addr v3, p1

    invoke-static {v2, p1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzb:[Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzb:[Ljava/lang/Object;

    aput-object p2, v0, p1

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzc:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzc:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztw;->zza()V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzb:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzb:[Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzb:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzc:I

    aput-object p1, v0, v1

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v3
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzg(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzb:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztw;->zza()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzg(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzb:[Ljava/lang/Object;

    aget-object v1, v0, p1

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzc:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzc:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzc:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-object v1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztw;->zza()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzg(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzb:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-object v1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzc:I

    return v0
.end method

.method public final bridge synthetic zzd(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvs;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzc:I

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzb:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zzc:I

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;-><init>([Ljava/lang/Object;IZ)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
