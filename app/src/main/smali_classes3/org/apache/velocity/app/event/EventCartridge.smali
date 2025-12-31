.class public Lorg/apache/velocity/app/event/EventCartridge;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private includeHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/velocity/app/event/IncludeEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field initializedHandlers:Ljava/util/Set;

.field private invalidReferenceHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/velocity/app/event/InvalidReferenceEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private referenceHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/velocity/app/event/ReferenceInsertionEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected rsvc:Lorg/apache/velocity/runtime/RuntimeServices;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/app/event/EventCartridge;->referenceHandlers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/app/event/EventCartridge;->includeHandlers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/app/event/EventCartridge;->invalidReferenceHandlers:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/app/event/EventCartridge;->initializedHandlers:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/app/event/EventCartridge;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    return-void
.end method


# virtual methods
.method public hasMethodExceptionEventHandler()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public includeEvent(Lorg/apache/velocity/context/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lorg/apache/velocity/app/event/EventCartridge;->includeHandlers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_0

    return-object p2

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LA/g;->x(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public invalidGetMethod(Lorg/apache/velocity/context/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lorg/apache/velocity/app/event/EventCartridge;->invalidReferenceHandlers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return-object p3

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LA/g;->x(Ljava/lang/Object;)V

    throw p3
.end method

.method public invalidMethod(Lorg/apache/velocity/context/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lorg/apache/velocity/app/event/EventCartridge;->invalidReferenceHandlers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return-object p3

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LA/g;->x(Ljava/lang/Object;)V

    throw p3
.end method

.method public invalidSetMethod(Lorg/apache/velocity/context/Context;Ljava/lang/String;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Z
    .locals 0

    iget-object p1, p0, Lorg/apache/velocity/app/event/EventCartridge;->invalidReferenceHandlers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LA/g;->x(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public methodException(Lorg/apache/velocity/context/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;Lorg/apache/velocity/util/introspection/Info;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public referenceInsert(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lorg/apache/velocity/app/event/EventCartridge;->referenceHandlers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    return-object p3

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LA/g;->x(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public declared-synchronized setRuntimeServices(Lorg/apache/velocity/runtime/RuntimeServices;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/velocity/app/event/EventCartridge;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    if-nez v0, :cond_2

    iput-object p1, p0, Lorg/apache/velocity/app/event/EventCartridge;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    iget-object p1, p0, Lorg/apache/velocity/app/event/EventCartridge;->referenceHandlers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LA/g;->x(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lorg/apache/velocity/app/event/EventCartridge;->includeHandlers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LA/g;->x(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/apache/velocity/app/event/EventCartridge;->invalidReferenceHandlers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LA/g;->x(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    if-ne v0, p1, :cond_4

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    new-instance p1, Lorg/apache/velocity/exception/VelocityException;

    const-string v0, "an event cartridge cannot be used by several different runtime services instances"

    invoke-direct {p1, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    monitor-exit p0

    throw p1
.end method
