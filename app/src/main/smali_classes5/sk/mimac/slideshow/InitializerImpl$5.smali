.class Lsk/mimac/slideshow/InitializerImpl$5;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk/mimac/slideshow/InitializerImpl;->setTimers(Ljava/util/Timer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/InitializerImpl;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/InitializerImpl;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/InitializerImpl$5;->this$0:Lsk/mimac/slideshow/InitializerImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/InitializerImpl$5;->lambda$run$0()V

    return-void
.end method

.method private static synthetic lambda$run$0()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "sk.mimac.slideshow.BackgroundService.PING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    new-instance v1, Lsk/mimac/slideshow/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lsk/mimac/slideshow/a;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
