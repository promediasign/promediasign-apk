.class abstract Landroidx/media3/exoplayer/audio/DefaultAudioSink$Api23;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api23"
.end annotation


# direct methods
.method public static setPreferredDeviceOnAudioTrack(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioDeviceInfoApi23;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/media3/exoplayer/audio/AudioDeviceInfoApi23;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    :goto_0
    invoke-static {p0, p1}, Lr/a;->t(Landroid/media/AudioTrack;Landroid/media/AudioDeviceInfo;)V

    return-void
.end method
