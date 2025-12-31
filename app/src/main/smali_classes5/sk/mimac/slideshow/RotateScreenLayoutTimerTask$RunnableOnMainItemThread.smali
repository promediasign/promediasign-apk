.class Lsk/mimac/slideshow/RotateScreenLayoutTimerTask$RunnableOnMainItemThread;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/utils/InterruptableRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/RotateScreenLayoutTimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunnableOnMainItemThread"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/RotateScreenLayoutTimerTask$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsk/mimac/slideshow/RotateScreenLayoutTimerTask$RunnableOnMainItemThread;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/RotateScreenLayoutTimerTask$RunnableOnMainItemThread;->lambda$run$0()V

    return-void
.end method

.method private static synthetic lambda$run$0()V
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/GuiCreator;->rotateScreenLayout()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lsk/mimac/slideshow/RotateScreenLayoutTimerTask;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Changing screen layout"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    new-instance v0, Lsk/mimac/slideshow/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/a;-><init>(I)V

    invoke-static {v0}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
