.class public final synthetic Lv/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/p;->a:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lv/p;->b:I

    iput p3, p0, Lv/p;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lv/p;->c:I

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v1, p0, Lv/p;->a:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget v2, p0, Lv/p;->b:I

    invoke-static {v1, v2, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->V(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method
