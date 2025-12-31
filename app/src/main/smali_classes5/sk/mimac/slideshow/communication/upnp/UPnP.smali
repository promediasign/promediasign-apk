.class public abstract Lsk/mimac/slideshow/communication/upnp/UPnP;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static defaultGW:Lsk/mimac/slideshow/communication/upnp/Gateway;

.field private static searched:Z


# direct methods
.method public static closePortUDP(I)Z
    .locals 2

    invoke-static {}, Lsk/mimac/slideshow/communication/upnp/UPnP;->isUPnPAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/communication/upnp/UPnP;->defaultGW:Lsk/mimac/slideshow/communication/upnp/Gateway;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lsk/mimac/slideshow/communication/upnp/Gateway;->closePort(IZ)Z

    move-result p0

    return p0
.end method

.method public static getDefaultGatewayIP()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/communication/upnp/UPnP;->isUPnPAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/communication/upnp/UPnP;->defaultGW:Lsk/mimac/slideshow/communication/upnp/Gateway;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/upnp/Gateway;->getGatewayIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalIP()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/communication/upnp/UPnP;->isUPnPAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/communication/upnp/UPnP;->defaultGW:Lsk/mimac/slideshow/communication/upnp/Gateway;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/upnp/Gateway;->getExternalIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isUPnPAvailable()Z
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/communication/upnp/UPnP;->waitInit()V

    sget-object v0, Lsk/mimac/slideshow/communication/upnp/UPnP;->defaultGW:Lsk/mimac/slideshow/communication/upnp/Gateway;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static openPortUDP(I)Z
    .locals 2

    invoke-static {}, Lsk/mimac/slideshow/communication/upnp/UPnP;->isUPnPAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/communication/upnp/UPnP;->defaultGW:Lsk/mimac/slideshow/communication/upnp/Gateway;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lsk/mimac/slideshow/communication/upnp/Gateway;->openPort(IZ)Z

    move-result p0

    return p0
.end method

.method public static resetGatewaySearch()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lsk/mimac/slideshow/communication/upnp/UPnP;->searched:Z

    return-void
.end method

.method private static waitInit()V
    .locals 1

    sget-boolean v0, Lsk/mimac/slideshow/communication/upnp/UPnP;->searched:Z

    if-nez v0, :cond_0

    new-instance v0, Lsk/mimac/slideshow/communication/upnp/GatewayFinder;

    invoke-direct {v0}, Lsk/mimac/slideshow/communication/upnp/GatewayFinder;-><init>()V

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/upnp/GatewayFinder;->findGateway()Lsk/mimac/slideshow/communication/upnp/Gateway;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/communication/upnp/UPnP;->defaultGW:Lsk/mimac/slideshow/communication/upnp/Gateway;

    const/4 v0, 0x1

    sput-boolean v0, Lsk/mimac/slideshow/communication/upnp/UPnP;->searched:Z

    :cond_0
    return-void
.end method
