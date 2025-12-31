.class public abstract synthetic LA/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketOption;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Ljava/nio/channels/DatagramChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;

    return-void
.end method

.method public static bridge synthetic B()Ljava/net/SocketOption;
    .locals 1

    .line 1
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_BROADCAST:Ljava/net/SocketOption;

    return-object v0
.end method

.method public static bridge synthetic C(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    return-void
.end method

.method public static bridge synthetic D()Ljava/net/SocketOption;
    .locals 1

    .line 1
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    return-object v0
.end method

.method public static synthetic a(II)Landroid/media/MediaCodec$CryptoInfo$Pattern;
    .locals 1

    .line 1
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    return-object v0
.end method

.method public static bridge synthetic b(Landroid/content/res/Configuration;)Landroid/os/LocaleList;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Landroid/view/Display;)Landroid/view/Display$HdrCapabilities;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d()Ljava/net/SocketOption;
    .locals 1

    .line 1
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    return-object v0
.end method

.method public static bridge synthetic e(Ljava/lang/Object;)Ljava/net/SocketOption;
    .locals 0

    .line 1
    check-cast p0, Ljava/net/SocketOption;

    return-object p0
.end method

.method public static bridge synthetic f()Ljava/net/StandardProtocolFamily;
    .locals 1

    .line 1
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    return-object v0
.end method

.method public static bridge synthetic g(Ljava/net/StandardProtocolFamily;)Ljava/nio/channels/DatagramChannel;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/nio/channels/DatagramChannel;->open(Ljava/net/ProtocolFamily;)Ljava/nio/channels/DatagramChannel;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .locals 0

    .line 1
    check-cast p0, Ljava/nio/channels/NetworkChannel;

    return-object p0
.end method

.method public static bridge synthetic i(Ljava/nio/channels/NetworkChannel;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/nio/channels/NetworkChannel;->supportedOptions()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Ljavax/net/ssl/SSLServerSocket;)Ljavax/net/ssl/SSLParameters;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljavax/net/ssl/SSLServerSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k()V
    .locals 1

    .line 1
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    return-void
.end method

.method public static bridge synthetic l(Landroid/app/Notification$Action$Builder;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    return-void
.end method

.method public static bridge synthetic m(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    return-void
.end method

.method public static bridge synthetic n(Landroid/app/Notification$Builder;[Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-void
.end method

.method public static bridge synthetic o(Landroid/content/res/Configuration;Landroid/os/LocaleList;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    return-void
.end method

.method public static bridge synthetic p(Landroid/net/ConnectivityManager;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver$doObserveNetwork$callback$1;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public static bridge synthetic q(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketOption;)V
    .locals 1

    .line 1
    const v0, 0xffe3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/channels/DatagramChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;

    return-void
.end method

.method public static bridge synthetic r(Ljavax/net/ssl/SSLParameters;)V
    .locals 1

    .line 1
    const-string v0, "HTTPS"

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic s(Ljavax/net/ssl/SSLServerSocket;Ljavax/net/ssl/SSLParameters;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLServerSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    return-void
.end method

.method public static bridge synthetic t(Lsk/mimac/slideshow/MainService;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(I)V

    return-void
.end method

.method public static bridge synthetic u(Landroid/app/Activity;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic v(Landroid/app/NotificationManager;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic w(Landroid/view/Display$HdrCapabilities;)[I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic x()Ljava/net/SocketOption;
    .locals 1

    .line 1
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    return-object v0
.end method

.method public static bridge synthetic y()Ljava/net/StandardProtocolFamily;
    .locals 1

    .line 1
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    return-object v0
.end method

.method public static bridge synthetic z(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    return-void
.end method
