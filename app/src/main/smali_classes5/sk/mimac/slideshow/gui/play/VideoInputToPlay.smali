.class public Lsk/mimac/slideshow/gui/play/VideoInputToPlay;
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
    .locals 9

    .line 1
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v1, "videoInput"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v1, "rotation"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v4, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v1, "textColor"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v1, "mirror"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getMusicType()Lsk/mimac/slideshow/enums/MusicType;

    move-result-object v3

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->resolveDescText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPlayId()I

    move-result v8

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Lsk/mimac/slideshow/gui/ShowHelper;->showVideoInput(Ljava/lang/String;Lsk/mimac/slideshow/enums/MusicType;IZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public play(Lsk/mimac/slideshow/music/MusicPlayer;)V
    .locals 1

    .line 2
    new-instance p1, Lsk/mimac/slideshow/item/CantShowException;

    const-string v0, "Video input can\'t be played in music player"

    invoke-direct {p1, v0}, Lsk/mimac/slideshow/item/CantShowException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoInput{position=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
