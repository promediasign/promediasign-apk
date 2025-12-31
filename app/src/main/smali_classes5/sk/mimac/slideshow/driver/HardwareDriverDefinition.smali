.class public Lsk/mimac/slideshow/driver/HardwareDriverDefinition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/driver/HardwareDriverDefinition$DriverInfo;,
        Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;,
        Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;,
        Lsk/mimac/slideshow/driver/HardwareDriverDefinition$ResponseMapping;,
        Lsk/mimac/slideshow/driver/HardwareDriverDefinition$RequestMapping;,
        Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;,
        Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Protocol;
    }
.end annotation


# instance fields
.field private commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;",
            ">;"
        }
    .end annotation
.end field

.field private communication:Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;

.field private driverInfo:Lsk/mimac/slideshow/driver/HardwareDriverDefinition$DriverInfo;

.field private encoding:Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

.field private pollingInterval:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;->commands:Ljava/util/List;

    return-object v0
.end method

.method public getCommunication()Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;->communication:Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;

    return-object v0
.end method

.method public getDriverInfo()Lsk/mimac/slideshow/driver/HardwareDriverDefinition$DriverInfo;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;->driverInfo:Lsk/mimac/slideshow/driver/HardwareDriverDefinition$DriverInfo;

    return-object v0
.end method

.method public getEncoding()Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;->encoding:Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

    return-object v0
.end method

.method public getPollingInterval()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;->pollingInterval:I

    return v0
.end method

.method public setCommands(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;->commands:Ljava/util/List;

    return-void
.end method

.method public setCommunication(Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;->communication:Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;

    return-void
.end method

.method public setDriverInfo(Lsk/mimac/slideshow/driver/HardwareDriverDefinition$DriverInfo;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;->driverInfo:Lsk/mimac/slideshow/driver/HardwareDriverDefinition$DriverInfo;

    return-void
.end method

.method public setEncoding(Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;->encoding:Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

    return-void
.end method

.method public setPollingInterval(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;->pollingInterval:I

    return-void
.end method
