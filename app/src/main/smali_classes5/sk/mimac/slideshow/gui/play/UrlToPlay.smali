.class public Lsk/mimac/slideshow/gui/play/UrlToPlay;
.super Lsk/mimac/slideshow/gui/play/ToPlay;
.source "SourceFile"


# instance fields
.field private allowedDomains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private javascriptCode:Ljava/lang/String;

.field private showProgressBar:Z

.field private zoom:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsk/mimac/slideshow/gui/play/UrlToPlay;->showProgressBar:Z

    return-void
.end method


# virtual methods
.method public play(Lsk/mimac/slideshow/gui/ShowHelper;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getContent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsk/mimac/slideshow/gui/play/UrlToPlay;->javascriptCode:Ljava/lang/String;

    iget-object v3, p0, Lsk/mimac/slideshow/gui/play/UrlToPlay;->allowedDomains:Ljava/util/List;

    iget-object v4, p0, Lsk/mimac/slideshow/gui/play/UrlToPlay;->zoom:Ljava/lang/Integer;

    iget-boolean v5, p0, Lsk/mimac/slideshow/gui/play/UrlToPlay;->showProgressBar:Z

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->resolveDescText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getItemTextColor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/play/ToPlay;->getPlayId()I

    move-result v8

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lsk/mimac/slideshow/gui/ShowHelper;->showUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public play(Lsk/mimac/slideshow/music/MusicPlayer;)V
    .locals 1

    .line 2
    new-instance p1, Lsk/mimac/slideshow/item/CantShowException;

    const-string v0, "URL can\'t be played in music player"

    invoke-direct {p1, v0}, Lsk/mimac/slideshow/item/CantShowException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAllowedDomains(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsk/mimac/slideshow/gui/play/UrlToPlay;->allowedDomains:Ljava/util/List;

    return-void
.end method

.method public setJavascriptCode(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/UrlToPlay;
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/play/UrlToPlay;->javascriptCode:Ljava/lang/String;

    return-object p0
.end method

.method public setShowProgressBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/gui/play/UrlToPlay;->showProgressBar:Z

    return-void
.end method

.method public setZoom(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/play/UrlToPlay;->zoom:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Url{content=\'"

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
