.class public abstract synthetic Ld1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/os/IHwBinder;)Lrockchip/hardware/hdmi/V1_0/IHdmi;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const-string v1, "rockchip.hardware.hdmi@1.0::IHdmi"

    .line 6
    .line 7
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    instance-of v3, v2, Lrockchip/hardware/hdmi/V1_0/IHdmi;

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    check-cast v2, Lrockchip/hardware/hdmi/V1_0/IHdmi;

    .line 18
    .line 19
    return-object v2

    .line 20
    :cond_1
    new-instance v2, Lrockchip/hardware/hdmi/V1_0/IHdmi$Proxy;

    .line 21
    .line 22
    invoke-direct {v2, p0}, Lrockchip/hardware/hdmi/V1_0/IHdmi$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-interface {v2}, Lrockchip/hardware/hdmi/V1_0/IHdmi;->interfaceChain()Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_3

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    return-object v2

    .line 52
    :catch_0
    :cond_3
    return-object v0
.end method

.method public static b(Ljava/lang/String;Z)Lrockchip/hardware/hdmi/V1_0/IHdmi;
    .locals 1

    .line 1
    const-string v0, "rockchip.hardware.hdmi@1.0::IHdmi"

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ld1/a;->a(Landroid/os/IHwBinder;)Lrockchip/hardware/hdmi/V1_0/IHdmi;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static c(Z)Lrockchip/hardware/hdmi/V1_0/IHdmi;
    .locals 1

    .line 1
    const-string v0, "default"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld1/a;->b(Ljava/lang/String;Z)Lrockchip/hardware/hdmi/V1_0/IHdmi;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
