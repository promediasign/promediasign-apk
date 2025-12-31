.class public Lsk/mimac/slideshow/playlist/IgnoreChangeEntityPlaylistWrapper;
.super Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;
.source "SourceFile"


# instance fields
.field private finished:Z


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/database/entity/Playlist;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;-><init>(Ljava/lang/Integer;Lsk/mimac/slideshow/database/entity/Playlist;)V

    return-void
.end method


# virtual methods
.method public getNext(I)Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;
    .locals 1

    invoke-super {p0, p1}, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->getNext(I)Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsk/mimac/slideshow/playlist/IgnoreChangeEntityPlaylistWrapper;->finished:Z

    :cond_1
    return-object p1
.end method

.method public shouldStillPlay()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/playlist/IgnoreChangeEntityPlaylistWrapper;->finished:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
