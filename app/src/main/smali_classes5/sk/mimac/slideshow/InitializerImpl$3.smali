.class Lsk/mimac/slideshow/InitializerImpl$3;
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

    iput-object p1, p0, Lsk/mimac/slideshow/InitializerImpl$3;->this$0:Lsk/mimac/slideshow/InitializerImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    invoke-virtual {v0}, Lsk/mimac/slideshow/display/SlideshowActivity;->getDisplayHelper()Lsk/mimac/slideshow/display/DisplayHelper;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/display/DisplayHelper;->checkDrawer()V

    return-void
.end method
