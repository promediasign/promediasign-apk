.class public abstract Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static currentLayoutWrapper:Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private static afterScreenLayoutChange()V
    .locals 0

    invoke-static {}, Lsk/mimac/slideshow/rss/RssReader;->clearCache()V

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->reloadScreenLayout()V

    return-void
.end method

.method public static clearSetScreenLayout()V
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->isSetScreenLayout()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->forceReloadScheduledLayout()V

    return-void
.end method

.method public static forceReloadScheduledLayout()V
    .locals 3

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->getScreenLayoutForNow()Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->setScreenLayoutWrapper(Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;)V

    sget-object v0, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Current screen layout switched to \'{}\'"

    sget-object v2, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->currentLayoutWrapper:Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    invoke-interface {v2}, Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t clear set layout"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static getCurrentLayout()Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->currentLayoutWrapper:Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->resolveCurrentLayout(Z)V

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->currentLayoutWrapper:Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    return-object v0
.end method

.method public static getCurrentLayoutDirect()Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->currentLayoutWrapper:Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    return-object v0
.end method

.method private static getScreenLayoutForNow()Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;
    .locals 11

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->USE_SCREEN_LAYOUT_INTERVALS:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getAllWithIntervals()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->currentLayoutWrapper:Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v1, Lsk/mimac/slideshow/layout/IntervalScreenLayoutWrapper;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/database/entity/ScreenLayout;

    invoke-direct {v1, v0}, Lsk/mimac/slideshow/layout/IntervalScreenLayoutWrapper;-><init>(Lsk/mimac/slideshow/database/entity/ScreenLayout;)V

    return-object v1

    :cond_0
    new-instance v10, Lsk/mimac/slideshow/database/entity/ScreenLayout;

    invoke-interface {v1}, Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;->getId()Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lsk/mimac/slideshow/database/entity/ScreenLayout;-><init>(Ljava/lang/Integer;Ljava/lang/String;SFZZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lsk/mimac/slideshow/layout/IntervalScreenLayoutWrapper;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/database/entity/ScreenLayout;

    invoke-direct {v2, v0}, Lsk/mimac/slideshow/layout/IntervalScreenLayoutWrapper;-><init>(Lsk/mimac/slideshow/database/entity/ScreenLayout;)V

    return-object v2

    :cond_2
    :goto_0
    new-instance v1, Lsk/mimac/slideshow/layout/IntervalScreenLayoutWrapper;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/database/entity/ScreenLayout;

    invoke-direct {v1, v0}, Lsk/mimac/slideshow/layout/IntervalScreenLayoutWrapper;-><init>(Lsk/mimac/slideshow/database/entity/ScreenLayout;)V

    return-object v1

    :cond_3
    sget-object v0, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->LOG:Lorg/slf4j/Logger;

    const-string v1, "No screen layout with set interval found, switching to schedule"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    move-result-object v0

    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getLayoutForDateTime(Lj$/time/LocalDateTime;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->get(I)Lsk/mimac/slideshow/database/entity/ScreenLayout;

    move-result-object v0

    new-instance v1, Lsk/mimac/slideshow/layout/EntityScreenLayoutWrapper;

    invoke-direct {v1, v0}, Lsk/mimac/slideshow/layout/EntityScreenLayoutWrapper;-><init>(Lsk/mimac/slideshow/database/entity/ScreenLayout;)V

    return-object v1

    :cond_5
    new-instance v0, Lsk/mimac/slideshow/layout/EntityScreenLayoutWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/layout/EntityScreenLayoutWrapper;-><init>(Lsk/mimac/slideshow/database/entity/ScreenLayout;)V

    return-object v0
.end method

.method public static isSetScreenLayout()Z
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->currentLayoutWrapper:Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lsk/mimac/slideshow/layout/EntityScreenLayoutWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->currentLayoutWrapper:Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lsk/mimac/slideshow/layout/IntervalScreenLayoutWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static processScreenPower()V
    .locals 3

    invoke-static {}, Lsk/mimac/slideshow/hardware/HardwareFacadeHolder;->getInstance()Lsk/mimac/slideshow/hardware/HardwareFacade;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/hardware/HardwareFacade;->getScreenPower()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->currentLayoutWrapper:Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v2, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->currentLayoutWrapper:Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    invoke-interface {v2}, Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;->isPowerOff()Z

    move-result v2

    if-ne v1, v2, :cond_0

    sget-object v1, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->currentLayoutWrapper:Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    invoke-interface {v1}, Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;->isPowerOff()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/hardware/HardwareFacade;->setScreenPower(Z)Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public static reloadCurrentLayout()V
    .locals 4

    sget-object v0, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->currentLayoutWrapper:Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    invoke-interface {v0}, Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :try_start_0
    sget-object v2, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->currentLayoutWrapper:Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v3

    invoke-virtual {v3, v1}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->get(I)Lsk/mimac/slideshow/database/entity/ScreenLayout;

    move-result-object v1

    invoke-interface {v2, v1}, Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;->setScreenLayout(Lsk/mimac/slideshow/database/entity/ScreenLayout;)V

    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->afterScreenLayoutChange()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t set layout \'{}\'"

    invoke-interface {v2, v3, v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static resolveCurrentLayout(Z)V
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->currentLayoutWrapper:Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;->shouldStillPlay()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->getScreenLayoutForNow()Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->currentLayoutWrapper:Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    sget-object v1, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Current screenLayout switched to \'{}\'"

    invoke-interface {v0}, Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p0, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->afterScreenLayoutChange()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t set current layout"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setScreenLayout(I)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->currentLayoutWrapper:Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    instance-of v1, v0, Lsk/mimac/slideshow/layout/EntityScreenLayoutWrapper;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;->getId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->currentLayoutWrapper:Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    invoke-interface {v0}, Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p0, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->get(I)Lsk/mimac/slideshow/database/entity/ScreenLayout;

    move-result-object v0

    new-instance v1, Lsk/mimac/slideshow/layout/IgnoreChangeEntityScreenLayoutWrapper;

    invoke-direct {v1, v0}, Lsk/mimac/slideshow/layout/IgnoreChangeEntityScreenLayoutWrapper;-><init>(Lsk/mimac/slideshow/database/entity/ScreenLayout;)V

    sput-object v1, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->currentLayoutWrapper:Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    sget-object v1, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Current screen layout manually set to \'{}\'"

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->afterScreenLayoutChange()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v1, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->LOG:Lorg/slf4j/Logger;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "Can\'t set layout \'{}\'"

    invoke-interface {v1, v2, p0, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public static setScreenLayout(II)V
    .locals 4

    .line 2
    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->get(I)Lsk/mimac/slideshow/database/entity/ScreenLayout;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Current screen layout manually set to \'{}\'"

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lsk/mimac/slideshow/layout/TimeoutEntityScreenLayoutWrapper;

    invoke-direct {v1, v0, p1}, Lsk/mimac/slideshow/layout/TimeoutEntityScreenLayoutWrapper;-><init>(Lsk/mimac/slideshow/database/entity/ScreenLayout;I)V

    invoke-static {v1}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->setScreenLayoutWrapper(Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->LOG:Lorg/slf4j/Logger;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "Can\'t set layout \'{}\'"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static setScreenLayoutWrapper(Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;)V
    .locals 0

    sput-object p0, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->currentLayoutWrapper:Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->afterScreenLayoutChange()V

    return-void
.end method
