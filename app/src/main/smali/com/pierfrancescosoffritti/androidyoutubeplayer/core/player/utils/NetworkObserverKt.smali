.class public abstract Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserverKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic access$isConnectedToInternet(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserverKt;->isConnectedToInternet(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static final isConnectedToInternet(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/net/ConnectivityManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    invoke-static {p0}, LA/a;->e(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_0

    return v2

    :cond_0
    invoke-static {p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserverKt;->isConnectedToInternet(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method private static final isConnectedToInternet(Landroid/net/NetworkCapabilities;)Z
    .locals 3

    .line 2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
