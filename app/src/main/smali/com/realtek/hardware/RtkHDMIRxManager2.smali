.class public Lcom/realtek/hardware/RtkHDMIRxManager2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HDMIRX_AUDIO_FORMAT_PROPERTY:Ljava/lang/String; = "persist.vendor.rtk.hdmirx.raw"

.field private static final TAG:Ljava/lang/String; = "RtkHDMIRxManager2"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

.field private mRtkHDMIRxRecorder:Lcom/realtek/hardware/RtkHDMIRxRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "rtk-display_ctrl_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxManager2;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/realtek/hardware/HDMIRxStatus;

    invoke-direct {p1}, Lcom/realtek/hardware/HDMIRxStatus;-><init>()V

    iput-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxManager2;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    new-instance p1, Lcom/realtek/hardware/RtkHDMIRxRecorder;

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager2;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxManager2;->mRtkHDMIRxRecorder:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager2;->mRtkHDMIRxRecorder:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->closeHDMIRx()V

    :cond_0
    return-void
.end method

.method public getAudioMode()I
    .locals 3

    const-string v0, "persist.vendor.rtk.hdmirx.raw"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public getHDMIRxStatus()Lcom/realtek/hardware/HDMIRxStatus;
    .locals 1

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager2;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/realtek/hardware/HDMIRxStatus;->updateHDMIRxInfo()V

    :cond_0
    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager2;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    return-object v0
.end method

.method public getSupportedFpsRanges()[Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager2;->mRtkHDMIRxRecorder:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->getSupportedFpsRanges()[Landroid/util/Range;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedPreviewSizes()[Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager2;->mRtkHDMIRxRecorder:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->getSupportedPreviewSizes()[Landroid/util/Size;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedVideoSizes()[Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager2;->mRtkHDMIRxRecorder:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->getSupportedVideoSizes()[Landroid/util/Size;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isHDMIRxPlugged()Z
    .locals 1

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager2;->mRtkHDMIRxRecorder:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->isHDMIRxPlugged()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public muteHDMIRxAudio()Z
    .locals 2

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager2;->mRtkHDMIRxRecorder:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->setHDMIRxAudioRender(Z)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public open()I
    .locals 2

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager2;->mRtkHDMIRxRecorder:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/realtek/hardware/RtkHDMIRxManager2;->getAudioMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->setAudioMode(I)V

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager2;->mRtkHDMIRxRecorder:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-virtual {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->openHDMIRx()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setListener(Lcom/realtek/hardware/RtkAudioRxSource$HDMIRxListener;)V
    .locals 1

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager2;->mRtkHDMIRxRecorder:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->setListener(Lcom/realtek/hardware/RtkAudioRxSource$HDMIRxListener;)V

    :cond_0
    return-void
.end method

.method public setOutputFile(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager2;->mRtkHDMIRxRecorder:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    :cond_0
    return-void
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager2;->mRtkHDMIRxRecorder:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    :cond_0
    return-void
.end method

.method public setPreviewDisplay(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager2;->mRtkHDMIRxRecorder:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->setPreviewDisplay(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public setPreviewParameters(III)V
    .locals 1

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager2;->mRtkHDMIRxRecorder:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->setPreviewParameters(III)V

    :cond_0
    return-void
.end method

.method public setRecordParameters(Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;Lcom/realtek/hardware/RtkHDMIRxRecorder$AudioConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager2;->mRtkHDMIRxRecorder:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->setRecordParameters(Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;Lcom/realtek/hardware/RtkHDMIRxRecorder$AudioConfig;)V

    :cond_0
    return-void
.end method

.method public setTranscode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager2;->mRtkHDMIRxRecorder:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->startRecording()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->stopRecording()V

    :goto_0
    return-void
.end method

.method public unmuteHDMIRxAudio()Z
    .locals 2

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager2;->mRtkHDMIRxRecorder:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->setHDMIRxAudioRender(Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
