.class final Lcom/google/android/gms/internal/mlkit_vision_common/zzlf;
.super Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzle;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzkr;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkx;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzks;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzks;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_common/zzkr;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkr;->zzb()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-virtual {v1, v4}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkx;-><init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_vision_common/zzkw;Ljava/lang/String;)V

    return-object v0
.end method
