.class Lsk/mimac/slideshow/serial/UsbSerialHelper;
.super Lsk/mimac/slideshow/serial/SerialHelper;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private serialPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/serial/UsbSerialHelper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/serial/UsbSerialHelper;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/serial/SerialHelper;-><init>(Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;I)V

    return-void
.end method

.method public static synthetic a(Landroid/hardware/usb/UsbManager;Lcom/hoho/android/usbserial/driver/UsbSerialDriver;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/serial/UsbSerialHelper;->lambda$open$0(Landroid/hardware/usb/UsbManager;Lcom/hoho/android/usbserial/driver/UsbSerialDriver;)V

    return-void
.end method

.method private static synthetic lambda$open$0(Landroid/hardware/usb/UsbManager;Lcom/hoho/android/usbserial/driver/UsbSerialDriver;)V
    .locals 5

    invoke-interface {p1}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object p1

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "sk.mimac.slideshow.USB_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    const/high16 v2, 0x4000000

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v4, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/serial/UsbSerialHelper;->serialPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/serial/UsbSerialHelper;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t close USB serial port"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsk/mimac/slideshow/serial/SerialHelper;->isOpen:Z

    return-void
.end method

.method public open()V
    .locals 5

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    invoke-static {}, Lcom/hoho/android/usbserial/driver/UsbSerialProber;->getDefaultProber()Lcom/hoho/android/usbserial/driver/UsbSerialProber;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hoho/android/usbserial/driver/UsbSerialProber;->findAllDrivers(Landroid/hardware/usb/UsbManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    invoke-interface {v1}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getPorts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    iput-object v1, p0, Lsk/mimac/slideshow/serial/UsbSerialHelper;->serialPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    invoke-interface {v1, v0}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->open(Landroid/hardware/usb/UsbDeviceConnection;)V

    iget-object v0, p0, Lsk/mimac/slideshow/serial/UsbSerialHelper;->serialPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    iget v1, p0, Lsk/mimac/slideshow/serial/SerialHelper;->baudRate:I

    iget v2, p0, Lsk/mimac/slideshow/serial/SerialHelper;->dataBits:I

    iget v3, p0, Lsk/mimac/slideshow/serial/SerialHelper;->stopBits:I

    iget v4, p0, Lsk/mimac/slideshow/serial/SerialHelper;->parity:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->setParameters(IIII)V

    iget-object v0, p0, Lsk/mimac/slideshow/serial/UsbSerialHelper;->serialPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->setDTR(Z)V

    iput-boolean v1, p0, Lsk/mimac/slideshow/serial/SerialHelper;->isOpen:Z

    return-void

    :cond_0
    new-instance v0, Lsk/mimac/slideshow/serial/NoSerialAvailableException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No available USB connection for device "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/serial/NoSerialAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v2, Lsk/mimac/slideshow/serial/a;

    invoke-direct {v2, v0, v1}, Lsk/mimac/slideshow/serial/a;-><init>(Landroid/hardware/usb/UsbManager;Lcom/hoho/android/usbserial/driver/UsbSerialDriver;)V

    invoke-static {v2}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v0, Lsk/mimac/slideshow/serial/NoSerialAvailableException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Waiting for permission for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/serial/NoSerialAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lsk/mimac/slideshow/serial/NoSerialAvailableException;

    const-string v1, "No available USB devices"

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/serial/NoSerialAvailableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readLoop()V
    .locals 7

    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lsk/mimac/slideshow/serial/UsbSerialHelper;->serialPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsk/mimac/slideshow/serial/UsbSerialHelper;->serialPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    invoke-interface {v0}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->getReadEndpoint()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lsk/mimac/slideshow/serial/UsbSerialHelper;->serialPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    const/16 v2, 0xc8

    invoke-interface {v1, v0, v2}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->read([BI)I

    move-result v1

    if-lez v1, :cond_0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v1, 0x0

    :goto_1
    const/16 v4, 0xa

    if-ge v1, v4, :cond_1

    const-wide/16 v5, 0xa

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    iget-object v5, p0, Lsk/mimac/slideshow/serial/UsbSerialHelper;->serialPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    invoke-interface {v5, v0, v4}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->read([BI)I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lsk/mimac/slideshow/serial/SerialHelper;->listener:Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;->onNewData([B)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_2
    iget-object v1, p0, Lsk/mimac/slideshow/serial/SerialHelper;->listener:Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;

    invoke-interface {v1, v0}, Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;->onRunError(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    :goto_3
    return-void
.end method

.method public send([B)Z
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/serial/UsbSerialHelper;->LOG:Lorg/slf4j/Logger;

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Writing {} bytes"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lsk/mimac/slideshow/serial/UsbSerialHelper;->serialPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    const/16 v1, 0xc8

    invoke-interface {v0, p1, v1}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->write([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    sget-object v0, Lsk/mimac/slideshow/serial/UsbSerialHelper;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Error while writing to serial port"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method
