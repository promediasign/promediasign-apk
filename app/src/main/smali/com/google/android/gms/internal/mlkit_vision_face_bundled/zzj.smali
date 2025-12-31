.class public abstract Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I

.field private static final zzb:Ljava/lang/Object;

.field private static volatile zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzi;

.field private static final zze:Ljava/util/concurrent/atomic/AtomicReference;

.field private static final zzf:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzl;

.field private static final zzg:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzj;->zzb:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzj;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzl;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzh;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzl;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzh;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzj;->zzf:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzl;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzj;->zzg:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static zza(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzj;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzi;

    if-nez v0, :cond_5

    if-nez p0, :cond_0

    goto :goto_4

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzj;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzj;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzi;

    if-nez v1, :cond_4

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzj;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzi;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object p0, v2

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzi;->zza()Landroid/content/Context;

    move-result-object v1

    if-eq v1, p0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzf;->zza()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzk;->zza()V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzg;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzba;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzax;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzax;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zze;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zze;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzax;)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzj;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzi;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzj;->zzg:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_3
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_5
    :goto_4
    return-void
.end method
