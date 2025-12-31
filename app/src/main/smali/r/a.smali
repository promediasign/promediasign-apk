.class public abstract synthetic Lr/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Landroid/media/PlaybackParams;F)Landroid/media/PlaybackParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic a(Landroid/media/PlaybackParams;)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Landroid/view/Display$Mode;)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Landroid/app/ActivityManager;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .locals 6

    .line 1
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic e(Landroid/media/MediaCodecInfo$CodecCapabilities;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMaxSupportedInstances()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic f(Landroid/media/MediaDrm$KeyRequest;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaDrm$KeyRequest;->getRequestType()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic g(Landroid/view/Display$Mode;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic h(Ljava/lang/Object;)Landroid/media/AudioDeviceInfo;
    .locals 0

    .line 1
    check-cast p0, Landroid/media/AudioDeviceInfo;

    return-object p0
.end method

.method public static synthetic i()Landroid/media/AudioTrack$Builder;
    .locals 1

    .line 1
    new-instance v0, Landroid/media/AudioTrack$Builder;

    invoke-direct {v0}, Landroid/media/AudioTrack$Builder;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic j(Landroid/media/AudioTrack$Builder;)Landroid/media/AudioTrack$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Landroid/media/AudioTrack$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioTrack$Builder;Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Landroid/media/AudioTrack$Builder;)Landroid/media/AudioTrack;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o()Landroid/media/PlaybackParams;
    .locals 1

    .line 1
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic p(Landroid/media/AudioTrack;)Landroid/media/PlaybackParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q(Landroid/media/PlaybackParams;)Landroid/media/PlaybackParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r(Landroid/media/PlaybackParams;F)Landroid/media/PlaybackParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic s(Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    return-void
.end method

.method public static bridge synthetic t(Landroid/media/AudioTrack;Landroid/media/AudioDeviceInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    return-void
.end method

.method public static bridge synthetic u(Landroid/media/AudioTrack;Landroid/media/PlaybackParams;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    return-void
.end method

.method public static bridge synthetic v(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Landroid/media/MediaDrmResetException;

    return p0
.end method

.method public static bridge synthetic w(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Landroid/media/MediaDrmResetException;

    return p0
.end method

.method public static bridge synthetic x(Landroid/media/PlaybackParams;)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/PlaybackParams;->getPitch()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic y(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic z(Landroid/media/PlaybackParams;)Landroid/media/PlaybackParams;
    .locals 1

    .line 1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    move-result-object p0

    return-object p0
.end method
