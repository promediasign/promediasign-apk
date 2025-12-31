.class public Lsk/mimac/slideshow/config/model/PanelType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    reference = "http://slideshow.digital/configuration/v4_9"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "PanelType"
.end annotation


# instance fields
.field private animationLength:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "animationLength"
        required = true
    .end annotation
.end field

.field private animationType:Lsk/mimac/slideshow/config/model/AnimationTypeType;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "animationType"
        required = true
    .end annotation
.end field

.field private backgroundColor:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "backgroundColor"
        required = true
    .end annotation
.end field

.field private displayId:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "displayId"
        required = false
    .end annotation
.end field

.field private height:D
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "height"
        required = true
    .end annotation
.end field

.field private id:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "id"
        required = true
    .end annotation
.end field

.field private mainPanel:Z
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "mainPanel"
        required = true
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "name"
        required = true
    .end annotation
.end field

.field private property:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/PropertyType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        entry = "property"
        inline = true
        name = "property"
        required = false
    .end annotation
.end field

.field private schedule:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/PlaylistScheduleType;",
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

.field private width:D
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "width"
        required = true
    .end annotation
.end field

.field private x:D
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "x"
        required = true
    .end annotation
.end field

.field private y:D
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "y"
        required = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnimationLength()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/config/model/PanelType;->animationLength:I

    return v0
.end method

.method public getAnimationType()Lsk/mimac/slideshow/config/model/AnimationTypeType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/PanelType;->animationType:Lsk/mimac/slideshow/config/model/AnimationTypeType;

    return-object v0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/PanelType;->backgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/PanelType;->displayId:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()D
    .locals 2

    iget-wide v0, p0, Lsk/mimac/slideshow/config/model/PanelType;->height:D

    return-wide v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/config/model/PanelType;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/PanelType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/PropertyType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/PanelType;->property:Ljava/util/List;

    return-object v0
.end method

.method public getSchedule()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/PlaylistScheduleType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/PanelType;->schedule:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()D
    .locals 2

    iget-wide v0, p0, Lsk/mimac/slideshow/config/model/PanelType;->width:D

    return-wide v0
.end method

.method public getX()D
    .locals 2

    iget-wide v0, p0, Lsk/mimac/slideshow/config/model/PanelType;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    iget-wide v0, p0, Lsk/mimac/slideshow/config/model/PanelType;->y:D

    return-wide v0
.end method

.method public isMainPanel()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/config/model/PanelType;->mainPanel:Z

    return v0
.end method

.method public setAnimationLength(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/config/model/PanelType;->animationLength:I

    return-void
.end method

.method public setAnimationType(Lsk/mimac/slideshow/config/model/AnimationTypeType;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/PanelType;->animationType:Lsk/mimac/slideshow/config/model/AnimationTypeType;

    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/PanelType;->backgroundColor:Ljava/lang/String;

    return-void
.end method

.method public setDisplayId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/PanelType;->displayId:Ljava/lang/String;

    return-void
.end method

.method public setHeight(D)V
    .locals 0

    iput-wide p1, p0, Lsk/mimac/slideshow/config/model/PanelType;->height:D

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/config/model/PanelType;->id:I

    return-void
.end method

.method public setMainPanel(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/config/model/PanelType;->mainPanel:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/PanelType;->name:Ljava/lang/String;

    return-void
.end method

.method public setProperty(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/PropertyType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/PanelType;->property:Ljava/util/List;

    return-void
.end method

.method public setSchedule(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/PlaylistScheduleType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/PanelType;->schedule:Ljava/util/List;

    return-void
.end method

.method public setWidth(D)V
    .locals 0

    iput-wide p1, p0, Lsk/mimac/slideshow/config/model/PanelType;->width:D

    return-void
.end method

.method public setX(D)V
    .locals 0

    iput-wide p1, p0, Lsk/mimac/slideshow/config/model/PanelType;->x:D

    return-void
.end method

.method public setY(D)V
    .locals 0

    iput-wide p1, p0, Lsk/mimac/slideshow/config/model/PanelType;->y:D

    return-void
.end method
