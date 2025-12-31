.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbj;

.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbl;


# instance fields
.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsm;

.field private final zzf:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

.field private final zzg:Lcom/google/android/gms/tasks/Task;

.field private final zzh:Lcom/google/android/gms/tasks/Task;

.field private final zzi:Ljava/lang/String;

.field private final zzj:I

.field private final zzk:Ljava/util/Map;

.field private final zzl:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "optional-module-barcode"

    const-string v1, "com.google.android.gms.vision.barcode"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbl;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsm;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzk:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzl:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzc:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzd:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzf:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zze:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsm;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztc;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztc;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzi:Ljava/lang/String;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsr;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;)V

    invoke-virtual {p3, v0}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzg:Lcom/google/android/gms/tasks/Task;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object p3

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzss;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzss;-><init>(Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;)V

    invoke-virtual {p3, v0}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzh:Lcom/google/android/gms/tasks/Task;

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbl;

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbl;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzj:I

    return-void
.end method

.method private static declared-synchronized zzd()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbj;
    .locals 5

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbg;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v1, v3}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->languageTagFromLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbg;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbg;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/common/internal/LibraryVersion;->getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsl;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznw;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsl;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznw;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsl;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsl;->zzd()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzd()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;->zzh(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbj;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;->zzg(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzh:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzh:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzf:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-virtual {p2}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getMlSdkInstanceId()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;

    const/16 p2, 0xa

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;->zzd(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzj:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;->zzk(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsl;->zzc(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsl;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zze:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsm;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsm;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsl;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/vision/face/mlkit/zzc;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznw;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzk:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzk:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v1, v3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzk:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/vision/face/mlkit/zzc;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznu;

    iget-object v1, p1, Lcom/google/android/gms/vision/face/mlkit/zzc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;

    iget-object v2, p1, Lcom/google/android/gms/vision/face/mlkit/zzc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznv;

    iget p1, p1, Lcom/google/android/gms/vision/face/mlkit/zzc;->zzd:I

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznx;

    invoke-direct {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznx;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznx;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznu;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznx;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmv;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmv;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzne;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmv;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmv;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznv;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmv;->zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmx;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznx;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmx;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznx;

    invoke-static {v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsw;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznx;I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsl;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzg:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzg:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;->zzi:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/common/internal/LibraryVersion;->getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->workerThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsq;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsl;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznw;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
