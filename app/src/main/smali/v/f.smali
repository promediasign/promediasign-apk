.class public final synthetic Lv/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp$Browser;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lv/f;->a:I

    iput-object p2, p0, Lv/f;->b:Ljava/lang/Object;

    iput-boolean p3, p0, Lv/f;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv/f;->b:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;

    iget-boolean v1, p0, Lv/f;->c:Z

    invoke-static {v0, v1, p1}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->a(Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;ZLjava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lv/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lv/f;->c:Z

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/f;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->F(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lv/f;->c:Z

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/f;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->i(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_1
    iget-boolean v0, p0, Lv/f;->c:Z

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/f;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
