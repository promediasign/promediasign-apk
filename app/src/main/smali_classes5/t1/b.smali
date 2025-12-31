.class public final synthetic Lt1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/utils/InterruptableRunnable;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/utils/InterruptableConsumer;

.field public final synthetic b:Lsk/mimac/slideshow/gui/DisplayItemThread;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/utils/InterruptableConsumer;Lsk/mimac/slideshow/gui/DisplayItemThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt1/b;->a:Lsk/mimac/slideshow/utils/InterruptableConsumer;

    iput-object p2, p0, Lt1/b;->b:Lsk/mimac/slideshow/gui/DisplayItemThread;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt1/b;->a:Lsk/mimac/slideshow/utils/InterruptableConsumer;

    iget-object v1, p0, Lt1/b;->b:Lsk/mimac/slideshow/gui/DisplayItemThread;

    invoke-static {v0, v1}, Lsk/mimac/slideshow/userinput/ActionHelper;->f(Lsk/mimac/slideshow/utils/InterruptableConsumer;Lsk/mimac/slideshow/gui/DisplayItemThread;)V

    return-void
.end method
