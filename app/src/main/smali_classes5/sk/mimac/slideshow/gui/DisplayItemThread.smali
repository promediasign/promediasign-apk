.class public Lsk/mimac/slideshow/gui/DisplayItemThread;
.super Lsk/mimac/slideshow/gui/ItemThread;
.source "SourceFile"


# instance fields
.field private final displayId:Ljava/lang/String;

.field private itemClickResolver:Lsk/mimac/slideshow/gui/click/ItemClickResolver;

.field private final showHelper:Lsk/mimac/slideshow/gui/ShowHelper;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/gui/ShowHelper;Lsk/mimac/slideshow/database/entity/PanelItem;ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PanelItemThread-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lsk/mimac/slideshow/gui/ItemThread;-><init>(Ljava/lang/String;Z)V

    new-instance p3, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p3, p0, p2}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;-><init>(Lsk/mimac/slideshow/gui/ItemThread;Ljava/lang/Integer;)V

    invoke-virtual {p0, p3}, Lsk/mimac/slideshow/gui/ItemThread;->setCurrentPlaylistResolver(Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;)V

    iput-object p1, p0, Lsk/mimac/slideshow/gui/DisplayItemThread;->showHelper:Lsk/mimac/slideshow/gui/ShowHelper;

    iput-object p4, p0, Lsk/mimac/slideshow/gui/DisplayItemThread;->displayId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDisplayId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/DisplayItemThread;->displayId:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedPosition()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    instance-of v0, v0, Lsk/mimac/slideshow/gui/play/VideoToPlay;

    if-nez v0, :cond_2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    instance-of v0, v0, Lsk/mimac/slideshow/gui/play/StreamToPlay;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    instance-of v0, v0, Lsk/mimac/slideshow/gui/play/YouTubeToPlay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/DisplayItemThread;->showHelper:Lsk/mimac/slideshow/gui/ShowHelper;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ShowHelper;->getYouTubeCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/DisplayItemThread;->showHelper:Lsk/mimac/slideshow/gui/ShowHelper;

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/ShowHelper;->geYouTubeDuration()I

    move-result v1

    :goto_0
    invoke-static {v0, v1}, Lsk/mimac/slideshow/gui/ItemThread;->formatPositionDuration(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lsk/mimac/slideshow/gui/DisplayItemThread;->showHelper:Lsk/mimac/slideshow/gui/ShowHelper;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ShowHelper;->getVideoCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/DisplayItemThread;->showHelper:Lsk/mimac/slideshow/gui/ShowHelper;

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/ShowHelper;->getVideoDuration()I

    move-result v1

    goto :goto_0
.end method

.method public getItemClickResolver()Lsk/mimac/slideshow/gui/click/ItemClickResolver;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/DisplayItemThread;->itemClickResolver:Lsk/mimac/slideshow/gui/click/ItemClickResolver;

    return-object v0
.end method

.method public getShowHelper()Lsk/mimac/slideshow/gui/ShowHelper;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/DisplayItemThread;->showHelper:Lsk/mimac/slideshow/gui/ShowHelper;

    return-object v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    instance-of v0, v0, Lsk/mimac/slideshow/gui/play/VideoToPlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/DisplayItemThread;->showHelper:Lsk/mimac/slideshow/gui/ShowHelper;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ShowHelper;->pauseVideo()V

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    instance-of v0, v0, Lsk/mimac/slideshow/gui/play/YouTubeToPlay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/DisplayItemThread;->showHelper:Lsk/mimac/slideshow/gui/ShowHelper;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ShowHelper;->pauseYouTube()V

    :cond_1
    invoke-super {p0}, Lsk/mimac/slideshow/gui/ItemThread;->pause()V

    return-void
.end method

.method public playInternal(Lsk/mimac/slideshow/gui/play/ToPlay;)V
    .locals 1

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsk/mimac/slideshow/gui/ItemThread;->addToCounter(Ljava/lang/String;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/DisplayItemThread;->showHelper:Lsk/mimac/slideshow/gui/ShowHelper;

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/gui/play/ToPlay;->play(Lsk/mimac/slideshow/gui/ShowHelper;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItemClickResolver()Lsk/mimac/slideshow/gui/click/ItemClickResolver;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/gui/DisplayItemThread;->itemClickResolver:Lsk/mimac/slideshow/gui/click/ItemClickResolver;

    return-void
.end method

.method public prepareInternal(Lsk/mimac/slideshow/gui/play/ToPlay;)V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->PRELOAD_ITEMS_IN_PLAYLIST:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lsk/mimac/slideshow/gui/play/YouTubeToPlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    instance-of v0, v0, Lsk/mimac/slideshow/gui/play/YouTubeToPlay;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/DisplayItemThread;->showHelper:Lsk/mimac/slideshow/gui/ShowHelper;

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/gui/play/ToPlay;->prepare(Lsk/mimac/slideshow/gui/ShowHelper;)V

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    instance-of v0, v0, Lsk/mimac/slideshow/gui/play/VideoToPlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/DisplayItemThread;->showHelper:Lsk/mimac/slideshow/gui/ShowHelper;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ShowHelper;->resumeVideo()V

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/ItemThread;->currentToPlay:Lsk/mimac/slideshow/gui/play/ToPlay;

    instance-of v0, v0, Lsk/mimac/slideshow/gui/play/YouTubeToPlay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/DisplayItemThread;->showHelper:Lsk/mimac/slideshow/gui/ShowHelper;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ShowHelper;->resumeYouTube()V

    :cond_1
    invoke-super {p0}, Lsk/mimac/slideshow/gui/ItemThread;->resume()V

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-super {p0}, Lsk/mimac/slideshow/gui/ItemThread;->stop()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/DisplayItemThread;->showHelper:Lsk/mimac/slideshow/gui/ShowHelper;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ShowHelper;->close()V

    return-void
.end method
