.class public final Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$Listener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private networkBroadcastReceiver:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkBroadcastReceiver;

.field private networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;->context:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;->listeners:Ljava/util/List;

    return-void
.end method

.method private final doObserveNetwork(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$doObserveNetwork$callback$1;

    invoke-direct {v0, p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$doObserveNetwork$callback$1;-><init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;)V

    iput-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-static {p1, v0}, LA/c;->p(Landroid/net/ConnectivityManager;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$doObserveNetwork$callback$1;)V

    return-void
.end method

.method private final doObserveNetworkLegacy(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkBroadcastReceiver;

    new-instance v1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$doObserveNetworkLegacy$1;

    invoke-direct {v1, p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$doObserveNetworkLegacy$1;-><init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;)V

    new-instance v2, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$doObserveNetworkLegacy$2;

    invoke-direct {v2, p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$doObserveNetworkLegacy$2;-><init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;)V

    invoke-direct {v0, v1, v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkBroadcastReceiver;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;->networkBroadcastReceiver:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 3

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;->context:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;->networkBroadcastReceiver:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkBroadcastReceiver;

    return-void
.end method

.method public final getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$Listener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public final observeNetwork()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;->doObserveNetwork(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;->doObserveNetworkLegacy(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
