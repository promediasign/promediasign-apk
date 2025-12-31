.class public Lsk/mimac/slideshow/gui/AudioItemThread;
.super Lsk/mimac/slideshow/gui/ItemThread;
.source "SourceFile"


# instance fields
.field private final musicPlayer:Lsk/mimac/slideshow/music/MusicPlayer;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "AudioThread"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/gui/ItemThread;-><init>(Ljava/lang/String;Z)V

    invoke-static {p0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMusicPlayer(Lsk/mimac/slideshow/gui/ItemThread;)Lsk/mimac/slideshow/music/MusicPlayer;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/gui/AudioItemThread;->musicPlayer:Lsk/mimac/slideshow/music/MusicPlayer;

    new-instance v0, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    invoke-direct {v0, p0}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;-><init>(Lsk/mimac/slideshow/gui/ItemThread;)V

    invoke-virtual {p0, v0}, Lsk/mimac/slideshow/gui/ItemThread;->setCurrentPlaylistResolver(Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;)V

    return-void
.end method


# virtual methods
.method public getFormattedPosition()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/AudioItemThread;->musicPlayer:Lsk/mimac/slideshow/music/MusicPlayer;

    invoke-interface {v0}, Lsk/mimac/slideshow/music/MusicPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/AudioItemThread;->musicPlayer:Lsk/mimac/slideshow/music/MusicPlayer;

    invoke-interface {v1}, Lsk/mimac/slideshow/music/MusicPlayer;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lsk/mimac/slideshow/gui/ItemThread;->formatPositionDuration(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/AudioItemThread;->musicPlayer:Lsk/mimac/slideshow/music/MusicPlayer;

    invoke-interface {v0}, Lsk/mimac/slideshow/music/MusicPlayer;->pause()V

    invoke-super {p0}, Lsk/mimac/slideshow/gui/ItemThread;->pause()V

    return-void
.end method

.method public playInternal(Lsk/mimac/slideshow/gui/play/ToPlay;)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/AudioItemThread;->musicPlayer:Lsk/mimac/slideshow/music/MusicPlayer;

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/gui/play/ToPlay;->play(Lsk/mimac/slideshow/music/MusicPlayer;)V

    return-void
.end method

.method public prepareInternal(Lsk/mimac/slideshow/gui/play/ToPlay;)V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/AudioItemThread;->musicPlayer:Lsk/mimac/slideshow/music/MusicPlayer;

    invoke-interface {v0}, Lsk/mimac/slideshow/music/MusicPlayer;->resume()V

    invoke-super {p0}, Lsk/mimac/slideshow/gui/ItemThread;->resume()V

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-super {p0}, Lsk/mimac/slideshow/gui/ItemThread;->stop()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/AudioItemThread;->musicPlayer:Lsk/mimac/slideshow/music/MusicPlayer;

    invoke-interface {v0}, Lsk/mimac/slideshow/music/MusicPlayer;->stop()V

    return-void
.end method
