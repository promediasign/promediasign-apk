.class public Lsk/mimac/slideshow/playlist/SingleItemPlaylistWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/playlist/PlaylistWrapper;


# instance fields
.field private final item:Lsk/mimac/slideshow/database/entity/Item;

.field private final musicType:Lsk/mimac/slideshow/enums/MusicType;

.field private final seconds:Ljava/lang/Integer;

.field private wasShown:Z


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/database/entity/Item;Ljava/lang/Integer;Lsk/mimac/slideshow/enums/MusicType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsk/mimac/slideshow/playlist/SingleItemPlaylistWrapper;->wasShown:Z

    iput-object p1, p0, Lsk/mimac/slideshow/playlist/SingleItemPlaylistWrapper;->item:Lsk/mimac/slideshow/database/entity/Item;

    iput-object p2, p0, Lsk/mimac/slideshow/playlist/SingleItemPlaylistWrapper;->seconds:Ljava/lang/Integer;

    iput-object p3, p0, Lsk/mimac/slideshow/playlist/SingleItemPlaylistWrapper;->musicType:Lsk/mimac/slideshow/enums/MusicType;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMusic()Lsk/mimac/slideshow/enums/MusicType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/playlist/SingleItemPlaylistWrapper;->musicType:Lsk/mimac/slideshow/enums/MusicType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/playlist/SingleItemPlaylistWrapper;->item:Lsk/mimac/slideshow/database/entity/Item;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Item;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNext(I)Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;
    .locals 3

    new-instance p1, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;

    iget-object v0, p0, Lsk/mimac/slideshow/playlist/SingleItemPlaylistWrapper;->item:Lsk/mimac/slideshow/database/entity/Item;

    iget-object v1, p0, Lsk/mimac/slideshow/playlist/SingleItemPlaylistWrapper;->seconds:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;-><init>(Lsk/mimac/slideshow/database/entity/Item;II)V

    return-object p1
.end method

.method public getSyncCode()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldStillPlay()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/playlist/SingleItemPlaylistWrapper;->wasShown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsk/mimac/slideshow/playlist/SingleItemPlaylistWrapper;->wasShown:Z

    return v0
.end method
