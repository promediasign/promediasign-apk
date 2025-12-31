.class public final synthetic Lcom/hoho/android/usbserial/driver/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;


# direct methods
.method public synthetic constructor <init>(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/a;->a:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/a;->a:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;

    invoke-static {v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->a(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;)V

    return-void
.end method
