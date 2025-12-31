.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, -0x1

    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsv;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;->builder()Lcom/google/android/gms/common/internal/TelemetryLoggingOptions$Builder;

    move-result-object p2

    const-string v0, "mlkit:vision"

    invoke-virtual {p2, v0}, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions$Builder;->setApi(Ljava/lang/String;)Lcom/google/android/gms/common/internal/TelemetryLoggingOptions$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions$Builder;->build()Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/TelemetryLogging;->getClient(Landroid/content/Context;Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;)Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsv;->zza:Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsv;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsv;

    const-string v1, "mlkit:vision"

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsv;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb(JLjava/lang/Exception;)V
    .locals 0

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsv;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public final declared-synchronized zzc(IIJJ)V
    .locals 19

    move-object/from16 v1, p0

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsv;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsv;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    sub-long v5, v3, v5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1e

    invoke-virtual {v2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v5, v7

    if-gtz v2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsv;->zza:Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    new-instance v5, Lcom/google/android/gms/common/internal/TelemetryData;

    new-instance v18, Lcom/google/android/gms/common/internal/MethodInvocation;

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v7, 0x639f

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v6, v18

    move/from16 v8, p2

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    invoke-direct/range {v6 .. v17}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/google/android/gms/common/internal/MethodInvocation;

    aput-object v18, v6, v0

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    invoke-interface {v2, v5}, Lcom/google/android/gms/common/internal/TelemetryLoggingClient;->log(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsu;

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsu;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsv;J)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
