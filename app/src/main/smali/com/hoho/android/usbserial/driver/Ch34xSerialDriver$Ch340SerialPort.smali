.class public Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;
.super Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ch340SerialPort"
.end annotation


# static fields
.field private static final USB_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private final DEFAULT_BAUD_RATE:I

.field private dtr:Z

.field private rts:Z

.field final synthetic this$0:Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;


# direct methods
.method public constructor <init>(Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->this$0:Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;

    invoke-direct {p0, p2, p3}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    const/16 p1, 0x2580

    iput p1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->DEFAULT_BAUD_RATE:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    return-void
.end method

.method private checkState(Ljava/lang/String;II[I)V
    .locals 5

    .line 1
    array-length v0, p4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, p2, p3, v1, v0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlIn(III[B)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const-string p3, "]"

    .line 10
    .line 11
    if-ltz p2, :cond_4

    .line 12
    .line 13
    array-length v2, p4

    .line 14
    const-string v3, " ["

    .line 15
    .line 16
    if-ne p2, v2, :cond_3

    .line 17
    .line 18
    :goto_0
    array-length p2, p4

    .line 19
    if-ge v1, p2, :cond_2

    .line 20
    .line 21
    aget p2, p4, v1

    .line 22
    .line 23
    const/4 v2, -0x1

    .line 24
    if-ne p2, v2, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    aget-byte v2, v0, v1

    .line 28
    .line 29
    and-int/lit16 v2, v2, 0xff

    .line 30
    .line 31
    if-ne p2, v2, :cond_1

    .line 32
    .line 33
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance p2, Ljava/io/IOException;

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v4, "Expected 0x"

    .line 41
    .line 42
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    aget p4, p4, v1

    .line 46
    .line 47
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p4

    .line 51
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p4, " byte, but get 0x"

    .line 55
    .line 56
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p4

    .line 63
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-static {p1, p3, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p2

    .line 77
    :cond_2
    return-void

    .line 78
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v2, "Expected "

    .line 83
    .line 84
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    array-length p4, p4

    .line 88
    const-string v2, " bytes, but get "

    .line 89
    .line 90
    invoke-static {v1, p4, v2, p2, v3}, Ls/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p1, p3, v1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_4
    new-instance p2, Ljava/io/IOException;

    .line 102
    .line 103
    const-string p4, "Failed send cmd ["

    .line 104
    .line 105
    invoke-static {p4, p1, p3}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p2
.end method

.method private controlIn(III[B)I
    .locals 8

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    array-length v6, p4

    const/16 v7, 0x1388

    const/16 v1, 0xc0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    return p1
.end method

.method private controlOut(III)I
    .locals 8

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v6, 0x0

    const/16 v7, 0x1388

    const/16 v1, 0x40

    const/4 v5, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    return p1
.end method

.method private getStatus()B
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/16 v1, 0x95

    const/16 v2, 0x706

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlIn(III[B)I

    move-result v1

    if-ltz v1, :cond_0

    aget-byte v0, v0, v3

    return v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error getting control lines"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initialize()V
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v2

    const-string v3, "init #1"

    const/16 v4, 0x5f

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    const/16 v2, 0xa1

    invoke-direct {p0, v2, v1, v1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v3

    if-ltz v3, :cond_2

    const/16 v3, 0x2580

    invoke-direct {p0, v3}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    const-string v4, "init #4"

    filled-new-array {v0, v1}, [I

    move-result-object v1

    const/16 v5, 0x95

    const/16 v6, 0x2518

    invoke-direct {p0, v4, v5, v6, v1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    const/16 v1, 0x9a

    const/16 v4, 0xc3

    invoke-direct {p0, v1, v6, v4}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v1

    if-ltz v1, :cond_1

    const-string v1, "init #6"

    filled-new-array {v0, v0}, [I

    move-result-object v4

    const/16 v6, 0x706

    invoke-direct {p0, v1, v5, v6, v4}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    const/16 v1, 0x501f

    const v4, 0xd90a

    invoke-direct {p0, v2, v1, v4}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-direct {p0, v3}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setControlLines()V

    const-string v1, "init #10"

    filled-new-array {v0, v0}, [I

    move-result-object v0

    invoke-direct {p0, v1, v5, v6, v0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Init failed: #7"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Init failed: #5"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Init failed: #2"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setBaudRate(I)V
    .locals 11

    .line 1
    const/4 v0, 0x3

    .line 2
    const v1, 0xe1000

    .line 3
    .line 4
    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    const-wide/16 v1, 0x7

    .line 8
    .line 9
    const-wide/32 v3, 0xf300

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const-wide/32 v1, 0x5b59f000

    .line 14
    .line 15
    .line 16
    int-to-long v3, p1

    .line 17
    div-long/2addr v1, v3

    .line 18
    const-wide/16 v3, 0x3

    .line 19
    .line 20
    :goto_0
    const-wide/32 v5, 0xfff0

    .line 21
    .line 22
    .line 23
    cmp-long v7, v1, v5

    .line 24
    .line 25
    if-lez v7, :cond_1

    .line 26
    .line 27
    const-wide/16 v5, 0x0

    .line 28
    .line 29
    cmp-long v8, v3, v5

    .line 30
    .line 31
    if-lez v8, :cond_1

    .line 32
    .line 33
    shr-long/2addr v1, v0

    .line 34
    const-wide/16 v5, 0x1

    .line 35
    .line 36
    sub-long/2addr v3, v5

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    if-gtz v7, :cond_4

    .line 39
    .line 40
    const-wide/32 v5, 0x10000

    .line 41
    .line 42
    .line 43
    sub-long v1, v5, v1

    .line 44
    .line 45
    move-wide v9, v1

    .line 46
    move-wide v1, v3

    .line 47
    move-wide v3, v9

    .line 48
    :goto_1
    const-wide/16 v5, 0x80

    .line 49
    .line 50
    or-long/2addr v1, v5

    .line 51
    const-wide/32 v5, 0xff00

    .line 52
    .line 53
    .line 54
    and-long/2addr v5, v3

    .line 55
    or-long/2addr v1, v5

    .line 56
    long-to-int v2, v1

    .line 57
    const-wide/16 v5, 0xff

    .line 58
    .line 59
    and-long/2addr v3, v5

    .line 60
    long-to-int v1, v3

    .line 61
    invoke-static {}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;->access$000()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    new-array v0, v0, [Ljava/lang/Object;

    .line 78
    .line 79
    const/4 v6, 0x0

    .line 80
    aput-object p1, v0, v6

    .line 81
    .line 82
    const/4 p1, 0x1

    .line 83
    aput-object v4, v0, p1

    .line 84
    .line 85
    const/4 p1, 0x2

    .line 86
    aput-object v5, v0, p1

    .line 87
    .line 88
    const-string p1, "baud rate=%d, 0x1312=0x%04x, 0x0f2c=0x%04x"

    .line 89
    .line 90
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    const/16 p1, 0x1312

    .line 98
    .line 99
    const/16 v0, 0x9a

    .line 100
    .line 101
    invoke-direct {p0, v0, p1, v2}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-ltz p1, :cond_3

    .line 106
    .line 107
    const/16 p1, 0xf2c

    .line 108
    .line 109
    invoke-direct {p0, v0, p1, v1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-ltz p1, :cond_2

    .line 114
    .line 115
    return-void

    .line 116
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 117
    .line 118
    const-string v0, "Error setting baud rate: #2"

    .line 119
    .line 120
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 125
    .line 126
    const-string v0, "Error setting baud rate: #1)"

    .line 127
    .line 128
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p1

    .line 132
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 133
    .line 134
    const-string v1, "Unsupported baud rate: "

    .line 135
    .line 136
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v0
.end method

.method private setControlLines()V
    .locals 3

    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x40

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    or-int/2addr v0, v2

    not-int v0, v0

    const/16 v2, 0xa4

    invoke-direct {p0, v2, v0, v1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v0

    if-ltz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to set control lines"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public closeInt()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method public getCD()Z
    .locals 1

    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->getStatus()B

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCTS()Z
    .locals 2

    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->getStatus()B

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getControlLines()Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->getStatus()B

    move-result v0

    const-class v1, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->RTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_1

    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->CTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-boolean v2, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->DTR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_3

    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->DSR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_4

    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->CD:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_5

    sget-object v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->RI:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v1
.end method

.method public getDSR()Z
    .locals 1

    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->getStatus()B

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDTR()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    return v0
.end method

.method public getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    .locals 1

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->this$0:Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;

    return-object v0
.end method

.method public getRI()Z
    .locals 1

    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->getStatus()B

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRTS()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    return v0
.end method

.method public getSupportedControlLines()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public openInt()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v4, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not claim data interface"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v3

    const/16 v4, 0x80

    if-ne v3, v4, :cond_2

    iput-object v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_2

    :cond_2
    iput-object v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->initialize()V

    const/16 v0, 0x2580

    invoke-direct {p0, v0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    return-void
.end method

.method public setBreak(Z)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/16 v1, 0x95

    const/16 v2, 0x1805

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlIn(III[B)I

    move-result v1

    if-ltz v1, :cond_2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    aget-byte p1, v0, v3

    and-int/lit8 p1, p1, -0x2

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    aget-byte p1, v0, v1

    and-int/lit8 p1, p1, -0x41

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    goto :goto_0

    :cond_0
    aget-byte p1, v0, v3

    or-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    aget-byte p1, v0, v1

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    :goto_0
    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    const/16 v0, 0x9a

    invoke-direct {p0, v0, v2, p1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result p1

    if-ltz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Error setting BREAK condition"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Error getting BREAK condition"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDTR(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setControlLines()V

    return-void
.end method

.method public setParameters(IIII)V
    .locals 3

    .line 1
    if-lez p1, :cond_d

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x5

    .line 7
    if-eq p2, p1, :cond_3

    .line 8
    .line 9
    const/4 p1, 0x6

    .line 10
    if-eq p2, p1, :cond_2

    .line 11
    .line 12
    const/4 p1, 0x7

    .line 13
    if-eq p2, p1, :cond_1

    .line 14
    .line 15
    const/16 p1, 0x8

    .line 16
    .line 17
    if-ne p2, p1, :cond_0

    .line 18
    .line 19
    const/16 p1, 0xc3

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string p3, "Invalid data bits: "

    .line 25
    .line 26
    invoke-static {p2, p3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    const/16 p1, 0xc2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/16 p1, 0xc1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const/16 p1, 0xc0

    .line 41
    .line 42
    :goto_0
    const/4 p2, 0x3

    .line 43
    const/4 v0, 0x2

    .line 44
    const/4 v1, 0x1

    .line 45
    if-eqz p4, :cond_8

    .line 46
    .line 47
    if-eq p4, v1, :cond_7

    .line 48
    .line 49
    if-eq p4, v0, :cond_6

    .line 50
    .line 51
    if-eq p4, p2, :cond_5

    .line 52
    .line 53
    const/4 v2, 0x4

    .line 54
    if-ne p4, v2, :cond_4

    .line 55
    .line 56
    or-int/lit8 p1, p1, 0x38

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const-string p2, "Invalid parity: "

    .line 62
    .line 63
    invoke-static {p4, p2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_5
    or-int/lit8 p1, p1, 0x28

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_6
    or-int/lit8 p1, p1, 0x18

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_7
    or-int/lit8 p1, p1, 0x8

    .line 78
    .line 79
    :cond_8
    :goto_1
    if-eq p3, v1, :cond_b

    .line 80
    .line 81
    if-eq p3, v0, :cond_a

    .line 82
    .line 83
    if-eq p3, p2, :cond_9

    .line 84
    .line 85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    const-string p2, "Invalid stop bits: "

    .line 88
    .line 89
    invoke-static {p3, p2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 98
    .line 99
    const-string p2, "Unsupported stop bits: 1.5"

    .line 100
    .line 101
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :cond_a
    or-int/lit8 p1, p1, 0x4

    .line 106
    .line 107
    :cond_b
    const/16 p2, 0x9a

    .line 108
    .line 109
    const/16 p3, 0x2518

    .line 110
    .line 111
    invoke-direct {p0, p2, p3, p1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-ltz p1, :cond_c

    .line 116
    .line 117
    return-void

    .line 118
    :cond_c
    new-instance p1, Ljava/io/IOException;

    .line 119
    .line 120
    const-string p2, "Error setting control byte"

    .line 121
    .line 122
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p1

    .line 126
    :cond_d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 127
    .line 128
    const-string p3, "Invalid baud rate: "

    .line 129
    .line 130
    invoke-static {p1, p3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p2
.end method

.method public setRTS(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setControlLines()V

    return-void
.end method
