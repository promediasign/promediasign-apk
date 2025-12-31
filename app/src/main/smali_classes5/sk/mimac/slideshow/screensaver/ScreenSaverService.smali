.class public abstract Lsk/mimac/slideshow/screensaver/ScreenSaverService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/screensaver/ScreenSaverService$ScreenSaverTimerTask;,
        Lsk/mimac/slideshow/screensaver/ScreenSaverService$ScreenSaverLayoutWrapper;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/screensaver/ScreenSaverService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/screensaver/ScreenSaverService;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public static check()V
    .locals 4

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->SCREENSAVER_AFTER_MINUTES:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lsk/mimac/slideshow/UserActivityHolder;->getSecondsSinceLastActivity()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    if-le v1, v0, :cond_2

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->getCurrentLayoutDirect()Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    move-result-object v0

    instance-of v0, v0, Lsk/mimac/slideshow/screensaver/ScreenSaverService$ScreenSaverLayoutWrapper;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getScreenSaver()Lsk/mimac/slideshow/database/entity/ScreenLayout;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v1, Lsk/mimac/slideshow/screensaver/ScreenSaverService;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Activating screensaver layout \'{}\'"

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lsk/mimac/slideshow/screensaver/ScreenSaverService$ScreenSaverLayoutWrapper;

    invoke-direct {v1, v0}, Lsk/mimac/slideshow/screensaver/ScreenSaverService$ScreenSaverLayoutWrapper;-><init>(Lsk/mimac/slideshow/database/entity/ScreenLayout;)V

    invoke-static {v1}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->setScreenLayoutWrapper(Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/screensaver/ScreenSaverService;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t activate screensaver"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static init(Ljava/util/Timer;)V
    .locals 6

    new-instance v1, Lsk/mimac/slideshow/screensaver/ScreenSaverService$ScreenSaverTimerTask;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lsk/mimac/slideshow/screensaver/ScreenSaverService$ScreenSaverTimerTask;-><init>(Lsk/mimac/slideshow/screensaver/ScreenSaverService$1;)V

    const-wide/16 v2, 0x4e20

    const-wide/32 v4, 0xea60

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public static onActivity()V
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->getCurrentLayoutDirect()Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    move-result-object v0

    instance-of v0, v0, Lsk/mimac/slideshow/screensaver/ScreenSaverService$ScreenSaverLayoutWrapper;

    if-eqz v0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->clearSetScreenLayout()V

    :cond_0
    return-void
.end method
