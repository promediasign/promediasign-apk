.class public Lsk/mimac/slideshow/driver/HardwareDriverDefinition$DriverInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/driver/HardwareDriverDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DriverInfo"
.end annotation


# instance fields
.field private manufacturer:Ljava/lang/String;

.field private models:Ljava/lang/String;

.field private notes:Ljava/lang/String;

.field private series:Ljava/lang/String;

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getManufacturer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$DriverInfo;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModels()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$DriverInfo;->models:Ljava/lang/String;

    return-object v0
.end method

.method public getNotes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$DriverInfo;->notes:Ljava/lang/String;

    return-object v0
.end method

.method public getSeries()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$DriverInfo;->series:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$DriverInfo;->version:I

    return v0
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$DriverInfo;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public setModels(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$DriverInfo;->models:Ljava/lang/String;

    return-void
.end method

.method public setNotes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$DriverInfo;->notes:Ljava/lang/String;

    return-void
.end method

.method public setSeries(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$DriverInfo;->series:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$DriverInfo;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$DriverInfo;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$DriverInfo;->series:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$DriverInfo;->models:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$DriverInfo;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
