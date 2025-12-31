.class public final Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$doObserveNetwork$callback$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;->doObserveNetwork(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final mainThreadHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;


# direct methods
.method public constructor <init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;)V
    .locals 1

    iput-object p1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$doObserveNetwork$callback$1;->this$0:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$doObserveNetwork$callback$1;->mainThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$doObserveNetwork$callback$1;->onLost$lambda$3(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;)V

    return-void
.end method

.method public static synthetic b(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$doObserveNetwork$callback$1;->onAvailable$lambda$1(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;)V

    return-void
.end method

.method private static final onAvailable$lambda$1(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;->getListeners()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$Listener;

    invoke-interface {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$Listener;->onNetworkAvailable()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final onLost$lambda$3(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;->getListeners()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$Listener;

    invoke-interface {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$Listener;->onNetworkUnavailable()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$doObserveNetwork$callback$1;->mainThreadHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$doObserveNetwork$callback$1;->this$0:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;

    new-instance v1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/a;-><init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$doObserveNetwork$callback$1;->mainThreadHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$doObserveNetwork$callback$1;->this$0:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;

    new-instance v1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/a;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/a;-><init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
