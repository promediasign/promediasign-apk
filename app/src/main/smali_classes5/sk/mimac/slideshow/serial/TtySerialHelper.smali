.class Lsk/mimac/slideshow/serial/TtySerialHelper;
.super Lsk/mimac/slideshow/serial/SerialHelper;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private outputStream:Ljava/io/OutputStream;

.field private final port:Ljava/lang/String;

.field private serialPort:Landroid/serialport/SerialPort;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/serial/TtySerialHelper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/serial/TtySerialHelper;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lsk/mimac/slideshow/serial/SerialHelper;-><init>(Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;I)V

    iput-object p2, p0, Lsk/mimac/slideshow/serial/TtySerialHelper;->port:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/serial/TtySerialHelper;->serialPort:Landroid/serialport/SerialPort;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/serialport/SerialPort;->tryClose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/serial/TtySerialHelper;->serialPort:Landroid/serialport/SerialPort;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsk/mimac/slideshow/serial/SerialHelper;->isOpen:Z

    return-void
.end method

.method public open()V
    .locals 8

    const-string v0, "su"

    invoke-static {v0}, Landroid/serialport/SerialPort;->setSuPath(Ljava/lang/String;)V

    new-instance v0, Landroid/serialport/SerialPort;

    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lsk/mimac/slideshow/serial/TtySerialHelper;->port:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lsk/mimac/slideshow/serial/SerialHelper;->baudRate:I

    iget v4, p0, Lsk/mimac/slideshow/serial/SerialHelper;->dataBits:I

    iget v5, p0, Lsk/mimac/slideshow/serial/SerialHelper;->parity:I

    iget v6, p0, Lsk/mimac/slideshow/serial/SerialHelper;->stopBits:I

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/serialport/SerialPort;-><init>(Ljava/io/File;IIIII)V

    iput-object v0, p0, Lsk/mimac/slideshow/serial/TtySerialHelper;->serialPort:Landroid/serialport/SerialPort;

    invoke-virtual {v0}, Landroid/serialport/SerialPort;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/serial/TtySerialHelper;->outputStream:Ljava/io/OutputStream;

    iget-object v0, p0, Lsk/mimac/slideshow/serial/TtySerialHelper;->serialPort:Landroid/serialport/SerialPort;

    invoke-virtual {v0}, Landroid/serialport/SerialPort;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/serial/TtySerialHelper;->inputStream:Ljava/io/InputStream;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsk/mimac/slideshow/serial/SerialHelper;->isOpen:Z

    return-void
.end method

.method public readLoop()V
    .locals 6

    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lsk/mimac/slideshow/serial/TtySerialHelper;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_2

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget-object v1, p0, Lsk/mimac/slideshow/serial/TtySerialHelper;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v1, 0x0

    :goto_1
    const/16 v4, 0xa

    if-ge v1, v4, :cond_1

    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    iget-object v4, p0, Lsk/mimac/slideshow/serial/TtySerialHelper;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lsk/mimac/slideshow/serial/TtySerialHelper;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lsk/mimac/slideshow/serial/SerialHelper;->listener:Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;->onNewData([B)V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_3
    iget-object v1, p0, Lsk/mimac/slideshow/serial/SerialHelper;->listener:Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;

    invoke-interface {v1, v0}, Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;->onRunError(Ljava/lang/Exception;)V

    goto :goto_4

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    :goto_4
    return-void
.end method

.method public send([B)Z
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/serial/TtySerialHelper;->LOG:Lorg/slf4j/Logger;

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Writing {} bytes"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lsk/mimac/slideshow/serial/TtySerialHelper;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    sget-object v0, Lsk/mimac/slideshow/serial/TtySerialHelper;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Error while writing to serial port"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method
