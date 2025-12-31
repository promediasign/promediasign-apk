.class public Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;
.super Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CdcAcmSerialPort"
.end annotation


# static fields
.field private static final GET_LINE_CODING:I = 0x21

.field private static final SEND_BREAK:I = 0x23

.field private static final SET_CONTROL_LINE_STATE:I = 0x22

.field private static final SET_LINE_CODING:I = 0x20

.field private static final USB_RECIP_INTERFACE:I = 0x1

.field private static final USB_RT_ACM:I = 0x21


# instance fields
.field private mControlEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mControlIndex:I

.field private mControlInterface:Landroid/hardware/usb/UsbInterface;

.field private mDataInterface:Landroid/hardware/usb/UsbInterface;

.field private mDtr:Z

.field private mRts:Z

.field final synthetic this$0:Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;


# direct methods
.method public constructor <init>(Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;

    invoke-direct {p0, p2, p3}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mRts:Z

    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDtr:Z

    return-void
.end method

.method private openInterface()V
    .locals 10

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;

    invoke-static {v0}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "claiming interfaces, count="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v1, v5, :cond_5

    iget-object v5, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v5, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v9

    if-ne v9, v7, :cond_1

    iget v7, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    if-ne v2, v7, :cond_0

    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v7

    iput v7, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlIndex:I

    iput-object v5, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :cond_1
    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v7

    const/16 v9, 0xa

    if-ne v7, v9, :cond_3

    iget v7, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    add-int/2addr v7, v3

    if-ne v4, v7, :cond_2

    iput-object v5, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    :cond_3
    iget-object v7, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    if-nez v7, :cond_4

    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v7

    const/16 v9, 0xe0

    if-ne v7, v9, :cond_4

    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v7

    if-ne v7, v8, :cond_4

    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v5

    if-ne v5, v6, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;

    invoke-static {v1}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Control iface="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v1, v2, v8}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v1

    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v1

    const/16 v2, 0x80

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v1

    if-ne v1, v6, :cond_b

    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;

    invoke-static {v1}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "data iface="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v1, v3, v8}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_1
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v3

    if-ne v3, v2, :cond_6

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v3

    if-ne v3, v7, :cond_6

    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    :cond_6
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v3

    if-ne v3, v7, :cond_7

    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    return-void

    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not claim data interface"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No data interface"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid control endpoint"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not claim control interface"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No control interface"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private openSingleInterface()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlIndex:I

    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    const/16 v3, 0x80

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v2

    if-ne v2, v4, :cond_1

    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v2

    if-ne v2, v4, :cond_2

    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlEndpoint:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v0, :cond_4

    return-void

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No control endpoint"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not claim shared control/data interface"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sendAcmControlMessage(II[B)I
    .locals 8

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget v4, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlIndex:I

    if-eqz p3, :cond_0

    array-length v1, p3

    move v6, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x1388

    const/16 v1, 0x21

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-ltz p1, :cond_1

    return p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "controlTransfer failed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setDtrRts()V
    .locals 3

    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mRts:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDtr:Z

    or-int/2addr v0, v1

    const/16 v1, 0x22

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->sendAcmControlMessage(II[B)I

    return-void
.end method


# virtual methods
.method public closeInt()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getControlLines()Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mRts:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->RTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDtr:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->DTR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public getDTR()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDtr:Z

    return v0
.end method

.method public getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    .locals 1

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;

    return-object v0
.end method

.method public getRTS()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mRts:Z

    return v0
.end method

.method public getSupportedControlLines()Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->RTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    sget-object v1, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->DTR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public openInt()V
    .locals 2

    iget v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;

    invoke-static {v0}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device might be castrated ACM device, trying single interface logic"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->openSingleInterface()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;

    invoke-static {v0}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "trying default interface logic"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->openInterface()V

    :goto_0
    return-void
.end method

.method public setBreak(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const p1, 0xffff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    const/16 v1, 0x23

    invoke-direct {p0, v1, p1, v0}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->sendAcmControlMessage(II[B)I

    return-void
.end method

.method public setDTR(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDtr:Z

    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->setDtrRts()V

    return-void
.end method

.method public setParameters(IIII)V
    .locals 10

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x0

    .line 6
    const/16 v5, 0x8

    .line 7
    .line 8
    const/4 v6, 0x5

    .line 9
    if-lez p1, :cond_9

    .line 10
    .line 11
    if-lt p2, v6, :cond_8

    .line 12
    .line 13
    if-gt p2, v5, :cond_8

    .line 14
    .line 15
    if-eq p3, v1, :cond_2

    .line 16
    .line 17
    if-eq p3, v2, :cond_1

    .line 18
    .line 19
    if-ne p3, v3, :cond_0

    .line 20
    .line 21
    const/4 p3, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string p2, "Invalid stop bits: "

    .line 26
    .line 27
    invoke-static {p3, p2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_1
    const/4 p3, 0x2

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 p3, 0x0

    .line 38
    :goto_0
    if-eqz p4, :cond_7

    .line 39
    .line 40
    if-eq p4, v1, :cond_6

    .line 41
    .line 42
    if-eq p4, v2, :cond_5

    .line 43
    .line 44
    if-eq p4, v3, :cond_4

    .line 45
    .line 46
    if-ne p4, v0, :cond_3

    .line 47
    .line 48
    const/4 p4, 0x4

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string p2, "Invalid parity: "

    .line 53
    .line 54
    invoke-static {p4, p2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_4
    const/4 p4, 0x3

    .line 63
    goto :goto_1

    .line 64
    :cond_5
    const/4 p4, 0x2

    .line 65
    goto :goto_1

    .line 66
    :cond_6
    const/4 p4, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_7
    const/4 p4, 0x0

    .line 69
    :goto_1
    and-int/lit16 v7, p1, 0xff

    .line 70
    .line 71
    int-to-byte v7, v7

    .line 72
    shr-int/lit8 v5, p1, 0x8

    .line 73
    .line 74
    and-int/lit16 v5, v5, 0xff

    .line 75
    .line 76
    int-to-byte v5, v5

    .line 77
    shr-int/lit8 v8, p1, 0x10

    .line 78
    .line 79
    and-int/lit16 v8, v8, 0xff

    .line 80
    .line 81
    int-to-byte v8, v8

    .line 82
    shr-int/lit8 p1, p1, 0x18

    .line 83
    .line 84
    and-int/lit16 p1, p1, 0xff

    .line 85
    .line 86
    int-to-byte p1, p1

    .line 87
    int-to-byte p2, p2

    .line 88
    const/4 v9, 0x7

    .line 89
    new-array v9, v9, [B

    .line 90
    .line 91
    aput-byte v7, v9, v4

    .line 92
    .line 93
    aput-byte v5, v9, v1

    .line 94
    .line 95
    aput-byte v8, v9, v2

    .line 96
    .line 97
    aput-byte p1, v9, v3

    .line 98
    .line 99
    aput-byte p3, v9, v0

    .line 100
    .line 101
    aput-byte p4, v9, v6

    .line 102
    .line 103
    const/4 p1, 0x6

    .line 104
    aput-byte p2, v9, p1

    .line 105
    .line 106
    const/16 p1, 0x20

    .line 107
    .line 108
    invoke-direct {p0, p1, v4, v9}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->sendAcmControlMessage(II[B)I

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 113
    .line 114
    const-string p3, "Invalid data bits: "

    .line 115
    .line 116
    invoke-static {p2, p3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 125
    .line 126
    const-string p3, "Invalid baud rate: "

    .line 127
    .line 128
    invoke-static {p1, p3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p2
.end method

.method public setRTS(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mRts:Z

    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->setDtrRts()V

    return-void
.end method
