.class abstract Landroidx/media3/exoplayer/ExoPlayerImpl$Api23;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api23"
.end annotation


# direct methods
.method public static isSuitableAudioOutputPresentInAudioDeviceInfoList(Landroid/content/Context;[Landroid/media/AudioDeviceInfo;)Z
    .locals 8

    invoke-static {p0}, Landroidx/media3/common/util/Util;->isWear(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length p0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_8

    aget-object v3, p1, v2

    invoke-static {v3}, LA/a;->b(Landroid/media/AudioDeviceInfo;)I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_7

    invoke-static {v3}, LA/a;->b(Landroid/media/AudioDeviceInfo;)I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_7

    invoke-static {v3}, LA/a;->b(Landroid/media/AudioDeviceInfo;)I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_7

    invoke-static {v3}, LA/a;->b(Landroid/media/AudioDeviceInfo;)I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_7

    invoke-static {v3}, LA/a;->b(Landroid/media/AudioDeviceInfo;)I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_7

    invoke-static {v3}, LA/a;->b(Landroid/media/AudioDeviceInfo;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_2

    invoke-static {v3}, LA/a;->b(Landroid/media/AudioDeviceInfo;)I

    move-result v6

    const/16 v7, 0x16

    if-ne v6, v7, :cond_2

    return v0

    :cond_2
    const/16 v6, 0x1c

    if-lt v4, v6, :cond_3

    invoke-static {v3}, LA/a;->b(Landroid/media/AudioDeviceInfo;)I

    move-result v6

    const/16 v7, 0x17

    if-ne v6, v7, :cond_3

    return v0

    :cond_3
    const/16 v6, 0x1f

    if-lt v4, v6, :cond_5

    invoke-static {v3}, LA/a;->b(Landroid/media/AudioDeviceInfo;)I

    move-result v6

    if-eq v6, v5, :cond_4

    invoke-static {v3}, LA/a;->b(Landroid/media/AudioDeviceInfo;)I

    move-result v5

    const/16 v6, 0x1b

    if-ne v5, v6, :cond_5

    :cond_4
    return v0

    :cond_5
    const/16 v5, 0x21

    if-lt v4, v5, :cond_6

    invoke-static {v3}, LA/a;->b(Landroid/media/AudioDeviceInfo;)I

    move-result v3

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_6

    return v0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    return v0

    :cond_8
    return v1
.end method

.method public static registerAudioDeviceCallback(Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0, p1, p2}, LA/a;->l(Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    return-void
.end method
