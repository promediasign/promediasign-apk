.class public Lio/milton/http/DeleteHelperImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/DeleteHelper;


# instance fields
.field private final handlerHelper:Lio/milton/http/HandlerHelper;

.field private final log:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Lio/milton/http/HandlerHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lio/milton/http/DeleteHelperImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lio/milton/http/DeleteHelperImpl;->log:Lorg/slf4j/Logger;

    iput-object p1, p0, Lio/milton/http/DeleteHelperImpl;->handlerHelper:Lio/milton/http/HandlerHelper;

    return-void
.end method


# virtual methods
.method public delete(Lio/milton/resource/DeletableResource;Lio/milton/event/EventManager;)V
    .locals 3

    instance-of v0, p1, Lio/milton/resource/CollectionResource;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lio/milton/resource/CollectionResource;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Lio/milton/resource/CollectionResource;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/milton/resource/Resource;

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/milton/http/DeleteHelperImpl;->log:Lorg/slf4j/Logger;

    const-string v2, "got a null item in list"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lio/milton/resource/DeletableResource;

    if-eqz v2, :cond_1

    check-cast v1, Lio/milton/resource/DeletableResource;

    invoke-virtual {p0, v1, p2}, Lio/milton/http/DeleteHelperImpl;->delete(Lio/milton/resource/DeletableResource;Lio/milton/event/EventManager;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lio/milton/http/DeleteHelperImpl;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Couldnt delete child resource: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " of type; "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because it does not implement: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lio/milton/resource/DeletableResource;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    new-instance p1, Lio/milton/http/exceptions/ConflictException;

    invoke-direct {p1, v1}, Lio/milton/http/exceptions/ConflictException;-><init>(Lio/milton/resource/Resource;)V

    throw p1

    :cond_2
    invoke-interface {p1}, Lio/milton/resource/DeletableResource;->delete()V

    if-eqz p2, :cond_4

    new-instance v0, Lio/milton/event/DeleteEvent;

    invoke-direct {v0, p1}, Lio/milton/event/DeleteEvent;-><init>(Lio/milton/resource/Resource;)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lio/milton/resource/DeletableResource;->delete()V

    if-eqz p2, :cond_4

    new-instance v0, Lio/milton/event/DeleteEvent;

    invoke-direct {v0, p1}, Lio/milton/event/DeleteEvent;-><init>(Lio/milton/resource/Resource;)V

    :goto_1
    invoke-interface {p2, v0}, Lio/milton/event/EventManager;->fireEvent(Lio/milton/event/Event;)V

    :cond_4
    return-void
.end method

.method public isLockedOut(Lio/milton/http/Request;Lio/milton/resource/Resource;)Z
    .locals 3

    instance-of v0, p2, Lio/milton/resource/CollectionResource;

    if-eqz v0, :cond_5

    check-cast p2, Lio/milton/resource/CollectionResource;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Lio/milton/resource/CollectionResource;->getChildren()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/milton/resource/Resource;

    instance-of v1, v0, Lio/milton/resource/DeletableResource;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lio/milton/resource/DeletableResource;

    invoke-virtual {p0, p1, v1}, Lio/milton/http/DeleteHelperImpl;->isLockedOut(Lio/milton/http/Request;Lio/milton/resource/Resource;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lio/milton/http/DeleteHelperImpl;->log:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/milton/http/DeleteHelperImpl;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "isLocked: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :cond_1
    return v2

    :cond_2
    iget-object p1, p0, Lio/milton/http/DeleteHelperImpl;->log:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lio/milton/http/DeleteHelperImpl;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "a child resource is not deletable: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :cond_3
    return v2

    :cond_4
    const/4 p1, 0x0

    return p1

    :cond_5
    iget-object v0, p0, Lio/milton/http/DeleteHelperImpl;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-virtual {v0, p1, p2}, Lio/milton/http/HandlerHelper;->isLockedOut(Lio/milton/http/Request;Lio/milton/resource/Resource;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lio/milton/http/DeleteHelperImpl;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lio/milton/http/DeleteHelperImpl;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isLocked, as reported by handlerHelper on resource: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :cond_6
    return p1
.end method
