.class public Lsk/mimac/slideshow/gui/play/StreamToPlay;
.super Lsk/mimac/slideshow/gui/play/ToPlay;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;-><init>()V

    return-void
.end method


# virtual methods
.method public play(Lsk/mimac/slideshow/gui/ShowHelper;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v1, "textColor"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getMusicType()Lsk/mimac/slideshow/enums/MusicType;

    move-result-object v3

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->resolveDescText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPlayIdObject()Lsk/mimac/slideshow/gui/play/PlayId;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lsk/mimac/slideshow/gui/ShowHelper;->showStream(Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V

    return-void
.end method

.method public play(Lsk/mimac/slideshow/music/MusicPlayer;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPlayId()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lsk/mimac/slideshow/music/MusicPlayer;->playUrl(Ljava/lang/String;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stream{content=\'"

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
