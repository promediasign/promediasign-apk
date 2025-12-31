.class public Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final audio:Z

.field private currentPlaylist:Lsk/mimac/slideshow/playlist/PlaylistWrapper;

.field private final itemThread:Lsk/mimac/slideshow/gui/ItemThread;

.field private final panelItemId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lsk/mimac/slideshow/gui/ItemThread;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->currentPlaylist:Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    iput-object p1, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->itemThread:Lsk/mimac/slideshow/gui/ItemThread;

    iput-object v0, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->panelItemId:Ljava/lang/Integer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->audio:Z

    return-void
.end method

.method public constructor <init>(Lsk/mimac/slideshow/gui/ItemThread;Ljava/lang/Integer;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->currentPlaylist:Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    iput-object p1, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->itemThread:Lsk/mimac/slideshow/gui/ItemThread;

    iput-object p2, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->panelItemId:Ljava/lang/Integer;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->audio:Z

    return-void
.end method

.method private setPlaylistInternal()V
    .locals 4

    sget-object v0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->LOG:Lorg/slf4j/Logger;

    iget-object v1, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->panelItemId:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const-string v1, "audio"

    :cond_0
    iget-object v2, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->currentPlaylist:Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    invoke-interface {v2}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Current playlist for panel [id={}] switched to \'{}\'"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->itemThread:Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ItemThread;->clearNext()V

    iget-object v0, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->itemThread:Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ItemThread;->interrupt()V

    return-void
.end method


# virtual methods
.method public clearSetPlaylist()V
    .locals 4

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v0

    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    move-result-object v1

    iget-object v2, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->panelItemId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getPlaylistForDateTime(Lj$/time/LocalDateTime;Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lsk/mimac/slideshow/playlist/EmptyPlaylistWrapper;

    iget-object v1, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->panelItemId:Ljava/lang/Integer;

    iget-boolean v2, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->audio:Z

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/playlist/EmptyPlaylistWrapper;-><init>(Ljava/lang/Integer;Z)V

    iput-object v0, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->currentPlaylist:Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v1, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;

    iget-object v2, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->panelItemId:Ljava/lang/Integer;

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v3

    invoke-virtual {v3, v0}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->get(Ljava/lang/Long;)Lsk/mimac/slideshow/database/entity/Playlist;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;-><init>(Ljava/lang/Integer;Lsk/mimac/slideshow/database/entity/Playlist;)V

    iput-object v1, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->currentPlaylist:Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    :goto_0
    invoke-direct {p0}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->setPlaylistInternal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v1, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t get current playlist"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public createPlaylistWrapper(Lsk/mimac/slideshow/database/entity/Playlist;)Lsk/mimac/slideshow/playlist/PlaylistWrapper;
    .locals 5

    sget-object v0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver$1;->$SwitchMap$sk$mimac$slideshow$enums$PlaylistAction:[I

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Playlist;->getAction()Lsk/mimac/slideshow/enums/PlaylistAction;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Lsk/mimac/slideshow/playlist/IgnoreChangeEntityPlaylistWrapper;

    invoke-direct {v0, p1}, Lsk/mimac/slideshow/playlist/IgnoreChangeEntityPlaylistWrapper;-><init>(Lsk/mimac/slideshow/database/entity/Playlist;)V

    return-object v0

    :cond_0
    new-instance v0, Lsk/mimac/slideshow/playlist/TimeoutEntityPlaylistWrapper;

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->MANUAL_PLAYLIST_TIMEOUT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lsk/mimac/slideshow/playlist/TimeoutEntityPlaylistWrapper;-><init>(Lsk/mimac/slideshow/database/entity/Playlist;I)V

    return-object v0

    :cond_1
    new-instance v0, Lsk/mimac/slideshow/playlist/IgnoreChangeUntilScheduleEntityPlaylistWrapper;

    iget-object v1, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->panelItemId:Ljava/lang/Integer;

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v2

    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    move-result-object v3

    iget-object v4, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->panelItemId:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getPlaylistForDateTime(Lj$/time/LocalDateTime;Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lsk/mimac/slideshow/playlist/IgnoreChangeUntilScheduleEntityPlaylistWrapper;-><init>(Ljava/lang/Integer;Lsk/mimac/slideshow/database/entity/Playlist;Ljava/lang/Long;)V

    return-object v0

    :cond_2
    new-instance v0, Lsk/mimac/slideshow/playlist/PlayOnceMoveNextEntityPlaylistWrapper;

    invoke-direct {v0, p1, p0}, Lsk/mimac/slideshow/playlist/PlayOnceMoveNextEntityPlaylistWrapper;-><init>(Lsk/mimac/slideshow/database/entity/Playlist;Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;)V

    return-object v0

    :cond_3
    new-instance v0, Lsk/mimac/slideshow/playlist/PlayOnceEntityPlaylistWrapper;

    invoke-direct {v0, p1}, Lsk/mimac/slideshow/playlist/PlayOnceEntityPlaylistWrapper;-><init>(Lsk/mimac/slideshow/database/entity/Playlist;)V

    return-object v0
.end method

.method public getCurrentPlaylist()Lsk/mimac/slideshow/playlist/PlaylistWrapper;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->currentPlaylist:Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    return-object v0
.end method

.method public isSetPlaylist()Z
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->currentPlaylist:Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-class v2, Lsk/mimac/slideshow/playlist/EmptyPlaylistWrapper;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public resolveCurrentPlaylist()Lsk/mimac/slideshow/playlist/PlaylistWrapper;
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->panelItemId:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->audio:Z

    if-nez v0, :cond_0

    new-instance v0, Lsk/mimac/slideshow/playlist/EmptyPlaylistWrapper;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->audio:Z

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/playlist/EmptyPlaylistWrapper;-><init>(Ljava/lang/Integer;Z)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->currentPlaylist:Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->shouldStillPlay()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v0

    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    move-result-object v1

    iget-object v2, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->panelItemId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getPlaylistForDateTime(Lj$/time/LocalDateTime;Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lsk/mimac/slideshow/playlist/EmptyPlaylistWrapper;

    iget-object v1, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->panelItemId:Ljava/lang/Integer;

    iget-boolean v2, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->audio:Z

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/playlist/EmptyPlaylistWrapper;-><init>(Ljava/lang/Integer;Z)V

    iput-object v0, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->currentPlaylist:Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    new-instance v1, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;

    iget-object v2, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->panelItemId:Ljava/lang/Integer;

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v3

    invoke-virtual {v3, v0}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->get(Ljava/lang/Long;)Lsk/mimac/slideshow/database/entity/Playlist;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;-><init>(Ljava/lang/Integer;Lsk/mimac/slideshow/database/entity/Playlist;)V

    iput-object v1, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->currentPlaylist:Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    :goto_0
    sget-object v0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Current playlist for panel [id={}] switched to \'{}\'"

    iget-object v2, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->panelItemId:Ljava/lang/Integer;

    if-nez v2, :cond_3

    const-string v2, "audio"

    :cond_3
    iget-object v3, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->currentPlaylist:Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    invoke-interface {v3}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v1, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t get current playlist"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->currentPlaylist:Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    return-object v0
.end method

.method public setPlaylist(Ljava/lang/Long;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->get(Ljava/lang/Long;)Lsk/mimac/slideshow/database/entity/Playlist;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->createPlaylistWrapper(Lsk/mimac/slideshow/database/entity/Playlist;)Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->currentPlaylist:Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    sget-object v1, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Current playlist for panel [id={}] manually set to \'{}\' class {}"

    iget-object v3, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->panelItemId:Ljava/lang/Integer;

    if-nez v3, :cond_0

    const-string v3, "audio"

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v0}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->currentPlaylist:Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v0, v5, v3

    const/4 v0, 0x2

    aput-object v4, v5, v0

    invoke-interface {v1, v2, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->itemThread:Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ItemThread;->clearNext()V

    iget-object v0, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->itemThread:Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ItemThread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v1, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t get playlist \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public setPlaylist(Ljava/lang/Long;I)V
    .locals 6

    .line 2
    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->get(Ljava/lang/Long;)Lsk/mimac/slideshow/database/entity/Playlist;

    move-result-object v0

    new-instance v1, Lsk/mimac/slideshow/playlist/TimeoutEntityPlaylistWrapper;

    invoke-direct {v1, v0, p2}, Lsk/mimac/slideshow/playlist/TimeoutEntityPlaylistWrapper;-><init>(Lsk/mimac/slideshow/database/entity/Playlist;I)V

    iput-object v1, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->currentPlaylist:Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    sget-object v0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Current playlist for panel [id={}] manualy set to \'{}\' for {} seconds"

    iget-object v3, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->panelItemId:Ljava/lang/Integer;

    if-nez v3, :cond_0

    const-string v3, "audio"

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v1, v4, v3

    const/4 v1, 0x2

    aput-object p2, v4, v1

    invoke-interface {v0, v2, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->itemThread:Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {p2}, Lsk/mimac/slideshow/gui/ItemThread;->clearNext()V

    iget-object p2, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->itemThread:Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {p2}, Lsk/mimac/slideshow/gui/ItemThread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->LOG:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t get playlist \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public setPlaylist(Lsk/mimac/slideshow/playlist/PlaylistWrapper;)V
    .locals 3

    .line 3
    iput-object p1, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->currentPlaylist:Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    sget-object v0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->LOG:Lorg/slf4j/Logger;

    iget-object v1, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->panelItemId:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const-string v1, "audio"

    :cond_0
    invoke-interface {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Current playlist for panel [id={}] manualy set to \'{}\'"

    invoke-interface {v0, v2, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->itemThread:Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/ItemThread;->clearNext()V

    iget-object p1, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->itemThread:Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/ItemThread;->interrupt()V

    return-void
.end method

.method public setPlaylistWrapperInternally(Lsk/mimac/slideshow/playlist/PlaylistWrapper;)V
    .locals 5

    iput-object p1, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->currentPlaylist:Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    sget-object v0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->LOG:Lorg/slf4j/Logger;

    iget-object v1, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->panelItemId:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const-string v1, "audio"

    :cond_0
    invoke-interface {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->currentPlaylist:Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object p1, v3, v1

    const/4 p1, 0x2

    aput-object v2, v3, p1

    const-string p1, "Current playlist for panel [id={}] set to \'{}\' with {}"

    invoke-interface {v0, p1, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
