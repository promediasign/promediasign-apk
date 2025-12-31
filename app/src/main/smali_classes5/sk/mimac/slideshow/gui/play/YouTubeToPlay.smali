.class public Lsk/mimac/slideshow/gui/play/YouTubeToPlay;
.super Lsk/mimac/slideshow/gui/play/ToPlay;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;-><init>()V

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->VIDEO_TIMEOUT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public play(Lsk/mimac/slideshow/gui/ShowHelper;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v1

    const-string v2, "preferredQuality"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getMusicType()Lsk/mimac/slideshow/enums/MusicType;

    move-result-object v2

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPlayId()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lsk/mimac/slideshow/gui/ShowHelper;->showYouTube(Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;I)V

    return-void
.end method

.method public play(Lsk/mimac/slideshow/music/MusicPlayer;)V
    .locals 1

    .line 2
    new-instance p1, Lsk/mimac/slideshow/item/CantShowException;

    const-string v0, "YouTube be played in music player"

    invoke-direct {p1, v0}, Lsk/mimac/slideshow/item/CantShowException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prepare(Lsk/mimac/slideshow/gui/ShowHelper;)V
    .locals 3

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getMusicType()Lsk/mimac/slideshow/enums/MusicType;

    move-result-object v1

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPlayId()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lsk/mimac/slideshow/gui/ShowHelper;->prepareYouTube(Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "YouTube{content=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', position=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
