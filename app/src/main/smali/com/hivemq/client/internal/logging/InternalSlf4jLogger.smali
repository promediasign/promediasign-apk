.class Lcom/hivemq/client/internal/logging/InternalSlf4jLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/logging/InternalLogger;


# instance fields
.field private final delegate:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/logging/InternalSlf4jLogger;->delegate:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/logging/InternalSlf4jLogger;->delegate:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/hivemq/client/internal/logging/InternalSlf4jLogger;->delegate:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/hivemq/client/internal/logging/InternalSlf4jLogger;->delegate:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/hivemq/client/internal/logging/InternalSlf4jLogger;->delegate:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/logging/InternalSlf4jLogger;->delegate:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/hivemq/client/internal/logging/InternalSlf4jLogger;->delegate:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/hivemq/client/internal/logging/InternalSlf4jLogger;->delegate:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
