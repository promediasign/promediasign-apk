.class public Lsk/mimac/slideshow/playlist/EmptyPlaylistWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/playlist/PlaylistWrapper;


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final audio:Z

.field private final panelItemId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/playlist/EmptyPlaylistWrapper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/playlist/EmptyPlaylistWrapper;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/playlist/EmptyPlaylistWrapper;->panelItemId:Ljava/lang/Integer;

    iput-boolean p2, p0, Lsk/mimac/slideshow/playlist/EmptyPlaylistWrapper;->audio:Z

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

    sget-object v0, Lsk/mimac/slideshow/enums/MusicType;->NONE:Lsk/mimac/slideshow/enums/MusicType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "scheduled_none"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNext(I)Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSyncCode()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldStillPlay()Z
    .locals 5

    iget-boolean v0, p0, Lsk/mimac/slideshow/playlist/EmptyPlaylistWrapper;->audio:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/playlist/EmptyPlaylistWrapper;->panelItemId:Ljava/lang/Integer;

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v2

    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    move-result-object v3

    iget-object v4, p0, Lsk/mimac/slideshow/playlist/EmptyPlaylistWrapper;->panelItemId:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getPlaylistForDateTime(Lj$/time/LocalDateTime;Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception v1

    sget-object v2, Lsk/mimac/slideshow/playlist/EmptyPlaylistWrapper;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t get playlist for panelItemId={}"

    iget-object v4, p0, Lsk/mimac/slideshow/playlist/EmptyPlaylistWrapper;->panelItemId:Ljava/lang/Integer;

    invoke-interface {v2, v3, v4, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0
.end method
