.class public Lsk/mimac/slideshow/gui/play/PdfToPlay;
.super Lsk/mimac/slideshow/gui/play/ToPlay;
.source "SourceFile"


# instance fields
.field private pageCount:I

.field private pageIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;-><init>()V

    return-void
.end method


# virtual methods
.method public canGoBackward()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lsk/mimac/slideshow/gui/play/PdfToPlay;->pageIndex:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lsk/mimac/slideshow/gui/play/PdfToPlay;->pageIndex:I

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canGoForward()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lsk/mimac/slideshow/gui/play/PdfToPlay;->pageIndex:I

    iget v1, p0, Lsk/mimac/slideshow/gui/play/PdfToPlay;->pageCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public play(Lsk/mimac/slideshow/gui/ShowHelper;)V
    .locals 13

    .line 1
    iget v2, p0, Lsk/mimac/slideshow/gui/play/PdfToPlay;->pageIndex:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lsk/mimac/slideshow/gui/play/PdfToPlay;->pageIndex:I

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v3, "animationSpeed"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v3

    const-string v4, "animationTypes"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v4

    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v4

    const-string v6, "zoomPan"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->resolveDescText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItemTextColor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getLength()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v10, v0

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v3}, Lsk/mimac/slideshow/gui/play/ToPlay;->getAnimationTypes(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v0

    move-object v11, v0

    goto :goto_4

    :cond_4
    move-object v11, v1

    :goto_4
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPlayId()I

    move-result v0

    add-int/lit8 v1, v2, 0x1

    neg-int v1, v1

    mul-int v12, v0, v1

    move-object v0, p1

    move-object v1, v4

    move-object v3, v6

    move-object v4, v7

    move v5, v9

    move v6, v10

    move-object v7, v11

    move v9, v12

    invoke-virtual/range {v0 .. v9}, Lsk/mimac/slideshow/gui/ShowHelper;->showPdf(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/util/Set;ZI)I

    move-result p1

    iput p1, p0, Lsk/mimac/slideshow/gui/play/PdfToPlay;->pageCount:I

    return-void
.end method

.method public play(Lsk/mimac/slideshow/music/MusicPlayer;)V
    .locals 1

    .line 2
    new-instance p1, Lsk/mimac/slideshow/item/CantShowException;

    const-string v0, "PDF can\'t be played in music player"

    invoke-direct {p1, v0}, Lsk/mimac/slideshow/item/CantShowException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prepare(Lsk/mimac/slideshow/gui/ShowHelper;)V
    .locals 4

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getContent()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lsk/mimac/slideshow/gui/play/PdfToPlay;->pageIndex:I

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPlayId()I

    move-result v2

    iget v3, p0, Lsk/mimac/slideshow/gui/play/PdfToPlay;->pageIndex:I

    add-int/lit8 v3, v3, 0x1

    neg-int v3, v3

    mul-int v2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lsk/mimac/slideshow/gui/ShowHelper;->preparePdf(Ljava/lang/String;II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Pdf{content=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getContent()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "\', position="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPosition()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", pageIndex="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lsk/mimac/slideshow/gui/play/PdfToPlay;->pageIndex:I

    .line 33
    .line 34
    const-string v2, "}"

    .line 35
    .line 36
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method
