.class public Lsk/mimac/slideshow/gui/play/HtmlToPlay;
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
    .locals 6

    .line 1
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->resolveDescText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItemTextColor()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPlayId()I

    move-result v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lsk/mimac/slideshow/gui/ShowHelper;->showHtml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public play(Lsk/mimac/slideshow/music/MusicPlayer;)V
    .locals 1

    .line 2
    new-instance p1, Lsk/mimac/slideshow/item/CantShowException;

    const-string v0, "HTML can\'t be played in music player"

    invoke-direct {p1, v0}, Lsk/mimac/slideshow/item/CantShowException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Html{position=\'"

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
