.class public abstract Lcom/hivemq/client/internal/logging/InternalLoggerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SLF4J_AVAILABLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.slf4j.Logger"

    invoke-static {v0}, Lcom/hivemq/client/internal/util/ClassUtil;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->SLF4J_AVAILABLE:Z

    return-void
.end method

.method public static getLogger(Ljava/lang/Class;)Lcom/hivemq/client/internal/logging/InternalLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/hivemq/client/internal/logging/InternalLogger;"
        }
    .end annotation

    sget-boolean v0, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->SLF4J_AVAILABLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/hivemq/client/internal/logging/InternalSlf4jLogger;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/logging/InternalSlf4jLogger;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_0
    sget-object p0, Lcom/hivemq/client/internal/logging/InternalNoopLogger;->INSTANCE:Lcom/hivemq/client/internal/logging/InternalLogger;

    return-object p0
.end method
