.class public Lsk/mimac/slideshow/layout/TimeoutEntityScreenLayoutWrapper;
.super Lsk/mimac/slideshow/layout/EntityScreenLayoutWrapper;
.source "SourceFile"


# instance fields
.field private final timeout:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/database/entity/ScreenLayout;I)V
    .locals 2

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/layout/EntityScreenLayoutWrapper;-><init>(Lsk/mimac/slideshow/database/entity/ScreenLayout;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p1, p2

    add-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/layout/TimeoutEntityScreenLayoutWrapper;->timeout:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public shouldStillPlay()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lsk/mimac/slideshow/layout/TimeoutEntityScreenLayoutWrapper;->timeout:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
