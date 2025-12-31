.class public Lsk/mimac/slideshow/playlist/PlayOnceMoveNextEntityPlaylistWrapper;
.super Lsk/mimac/slideshow/playlist/PlayOnceEntityPlaylistWrapper;
.source "SourceFile"


# instance fields
.field private final currentPlaylistResolver:Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/database/entity/Playlist;Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/playlist/PlayOnceEntityPlaylistWrapper;-><init>(Lsk/mimac/slideshow/database/entity/Playlist;)V

    iput-object p2, p0, Lsk/mimac/slideshow/playlist/PlayOnceMoveNextEntityPlaylistWrapper;->currentPlaylistResolver:Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    return-void
.end method


# virtual methods
.method public shouldStillPlay()Z
    .locals 4

    invoke-super {p0}, Lsk/mimac/slideshow/playlist/PlayOnceEntityPlaylistWrapper;->shouldStillPlay()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->getNumber()Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v3, v0}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getByNumber(I)Lsk/mimac/slideshow/database/entity/Playlist;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object v2, p0, Lsk/mimac/slideshow/playlist/PlayOnceMoveNextEntityPlaylistWrapper;->currentPlaylistResolver:Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    invoke-virtual {v2, v0}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->createPlaylistWrapper(Lsk/mimac/slideshow/database/entity/Playlist;)Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    move-result-object v0

    iget-object v2, p0, Lsk/mimac/slideshow/playlist/PlayOnceMoveNextEntityPlaylistWrapper;->currentPlaylistResolver:Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    invoke-virtual {v2, v0}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->setPlaylistWrapperInternally(Lsk/mimac/slideshow/playlist/PlaylistWrapper;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t resolver next playlist"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
