.class public interface abstract Lio/milton/event/EventManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract fireEvent(Lio/milton/event/Event;)V
.end method

.method public abstract registerEventListener(Lio/milton/event/EventListener;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/milton/event/Event;",
            ">(",
            "Lio/milton/event/EventListener;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation
.end method
