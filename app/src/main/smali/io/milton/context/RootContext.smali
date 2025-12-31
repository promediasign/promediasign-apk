.class public Lio/milton/context/RootContext;
.super Lio/milton/context/Context;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final factoryCatalog:Lio/milton/context/FactoryCatalog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/context/RootContext;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/context/RootContext;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/milton/context/Context;-><init>()V

    new-instance v0, Lio/milton/context/FactoryCatalog;

    invoke-direct {v0}, Lio/milton/context/FactoryCatalog;-><init>()V

    iput-object v0, p0, Lio/milton/context/RootContext;->factoryCatalog:Lio/milton/context/FactoryCatalog;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lio/milton/context/RootContext;->shutdown()V

    return-void
.end method

.method public shutdown()V
    .locals 7

    sget-object v0, Lio/milton/context/RootContext;->log:Lorg/slf4j/Logger;

    const-string v1, "shutdown"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    iget-object v0, p0, Lio/milton/context/Context;->itemByClass:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    check-cast v3, Lio/milton/context/Registration;

    :try_start_0
    sget-object v4, Lio/milton/context/RootContext;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lio/milton/context/Registration;->item:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {v3}, Lio/milton/context/Registration;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    sget-object v4, Lio/milton/context/RootContext;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to do remove on registration: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/milton/context/RootContext;->factoryCatalog:Lio/milton/context/FactoryCatalog;

    iget-object v0, v0, Lio/milton/context/FactoryCatalog;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LA/g;->x(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
.end method
