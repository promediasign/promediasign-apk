.class public Lsk/mimac/slideshow/serial/SerialServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lsk/mimac/slideshow/serial/SerialService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/serial/SerialServiceImpl$DefaultListener;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final baudRate:I

.field private final dataBits:I

.field private final listener:Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;

.field private final parity:I

.field private final portPath:Ljava/lang/String;

.field private serialHelper:Lsk/mimac/slideshow/serial/SerialHelper;

.field private shouldRun:Z

.field private final stopBits:I

.field private final thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/serial/SerialServiceImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lsk/mimac/slideshow/serial/SerialService$SerialReadListener;Ljava/lang/String;IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->shouldRun:Z

    iput-object p2, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->portPath:Ljava/lang/String;

    iput p3, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->baudRate:I

    iput p4, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->dataBits:I

    iput p5, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->stopBits:I

    iput p6, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->parity:I

    new-instance p2, Lsk/mimac/slideshow/serial/SerialServiceImpl$DefaultListener;

    invoke-direct {p2, p0, p1}, Lsk/mimac/slideshow/serial/SerialServiceImpl$DefaultListener;-><init>(Lsk/mimac/slideshow/serial/SerialServiceImpl;Lsk/mimac/slideshow/serial/SerialService$SerialReadListener;)V

    iput-object p2, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->listener:Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;

    new-instance p1, Ljava/lang/Thread;

    const-string p2, "SerialReadThread"

    invoke-direct {p1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->thread:Ljava/lang/Thread;

    return-void
.end method

.method public static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static synthetic access$100(Lsk/mimac/slideshow/serial/SerialServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/serial/SerialServiceImpl;->disconnect()V

    return-void
.end method

.method private disconnect()V
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->serialHelper:Lsk/mimac/slideshow/serial/SerialHelper;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lsk/mimac/slideshow/serial/SerialHelper;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->serialHelper:Lsk/mimac/slideshow/serial/SerialHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/serial/SerialServiceImpl;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t close Serial connection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private setupSerialHelper(Ljava/lang/String;)V
    .locals 3

    const-string v0, "USB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lsk/mimac/slideshow/serial/UsbSerialHelper;

    iget-object v0, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->listener:Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;

    iget v1, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->baudRate:I

    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/serial/UsbSerialHelper;-><init>(Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;I)V

    iput-object p1, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->serialHelper:Lsk/mimac/slideshow/serial/SerialHelper;

    goto :goto_0

    :cond_0
    new-instance v0, Lsk/mimac/slideshow/serial/TtySerialHelper;

    iget-object v1, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->listener:Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;

    iget v2, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->baudRate:I

    invoke-direct {v0, v1, p1, v2}, Lsk/mimac/slideshow/serial/TtySerialHelper;-><init>(Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;Ljava/lang/String;I)V

    iput-object v0, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->serialHelper:Lsk/mimac/slideshow/serial/SerialHelper;

    :goto_0
    iget-object p1, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->serialHelper:Lsk/mimac/slideshow/serial/SerialHelper;

    iget v0, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->dataBits:I

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/serial/SerialHelper;->setDataBits(I)Z

    iget-object p1, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->serialHelper:Lsk/mimac/slideshow/serial/SerialHelper;

    iget v0, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->stopBits:I

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/serial/SerialHelper;->setStopBits(I)Z

    iget-object p1, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->serialHelper:Lsk/mimac/slideshow/serial/SerialHelper;

    iget v0, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->parity:I

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/serial/SerialHelper;->setParity(I)Z

    return-void
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->serialHelper:Lsk/mimac/slideshow/serial/SerialHelper;

    if-nez v0, :cond_0

    const-string v0, "Not started"

    return-object v0

    :cond_0
    iget-boolean v0, v0, Lsk/mimac/slideshow/serial/SerialHelper;->isOpen:Z

    if-eqz v0, :cond_1

    const-string v0, "Connected"

    goto :goto_0

    :cond_1
    const-string v0, "Disconnected"

    :goto_0
    return-object v0
.end method

.method public isActive()Z
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->serialHelper:Lsk/mimac/slideshow/serial/SerialHelper;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lsk/mimac/slideshow/serial/SerialHelper;->isOpen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run()V
    .locals 5

    :goto_0
    iget-boolean v0, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->shouldRun:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x3a98

    :try_start_0
    sget-object v2, Lsk/mimac/slideshow/serial/SerialServiceImpl;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Connecting to serial port={}"

    iget-object v4, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->portPath:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->portPath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lsk/mimac/slideshow/serial/SerialServiceImpl;->setupSerialHelper(Ljava/lang/String;)V

    iget-object v2, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->serialHelper:Lsk/mimac/slideshow/serial/SerialHelper;

    invoke-virtual {v2}, Lsk/mimac/slideshow/serial/SerialHelper;->open()V

    iget-object v2, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->serialHelper:Lsk/mimac/slideshow/serial/SerialHelper;

    invoke-virtual {v2}, Lsk/mimac/slideshow/serial/SerialHelper;->readLoop()V
    :try_end_0
    .catch Lsk/mimac/slideshow/serial/NoSerialAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_3

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/InterruptedException;

    if-eqz v3, :cond_0

    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_4

    :cond_0
    sget-object v3, Lsk/mimac/slideshow/serial/SerialServiceImpl;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Error in Serial connection"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    invoke-direct {p0}, Lsk/mimac/slideshow/serial/SerialServiceImpl;->disconnect()V

    goto :goto_0

    :goto_3
    sget-object v3, Lsk/mimac/slideshow/serial/SerialServiceImpl;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Error in Serial connection: {}"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catch_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_4
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->shouldRun:Z

    iget-object v0, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/serial/SerialServiceImpl;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Waiting for Serial stop interrupted"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lsk/mimac/slideshow/serial/SerialServiceImpl;->disconnect()V

    return-void
.end method

.method public writeMessage([B)Z
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/serial/SerialServiceImpl;->serialHelper:Lsk/mimac/slideshow/serial/SerialHelper;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lsk/mimac/slideshow/serial/SerialHelper;->isOpen:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/serial/SerialHelper;->send([B)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
