.class public interface abstract Lsk/mimac/slideshow/serial/SerialService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/serial/SerialService$SerialReadListener;
    }
.end annotation


# virtual methods
.method public abstract getState()Ljava/lang/String;
.end method

.method public abstract isActive()Z
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract writeMessage([B)Z
.end method
