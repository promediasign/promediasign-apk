.class public Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/driver/HardwareDriverDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Communication"
.end annotation


# instance fields
.field private baudrate:I

.field private dataBits:I

.field private parity:Z

.field private path:Ljava/lang/String;

.field private protocol:Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;

.field private stopBits:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaudrate()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;->baudrate:I

    return v0
.end method

.method public getDataBits()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;->dataBits:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;->protocol:Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;

    return-object v0
.end method

.method public getStopBits()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;->stopBits:I

    return v0
.end method

.method public isParity()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;->parity:Z

    return v0
.end method

.method public setBaudrate(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;->baudrate:I

    return-void
.end method

.method public setDataBits(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;->dataBits:I

    return-void
.end method

.method public setParity(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;->parity:Z

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;->path:Ljava/lang/String;

    return-void
.end method

.method public setProtocol(Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;->protocol:Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;

    return-void
.end method

.method public setStopBits(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;->stopBits:I

    return-void
.end method
