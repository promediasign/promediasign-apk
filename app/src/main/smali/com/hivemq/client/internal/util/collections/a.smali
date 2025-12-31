.class public abstract synthetic Lcom/hivemq/client/internal/util/collections/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;-><init>(Lcom/hivemq/client/internal/util/collections/ImmutableIntList$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static b()Lcom/hivemq/client/internal/util/collections/ImmutableIntList;
    .locals 1

    .line 1
    sget-object v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyIntList;->INSTANCE:Lcom/hivemq/client/internal/util/collections/ImmutableEmptyIntList;

    .line 2
    .line 3
    return-object v0
.end method
