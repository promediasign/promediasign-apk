.class public Lsk/mimac/slideshow/layout/EntityScreenLayoutWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private screenLayout:Lsk/mimac/slideshow/database/entity/ScreenLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/layout/EntityScreenLayoutWrapper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/layout/EntityScreenLayoutWrapper;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lsk/mimac/slideshow/database/entity/ScreenLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/layout/EntityScreenLayoutWrapper;->screenLayout:Lsk/mimac/slideshow/database/entity/ScreenLayout;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/layout/EntityScreenLayoutWrapper;->screenLayout:Lsk/mimac/slideshow/database/entity/ScreenLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/layout/EntityScreenLayoutWrapper;->screenLayout:Lsk/mimac/slideshow/database/entity/ScreenLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRotation()S
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/layout/EntityScreenLayoutWrapper;->screenLayout:Lsk/mimac/slideshow/database/entity/ScreenLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getRotation()S

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPowerOff()Z
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/layout/EntityScreenLayoutWrapper;->screenLayout:Lsk/mimac/slideshow/database/entity/ScreenLayout;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->isPowerOff()Z

    move-result v0

    return v0
.end method

.method public setScreenLayout(Lsk/mimac/slideshow/database/entity/ScreenLayout;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/layout/EntityScreenLayoutWrapper;->screenLayout:Lsk/mimac/slideshow/database/entity/ScreenLayout;

    return-void
.end method

.method public shouldStillPlay()Z
    .locals 4

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->USE_SCREEN_LAYOUT_INTERVALS:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lsk/mimac/slideshow/layout/EntityScreenLayoutWrapper;->screenLayout:Lsk/mimac/slideshow/database/entity/ScreenLayout;

    if-nez v0, :cond_2

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    move-result-object v0

    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getLayoutForDateTime(Lj$/time/LocalDateTime;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    move-result-object v2

    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getLayoutForDateTime(Lj$/time/LocalDateTime;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_0
    sget-object v2, Lsk/mimac/slideshow/layout/EntityScreenLayoutWrapper;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t get screen layout for now"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method
