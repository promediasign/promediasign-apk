.class public Lsk/mimac/slideshow/database/entity/ScreenLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private id:Ljava/lang/Integer;

.field private interval:F

.field private name:Ljava/lang/String;

.field private powerOff:Z

.field private rotation:S

.field private screenSaver:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;SFZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->id:Ljava/lang/Integer;

    iput-object p2, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->name:Ljava/lang/String;

    iput-short p3, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->rotation:S

    iput p4, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->interval:F

    iput-boolean p5, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->screenSaver:Z

    iput-boolean p6, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->powerOff:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;SFZZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->name:Ljava/lang/String;

    iput-short p2, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->rotation:S

    iput p3, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->interval:F

    iput-boolean p4, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->screenSaver:Z

    iput-boolean p5, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->powerOff:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lsk/mimac/slideshow/database/entity/ScreenLayout;

    iget-object v2, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->id:Ljava/lang/Integer;

    iget-object p1, p1, Lsk/mimac/slideshow/database/entity/ScreenLayout;->id:Ljava/lang/Integer;

    if-eq v2, p1, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInterval()F
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->interval:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()S
    .locals 1

    iget-short v0, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->rotation:S

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->id:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x14f

    add-int/2addr v1, v0

    return v1
.end method

.method public isPowerOff()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->powerOff:Z

    return v0
.end method

.method public isScreenSaver()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->screenSaver:Z

    return v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setInterval(F)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->interval:F

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->name:Ljava/lang/String;

    return-void
.end method

.method public setRotation(S)V
    .locals 0

    iput-short p1, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->rotation:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ScreenLayout{id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->id:Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", name=\'"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->name:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\', rotation="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-short v1, p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;->rotation:S

    .line 29
    .line 30
    const/16 v2, 0x7d

    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->r(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
