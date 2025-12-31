.class Lcom/hivemq/client/internal/logging/InternalNoopLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/logging/InternalLogger;


# static fields
.field static final INSTANCE:Lcom/hivemq/client/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hivemq/client/internal/logging/InternalNoopLogger;

    invoke-direct {v0}, Lcom/hivemq/client/internal/logging/InternalNoopLogger;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/logging/InternalNoopLogger;->INSTANCE:Lcom/hivemq/client/internal/logging/InternalLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 2
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 2
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3
    return-void
.end method
