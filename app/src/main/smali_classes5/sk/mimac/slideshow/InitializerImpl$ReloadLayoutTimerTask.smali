.class Lsk/mimac/slideshow/InitializerImpl$ReloadLayoutTimerTask;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/InitializerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReloadLayoutTimerTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/InitializerImpl$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsk/mimac/slideshow/InitializerImpl$ReloadLayoutTimerTask;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/InitializerImpl$ReloadLayoutTimerTask;->lambda$run$0()V

    return-void
.end method

.method private static synthetic lambda$run$0()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->resolveCurrentLayout(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->SCREEN_LAYOUT_REFRESH_WAIT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object v0

    new-instance v1, Lsk/mimac/slideshow/b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/ItemThread;->addToRunEventually(Lsk/mimac/slideshow/utils/InterruptableRunnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->resolveCurrentLayout(Z)V

    :goto_0
    return-void
.end method
