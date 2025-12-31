.class public Lsk/mimac/slideshow/config/model/ScreenLayoutType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    reference = "http://slideshow.digital/configuration/v4_9"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "ScreenLayoutType"
.end annotation


# instance fields
.field private id:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "id"
        required = true
    .end annotation
.end field

.field private interval:Ljava/lang/Double;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "interval"
        required = false
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "name"
        required = true
    .end annotation
.end field

.field private panel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/PanelType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        entry = "panel"
        inline = true
        name = "panel"
    .end annotation
.end field

.field private powerOff:Ljava/lang/Boolean;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "powerOff"
        required = false
    .end annotation
.end field

.field private rotation:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "rotation"
        required = true
    .end annotation
.end field

.field private schedule:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        entry = "schedule"
        inline = true
        name = "schedule"
        required = false
    .end annotation
.end field

.field private screensaver:Ljava/lang/Boolean;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "screensaver"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->id:I

    return v0
.end method

.method public getInterval()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->interval:Ljava/lang/Double;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPanel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/PanelType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->panel:Ljava/util/List;

    return-object v0
.end method

.method public getPowerOff()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->powerOff:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->rotation:I

    return v0
.end method

.method public getSchedule()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->schedule:Ljava/util/List;

    return-object v0
.end method

.method public getScreensaver()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->screensaver:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->id:I

    return-void
.end method

.method public setInterval(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->interval:Ljava/lang/Double;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->name:Ljava/lang/String;

    return-void
.end method

.method public setPanel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/PanelType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->panel:Ljava/util/List;

    return-void
.end method

.method public setPowerOff(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->powerOff:Ljava/lang/Boolean;

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->rotation:I

    return-void
.end method

.method public setSchedule(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/ScreenLayoutScheduleType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->schedule:Ljava/util/List;

    return-void
.end method

.method public setScreensaver(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/ScreenLayoutType;->screensaver:Ljava/lang/Boolean;

    return-void
.end method
