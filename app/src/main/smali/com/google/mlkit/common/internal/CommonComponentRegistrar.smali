.class public Lcom/google/mlkit/common/internal/CommonComponentRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 12

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->COMPONENT:Lcom/google/firebase/components/Component;

    const-class v1, Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;

    invoke-static {v1}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v1

    const-class v2, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-static {v2}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/mlkit/common/internal/zza;->zza:Lcom/google/mlkit/common/internal/zza;

    invoke-virtual {v1, v3}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v1

    const-class v3, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    invoke-static {v3}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v4

    sget-object v5, Lcom/google/mlkit/common/internal/zzb;->zza:Lcom/google/mlkit/common/internal/zzb;

    invoke-virtual {v4, v5}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v4

    const-class v5, Lcom/google/mlkit/common/model/RemoteModelManager;

    invoke-static {v5}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v5

    const-class v6, Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;

    invoke-static {v6}, Lcom/google/firebase/components/Dependency;->setOf(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v5

    sget-object v7, Lcom/google/mlkit/common/internal/zzc;->zza:Lcom/google/mlkit/common/internal/zzc;

    invoke-virtual {v5, v7}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v5

    const-class v7, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    invoke-static {v7}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v7

    invoke-static {v3}, Lcom/google/firebase/components/Dependency;->requiredProvider(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v3

    sget-object v7, Lcom/google/mlkit/common/internal/zzd;->zza:Lcom/google/mlkit/common/internal/zzd;

    invoke-virtual {v3, v7}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v7

    const-class v3, Lcom/google/mlkit/common/sdkinternal/Cleaner;

    invoke-static {v3}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v8

    sget-object v9, Lcom/google/mlkit/common/internal/zze;->zza:Lcom/google/mlkit/common/internal/zze;

    invoke-virtual {v8, v9}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v8

    const-class v9, Lcom/google/mlkit/common/sdkinternal/CloseGuard$Factory;

    invoke-static {v9}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v9

    invoke-static {v3}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v3

    sget-object v9, Lcom/google/mlkit/common/internal/zzf;->zza:Lcom/google/mlkit/common/internal/zzf;

    invoke-virtual {v3, v9}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v9

    const-class v3, Lcom/google/mlkit/common/internal/model/zzg;

    invoke-static {v3}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v10

    invoke-static {v2}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    sget-object v10, Lcom/google/mlkit/common/internal/zzg;->zza:Lcom/google/mlkit/common/internal/zzg;

    invoke-virtual {v2, v10}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v10

    invoke-static {v6}, Lcom/google/firebase/components/Component;->intoSetBuilder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    invoke-static {v3}, Lcom/google/firebase/components/Dependency;->requiredProvider(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/mlkit/common/internal/zzh;->zza:Lcom/google/mlkit/common/internal/zzh;

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v11

    move-object v2, v4

    move-object v3, v5

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    move-object v8, v11

    invoke-static/range {v0 .. v8}, Lcom/google/android/gms/internal/mlkit_common/zzaq;->zzi(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzaq;

    move-result-object v0

    return-object v0
.end method
