.class public Lsk/mimac/slideshow/http/page/PlaylistFormPage;
.super Lsk/mimac/slideshow/http/page/AbstractFormPage;
.source "SourceFile"


# instance fields
.field private playlist:Lsk/mimac/slideshow/database/entity/Playlist;

.field private used:Z

.field private usedOnPanels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/PanelItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/http/page/AbstractFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    return-void
.end method

.method private processDurationField()V
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v1, "duration"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ContentDao;->getInstance()Lsk/mimac/slideshow/database/dao/ContentDao;

    move-result-object v1

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lsk/mimac/slideshow/database/dao/ContentDao;->get(Ljava/lang/Long;I)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/utils/Couple;->setSecond(Ljava/lang/Object;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ContentDao;->getInstance()Lsk/mimac/slideshow/database/dao/ContentDao;

    move-result-object v0

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lsk/mimac/slideshow/database/dao/ContentDao;->updatePlaylist(Ljava/lang/Long;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private processGet()V
    .locals 5

    const-string v0, "sync_code"

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v2, "playlist"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v1

    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->get(Ljava/lang/Long;)Lsk/mimac/slideshow/database/entity/Playlist;

    move-result-object v1

    iput-object v1, p0, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v3, "name"

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Playlist;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v2, "number"

    iget-object v3, p0, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/Playlist;->getNumber()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    iget-object v3, p0, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/Playlist;->getNumber()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v2, "music"

    iget-object v3, p0, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/Playlist;->getMusic()Lsk/mimac/slideshow/enums/MusicType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Playlist;->getProperties()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getUsedWithPlaylist(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->usedOnPanels:Ljava/util/List;

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->isPlaylistUsed(Ljava/lang/Long;)Z

    move-result v0

    iput-boolean v0, p0, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->used:Z

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Playlist;->getLinkedItemId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v1, "duration"

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ContentDao;->getInstance()Lsk/mimac/slideshow/database/dao/ContentDao;

    move-result-object v2

    iget-object v3, p0, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lsk/mimac/slideshow/database/dao/ContentDao;->getItem(Ljava/lang/Long;I)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_1
    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t get item"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "database_error"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_ROOT_"

    invoke-virtual {p0, v1, v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-direct {v0}, Lsk/mimac/slideshow/database/entity/Playlist;-><init>()V

    :goto_2
    iput-object v0, p0, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    goto :goto_3

    :cond_1
    new-instance v0, Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-direct {v0}, Lsk/mimac/slideshow/database/entity/Playlist;-><init>()V

    goto :goto_2

    :cond_2
    :goto_3
    return-void
.end method

.method private processName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "name2_empty"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private processNumber()Ljava/lang/Integer;
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v1, "number"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "number_bad_format"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private processPost()V
    .locals 9

    const-string v0, "/playlist?id="

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v2, "id"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->processName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->processNumber()Ljava/lang/Integer;

    move-result-object v4

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v3, "music"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lsk/mimac/slideshow/enums/MusicType;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/MusicType;

    move-result-object v6

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v3, "action"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lsk/mimac/slideshow/enums/PlaylistAction;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/PlaylistAction;

    move-result-object v7

    new-instance v8, Lsk/mimac/slideshow/database/entity/Playlist;

    move-object v2, v8

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lsk/mimac/slideshow/database/entity/Playlist;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;Lsk/mimac/slideshow/enums/PlaylistAction;)V

    iput-object v8, p0, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v3, "sync_code"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/Playlist;->getProperties()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->processDurationField()V

    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->hasAnyErrors()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v1

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->create(Lsk/mimac/slideshow/database/entity/Playlist;)J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->redirectTo:Ljava/lang/String;

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->update(Lsk/mimac/slideshow/database/entity/Playlist;)V

    const-string v0, "/playlists"

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getUsedWithPlaylist(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->usedOnPanels:Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t insert/update playlist: {}"

    iget-object v3, p0, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-interface {v1, v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "database_error"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_ROOT_"

    invoke-virtual {p0, v1, v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public getPageHeader()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "playlist_add_new"

    .line 10
    .line 11
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "playlist_edit"

    .line 22
    .line 23
    const-string v2, " "

    .line 24
    .line 25
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    .line 29
    .line 30
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Playlist;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->escapeHTML(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method public process()V
    .locals 1

    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->isGet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->processGet()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->processPost()V

    :goto_0
    return-void
.end method

.method public writePage(Ljava/lang/StringBuilder;)V
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-object v0, v6, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    .line 6
    .line 7
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Playlist;->getLinkedItemId()Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "<p>"

    .line 14
    .line 15
    const-string v1, "playlist_linked_item_help"

    .line 16
    .line 17
    const-string v2, "</p>"

    .line 18
    .line 19
    invoke-static {v7, v0, v1, v2}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const-string v0, "<form method=\'post\' class=\'longText\'>"

    .line 23
    .line 24
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v0, v6, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    .line 28
    .line 29
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const-string v0, "<input type=\'hidden\' name=\'id\' value=\'"

    .line 36
    .line 37
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v0, v6, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    .line 41
    .line 42
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, "\'/>"

    .line 50
    .line 51
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    :cond_1
    const-string v0, "<table>"

    .line 55
    .line 56
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v0, v6, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    .line 60
    .line 61
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Playlist;->getLinkedItemId()Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    const-string v0, "text"

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const-string v0, "text\' readonly=\'true"

    .line 71
    .line 72
    :goto_0
    const-string v1, "name2"

    .line 73
    .line 74
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-string v2, "name"

    .line 79
    .line 80
    invoke-virtual {v6, v7, v2, v0, v1}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, v6, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    .line 84
    .line 85
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Playlist;->getLinkedItemId()Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    const-string v0, "content_duration"

    .line 92
    .line 93
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    const-string v0, "playlist_duration_help"

    .line 98
    .line 99
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    const-string v2, "duration"

    .line 104
    .line 105
    const-string v3, "number\' min=\'1"

    .line 106
    .line 107
    move-object/from16 v0, p0

    .line 108
    .line 109
    move-object/from16 v1, p1

    .line 110
    .line 111
    invoke-virtual/range {v0 .. v5}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_3
    const-string v0, "number"

    .line 115
    .line 116
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    const-string v0, "playlist_number_help"

    .line 121
    .line 122
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    const-string v2, "number"

    .line 127
    .line 128
    const-string v3, "number\' min=\'0\' max=\'12"

    .line 129
    .line 130
    move-object/from16 v0, p0

    .line 131
    .line 132
    move-object/from16 v1, p1

    .line 133
    .line 134
    invoke-virtual/range {v0 .. v5}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v8, "<tr><td>"

    .line 138
    .line 139
    const-string v0, "sound"

    .line 140
    .line 141
    const-string v1, ": </td><td><select name=\'music\'>"

    .line 142
    .line 143
    invoke-static {v7, v8, v0, v1}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, v6, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    .line 147
    .line 148
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const/4 v1, 0x0

    .line 153
    if-eqz v0, :cond_6

    .line 154
    .line 155
    iget-boolean v0, v6, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->used:Z

    .line 156
    .line 157
    if-nez v0, :cond_4

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_4
    iget-object v0, v6, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    .line 161
    .line 162
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Playlist;->getMusic()Lsk/mimac/slideshow/enums/MusicType;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    sget-object v2, Lsk/mimac/slideshow/enums/MusicType;->AUDIO:Lsk/mimac/slideshow/enums/MusicType;

    .line 167
    .line 168
    const/4 v3, 0x1

    .line 169
    if-ne v0, v2, :cond_5

    .line 170
    .line 171
    new-array v0, v3, [Lsk/mimac/slideshow/enums/MusicType;

    .line 172
    .line 173
    aput-object v2, v0, v1

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_5
    const/4 v0, 0x2

    .line 177
    new-array v0, v0, [Lsk/mimac/slideshow/enums/MusicType;

    .line 178
    .line 179
    sget-object v2, Lsk/mimac/slideshow/enums/MusicType;->NONE:Lsk/mimac/slideshow/enums/MusicType;

    .line 180
    .line 181
    aput-object v2, v0, v1

    .line 182
    .line 183
    sget-object v2, Lsk/mimac/slideshow/enums/MusicType;->VIDEO:Lsk/mimac/slideshow/enums/MusicType;

    .line 184
    .line 185
    aput-object v2, v0, v3

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_6
    :goto_1
    invoke-static {}, Lsk/mimac/slideshow/enums/MusicType;->values()[Lsk/mimac/slideshow/enums/MusicType;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    :goto_2
    array-length v2, v0

    .line 193
    const/4 v3, 0x0

    .line 194
    :goto_3
    const-string v4, "</option>"

    .line 195
    .line 196
    const-string v5, ">"

    .line 197
    .line 198
    const-string v9, ""

    .line 199
    .line 200
    const-string v10, "selected"

    .line 201
    .line 202
    const-string v11, "\' "

    .line 203
    .line 204
    const-string v12, "<option value=\'"

    .line 205
    .line 206
    if-ge v3, v2, :cond_8

    .line 207
    .line 208
    aget-object v13, v0, v3

    .line 209
    .line 210
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v12

    .line 217
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    iget-object v11, v6, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    .line 224
    .line 225
    invoke-virtual {v11}, Lsk/mimac/slideshow/database/entity/Playlist;->getMusic()Lsk/mimac/slideshow/enums/MusicType;

    .line 226
    .line 227
    .line 228
    move-result-object v11

    .line 229
    if-ne v13, v11, :cond_7

    .line 230
    .line 231
    move-object v9, v10

    .line 232
    :cond_7
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v13}, Lsk/mimac/slideshow/enums/MusicType;->getDesc()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    add-int/lit8 v3, v3, 0x1

    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_8
    const-string v0, "</select>"

    .line 256
    .line 257
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v13, "</td></tr>"

    .line 261
    .line 262
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string v2, "playlist_action"

    .line 269
    .line 270
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v2, ": </td><td><select name=\'action\'>"

    .line 278
    .line 279
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-static {}, Lsk/mimac/slideshow/enums/PlaylistAction;->values()[Lsk/mimac/slideshow/enums/PlaylistAction;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    array-length v3, v2

    .line 287
    :goto_4
    if-ge v1, v3, :cond_a

    .line 288
    .line 289
    aget-object v14, v2, v1

    .line 290
    .line 291
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v15

    .line 298
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    iget-object v15, v6, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    .line 305
    .line 306
    invoke-virtual {v15}, Lsk/mimac/slideshow/database/entity/Playlist;->getAction()Lsk/mimac/slideshow/enums/PlaylistAction;

    .line 307
    .line 308
    .line 309
    move-result-object v15

    .line 310
    if-ne v14, v15, :cond_9

    .line 311
    .line 312
    move-object v15, v10

    .line 313
    goto :goto_5

    .line 314
    :cond_9
    move-object v15, v9

    .line 315
    :goto_5
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    new-instance v15, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    move-object/from16 v16, v2

    .line 324
    .line 325
    const-string v2, "playlist_action_"

    .line 326
    .line 327
    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    add-int/lit8 v1, v1, 0x1

    .line 348
    .line 349
    move-object/from16 v2, v16

    .line 350
    .line 351
    goto :goto_4

    .line 352
    :cond_a
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string v9, "<span class=\'tooltip\'><span class=\'link\'>?</span><span class=\'tooltip-content\'>"

    .line 356
    .line 357
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    const-string v0, "playlist_action_help"

    .line 361
    .line 362
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string v10, "</span></span> "

    .line 370
    .line 371
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    const-string v0, "sync_code"

    .line 378
    .line 379
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    const-string v0, "sync_code_help"

    .line 384
    .line 385
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    const-string v2, "sync_code"

    .line 390
    .line 391
    const-string v3, "text\' maxlength=\'100\' pattern=\'[A-Za-z0-9 ]*"

    .line 392
    .line 393
    move-object/from16 v0, p0

    .line 394
    .line 395
    move-object/from16 v1, p1

    .line 396
    .line 397
    invoke-virtual/range {v0 .. v5}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    iget-object v0, v6, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->usedOnPanels:Ljava/util/List;

    .line 401
    .line 402
    if-eqz v0, :cond_c

    .line 403
    .line 404
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    const-string v0, "used_on_panels"

    .line 408
    .line 409
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    const-string v0, ":<br>"

    .line 417
    .line 418
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    const-string v0, "used_on_panels_help"

    .line 425
    .line 426
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    const-string v0, "</td><td>"

    .line 437
    .line 438
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    iget-object v0, v6, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->usedOnPanels:Ljava/util/List;

    .line 442
    .line 443
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 448
    .line 449
    .line 450
    move-result v1

    .line 451
    if-eqz v1, :cond_b

    .line 452
    .line 453
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    check-cast v1, Lsk/mimac/slideshow/database/entity/PanelItem;

    .line 458
    .line 459
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getName()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    const-string v2, " <a href=\'/screen_layout/panel/schedule?panelId="

    .line 467
    .line 468
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    const-string v1, "\' class=\'link-icon\'>&#128279;</a><br>"

    .line 479
    .line 480
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    goto :goto_6

    .line 484
    :cond_b
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    :cond_c
    const-string v0, "</table><br><input type=\'submit\' class=\'button\' value=\'"

    .line 488
    .line 489
    const-string v1, "save"

    .line 490
    .line 491
    const-string v2, "\'/><a href=\'/playlists\' class=\'button\'>"

    .line 492
    .line 493
    const-string v3, "back"

    .line 494
    .line 495
    invoke-static {v7, v0, v1, v2, v3}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    const-string v0, "</a>"

    .line 499
    .line 500
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    iget-object v1, v6, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    .line 504
    .line 505
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Playlist;->getLinkedItemId()Ljava/lang/Long;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    const-string v2, "</a></form><br>"

    .line 510
    .line 511
    const-string v3, "\' class=\'button\'>"

    .line 512
    .line 513
    if-eqz v1, :cond_d

    .line 514
    .line 515
    const-string v0, "<a href=\'/items/edit?item="

    .line 516
    .line 517
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    iget-object v0, v6, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    .line 521
    .line 522
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Playlist;->getLinkedItemId()Ljava/lang/Long;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    const-string v0, "edit_item"

    .line 533
    .line 534
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    goto :goto_8

    .line 545
    :cond_d
    iget-object v1, v6, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    .line 546
    .line 547
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    if-eqz v1, :cond_f

    .line 552
    .line 553
    const-string v1, "<a href=\'/playlist?id="

    .line 554
    .line 555
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    iget-object v1, v6, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    .line 559
    .line 560
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    const-string v1, "edit_items"

    .line 571
    .line 572
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    iget-boolean v1, v6, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->used:Z

    .line 583
    .line 584
    const-string v2, "delete"

    .line 585
    .line 586
    if-eqz v1, :cond_e

    .line 587
    .line 588
    const-string v0, "<span class=\'button disabled\'>"

    .line 589
    .line 590
    const-string v1, "</span> <span class=\'tooltip\'><span class=\'link\'>?</span><span class=\'tooltip-content\'>"

    .line 591
    .line 592
    const-string v3, "cant_delete_used_on_panels"

    .line 593
    .line 594
    invoke-static {v7, v0, v2, v1, v3}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    const-string v0, "</span></span>"

    .line 598
    .line 599
    :goto_7
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    goto :goto_8

    .line 603
    :cond_e
    const-string v1, "<a href=\'/playlist/delete?playlist="

    .line 604
    .line 605
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    iget-object v1, v6, Lsk/mimac/slideshow/http/page/PlaylistFormPage;->playlist:Lsk/mimac/slideshow/database/entity/Playlist;

    .line 609
    .line 610
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    .line 611
    .line 612
    .line 613
    move-result-object v1

    .line 614
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v1

    .line 624
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    goto :goto_7

    .line 628
    :cond_f
    :goto_8
    return-void
.end method
