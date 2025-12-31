.class public Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hoho/android/usbserial/driver/UsbSerialDriver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private final mPorts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialPort;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CdcAcmSerialDriver"

    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->mPorts:Ljava/util/List;

    invoke-static {p1}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->countPorts(Landroid/hardware/usb/UsbDevice;)I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->mPorts:Ljava/util/List;

    new-instance v2, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;

    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v2, p0, v3, v0}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;-><init>(Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;Landroid/hardware/usb/UsbDevice;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->mPorts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->mPorts:Ljava/util/List;

    new-instance v0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;

    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;-><init>(Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;Landroid/hardware/usb/UsbDevice;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static synthetic access$000(Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private static countPorts(Landroid/hardware/usb/UsbDevice;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static getSupportedDevices()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public static probe(Landroid/hardware/usb/UsbDevice;)Z
    .locals 0

    invoke-static {p0}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->countPorts(Landroid/hardware/usb/UsbDevice;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public getPorts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialPort;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->mPorts:Ljava/util/List;

    return-object v0
.end method
