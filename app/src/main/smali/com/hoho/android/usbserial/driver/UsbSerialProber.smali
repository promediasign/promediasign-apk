.class public Lcom/hoho/android/usbserial/driver/UsbSerialProber;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mProbeTable:Lcom/hoho/android/usbserial/driver/ProbeTable;


# direct methods
.method public constructor <init>(Lcom/hoho/android/usbserial/driver/ProbeTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/UsbSerialProber;->mProbeTable:Lcom/hoho/android/usbserial/driver/ProbeTable;

    return-void
.end method

.method public static getDefaultProbeTable()Lcom/hoho/android/usbserial/driver/ProbeTable;
    .locals 2

    new-instance v0, Lcom/hoho/android/usbserial/driver/ProbeTable;

    invoke-direct {v0}, Lcom/hoho/android/usbserial/driver/ProbeTable;-><init>()V

    const-class v1, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;

    invoke-virtual {v0, v1}, Lcom/hoho/android/usbserial/driver/ProbeTable;->addDriver(Ljava/lang/Class;)V

    const-class v1, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;

    invoke-virtual {v0, v1}, Lcom/hoho/android/usbserial/driver/ProbeTable;->addDriver(Ljava/lang/Class;)V

    const-class v1, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;

    invoke-virtual {v0, v1}, Lcom/hoho/android/usbserial/driver/ProbeTable;->addDriver(Ljava/lang/Class;)V

    const-class v1, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;

    invoke-virtual {v0, v1}, Lcom/hoho/android/usbserial/driver/ProbeTable;->addDriver(Ljava/lang/Class;)V

    const-class v1, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;

    invoke-virtual {v0, v1}, Lcom/hoho/android/usbserial/driver/ProbeTable;->addDriver(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static getDefaultProber()Lcom/hoho/android/usbserial/driver/UsbSerialProber;
    .locals 2

    new-instance v0, Lcom/hoho/android/usbserial/driver/UsbSerialProber;

    invoke-static {}, Lcom/hoho/android/usbserial/driver/UsbSerialProber;->getDefaultProbeTable()Lcom/hoho/android/usbserial/driver/ProbeTable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hoho/android/usbserial/driver/UsbSerialProber;-><init>(Lcom/hoho/android/usbserial/driver/ProbeTable;)V

    return-object v0
.end method


# virtual methods
.method public findAllDrivers(Landroid/hardware/usb/UsbManager;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialDriver;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0, v1}, Lcom/hoho/android/usbserial/driver/UsbSerialProber;->probeDevice(Landroid/hardware/usb/UsbDevice;)Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public probeDevice(Landroid/hardware/usb/UsbDevice;)Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/UsbSerialProber;->mProbeTable:Lcom/hoho/android/usbserial/driver/ProbeTable;

    invoke-virtual {v2, p1}, Lcom/hoho/android/usbserial/driver/ProbeTable;->findDriver(Landroid/hardware/usb/UsbDevice;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Landroid/hardware/usb/UsbDevice;

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
