.class public interface abstract Lsk/mimac/slideshow/gui/video/VideoViewInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract mute()V
.end method

.method public abstract pause()V
.end method

.method public abstract prepare(Ljava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V
.end method

.method public abstract prepareNext(Ljava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V
.end method

.method public abstract requestFocus()Z
.end method

.method public abstract resume()V
.end method

.method public abstract setOnCompletionListener(Lsk/mimac/slideshow/utils/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/utils/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setOnErrorListener(Lsk/mimac/slideshow/utils/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/utils/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
.end method

.method public abstract setVolume(I)V
.end method

.method public abstract start()V
.end method

.method public abstract stopPlayback()V
.end method

.method public abstract unMute()V
.end method
