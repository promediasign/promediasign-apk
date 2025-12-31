.class public abstract synthetic Lcom/hivemq/client/internal/util/collections/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->of(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static a(Lcom/hivemq/client/internal/util/collections/ImmutableList;ILjava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public static b(Lcom/hivemq/client/internal/util/collections/ImmutableList;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public static c(Lcom/hivemq/client/internal/util/collections/ImmutableList;ILjava/util/Collection;)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public static d(Lcom/hivemq/client/internal/util/collections/ImmutableList;Ljava/util/Collection;)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public static e(Lcom/hivemq/client/internal/util/collections/ImmutableList;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public static f(Lcom/hivemq/client/internal/util/collections/ImmutableList;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-ltz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static g(Lcom/hivemq/client/internal/util/collections/ImmutableList;Ljava/util/Collection;)Z
    .locals 1

    .line 1
    const-string v0, "Collection"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p0, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_1
    const/4 p0, 0x1

    .line 29
    return p0
.end method

.method public static h(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static i(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->listIterator()Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic j(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->iterator()Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static k(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->listIterator(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static bridge synthetic l(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Ljava/util/ListIterator;
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->listIterator()Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static m(Lcom/hivemq/client/internal/util/collections/ImmutableList;I)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public static n(Lcom/hivemq/client/internal/util/collections/ImmutableList;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public static o(Lcom/hivemq/client/internal/util/collections/ImmutableList;Ljava/util/Collection;)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public static p(Lcom/hivemq/client/internal/util/collections/ImmutableList;Ljava/util/function/Predicate;)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public static q(Lcom/hivemq/client/internal/util/collections/ImmutableList;Ljava/util/function/UnaryOperator;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public static r(Lcom/hivemq/client/internal/util/collections/ImmutableList;Ljava/util/Collection;)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public static s(Lcom/hivemq/client/internal/util/collections/ImmutableList;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public static t(Lcom/hivemq/client/internal/util/collections/ImmutableList;Ljava/util/Comparator;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public static u(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static v()Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;-><init>(Lcom/hivemq/client/internal/util/collections/ImmutableList$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static w(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;-><init>(ILcom/hivemq/client/internal/util/collections/ImmutableList$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static x(Ljava/util/Collection;)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1

    .line 1
    const-string v0, "Immutable list"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/hivemq/client/internal/util/collections/b;->y(Ljava/util/Collection;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static y(Ljava/util/Collection;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p0, Lcom/hivemq/client/internal/util/collections/ImmutableList;

    .line 9
    .line 10
    invoke-interface {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->trim()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->of([Ljava/lang/Object;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    invoke-static {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->first(Ljava/util/Collection;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->of(Ljava/lang/Object;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_2
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;->of()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public static z()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;->of()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
