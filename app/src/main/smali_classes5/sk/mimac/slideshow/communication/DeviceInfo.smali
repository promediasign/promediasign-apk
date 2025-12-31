.class public Lsk/mimac/slideshow/communication/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/communication/DeviceInfo$PanelInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lsk/mimac/slideshow/communication/DeviceInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TIME_FORMATTER:Lj$/time/format/DateTimeFormatter;


# instance fields
.field private appVersion:Ljava/lang/String;

.field private appVersionCode:I

.field private currentPanels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/communication/DeviceInfo$PanelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private deviceId:Ljava/lang/String;

.field private deviceMid:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private ipAddress:Ljava/lang/String;

.field private lastContact:J

.field private roundTrip:Ljava/lang/Integer;

.field private sameLan:Z

.field private webUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HH:mm:ss"

    invoke-static {v0}, Lj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/communication/DeviceInfo;->TIME_FORMATTER:Lj$/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->currentPanels:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lsk/mimac/slideshow/communication/DeviceInfo;

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/communication/DeviceInfo;->compareTo(Lsk/mimac/slideshow/communication/DeviceInfo;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lsk/mimac/slideshow/communication/DeviceInfo;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->deviceName:Ljava/lang/String;

    iget-object p1, p1, Lsk/mimac/slideshow/communication/DeviceInfo;->deviceName:Ljava/lang/String;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lsk/mimac/slideshow/communication/DeviceInfo;

    iget-object v0, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->deviceId:Ljava/lang/String;

    iget-object p1, p1, Lsk/mimac/slideshow/communication/DeviceInfo;->deviceId:Ljava/lang/String;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionCode()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->appVersionCode:I

    return v0
.end method

.method public getCurrentPanels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/communication/DeviceInfo$PanelInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->currentPanels:Ljava/util/List;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceMid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->deviceMid:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLastContact()J
    .locals 2

    iget-wide v0, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->lastContact:J

    return-wide v0
.end method

.method public getLastContactTime()Ljava/lang/String;
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/communication/DeviceInfo;->TIME_FORMATTER:Lj$/time/format/DateTimeFormatter;

    iget-wide v1, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->lastContact:J

    invoke-static {v1, v2}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v1

    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/time/Instant;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/ZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lj$/time/LocalTime;->withNano(I)Lj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoundTrip()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->roundTrip:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWebUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->webUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->deviceId:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSameLan()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->sameLan:Z

    return v0
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setAppVersionCode(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->appVersionCode:I

    return-void
.end method

.method public setCurrentPanels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/communication/DeviceInfo$PanelInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->currentPanels:Ljava/util/List;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceMid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->deviceMid:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->ipAddress:Ljava/lang/String;

    return-void
.end method

.method public setLastContact(J)V
    .locals 0

    iput-wide p1, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->lastContact:J

    return-void
.end method

.method public setRoundTrip(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->roundTrip:Ljava/lang/Integer;

    return-void
.end method

.method public setSameLan(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->sameLan:Z

    return-void
.end method

.method public setWebUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->webUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{deviceName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', appVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', appVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->appVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ipAddress=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', webUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->webUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', deviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', deviceMid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->deviceMid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', lastContact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->lastContact:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", roundTrip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->roundTrip:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sameLan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->sameLan:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", currentPanels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/DeviceInfo;->currentPanels:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
