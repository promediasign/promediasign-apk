.class public Lsk/mimac/slideshow/playlist/PlayOnceEntityPlaylistWrapper;
.super Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;
.source "SourceFile"


# instance fields
.field private finished:Z

.field private finishedItem:Ljava/lang/Boolean;


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
    .locals 4

    invoke-virtual {p0}, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->size()I

    move-result v0

    invoke-super {p0, p1}, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->getNext(I)Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-gt v0, v1, :cond_2

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Item;->getType()Lsk/mimac/slideshow/enums/ItemType;

    move-result-object v2

    sget-object v3, Lsk/mimac/slideshow/enums/ItemType;->ALPHABETICALLY:Lsk/mimac/slideshow/enums/ItemType;

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lsk/mimac/slideshow/playlist/PlayOnceEntityPlaylistWrapper;->finishedItem:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->getPosition()I

    move-result v2

    add-int/2addr v2, v1

    if-lt v2, v0, :cond_4

    :cond_3
    :goto_1
    iput-boolean v1, p0, Lsk/mimac/slideshow/playlist/PlayOnceEntityPlaylistWrapper;->finished:Z

    :cond_4
    :goto_2
    return-object p1
.end method

.method public setFinishedItem()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/playlist/PlayOnceEntityPlaylistWrapper;->finishedItem:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lsk/mimac/slideshow/playlist/PlayOnceEntityPlaylistWrapper;->finishedItem:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public shouldStillPlay()Z
    .locals 2

    iget-boolean v0, p0, Lsk/mimac/slideshow/playlist/PlayOnceEntityPlaylistWrapper;->finished:Z

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lsk/mimac/slideshow/playlist/PlayOnceEntityPlaylistWrapper;->finishedItem:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
