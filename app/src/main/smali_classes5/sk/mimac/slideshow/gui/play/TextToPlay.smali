.class public Lsk/mimac/slideshow/gui/play/TextToPlay;
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
    .locals 2

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Item;->getType()Lsk/mimac/slideshow/enums/ItemType;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/enums/ItemType;->TEXT:Lsk/mimac/slideshow/enums/ItemType;

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-super {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getLength()I

    move-result v0

    return v0

    :cond_2
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->VIDEO_TIMEOUT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public play(Lsk/mimac/slideshow/gui/ShowHelper;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    const-string v1, "textColor"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, "#555555"

    :goto_1
    invoke-static {v1}, Lsk/mimac/slideshow/utils/ColorUtils;->parseColorRGBA(Ljava/lang/String;)I

    move-result v7

    const-string v1, "fontSize"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    move-object v9, v1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :goto_3
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v1

    const-string v2, "fontFamily"

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getType()Lsk/mimac/slideshow/enums/ItemType;

    move-result-object v1

    sget-object v3, Lsk/mimac/slideshow/enums/ItemType;->TEXT:Lsk/mimac/slideshow/enums/ItemType;

    if-ne v1, v3, :cond_3

    new-instance v1, Lsk/mimac/slideshow/model/TextModel;

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lsk/mimac/slideshow/model/TextModel;-><init>(Ljava/lang/CharSequence;IZIILjava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    :cond_3
    const-string v1, "scrollSpeed"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v6, v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x5

    const/4 v6, 0x5

    :goto_4
    new-instance v1, Lsk/mimac/slideshow/model/TextModel;

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lsk/mimac/slideshow/model/TextModel;-><init>(Ljava/lang/CharSequence;IZIILjava/lang/String;Ljava/lang/Integer;)V

    :goto_5
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPlayId()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lsk/mimac/slideshow/gui/ShowHelper;->showTextView(Lsk/mimac/slideshow/model/TextModel;I)V

    return-void
.end method

.method public play(Lsk/mimac/slideshow/music/MusicPlayer;)V
    .locals 1

    .line 2
    new-instance p1, Lsk/mimac/slideshow/item/CantShowException;

    const-string v0, "Text can\'t be played in music player"

    invoke-direct {p1, v0}, Lsk/mimac/slideshow/item/CantShowException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Text{position=\'"

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
