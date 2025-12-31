.class public Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/utils/CyclicInt$Sizable;
.implements Lsk/mimac/slideshow/playlist/PlaylistWrapper;


# static fields
.field protected static final LOG:Lorg/slf4j/Logger;


# instance fields
.field protected final panelItemId:Ljava/lang/Integer;

.field private playlist:Lsk/mimac/slideshow/database/entity/Playlist;

.field private final position:Lsk/mimac/slideshow/utils/CyclicInt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lsk/mimac/slideshow/database/entity/Playlist;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsk/mimac/slideshow/utils/CyclicInt;

    invoke-direct {v0, p0}, Lsk/mimac/slideshow/utils/CyclicInt;-><init>(Lsk/mimac/slideshow/utils/CyclicInt$Sizable;)V

    iput-object v0, p0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->position:Lsk/mimac/slideshow/utils/CyclicInt;

    if-eqz p2, :cond_0

    iput-object p1, p0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->panelItemId:Ljava/lang/Integer;

    iput-object p2, p0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t wrap null playlist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    check-cast p1, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;

    iget-object v0, p0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    iget-object p1, p1, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/Playlist;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getMusic()Lsk/mimac/slideshow/enums/MusicType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Playlist;->getMusic()Lsk/mimac/slideshow/enums/MusicType;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Playlist;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNext(I)Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;
    .locals 3

    invoke-virtual {p0}, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->size()I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/ContentDao;->getInstance()Lsk/mimac/slideshow/database/dao/ContentDao;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->position:Lsk/mimac/slideshow/utils/CyclicInt;

    invoke-virtual {v2, p1}, Lsk/mimac/slideshow/utils/CyclicInt;->add(I)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lsk/mimac/slideshow/database/dao/ContentDao;->getItem(Ljava/lang/Long;I)Lsk/mimac/slideshow/utils/Couple;

    move-result-object p1

    new-instance v0, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/database/entity/Item;

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->position:Lsk/mimac/slideshow/utils/CyclicInt;

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/CyclicInt;->get()I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;-><init>(Lsk/mimac/slideshow/database/entity/Item;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    sget-object v0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->LOG:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t get next item from playlist \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Playlist;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNumber()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Playlist;->getNumber()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->position:Lsk/mimac/slideshow/utils/CyclicInt;

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/CyclicInt;->get()I

    move-result v0

    return v0
.end method

.method public getSyncCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Playlist;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v1, "sync_code"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Playlist;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x173

    return v0
.end method

.method public shouldStillPlay()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v2

    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    move-result-object v3

    iget-object v4, p0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->panelItemId:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getPlaylistForDateTime(Lj$/time/LocalDateTime;Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v1

    iget-object v2, p0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->get(Ljava/lang/Long;)Lsk/mimac/slideshow/database/entity/Playlist;

    move-result-object v1

    iput-object v1, p0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    return v0

    :goto_0
    sget-object v2, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t get playlist for panelItemId={}"

    iget-object v4, p0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->panelItemId:Ljava/lang/Integer;

    invoke-interface {v2, v3, v4, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0
.end method

.method public size()I
    .locals 4

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/ContentDao;->getInstance()Lsk/mimac/slideshow/database/dao/ContentDao;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/dao/ContentDao;->getCount(Ljava/lang/Long;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t get size of playlist \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/Playlist;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method
