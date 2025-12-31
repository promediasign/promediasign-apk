.class public Lsk/mimac/slideshow/database/entity/KeyAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/database/entity/KeyAction$Action;
    }
.end annotation


# instance fields
.field private actionDown:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

.field private actionUp:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

.field private keyCode:I

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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public formatProperties()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsk/mimac/slideshow/database/entity/KeyAction;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Lsk/mimac/slideshow/database/entity/KeyAction;->actionDown:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    invoke-static {v3}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->access$000(Lsk/mimac/slideshow/database/entity/KeyAction$Action;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActionDown()Lsk/mimac/slideshow/database/entity/KeyAction$Action;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/KeyAction;->actionDown:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    return-object v0
.end method

.method public getActionUp()Lsk/mimac/slideshow/database/entity/KeyAction$Action;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/KeyAction;->actionUp:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    return-object v0
.end method

.method public getKeyCode()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/database/entity/KeyAction;->keyCode:I

    return v0
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

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/KeyAction;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public setActionDown(Lsk/mimac/slideshow/database/entity/KeyAction$Action;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/KeyAction;->actionDown:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    return-void
.end method

.method public setActionUp(Lsk/mimac/slideshow/database/entity/KeyAction$Action;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/KeyAction;->actionUp:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    return-void
.end method

.method public setKeyCode(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/database/entity/KeyAction;->keyCode:I

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

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/KeyAction;->properties:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyAction{keyCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lsk/mimac/slideshow/database/entity/KeyAction;->keyCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actionDown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/database/entity/KeyAction;->actionDown:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actionUp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/database/entity/KeyAction;->actionUp:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", properties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/database/entity/KeyAction;->properties:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
