.class public final synthetic LW/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Process;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    iput v0, p0, LW/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LW/a;->b:I

    iput-object p2, p0, LW/a;->d:Ljava/lang/Object;

    iput-object p3, p0, LW/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, LW/a;->a:I

    iput-object p1, p0, LW/a;->d:Ljava/lang/Object;

    iput p2, p0, LW/a;->b:I

    iput-object p3, p0, LW/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 3
    iput p4, p0, LW/a;->a:I

    iput-object p1, p0, LW/a;->d:Ljava/lang/Object;

    iput-object p2, p0, LW/a;->c:Ljava/lang/Object;

    iput p3, p0, LW/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, LW/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LW/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    iget v1, p0, LW/a;->b:I

    iget-object v2, p0, LW/a;->d:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-static {v2, v0, v1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->c(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, LW/a;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, LW/a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Process;

    iget v2, p0, LW/a;->b:I

    invoke-static {v2, v0, v1}, Lsk/mimac/slideshow/utils/Shell;->a(ILjava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Process;)V

    return-void

    :pswitch_1
    iget v0, p0, LW/a;->b:I

    iget-object v1, p0, LW/a;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/util/ListenerSet$Event;

    iget-object v2, p0, LW/a;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v2, v0, v1}, Landroidx/media3/common/util/ListenerSet;->a(Ljava/util/concurrent/CopyOnWriteArraySet;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void

    :pswitch_2
    iget v0, p0, LW/a;->b:I

    iget-object v1, p0, LW/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, p0, LW/a;->d:Ljava/lang/Object;

    check-cast v2, Lsk/mimac/slideshow/gui/ShowHelperImpl;

    invoke-static {v2, v0, v1}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->i(Lsk/mimac/slideshow/gui/ShowHelperImpl;ILandroid/appwidget/AppWidgetProviderInfo;)V

    return-void

    :pswitch_3
    iget-object v0, p0, LW/a;->c:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/communication/Packet;

    iget v1, p0, LW/a;->b:I

    iget-object v2, p0, LW/a;->d:Ljava/lang/Object;

    check-cast v2, Lsk/mimac/slideshow/communication/PacketListener;

    invoke-static {v2, v0, v1}, Lsk/mimac/slideshow/communication/Community;->a(Lsk/mimac/slideshow/communication/PacketListener;Lsk/mimac/slideshow/communication/Packet;I)V

    return-void

    :pswitch_4
    iget v0, p0, LW/a;->b:I

    iget-object v1, p0, LW/a;->c:Ljava/lang/Object;

    iget-object v2, p0, LW/a;->d:Ljava/lang/Object;

    check-cast v2, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    invoke-static {v2, v0, v1}, Landroidx/profileinstaller/ProfileInstaller;->a(Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V

    return-void

    :pswitch_5
    iget v0, p0, LW/a;->b:I

    iget-object v1, p0, LW/a;->c:Ljava/lang/Object;

    iget-object v2, p0, LW/a;->d:Ljava/lang/Object;

    check-cast v2, Landroidx/profileinstaller/DeviceProfileWriter;

    invoke-static {v2, v0, v1}, Landroidx/profileinstaller/DeviceProfileWriter;->a(Landroidx/profileinstaller/DeviceProfileWriter;ILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
