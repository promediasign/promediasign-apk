.class public Lcom/realtek/hardware/RtkAoutUtilManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RtkAoutUtilManager"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "rtk-display_ctrl_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native _init()Z
.end method

.method private native _setAudioAGC(I)Z
.end method

.method private native _setAudioDACOn(I)Z
.end method

.method private native _setAudioDecVolume(I)V
.end method

.method private native _setAudioDelay(I)Z
.end method

.method private native _setAudioForceChannelCtrl(I)Z
.end method

.method private native _setAudioHdmiFreqMode()Z
.end method

.method private native _setAudioHdmiMute(Z)V
.end method

.method private native _setAudioHdmiOutput(I)Z
.end method

.method private native _setAudioNativeSR(I)Z
.end method

.method private native _setAudioSpdifOutput(I)Z
.end method

.method private native _setAudioSpdifOutputOffMode()Z
.end method

.method private native _setAudioSurroundSoundMode(I)V
.end method


# virtual methods
.method public init()Z
    .locals 1

    invoke-direct {p0}, Lcom/realtek/hardware/RtkAoutUtilManager;->_init()Z

    move-result v0

    return v0
.end method

.method public setAudioAGC(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkAoutUtilManager;->_setAudioAGC(I)Z

    move-result p1

    return p1
.end method

.method public setAudioDACOn(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkAoutUtilManager;->_setAudioDACOn(I)Z

    move-result p1

    return p1
.end method

.method public setAudioDecVolume(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkAoutUtilManager;->_setAudioDecVolume(I)V

    return-void
.end method

.method public setAudioDelay(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkAoutUtilManager;->_setAudioDelay(I)Z

    move-result p1

    return p1
.end method

.method public setAudioForceChannelCtrl(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkAoutUtilManager;->_setAudioForceChannelCtrl(I)Z

    move-result p1

    return p1
.end method

.method public setAudioHdmiFreqMode()Z
    .locals 1

    invoke-direct {p0}, Lcom/realtek/hardware/RtkAoutUtilManager;->_setAudioHdmiFreqMode()Z

    move-result v0

    return v0
.end method

.method public setAudioHdmiMute(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkAoutUtilManager;->_setAudioHdmiMute(Z)V

    return-void
.end method

.method public setAudioHdmiOutput(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkAoutUtilManager;->_setAudioHdmiOutput(I)Z

    move-result p1

    return p1
.end method

.method public setAudioNativeSR(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkAoutUtilManager;->_setAudioNativeSR(I)Z

    move-result p1

    return p1
.end method

.method public setAudioSpdifOutput(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkAoutUtilManager;->_setAudioSpdifOutput(I)Z

    move-result p1

    return p1
.end method

.method public setAudioSpdifOutputOffMode()Z
    .locals 1

    invoke-direct {p0}, Lcom/realtek/hardware/RtkAoutUtilManager;->_setAudioSpdifOutputOffMode()Z

    move-result v0

    return v0
.end method

.method public setAudioSurroundSoundMode(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkAoutUtilManager;->_setAudioSurroundSoundMode(I)V

    return-void
.end method
