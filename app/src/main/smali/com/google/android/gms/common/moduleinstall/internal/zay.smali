.class public final Lcom/google/android/gms/common/moduleinstall/internal/zay;
.super Lcom/google/android/gms/common/api/GoogleApi;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/moduleinstall/ModuleInstallClient;


# static fields
.field private static final zac:Lcom/google/android/gms/common/api/Api$ClientKey;

.field private static final zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

.field private static final zae:Lcom/google/android/gms/common/api/Api;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/moduleinstall/internal/zay;->zac:Lcom/google/android/gms/common/api/Api$ClientKey;

    new-instance v1, Lcom/google/android/gms/common/moduleinstall/internal/zaq;

    invoke-direct {v1}, Lcom/google/android/gms/common/moduleinstall/internal/zaq;-><init>()V

    sput-object v1, Lcom/google/android/gms/common/moduleinstall/internal/zay;->zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    new-instance v2, Lcom/google/android/gms/common/api/Api;

    const-string v3, "ModuleInstall.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v2, Lcom/google/android/gms/common/moduleinstall/internal/zay;->zae:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/common/moduleinstall/internal/zay;->zae:Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/common/api/Api$ApiOptions;->NO_OPTIONS:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    sget-object v2, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    return-void
.end method


# virtual methods
.method public final installModules(Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;->fromModuleInstallRequest(Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;)Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;->getListener()Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;

    invoke-virtual {p1}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;->getListenerExecutor()Ljava/util/concurrent/Executor;

    invoke-virtual {p1}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;->zaa()Z

    move-result p1

    invoke-virtual {v1}, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;->getApiFeatures()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/common/Feature;

    sget-object v4, Lcom/google/android/gms/internal/base/zav;->zaa:Lcom/google/android/gms/common/Feature;

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    const/16 p1, 0x6aa8

    invoke-virtual {v2, p1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    new-instance p1, Lcom/google/android/gms/common/moduleinstall/internal/zao;

    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/common/moduleinstall/internal/zao;-><init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;)V

    invoke-virtual {v2, p1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    :goto_0
    return-object p1
.end method
