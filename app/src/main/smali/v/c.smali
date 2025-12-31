.class public final synthetic Lv/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic c:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;I)V
    .locals 0

    .line 1
    iput p3, p0, Lv/c;->a:I

    iput-object p1, p0, Lv/c;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lv/c;->c:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lv/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lv/c;->c:Ljava/lang/Exception;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/c;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->G(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lv/c;->c:Ljava/lang/Exception;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/c;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->c(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lv/c;->c:Ljava/lang/Exception;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/c;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->k0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lv/c;->c:Ljava/lang/Exception;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/c;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->E(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
