.class final enum Lcom/google/mlkit/common/sdkinternal/zzh;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final enum zza:Lcom/google/mlkit/common/sdkinternal/zzh;

.field private static final synthetic zzb:[Lcom/google/mlkit/common/sdkinternal/zzh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/zzh;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/common/sdkinternal/zzh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/zzh;->zza:Lcom/google/mlkit/common/sdkinternal/zzh;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/mlkit/common/sdkinternal/zzh;

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/mlkit/common/sdkinternal/zzh;->zzb:[Lcom/google/mlkit/common/sdkinternal/zzh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    const-string p1, "INSTANCE"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zza(Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
