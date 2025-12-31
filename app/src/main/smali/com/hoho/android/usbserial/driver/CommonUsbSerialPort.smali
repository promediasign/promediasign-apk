.class public abstract Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hoho/android/usbserial/driver/UsbSerialPort;


# static fields
.field public static DEBUG:Z = false

.field private static final MAX_READ_SIZE:I = 0x4000

.field private static final TAG:Ljava/lang/String; = "CommonUsbSerialPort"


# instance fields
.field protected mConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field protected final mDevice:Landroid/hardware/usb/UsbDevice;

.field protected final mPortNumber:I

.field protected mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field protected mUsbRequest:Landroid/hardware/usb/UsbRequest;

.field protected mWriteBuffer:[B

.field protected final mWriteBufferLock:Ljava/lang/Object;

.field protected mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteBufferLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    iput p2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mUsbRequest:Landroid/hardware/usb/UsbRequest;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbRequest;->cancel()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mUsbRequest:Landroid/hardware/usb/UsbRequest;

    :try_start_1
    invoke-virtual {p0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->closeInt()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract closeInt()V
.end method

.method public getCD()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCTS()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract getControlLines()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;",
            ">;"
        }
    .end annotation
.end method

.method public getDSR()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDTR()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public getPortNumber()I
    .locals 1

    iget v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    return v0
.end method

.method public getRI()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getRTS()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getReadEndpoint()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSupportedControlLines()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;",
            ">;"
        }
    .end annotation
.end method

.method public getWriteEndpoint()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public open(Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 2

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    :try_start_0
    invoke-virtual {p0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->openInt()V

    iget-object p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/hardware/usb/UsbRequest;

    invoke-direct {p1}, Landroid/hardware/usb/UsbRequest;-><init>()V

    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mUsbRequest:Landroid/hardware/usb/UsbRequest;

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Could not get read & write endpoints"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Connection is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Already open"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract openInt()V
.end method

.method public purgeHwBuffers(ZZ)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public read([BI)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->read([BIZ)I

    move-result p1

    return p1
.end method

.method public read([BIZ)I
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_6

    array-length v0, p1

    if-lez v0, :cond_5

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/hoho/android/usbserial/util/MonotonicClock;->millis()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    array-length v2, p1

    const/16 v3, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v3, v4, p1, v2, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_2

    invoke-static {}, Lcom/hoho/android/usbserial/util/MonotonicClock;->millis()J

    move-result-wide p2

    cmp-long v2, p2, v0

    if-gez v2, :cond_2

    :goto_1
    invoke-virtual {p0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->testConnection()V

    goto :goto_2

    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    iget-object p3, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mUsbRequest:Landroid/hardware/usb/UsbRequest;

    array-length p1, p1

    invoke-virtual {p3, p2, p1}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Waiting for USB request failed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Queueing USB request failed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Read buffer to small"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Connection closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBreak(Z)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setDTR(Z)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract setParameters(IIII)V
.end method

.method public setRTS(Z)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final setWriteBufferSize(I)V
    .locals 2

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteBufferLock:Ljava/lang/Object;

    monitor-enter v0

    if-gtz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    if-eqz v1, :cond_2

    array-length v1, v1

    if-ne p1, v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public testConnection()V
    .locals 8

    const/4 v6, 0x2

    new-array v5, v6, [B

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v4, 0x0

    const/16 v7, 0xc8

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "USB get_status request failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget v3, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 22
    .line 23
    const-string v4, "<"

    .line 24
    .line 25
    const-string v5, " device_name="

    .line 26
    .line 27
    const-string v6, " device_id="

    .line 28
    .line 29
    invoke-static {v4, v0, v5, v1, v6}, Lorg/apache/ftpserver/main/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, " port_number="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ">"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

.method public write([BI)V
    .locals 11

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/hoho/android/usbserial/util/MonotonicClock;->millis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    int-to-long v2, p2

    .line 11
    add-long/2addr v0, v2

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 13
    .line 14
    if-eqz v2, :cond_b

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_1
    array-length v4, p1

    .line 19
    if-ge v3, v4, :cond_a

    .line 20
    .line 21
    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteBufferLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v4

    .line 24
    :try_start_0
    iget-object v5, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    .line 25
    .line 26
    if-nez v5, :cond_1

    .line 27
    .line 28
    iget-object v5, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 29
    .line 30
    invoke-virtual {v5}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    new-array v5, v5, [B

    .line 35
    .line 36
    iput-object v5, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto/16 :goto_7

    .line 41
    .line 42
    :cond_1
    :goto_2
    array-length v5, p1

    .line 43
    sub-int/2addr v5, v3

    .line 44
    iget-object v6, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    .line 45
    .line 46
    array-length v6, v6

    .line 47
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-nez v3, :cond_2

    .line 52
    .line 53
    move-object v6, p1

    .line 54
    goto :goto_3

    .line 55
    :cond_2
    iget-object v6, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    .line 56
    .line 57
    invoke-static {p1, v3, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    .line 59
    .line 60
    iget-object v6, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    .line 61
    .line 62
    :goto_3
    if-eqz p2, :cond_4

    .line 63
    .line 64
    if-nez v3, :cond_3

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_3
    invoke-static {}, Lcom/hoho/android/usbserial/util/MonotonicClock;->millis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v7

    .line 71
    sub-long v7, v0, v7

    .line 72
    .line 73
    long-to-int v8, v7

    .line 74
    if-nez v8, :cond_5

    .line 75
    .line 76
    const/4 v8, -0x1

    .line 77
    goto :goto_5

    .line 78
    :cond_4
    :goto_4
    move v8, p2

    .line 79
    :cond_5
    :goto_5
    if-gez v8, :cond_6

    .line 80
    .line 81
    const/4 v6, -0x2

    .line 82
    goto :goto_6

    .line 83
    :cond_6
    iget-object v7, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 84
    .line 85
    iget-object v9, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 86
    .line 87
    invoke-virtual {v7, v9, v6, v5, v8}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    :goto_6
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    sget-boolean v4, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->DEBUG:Z

    .line 93
    .line 94
    if-eqz v4, :cond_7

    .line 95
    .line 96
    sget-object v4, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->TAG:Ljava/lang/String;

    .line 97
    .line 98
    const-string v7, "Wrote "

    .line 99
    .line 100
    const-string v9, "/"

    .line 101
    .line 102
    const-string v10, " offset "

    .line 103
    .line 104
    invoke-static {v7, v6, v9, v5, v10}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v9, "/"

    .line 112
    .line 113
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    array-length v9, p1

    .line 117
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v9, " timeout "

    .line 121
    .line 122
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    :cond_7
    if-gtz v6, :cond_9

    .line 136
    .line 137
    if-eqz p2, :cond_8

    .line 138
    .line 139
    invoke-static {}, Lcom/hoho/android/usbserial/util/MonotonicClock;->millis()J

    .line 140
    .line 141
    .line 142
    move-result-wide v7

    .line 143
    cmp-long p2, v7, v0

    .line 144
    .line 145
    if-ltz p2, :cond_8

    .line 146
    .line 147
    new-instance p2, Lcom/hoho/android/usbserial/driver/SerialTimeoutException;

    .line 148
    .line 149
    const-string v0, "Error writing "

    .line 150
    .line 151
    const-string v1, " bytes at offset "

    .line 152
    .line 153
    const-string v2, " of total "

    .line 154
    .line 155
    invoke-static {v0, v5, v1, v3, v2}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    array-length p1, p1

    .line 160
    const-string v1, ", rc="

    .line 161
    .line 162
    invoke-static {v0, p1, v6, v1}, LA/g;->k(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-direct {p2, p1}, Lcom/hoho/android/usbserial/driver/SerialTimeoutException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iput v3, p2, Ljava/io/InterruptedIOException;->bytesTransferred:I

    .line 170
    .line 171
    throw p2

    .line 172
    :cond_8
    new-instance p2, Ljava/io/IOException;

    .line 173
    .line 174
    const-string v0, "Error writing "

    .line 175
    .line 176
    const-string v1, " bytes at offset "

    .line 177
    .line 178
    const-string v2, " of total "

    .line 179
    .line 180
    invoke-static {v0, v5, v1, v3, v2}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    array-length p1, p1

    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw p2

    .line 196
    :cond_9
    add-int/2addr v3, v6

    .line 197
    goto/16 :goto_1

    .line 198
    .line 199
    :goto_7
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    throw p1

    .line 201
    :cond_a
    return-void

    .line 202
    :cond_b
    new-instance p1, Ljava/io/IOException;

    .line 203
    .line 204
    const-string p2, "Connection closed"

    .line 205
    .line 206
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw p1
.end method
