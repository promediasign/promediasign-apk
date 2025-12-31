.class public final synthetic Lv/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic c:Landroidx/media3/common/PlaybackException;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;I)V
    .locals 0

    .line 1
    iput p3, p0, Lv/k;->a:I

    iput-object p1, p0, Lv/k;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lv/k;->c:Landroidx/media3/common/PlaybackException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lv/k;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lv/k;->c:Landroidx/media3/common/PlaybackException;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/k;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->e0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lv/k;->c:Landroidx/media3/common/PlaybackException;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/k;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->h(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
