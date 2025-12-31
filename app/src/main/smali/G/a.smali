.class public final synthetic LG/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, LG/a;->a:I

    iput-object p1, p0, LG/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget v0, p0, LG/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/face/FaceDetectionService;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/face/FaceDetectionService;->a(Lsk/mimac/slideshow/face/FaceDetectionService;Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v0, p1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
