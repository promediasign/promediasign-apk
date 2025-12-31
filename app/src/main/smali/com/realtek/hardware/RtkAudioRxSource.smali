.class public Lcom/realtek/hardware/RtkAudioRxSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/realtek/hardware/RtkAudioRxSource$HDMIRxListener;,
        Lcom/realtek/hardware/RtkAudioRxSource$Callback;,
        Lcom/realtek/hardware/RtkAudioRxSource$CallbackHandler;
    }
.end annotation


# static fields
.field private static final EVENT_DATA_AVAILABLE:I = 0x1

.field private static final EVENT_HDMIRX_HOTPLUG_IN:I = 0x2

.field private static final EVENT_HDMIRX_HOTPULL_OUT:I = 0x3

.field public static final HDMIRX_AUDIO_MODE_PCM:I = 0x0

.field public static final HDMIRX_AUDIO_MODE_RAW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RtkAudioRxSource"


# instance fields
.field private mCallback:Lcom/realtek/hardware/RtkAudioRxSource$Callback;

.field private mCallbackHandler:Lcom/realtek/hardware/RtkAudioRxSource$CallbackHandler;

.field private mListener:Lcom/realtek/hardware/RtkAudioRxSource$HDMIRxListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "rtk-display_ctrl_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/realtek/hardware/RtkAudioRxSource;->mCallback:Lcom/realtek/hardware/RtkAudioRxSource$Callback;

    iput-object v0, p0, Lcom/realtek/hardware/RtkAudioRxSource;->mCallbackHandler:Lcom/realtek/hardware/RtkAudioRxSource$CallbackHandler;

    iput-object v0, p0, Lcom/realtek/hardware/RtkAudioRxSource;->mListener:Lcom/realtek/hardware/RtkAudioRxSource$HDMIRxListener;

    invoke-direct {p0}, Lcom/realtek/hardware/RtkAudioRxSource;->_nativeInit()V

    return-void
.end method

.method private native _createHDMIRxAudioInstance(III)Z
.end method

.method private native _deleteHDMIRxAudioInstance()Z
.end method

.method private native _nativeFinalize()V
.end method

.method private native _nativeInit()V
.end method

.method private native _setHDMIRxAudioRecord(Z)Z
.end method

.method private native _setHDMIRxAudioRender(Z)Z
.end method

.method private native _setHDMIRxAudioVolume(I)Z
.end method

.method public static synthetic access$000(Lcom/realtek/hardware/RtkAudioRxSource;)Lcom/realtek/hardware/RtkAudioRxSource$Callback;
    .locals 0

    iget-object p0, p0, Lcom/realtek/hardware/RtkAudioRxSource;->mCallback:Lcom/realtek/hardware/RtkAudioRxSource$Callback;

    return-object p0
.end method

.method private postEventFromNative(IIILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/realtek/hardware/RtkAudioRxSource;->mCallbackHandler:Lcom/realtek/hardware/RtkAudioRxSource$CallbackHandler;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/realtek/hardware/RtkAudioRxSource;->mCallbackHandler:Lcom/realtek/hardware/RtkAudioRxSource$CallbackHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/realtek/hardware/RtkAudioRxSource;->mListener:Lcom/realtek/hardware/RtkAudioRxSource$HDMIRxListener;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    invoke-interface {p1, v1, p2}, Lcom/realtek/hardware/RtkAudioRxSource$HDMIRxListener;->onEvent(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/realtek/hardware/RtkAudioRxSource;->mListener:Lcom/realtek/hardware/RtkAudioRxSource$HDMIRxListener;

    if-eqz p1, :cond_2

    invoke-interface {p1, v1, v1}, Lcom/realtek/hardware/RtkAudioRxSource$HDMIRxListener;->onEvent(II)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public captureHDMIRxAudioData([B)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public createHDMIRxAudioInstance(III)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/realtek/hardware/RtkAudioRxSource;->_createHDMIRxAudioInstance(III)Z

    move-result p1

    return p1
.end method

.method public deleteHDMIRxAudioInstance()Z
    .locals 1

    invoke-direct {p0}, Lcom/realtek/hardware/RtkAudioRxSource;->_deleteHDMIRxAudioInstance()Z

    move-result v0

    return v0
.end method

.method public finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/realtek/hardware/RtkAudioRxSource;->_nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public setCallback(Lcom/realtek/hardware/RtkAudioRxSource$Callback;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/realtek/hardware/RtkAudioRxSource$CallbackHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v0, p0, p0, p2}, Lcom/realtek/hardware/RtkAudioRxSource$CallbackHandler;-><init>(Lcom/realtek/hardware/RtkAudioRxSource;Lcom/realtek/hardware/RtkAudioRxSource;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/realtek/hardware/RtkAudioRxSource;->mCallbackHandler:Lcom/realtek/hardware/RtkAudioRxSource$CallbackHandler;

    iput-object p1, p0, Lcom/realtek/hardware/RtkAudioRxSource;->mCallback:Lcom/realtek/hardware/RtkAudioRxSource$Callback;

    return-void
.end method

.method public setHDMIRxAudioRecord(Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkAudioRxSource;->_setHDMIRxAudioRecord(Z)Z

    move-result p1

    return p1
.end method

.method public setHDMIRxAudioRender(Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkAudioRxSource;->_setHDMIRxAudioRender(Z)Z

    move-result p1

    return p1
.end method

.method public setHDMIRxAudioVolume(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkAudioRxSource;->_setHDMIRxAudioVolume(I)Z

    move-result p1

    return p1
.end method

.method public setListener(Lcom/realtek/hardware/RtkAudioRxSource$HDMIRxListener;)V
    .locals 0

    iput-object p1, p0, Lcom/realtek/hardware/RtkAudioRxSource;->mListener:Lcom/realtek/hardware/RtkAudioRxSource$HDMIRxListener;

    return-void
.end method
