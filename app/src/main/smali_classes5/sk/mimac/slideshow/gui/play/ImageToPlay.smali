.class public Lsk/mimac/slideshow/gui/play/ImageToPlay;
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
    .locals 16

    .line 1
    invoke-virtual/range {p0 .. p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v2, "imageBackgroundType"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    const-string v3, "animationSpeed"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v3

    const-string v4, "animationTypes"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v4

    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v4

    const-string v6, "zoomPan"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->resolveDescText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItemTextColor()Ljava/lang/String;

    move-result-object v9

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v0}, Lsk/mimac/slideshow/enums/ImageBackgroundType;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/ImageBackgroundType;

    move-result-object v0

    :goto_4
    move-object v10, v0

    goto :goto_5

    :cond_4
    sget-object v0, Lsk/mimac/slideshow/enums/ImageBackgroundType;->NONE:Lsk/mimac/slideshow/enums/ImageBackgroundType;

    goto :goto_4

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getLength()I

    move-result v0

    mul-int/lit16 v11, v0, 0x3e8

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v12, v5

    goto :goto_6

    :cond_5
    const/4 v12, 0x0

    :goto_6
    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lsk/mimac/slideshow/gui/play/ToPlay;->getAnimationTypes(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v1

    :goto_7
    move-object v13, v1

    goto :goto_8

    :cond_6
    move-object/from16 v0, p0

    goto :goto_7

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPlayId()I

    move-result v15

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v15}, Lsk/mimac/slideshow/gui/ShowHelper;->showImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/ImageBackgroundType;IILjava/util/Set;ZI)V

    return-void
.end method

.method public play(Lsk/mimac/slideshow/music/MusicPlayer;)V
    .locals 1

    .line 2
    new-instance p1, Lsk/mimac/slideshow/item/CantShowException;

    const-string v0, "Image can\'t be played in music player"

    invoke-direct {p1, v0}, Lsk/mimac/slideshow/item/CantShowException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prepare(Lsk/mimac/slideshow/gui/ShowHelper;)V
    .locals 4

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v1, "imageBackgroundType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->resolveDescText()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lsk/mimac/slideshow/enums/ImageBackgroundType;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/ImageBackgroundType;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lsk/mimac/slideshow/enums/ImageBackgroundType;->NONE:Lsk/mimac/slideshow/enums/ImageBackgroundType;

    :goto_1
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPlayId()I

    move-result v3

    invoke-virtual {p1, v1, v2, v0, v3}, Lsk/mimac/slideshow/gui/ShowHelper;->prepareImage(Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/ImageBackgroundType;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Image{content=\'"

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
