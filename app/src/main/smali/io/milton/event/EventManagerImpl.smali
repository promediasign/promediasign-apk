.class public Lio/milton/event/EventManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/event/EventManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/event/EventManagerImpl$Registration;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final registrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/milton/event/EventManagerImpl$Registration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/event/EventManagerImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/event/EventManagerImpl;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/milton/event/EventManagerImpl;->registrations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public fireEvent(Lio/milton/event/Event;)V
    .locals 7

    sget-object v0, Lio/milton/event/EventManagerImpl;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "fireEvent: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/milton/event/EventManagerImpl;->registrations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/milton/event/EventManagerImpl$Registration;

    invoke-static {v1}, Lio/milton/event/EventManagerImpl$Registration;->access$000(Lio/milton/event/EventManagerImpl$Registration;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1}, Lio/milton/event/EventManagerImpl$Registration;->access$100(Lio/milton/event/EventManagerImpl$Registration;)Lio/milton/event/EventListener;

    move-result-object v4

    check-cast v4, Lk1/p;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lsk/mimac/slideshow/http/webdav/WebdavService;->a(Lio/milton/event/Event;)V

    sget-object v4, Lio/milton/event/EventManagerImpl;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v1}, Lio/milton/event/EventManagerImpl$Registration;->access$100(Lio/milton/event/EventManagerImpl$Registration;)Lio/milton/event/EventListener;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "  fired on: {} completed in {}ms"

    invoke-interface {v4, v3, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized registerEventListener(Lio/milton/event/EventListener;Ljava/lang/Class;)V
    .locals 3
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

    const-string v0, "registerEventListener: "

    monitor-enter p0

    :try_start_0
    sget-object v1, Lio/milton/event/EventManagerImpl;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    new-instance v0, Lio/milton/event/EventManagerImpl$Registration;

    invoke-direct {v0, p0, p1, p2}, Lio/milton/event/EventManagerImpl$Registration;-><init>(Lio/milton/event/EventManagerImpl;Lio/milton/event/EventListener;Ljava/lang/Class;)V

    iget-object p1, p0, Lio/milton/event/EventManagerImpl;->registrations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
