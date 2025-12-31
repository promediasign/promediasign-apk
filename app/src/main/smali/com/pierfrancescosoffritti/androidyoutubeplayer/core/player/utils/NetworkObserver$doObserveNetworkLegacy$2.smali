.class final Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$doObserveNetworkLegacy$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;->doObserveNetworkLegacy(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;


# direct methods
.method public constructor <init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$doObserveNetworkLegacy$2;->this$0:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$doObserveNetworkLegacy$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$doObserveNetworkLegacy$2;->this$0:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;->getListeners()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$Listener;

    invoke-interface {v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$Listener;->onNetworkUnavailable()V

    goto :goto_0

    :cond_0
    return-void
.end method
