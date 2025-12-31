.class public final synthetic Lsk/mimac/slideshow/serial/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/hardware/usb/UsbManager;

.field public final synthetic b:Lcom/hoho/android/usbserial/driver/UsbSerialDriver;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/usb/UsbManager;Lcom/hoho/android/usbserial/driver/UsbSerialDriver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/serial/a;->a:Landroid/hardware/usb/UsbManager;

    iput-object p2, p0, Lsk/mimac/slideshow/serial/a;->b:Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/serial/a;->a:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lsk/mimac/slideshow/serial/a;->b:Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    invoke-static {v0, v1}, Lsk/mimac/slideshow/serial/UsbSerialHelper;->a(Landroid/hardware/usb/UsbManager;Lcom/hoho/android/usbserial/driver/UsbSerialDriver;)V

    return-void
.end method
