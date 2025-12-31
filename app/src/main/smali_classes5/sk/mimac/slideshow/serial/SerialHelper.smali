.class abstract Lsk/mimac/slideshow/serial/SerialHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final baudRate:I

.field protected dataBits:I

.field protected isOpen:Z

.field protected final listener:Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;

.field protected parity:I

.field protected stopBits:I


# direct methods
.method public constructor <init>(Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lsk/mimac/slideshow/serial/SerialHelper;->stopBits:I

    const/16 v0, 0x8

    iput v0, p0, Lsk/mimac/slideshow/serial/SerialHelper;->dataBits:I

    const/4 v0, 0x0

    iput v0, p0, Lsk/mimac/slideshow/serial/SerialHelper;->parity:I

    iput-boolean v0, p0, Lsk/mimac/slideshow/serial/SerialHelper;->isOpen:Z

    iput-object p1, p0, Lsk/mimac/slideshow/serial/SerialHelper;->listener:Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;

    iput p2, p0, Lsk/mimac/slideshow/serial/SerialHelper;->baudRate:I

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract open()V
.end method

.method public abstract readLoop()V
.end method

.method public abstract send([B)Z
.end method

.method public setDataBits(I)Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/serial/SerialHelper;->isOpen:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput p1, p0, Lsk/mimac/slideshow/serial/SerialHelper;->dataBits:I

    const/4 p1, 0x1

    return p1
.end method

.method public setParity(I)Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/serial/SerialHelper;->isOpen:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput p1, p0, Lsk/mimac/slideshow/serial/SerialHelper;->parity:I

    const/4 p1, 0x1

    return p1
.end method

.method public setStopBits(I)Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/serial/SerialHelper;->isOpen:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput p1, p0, Lsk/mimac/slideshow/serial/SerialHelper;->stopBits:I

    const/4 p1, 0x1

    return p1
.end method
