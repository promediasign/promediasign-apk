.class public final synthetic Lcom/google/mlkit/common/sdkinternal/zzt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/mlkit/common/sdkinternal/TaskQueue;

.field public final synthetic zzb:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/common/sdkinternal/TaskQueue;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzt;->zza:Lcom/google/mlkit/common/sdkinternal/TaskQueue;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/zzt;->zzb:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-class v2, Ljava/lang/Throwable;

    new-instance v3, Lcom/google/mlkit/common/sdkinternal/zzx;

    iget-object v4, p0, Lcom/google/mlkit/common/sdkinternal/zzt;->zza:Lcom/google/mlkit/common/sdkinternal/TaskQueue;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/mlkit/common/sdkinternal/zzx;-><init>(Lcom/google/mlkit/common/sdkinternal/TaskQueue;Lcom/google/mlkit/common/sdkinternal/zzw;)V

    iget-object v4, p0, Lcom/google/mlkit/common/sdkinternal/zzt;->zzb:Ljava/lang/Runnable;

    :try_start_0
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Lcom/google/mlkit/common/sdkinternal/zzx;->close()V

    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    invoke-virtual {v3}, Lcom/google/mlkit/common/sdkinternal/zzx;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_2
    const-string v5, "addSuppressed"

    new-array v6, v1, [Ljava/lang/Class;

    aput-object v2, v6, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    invoke-virtual {v2, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    throw v4
.end method
