.class public final Lcom/google/mlkit/vision/face/internal/zzh;
.super Lcom/google/mlkit/common/sdkinternal/MLTask;
.source "SourceFile"


# static fields
.field static final zza:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;


# instance fields
.field private final zzc:Lcom/google/mlkit/vision/face/FaceDetectorOptions;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzoc;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_face/zzoe;

.field private final zzf:Lcom/google/mlkit/vision/face/internal/zzb;

.field private zzg:Z

.field private final zzh:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/google/mlkit/vision/face/internal/zzh;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getInstance()Lcom/google/mlkit/vision/common/internal/ImageUtils;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/vision/face/internal/zzh;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzoc;Lcom/google/mlkit/vision/face/FaceDetectorOptions;Lcom/google/mlkit/vision/face/internal/zzb;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/MLTask;-><init>()V

    new-instance v0, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    invoke-direct {v0}, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzh:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    const-string v0, "FaceDetectorOptions can not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzc:Lcom/google/mlkit/vision/face/FaceDetectorOptions;

    iput-object p1, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzoc;

    iput-object p3, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzf:Lcom/google/mlkit/vision/face/internal/zzb;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzoe;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_face/zzoe;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zze:Lcom/google/android/gms/internal/mlkit_vision_face/zzoe;

    return-void
.end method

.method public static zzf(Ljava/util/List;)V
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/vision/face/Face;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/mlkit/vision/face/Face;->zzc(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final declared-synchronized zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzks;JLcom/google/mlkit/vision/common/InputImage;II)V
    .locals 27

    move-object/from16 v9, p0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v18, v0, p2

    new-instance v0, Lcom/google/mlkit/vision/face/internal/zzf;

    move-object v1, v0

    move-object/from16 v2, p0

    move-wide/from16 v3, v18

    move-object/from16 v5, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/google/mlkit/vision/face/internal/zzf;-><init>(Lcom/google/mlkit/vision/face/internal/zzh;JLcom/google/android/gms/internal/mlkit_vision_face/zzks;IILcom/google/mlkit/vision/common/InputImage;)V

    iget-object v1, v9, Lcom/google/mlkit/vision/face/internal/zzh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzoc;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_face/zzkt;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzkt;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzoc;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face/zzoa;Lcom/google/android/gms/internal/mlkit_vision_face/zzkt;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;-><init>()V

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;->zzc(Lcom/google/android/gms/internal/mlkit_vision_face/zzks;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;

    sget-object v2, Lcom/google/mlkit/vision/face/internal/zzh;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;->zzd(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;->zze(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;

    iget-object v2, v9, Lcom/google/mlkit/vision/face/internal/zzh;->zzc:Lcom/google/mlkit/vision/face/FaceDetectorOptions;

    invoke-static {v2}, Lcom/google/mlkit/vision/face/internal/zzj;->zza(Lcom/google/mlkit/vision/face/FaceDetectorOptions;)Lcom/google/android/gms/internal/mlkit_vision_face/zzkd;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face/zzkd;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;->zzf()Lcom/google/android/gms/internal/mlkit_vision_face/zzdn;

    move-result-object v13

    new-instance v0, Lcom/google/mlkit/vision/face/internal/zzg;

    invoke-direct {v0, v9}, Lcom/google/mlkit/vision/face/internal/zzg;-><init>(Lcom/google/mlkit/vision/face/internal/zzh;)V

    iget-object v11, v9, Lcom/google/mlkit/vision/face/internal/zzh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzoc;

    sget-object v12, Lcom/google/android/gms/internal/mlkit_vision_face/zzkt;->zzbf:Lcom/google/android/gms/internal/mlkit_vision_face/zzkt;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->workerThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_face/zzny;

    const/16 v17, 0x0

    move-object v10, v3

    move-wide/from16 v14, v18

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v17}, Lcom/google/android/gms/internal/mlkit_vision_face/zzny;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzoc;Lcom/google/android/gms/internal/mlkit_vision_face/zzkt;Ljava/lang/Object;JLcom/google/mlkit/vision/face/internal/zzg;[B)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    iget-boolean v0, v9, Lcom/google/mlkit/vision/face/internal/zzh;->zzg:Z

    sub-long v23, v25, v18

    iget-object v2, v9, Lcom/google/mlkit/vision/face/internal/zzh;->zze:Lcom/google/android/gms/internal/mlkit_vision_face/zzoe;

    const/4 v3, 0x1

    if-eq v3, v0, :cond_0

    const/16 v0, 0x5eef

    const/16 v21, 0x5eef

    goto :goto_0

    :cond_0
    const/16 v0, 0x5ef0

    const/16 v21, 0x5ef0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzks;->zza()I

    move-result v22

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v26}, Lcom/google/android/gms/internal/mlkit_vision_face/zzoe;->zzc(IIJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized load()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzf:Lcom/google/mlkit/vision/face/internal/zzb;

    invoke-interface {v0}, Lcom/google/mlkit/vision/face/internal/zzb;->zzd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzg:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized release()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzf:Lcom/google/mlkit/vision/face/internal/zzb;

    invoke-interface {v0}, Lcom/google/mlkit/vision/face/internal/zzb;->zzb()V

    sget-object v0, Lcom/google/mlkit/vision/face/internal/zzh;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzoc;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzku;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzku;-><init>()V

    iget-boolean v2, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzg:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_face/zzkr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzkr;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_face/zzkr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzkr;

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzku;->zze(Lcom/google/android/gms/internal/mlkit_vision_face/zzkr;)Lcom/google/android/gms/internal/mlkit_vision_face/zzku;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzof;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face/zzku;)Lcom/google/android/gms/internal/mlkit_vision_face/zznr;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_face/zzkt;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzkt;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzoc;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face/zznr;Lcom/google/android/gms/internal/mlkit_vision_face/zzkt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic run(Lcom/google/mlkit/common/sdkinternal/MLTaskInput;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/mlkit/vision/common/InputImage;

    invoke-virtual {p0, p1}, Lcom/google/mlkit/vision/face/internal/zzh;->zze(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzc(JLcom/google/android/gms/internal/mlkit_vision_face/zzks;IILcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/internal/mlkit_vision_face/zznr;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzlj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlj;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzkj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzkj;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzkj;->zzc(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_face/zzkj;

    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/mlkit_vision_face/zzkj;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face/zzks;)Lcom/google/android/gms/internal/mlkit_vision_face/zzkj;

    sget-object p1, Lcom/google/mlkit/vision/face/internal/zzh;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzkj;->zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face/zzkj;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzkj;->zza(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face/zzkj;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzkj;->zzb(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face/zzkj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzkj;->zzf()Lcom/google/android/gms/internal/mlkit_vision_face/zzkl;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlj;->zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzkl;)Lcom/google/android/gms/internal/mlkit_vision_face/zzlj;

    iget-object p1, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzc:Lcom/google/mlkit/vision/face/FaceDetectorOptions;

    invoke-static {p1}, Lcom/google/mlkit/vision/face/internal/zzj;->zza(Lcom/google/mlkit/vision/face/FaceDetectorOptions;)Lcom/google/android/gms/internal/mlkit_vision_face/zzkd;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlj;->zze(Lcom/google/android/gms/internal/mlkit_vision_face/zzkd;)Lcom/google/android/gms/internal/mlkit_vision_face/zzlj;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlj;->zzd(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzlj;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlj;->zzh(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzlj;

    sget-object p1, Lcom/google/mlkit/vision/face/internal/zzh;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    invoke-virtual {p1, p6}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getMobileVisionImageFormat(Lcom/google/mlkit/vision/common/InputImage;)I

    move-result p2

    invoke-virtual {p1, p6}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getMobileVisionImageSize(Lcom/google/mlkit/vision/common/InputImage;)I

    move-result p1

    new-instance p3, Lcom/google/android/gms/internal/mlkit_vision_face/zzke;

    invoke-direct {p3}, Lcom/google/android/gms/internal/mlkit_vision_face/zzke;-><init>()V

    const/4 p4, -0x1

    if-eq p2, p4, :cond_4

    const/16 p4, 0x23

    if-eq p2, p4, :cond_3

    const p4, 0x32315659

    if-eq p2, p4, :cond_2

    const/16 p4, 0x10

    if-eq p2, p4, :cond_1

    const/16 p4, 0x11

    if-eq p2, p4, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face/zzkf;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzkf;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face/zzkf;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzkf;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face/zzkf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzkf;

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face/zzkf;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzkf;

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face/zzkf;->zze:Lcom/google/android/gms/internal/mlkit_vision_face/zzkf;

    goto :goto_0

    :cond_4
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face/zzkf;->zzg:Lcom/google/android/gms/internal/mlkit_vision_face/zzkf;

    :goto_0
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzke;->zza(Lcom/google/android/gms/internal/mlkit_vision_face/zzkf;)Lcom/google/android/gms/internal/mlkit_vision_face/zzke;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzke;->zzb(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzke;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_face/zzke;->zzd()Lcom/google/android/gms/internal/mlkit_vision_face/zzkh;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlj;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face/zzkh;)Lcom/google/android/gms/internal/mlkit_vision_face/zzlj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlj;->zzi()Lcom/google/android/gms/internal/mlkit_vision_face/zzll;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_face/zzku;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzku;-><init>()V

    iget-boolean p3, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzg:Z

    if-eqz p3, :cond_5

    sget-object p3, Lcom/google/android/gms/internal/mlkit_vision_face/zzkr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzkr;

    goto :goto_1

    :cond_5
    sget-object p3, Lcom/google/android/gms/internal/mlkit_vision_face/zzkr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzkr;

    :goto_1
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_face/zzku;->zze(Lcom/google/android/gms/internal/mlkit_vision_face/zzkr;)Lcom/google/android/gms/internal/mlkit_vision_face/zzku;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzku;->zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzll;)Lcom/google/android/gms/internal/mlkit_vision_face/zzku;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzof;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face/zzku;)Lcom/google/android/gms/internal/mlkit_vision_face/zznr;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/mlkit_vision_face/zzdn;ILcom/google/android/gms/internal/mlkit_vision_face/zzjv;)Lcom/google/android/gms/internal/mlkit_vision_face/zznr;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzku;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzku;-><init>()V

    iget-boolean v1, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzg:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzkr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzkr;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzkr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzkr;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzku;->zze(Lcom/google/android/gms/internal/mlkit_vision_face/zzkr;)Lcom/google/android/gms/internal/mlkit_vision_face/zzku;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzdk;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdk;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdk;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdk;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdk;->zzc(Lcom/google/android/gms/internal/mlkit_vision_face/zzdn;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdk;

    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdk;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face/zzjv;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdk;->zze()Lcom/google/android/gms/internal/mlkit_vision_face/zzdp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzku;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face/zzdp;)Lcom/google/android/gms/internal/mlkit_vision_face/zzku;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzof;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face/zzku;)Lcom/google/android/gms/internal/mlkit_vision_face/zznr;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized zze(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-object v0, v8, Lcom/google/mlkit/vision/face/internal/zzh;->zzh:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    invoke-virtual {v0, v9}, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;->check(Lcom/google/mlkit/vision/common/InputImage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v8, Lcom/google/mlkit/vision/face/internal/zzh;->zzf:Lcom/google/mlkit/vision/face/internal/zzb;

    invoke-interface {v0, v9}, Lcom/google/mlkit/vision/face/internal/zzb;->zza(Lcom/google/mlkit/vision/common/InputImage;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "No detector is enabled"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move-wide/from16 v18, v10

    goto/16 :goto_8

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    check-cast v2, Ljava/util/List;

    move-object v9, v2

    move-wide/from16 v18, v10

    goto/16 :goto_5

    :cond_2
    if-nez v0, :cond_3

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mlkit/vision/face/Face;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/mlkit/vision/face/Face;

    invoke-virtual {v4}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v7}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v4}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v7}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v15

    if-eqz v15, :cond_4

    iget v15, v13, Landroid/graphics/Rect;->right:I

    iget v12, v14, Landroid/graphics/Rect;->right:I

    invoke-static {v15, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget v15, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v16, v3

    iget v3, v14, Landroid/graphics/Rect;->left:I

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v12, v3

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    iget v15, v14, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v15, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v17, v5

    iget v5, v14, Landroid/graphics/Rect;->top:I

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v5
    :try_end_1
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v3, v5

    mul-int v3, v3, v12

    move-wide/from16 v18, v10

    int-to-double v9, v3

    :try_start_2
    iget v3, v13, Landroid/graphics/Rect;->right:I

    iget v5, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iget v5, v13, Landroid/graphics/Rect;->bottom:I

    iget v11, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v11

    mul-int v5, v5, v3

    int-to-double v11, v5

    iget v3, v14, Landroid/graphics/Rect;->right:I

    iget v5, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iget v5, v14, Landroid/graphics/Rect;->bottom:I

    iget v13, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v13

    mul-int v5, v5, v3

    int-to-double v13, v5

    add-double/2addr v11, v13

    sub-double/2addr v11, v9

    div-double/2addr v9, v11

    const-wide v11, 0x3fe3333333333333L    # 0.6

    cmpl-double v3, v9, v11

    if-lez v3, :cond_5

    invoke-virtual {v4}, Lcom/google/mlkit/vision/face/Face;->zza()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/google/mlkit/vision/face/Face;->zzb(Landroid/util/SparseArray;)V

    const/4 v6, 0x1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_4
    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-wide/from16 v18, v10

    :cond_5
    :goto_4
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, p1

    move-object/from16 v3, v16

    move-object/from16 v5, v17

    move-wide/from16 v10, v18

    goto/16 :goto_3

    :cond_6
    move-object/from16 v16, v3

    move-wide/from16 v18, v10

    if-nez v6, :cond_7

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object/from16 v9, p1

    move-object/from16 v3, v16

    move-wide/from16 v10, v18

    goto/16 :goto_2

    :cond_8
    move-wide/from16 v18, v10

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v3

    :goto_5
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_face/zzks;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzks;

    if-nez v0, :cond_9

    const/4 v6, 0x0

    goto :goto_6

    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v6, v0

    :goto_6
    if-nez v1, :cond_a

    const/4 v7, 0x0

    goto :goto_7

    :cond_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    move v7, v0

    :goto_7
    move-object/from16 v1, p0

    move-wide/from16 v3, v18

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/mlkit/vision/face/internal/zzh;->zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzks;JLcom/google/mlkit/vision/common/InputImage;II)V

    sget-object v0, Lcom/google/mlkit/vision/face/internal/zzh;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v9

    :goto_8
    :try_start_3
    invoke-virtual {v0}, Lcom/google/mlkit/common/MlKitException;->getErrorCode()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_b

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzks;->zzk:Lcom/google/android/gms/internal/mlkit_vision_face/zzks;

    :goto_9
    move-object v2, v1

    goto :goto_a

    :cond_b
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzks;->zzV:Lcom/google/android/gms/internal/mlkit_vision_face/zzks;

    goto :goto_9

    :goto_a
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v3, v18

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/mlkit/vision/face/internal/zzh;->zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzks;JLcom/google/mlkit/vision/common/InputImage;II)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_b
    monitor-exit p0

    throw v0
.end method
