.class public interface abstract Lrockchip/hardware/hdmi/V1_0/IHdmi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IHwInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrockchip/hardware/hdmi/V1_0/IHdmi$Proxy;
    }
.end annotation


# virtual methods
.method public abstract getHdmiDeviceId()Ljava/lang/String;
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
