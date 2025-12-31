.class public final synthetic Lv/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic c:Landroidx/media3/common/Format;

.field public final synthetic d:Landroidx/media3/exoplayer/DecoderReuseEvaluation;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;I)V
    .locals 0

    .line 1
    iput p4, p0, Lv/m;->a:I

    iput-object p1, p0, Lv/m;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lv/m;->c:Landroidx/media3/common/Format;

    iput-object p3, p0, Lv/m;->d:Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lv/m;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lv/m;->d:Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/m;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v2, p0, Lv/m;->c:Landroidx/media3/common/Format;

    invoke-static {v1, v2, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->n(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lv/m;->d:Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/m;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v2, p0, Lv/m;->c:Landroidx/media3/common/Format;

    invoke-static {v1, v2, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->z(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
