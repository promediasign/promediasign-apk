.class Lsk/mimac/slideshow/serial/SerialServiceImpl$DefaultListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/serial/SerialServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultListener"
.end annotation


# instance fields
.field private final readListener:Lsk/mimac/slideshow/serial/SerialService$SerialReadListener;

.field final synthetic this$0:Lsk/mimac/slideshow/serial/SerialServiceImpl;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/serial/SerialServiceImpl;Lsk/mimac/slideshow/serial/SerialService$SerialReadListener;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl$DefaultListener;->this$0:Lsk/mimac/slideshow/serial/SerialServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl$DefaultListener;->readListener:Lsk/mimac/slideshow/serial/SerialService$SerialReadListener;

    return-void
.end method


# virtual methods
.method public onNewData([B)V
    .locals 3

    invoke-static {}, Lsk/mimac/slideshow/serial/SerialServiceImpl;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Read {} bytes"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl$DefaultListener;->readListener:Lsk/mimac/slideshow/serial/SerialService$SerialReadListener;

    invoke-interface {v0, p1}, Lsk/mimac/slideshow/serial/SerialService$SerialReadListener;->onNewData([B)V

    return-void
.end method

.method public onRunError(Ljava/lang/Exception;)V
    .locals 2

    invoke-static {}, Lsk/mimac/slideshow/serial/SerialServiceImpl;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Error while reading from serial port"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl$DefaultListener;->this$0:Lsk/mimac/slideshow/serial/SerialServiceImpl;

    invoke-static {p1}, Lsk/mimac/slideshow/serial/SerialServiceImpl;->access$100(Lsk/mimac/slideshow/serial/SerialServiceImpl;)V

    return-void
.end method
