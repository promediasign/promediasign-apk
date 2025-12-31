.class public Lsk/mimac/slideshow/playlist/IgnoreChangeUntilScheduleEntityPlaylistWrapper;
.super Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;
.source "SourceFile"


# instance fields
.field private finished:Z

.field private final originalPlaylistId:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Lsk/mimac/slideshow/database/entity/Playlist;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;-><init>(Ljava/lang/Integer;Lsk/mimac/slideshow/database/entity/Playlist;)V

    iput-object p3, p0, Lsk/mimac/slideshow/playlist/IgnoreChangeUntilScheduleEntityPlaylistWrapper;->originalPlaylistId:Ljava/lang/Long;

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

    iput-boolean v0, p0, Lsk/mimac/slideshow/playlist/IgnoreChangeUntilScheduleEntityPlaylistWrapper;->finished:Z

    :cond_1
    return-object p1
.end method

.method public shouldStillPlay()Z
    .locals 5

    iget-boolean v0, p0, Lsk/mimac/slideshow/playlist/IgnoreChangeUntilScheduleEntityPlaylistWrapper;->finished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v0

    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    move-result-object v2

    iget-object v3, p0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->panelItemId:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getPlaylistForDateTime(Lj$/time/LocalDateTime;Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object v0

    iget-object v2, p0, Lsk/mimac/slideshow/playlist/IgnoreChangeUntilScheduleEntityPlaylistWrapper;->originalPlaylistId:Ljava/lang/Long;

    invoke-static {v2, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v2, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t get playlist for now for panelItemId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->panelItemId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method
