.class public Lsk/mimac/slideshow/playlist/TimeoutEntityPlaylistWrapper;
.super Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;
.source "SourceFile"


# instance fields
.field private final timeout:J


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/database/entity/Playlist;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;-><init>(Ljava/lang/Integer;Lsk/mimac/slideshow/database/entity/Playlist;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lsk/mimac/slideshow/playlist/TimeoutEntityPlaylistWrapper;->timeout:J

    return-void
.end method


# virtual methods
.method public shouldStillPlay()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lsk/mimac/slideshow/playlist/TimeoutEntityPlaylistWrapper;->timeout:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
