.class public final synthetic LB/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, LB/c;->a:I

    iput-object p1, p0, LB/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, LB/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LB/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LB/c;->b:Ljava/lang/Object;

    check-cast v0, Ludt/UDTSender;

    invoke-static {v0}, Ludt/UDTSender;->a(Ludt/UDTSender;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LB/c;->b:Ljava/lang/Object;

    check-cast v0, Ludt/UDTReceiver;

    invoke-static {v0}, Ludt/UDTReceiver;->a(Ludt/UDTReceiver;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LB/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->L(Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;)V

    return-void

    :pswitch_3
    iget-object v0, p0, LB/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :pswitch_4
    iget-object v0, p0, LB/c;->b:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/communication/Community;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Community;->estimateLan()V

    return-void

    :pswitch_5
    iget-object v0, p0, LB/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroidx/core/app/ActivityCompat;->a(Landroid/app/Activity;)V

    return-void

    :pswitch_6
    iget-object v0, p0, LB/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/AlertDialog;

    invoke-static {v0}, Lsk/mimac/slideshow/ScreenPasswordHelper;->a(Landroid/app/AlertDialog;)V

    return-void

    :pswitch_7
    iget-object v0, p0, LB/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lsk/mimac/slideshow/ApiService;->c(Ljava/util/concurrent/Callable;)V

    return-void

    :pswitch_8
    iget-object v0, p0, LB/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/ProcessLifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/ProcessLifecycleOwner;->a(Landroidx/lifecycle/ProcessLifecycleOwner;)V

    return-void

    :pswitch_9
    iget-object v0, p0, LB/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    return-void

    :pswitch_a
    iget-object v0, p0, LB/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/ComponentDialog;

    invoke-static {v0}, Landroidx/activity/ComponentDialog;->a(Landroidx/activity/ComponentDialog;)V

    return-void

    :pswitch_b
    iget-object v0, p0, LB/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/ComponentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->invalidateMenu()V

    return-void

    :pswitch_c
    iget-object v0, p0, LB/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->a(Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;)V

    return-void

    :pswitch_d
    iget-object v0, p0, LB/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
