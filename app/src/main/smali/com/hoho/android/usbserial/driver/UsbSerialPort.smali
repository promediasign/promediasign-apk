.class public interface abstract Lcom/hoho/android/usbserial/driver/UsbSerialPort;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;,
        Lcom/hoho/android/usbserial/driver/UsbSerialPort$Parity;
    }
.end annotation


# static fields
.field public static final DATABITS_5:I = 0x5

.field public static final DATABITS_6:I = 0x6

.field public static final DATABITS_7:I = 0x7

.field public static final DATABITS_8:I = 0x8

.field public static final PARITY_EVEN:I = 0x2

.field public static final PARITY_MARK:I = 0x3

.field public static final PARITY_NONE:I = 0x0

.field public static final PARITY_ODD:I = 0x1

.field public static final PARITY_SPACE:I = 0x4

.field public static final STOPBITS_1:I = 0x1

.field public static final STOPBITS_1_5:I = 0x3

.field public static final STOPBITS_2:I = 0x2


# virtual methods
.method public abstract close()V
.end method

.method public abstract getCD()Z
.end method

.method public abstract getCTS()Z
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

.method public abstract getDSR()Z
.end method

.method public abstract getDTR()Z
.end method

.method public abstract getDevice()Landroid/hardware/usb/UsbDevice;
.end method

.method public abstract getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
.end method

.method public abstract getPortNumber()I
.end method

.method public abstract getRI()Z
.end method

.method public abstract getRTS()Z
.end method

.method public abstract getReadEndpoint()Landroid/hardware/usb/UsbEndpoint;
.end method

.method public abstract getSerial()Ljava/lang/String;
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

.method public abstract getWriteEndpoint()Landroid/hardware/usb/UsbEndpoint;
.end method

.method public abstract isOpen()Z
.end method

.method public abstract open(Landroid/hardware/usb/UsbDeviceConnection;)V
.end method

.method public abstract purgeHwBuffers(ZZ)V
.end method

.method public abstract read([BI)I
.end method

.method public abstract setBreak(Z)V
.end method

.method public abstract setDTR(Z)V
.end method

.method public abstract setParameters(IIII)V
.end method

.method public abstract setRTS(Z)V
.end method

.method public abstract write([BI)V
.end method
