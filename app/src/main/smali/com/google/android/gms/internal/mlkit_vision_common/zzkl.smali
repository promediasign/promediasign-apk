.class public Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final zza:Ljava/util/Map;


# instance fields
.field private final zzb:Ljava/lang/String;

.field private zzc:I

.field private zzd:D

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zza:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zzg:J

    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zzh:J

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zzb:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_common/zzkk;)V
    .locals 0

    .line 2
    const-string p1, "unusedTag"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private final zza()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zzc:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zzd:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zze:J

    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zzg:J

    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zzh:J

    return-void
.end method

.method public static zze(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlk;->zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzlk;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlk;->zzb()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkj;->zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzkj;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zza:Ljava/util/Map;

    const-string v0, "detectorTaskWithResource#run"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zze:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zzd(J)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did you forget to call start()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zzb()Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zze:J

    return-object p0
.end method

.method public zzc(J)V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zzf:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    sub-long v2, v0, v2

    const-wide/32 v4, 0xf4240

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zza()V

    :cond_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zzf:J

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zzc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zzc:I

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zzd:D

    long-to-double v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zzd:D

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zzg:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zzg:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zzh:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zzh:J

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zzc:I

    rem-int/lit8 p1, p1, 0x32

    if-nez p1, :cond_1

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlk;->zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzlk;

    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zzc:I

    rem-int/lit16 p1, p1, 0x1f4

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zza()V

    :cond_2
    return-void
.end method

.method public zzd(J)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sub-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkl;->zzc(J)V

    return-void
.end method
