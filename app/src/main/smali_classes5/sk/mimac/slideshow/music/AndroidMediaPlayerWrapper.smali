.class public Lsk/mimac/slideshow/music/AndroidMediaPlayerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/music/GenericMediaPlayer;


# instance fields
.field private final mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lsk/mimac/slideshow/music/AndroidMediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    return-void

    :cond_0
    new-instance p1, Lsk/mimac/slideshow/item/CantShowException;

    const-string v0, "Media player is null"

    invoke-direct {p1, v0}, Lsk/mimac/slideshow/item/CantShowException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/music/AndroidMediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/music/AndroidMediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/music/AndroidMediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/music/AndroidMediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/music/AndroidMediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/music/AndroidMediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public setVolume(I)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/music/AndroidMediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    int-to-float p1, p1

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/music/AndroidMediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/music/AndroidMediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lsk/mimac/slideshow/music/AndroidMediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method
