.class public Lsk/mimac/slideshow/playlist/InfiniteItemPlaylistWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/playlist/PlaylistWrapper;


# instance fields
.field private final item:Lsk/mimac/slideshow/database/entity/Item;

.field private length:I

.field private final musicType:Lsk/mimac/slideshow/enums/MusicType;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/database/entity/Item;Lsk/mimac/slideshow/enums/MusicType;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/playlist/InfiniteItemPlaylistWrapper;->item:Lsk/mimac/slideshow/database/entity/Item;

    iput-object p2, p0, Lsk/mimac/slideshow/playlist/InfiniteItemPlaylistWrapper;->musicType:Lsk/mimac/slideshow/enums/MusicType;

    iput p3, p0, Lsk/mimac/slideshow/playlist/InfiniteItemPlaylistWrapper;->length:I

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/playlist/InfiniteItemPlaylistWrapper;->length:I

    return v0
.end method

.method public getMusic()Lsk/mimac/slideshow/enums/MusicType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/playlist/InfiniteItemPlaylistWrapper;->musicType:Lsk/mimac/slideshow/enums/MusicType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/playlist/InfiniteItemPlaylistWrapper;->item:Lsk/mimac/slideshow/database/entity/Item;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Item;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNext(I)Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;
    .locals 3

    new-instance p1, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;

    iget-object v0, p0, Lsk/mimac/slideshow/playlist/InfiniteItemPlaylistWrapper;->item:Lsk/mimac/slideshow/database/entity/Item;

    iget v1, p0, Lsk/mimac/slideshow/playlist/InfiniteItemPlaylistWrapper;->length:I

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

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/playlist/InfiniteItemPlaylistWrapper;->length:I

    return-void
.end method

.method public shouldStillPlay()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
