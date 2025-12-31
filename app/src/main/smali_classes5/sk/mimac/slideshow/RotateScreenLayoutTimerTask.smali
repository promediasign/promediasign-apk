.class public Lsk/mimac/slideshow/RotateScreenLayoutTimerTask;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/RotateScreenLayoutTimerTask$RunnableOnMainItemThread;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/RotateScreenLayoutTimerTask;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/RotateScreenLayoutTimerTask;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/RotateScreenLayoutTimerTask;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->ROTATE_LAYOUT_PERIODICALLY:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object v0

    new-instance v1, Lsk/mimac/slideshow/RotateScreenLayoutTimerTask$RunnableOnMainItemThread;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lsk/mimac/slideshow/RotateScreenLayoutTimerTask$RunnableOnMainItemThread;-><init>(Lsk/mimac/slideshow/RotateScreenLayoutTimerTask$1;)V

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/ItemThread;->addToRun(Lsk/mimac/slideshow/utils/InterruptableRunnable;)V

    :cond_0
    return-void
.end method
