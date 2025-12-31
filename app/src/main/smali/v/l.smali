.class public final synthetic Lv/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic c:Landroidx/media3/exoplayer/DecoderCounters;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;I)V
    .locals 0

    .line 1
    iput p3, p0, Lv/l;->a:I

    iput-object p1, p0, Lv/l;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lv/l;->c:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lv/l;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lv/l;->c:Landroidx/media3/exoplayer/DecoderCounters;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/l;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->v(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lv/l;->c:Landroidx/media3/exoplayer/DecoderCounters;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/l;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->k(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lv/l;->c:Landroidx/media3/exoplayer/DecoderCounters;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/l;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->l(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lv/l;->c:Landroidx/media3/exoplayer/DecoderCounters;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/l;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->S(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
