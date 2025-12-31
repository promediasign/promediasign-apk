.class Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptyIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;
.implements Lj$/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator<",
        "Ljava/lang/Object;",
        ">;",
        "Lj$/util/Iterator;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptyIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptyIterator;

    invoke-direct {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptyIterator;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptyIterator;->INSTANCE:Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptyIterator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of()Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptyIterator;->INSTANCE:Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptyIterator;

    return-object v0
.end method


# virtual methods
.method public final synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, LD0/a;->a(Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;Ljava/lang/Object;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Consumer"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public hasNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final synthetic remove()V
    .locals 0

    .line 1
    invoke-static {p0}, LD0/a;->b(Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;)V

    return-void
.end method

.method public final synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, LD0/a;->c(Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;Ljava/lang/Object;)V

    return-void
.end method
