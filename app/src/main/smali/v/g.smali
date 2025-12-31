.class public final synthetic Lv/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJI)V
    .locals 0

    .line 1
    iput p7, p0, Lv/g;->a:I

    iput-object p1, p0, Lv/g;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lv/g;->c:Ljava/lang/String;

    iput-wide p3, p0, Lv/g;->d:J

    iput-wide p5, p0, Lv/g;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    iget v1, v0, Lv/g;->a:I

    packed-switch v1, :pswitch_data_0

    iget-wide v6, v0, Lv/g;->e:J

    move-object/from16 v8, p1

    check-cast v8, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v2, v0, Lv/g;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v3, v0, Lv/g;->c:Ljava/lang/String;

    iget-wide v4, v0, Lv/g;->d:J

    invoke-static/range {v2 .. v8}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->f(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_0
    iget-wide v13, v0, Lv/g;->e:J

    move-object/from16 v15, p1

    check-cast v15, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v9, v0, Lv/g;->b:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v10, v0, Lv/g;->c:Ljava/lang/String;

    iget-wide v11, v0, Lv/g;->d:J

    invoke-static/range {v9 .. v15}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->U(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
