.class public Lcom/realtek/hardware/RtkAudioRedirectManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RtkAudioRedirectManager"


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

.method private native _setupAudioRedirect()V
.end method

.method private native _stopAudioRedirect()V
.end method


# virtual methods
.method public setupAudioRedirect()V
    .locals 0

    invoke-direct {p0}, Lcom/realtek/hardware/RtkAudioRedirectManager;->_setupAudioRedirect()V

    return-void
.end method

.method public stopAudioRedirect()V
    .locals 0

    invoke-direct {p0}, Lcom/realtek/hardware/RtkAudioRedirectManager;->_stopAudioRedirect()V

    return-void
.end method
