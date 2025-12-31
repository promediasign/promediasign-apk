.class abstract Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$Api23;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api23"
.end annotation


# direct methods
.method public static setAudioSinkPreferredDevice(Landroidx/media3/exoplayer/audio/AudioSink;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lr/a;->h(Ljava/lang/Object;)Landroid/media/AudioDeviceInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)V

    return-void
.end method
