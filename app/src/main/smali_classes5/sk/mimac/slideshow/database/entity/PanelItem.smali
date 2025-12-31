.class public Lsk/mimac/slideshow/database/entity/PanelItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private animationLength:I

.field private animationType:Lsk/mimac/slideshow/enums/TransitionType;

.field private backgroundColor:Ljava/lang/String;

.field private displayId:Ljava/lang/String;

.field private displayOrder:I

.field private height:F

.field private id:Ljava/lang/Integer;

.field private mainPanel:Z

.field private name:Ljava/lang/String;

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private screenLayoutId:Ljava/lang/Integer;

.field private width:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->properties:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;FFFFZLsk/mimac/slideshow/enums/TransitionType;ILjava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->properties:Ljava/util/Map;

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->screenLayoutId:Ljava/lang/Integer;

    iput-object p2, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->name:Ljava/lang/String;

    iput-object p3, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->backgroundColor:Ljava/lang/String;

    iput p4, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->x:F

    iput p5, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->y:F

    iput p6, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->width:F

    iput p7, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->height:F

    iput-boolean p8, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->mainPanel:Z

    iput-object p9, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->animationType:Lsk/mimac/slideshow/enums/TransitionType;

    iput p10, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->animationLength:I

    iput-object p11, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->displayId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lsk/mimac/slideshow/database/entity/PanelItem;

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->id:Ljava/lang/Integer;

    iget-object p1, p1, Lsk/mimac/slideshow/database/entity/PanelItem;->id:Ljava/lang/Integer;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAnimationLength()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->animationLength:I

    return v0
.end method

.method public getAnimationType()Lsk/mimac/slideshow/enums/TransitionType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->animationType:Lsk/mimac/slideshow/enums/TransitionType;

    return-object v0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->backgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->displayId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayOrder()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->displayOrder:I

    return v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->height:F

    return v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getScreenLayoutId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->screenLayoutId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->width:F

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->y:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->id:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    const/16 v1, 0x229

    add-int/2addr v1, v0

    return v1
.end method

.method public isMainPanel()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->mainPanel:Z

    return v0
.end method

.method public setAnimationLength(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->animationLength:I

    return-void
.end method

.method public setAnimationType(Lsk/mimac/slideshow/enums/TransitionType;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->animationType:Lsk/mimac/slideshow/enums/TransitionType;

    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->backgroundColor:Ljava/lang/String;

    return-void
.end method

.method public setDisplayId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->displayId:Ljava/lang/String;

    return-void
.end method

.method public setDisplayOrder(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->displayOrder:I

    return-void
.end method

.method public setHeight(F)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->height:F

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setMainPanel(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->mainPanel:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->properties:Ljava/util/Map;

    return-void
.end method

.method public setScreenLayoutId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->screenLayoutId:Ljava/lang/Integer;

    return-void
.end method

.method public setWidth(F)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->width:F

    return-void
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PanelItem{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsk/mimac/slideshow/database/entity/PanelItem;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
