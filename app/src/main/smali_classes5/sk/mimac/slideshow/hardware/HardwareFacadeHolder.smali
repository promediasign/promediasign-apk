.class public abstract Lsk/mimac/slideshow/hardware/HardwareFacadeHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lsk/mimac/slideshow/hardware/HardwareFacade;


# direct methods
.method public static getInstance()Lsk/mimac/slideshow/hardware/HardwareFacade;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/hardware/HardwareFacadeHolder;->instance:Lsk/mimac/slideshow/hardware/HardwareFacade;

    return-object v0
.end method

.method public static setInstance(Lsk/mimac/slideshow/hardware/HardwareFacade;)V
    .locals 0

    sput-object p0, Lsk/mimac/slideshow/hardware/HardwareFacadeHolder;->instance:Lsk/mimac/slideshow/hardware/HardwareFacade;

    return-void
.end method
