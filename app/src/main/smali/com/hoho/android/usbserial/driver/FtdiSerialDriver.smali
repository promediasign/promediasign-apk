.class public Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hoho/android/usbserial/driver/UsbSerialDriver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
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
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;->mPorts:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;->mPorts:Ljava/util/List;

    new-instance v2, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;

    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v2, p0, v3, v0}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;-><init>(Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;Landroid/hardware/usb/UsbDevice;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getSupportedDevices()Ljava/util/Map;
    .locals 7
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

    const/16 v1, 0x403

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x6011

    const/16 v3, 0x6015

    const/16 v4, 0x6001

    const/16 v5, 0x6014

    const/16 v6, 0x6010

    filled-new-array {v4, v5, v6, v2, v3}, [I

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

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

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;->mPorts:Ljava/util/List;

    return-object v0
.end method
