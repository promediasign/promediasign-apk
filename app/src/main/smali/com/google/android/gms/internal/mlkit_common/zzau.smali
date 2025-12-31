.class public abstract Lcom/google/android/gms/internal/mlkit_common/zzau;
.super Lcom/google/android/gms/internal/mlkit_common/zzam;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field private transient zza:Lcom/google/android/gms/internal/mlkit_common/zzaq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzam;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p1, p0, :cond_2

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Ljava/util/Set;

    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    :catch_0
    :cond_1
    const/4 v0, 0x0

    nop

    :cond_2
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_common/zzbc;->zza(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/mlkit_common/zzaq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza:Lcom/google/android/gms/internal/mlkit_common/zzaq;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzg()Lcom/google/android/gms/internal/mlkit_common/zzaq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza:Lcom/google/android/gms/internal/mlkit_common/zzaq;

    :cond_0
    return-object v0
.end method

.method public zzg()Lcom/google/android/gms/internal/mlkit_common/zzaq;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzam;->toArray()[Ljava/lang/Object;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/mlkit_common/zzaq;->a:I

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzaq;->zzg([Ljava/lang/Object;I)Lcom/google/android/gms/internal/mlkit_common/zzaq;

    move-result-object v0

    return-object v0
.end method
