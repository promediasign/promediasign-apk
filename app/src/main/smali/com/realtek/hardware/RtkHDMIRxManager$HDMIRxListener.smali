.class public interface abstract Lcom/realtek/hardware/RtkHDMIRxManager$HDMIRxListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/realtek/hardware/RtkHDMIRxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HDMIRxListener"
.end annotation


# static fields
.field public static final EVENT_CAMERA_ERROR:I = 0x1

.field public static final EVENT_HDMIRX_VIDEO_HOTPLUG:I = 0x2

.field public static final EVENT_REMOVE_HDMIRX_INSTANCE:I = 0x3


# virtual methods
.method public abstract onEvent(II)V
.end method
