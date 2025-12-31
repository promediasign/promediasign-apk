.class public Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hoho/android/usbserial/driver/UsbSerialDriver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;
    }
.end annotation


# static fields
.field private static final GCL_CD:I = 0x8

.field private static final GCL_CTS:I = 0x1

.field private static final GCL_DSR:I = 0x2

.field private static final GCL_RI:I = 0x4

.field private static final LCR_CS5:I = 0x0

.field private static final LCR_CS6:I = 0x1

.field private static final LCR_CS7:I = 0x2

.field private static final LCR_CS8:I = 0x3

.field private static final LCR_ENABLE_PAR:I = 0x8

.field private static final LCR_ENABLE_RX:I = 0x80

.field private static final LCR_ENABLE_TX:I = 0x40

.field private static final LCR_MARK_SPACE:I = 0x20

.field private static final LCR_PAR_EVEN:I = 0x10

.field private static final LCR_STOP_BITS_2:I = 0x4

.field private static final SCL_DTR:I = 0x20

.field private static final SCL_RTS:I = 0x40

.field private static final TAG:Ljava/lang/String; = "Ch34xSerialDriver"


# instance fields
.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private final mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    new-instance v0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;-><init>(Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;Landroid/hardware/usb/UsbDevice;I)V

    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getSupportedDevices()Ljava/util/Map;
    .locals 4
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

    const/16 v1, 0x1a86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x7523

    const/16 v3, 0x5523

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

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

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
