.class public final Lj$/util/Spliterators;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lj$/util/Spliterator;

.field private static final b:Lj$/util/H;

.field private static final c:Lj$/util/K;

.field private static final d:Lj$/util/E;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/Z;

    .line 0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 0
    sput-object v0, Lj$/util/Spliterators;->a:Lj$/util/Spliterator;

    new-instance v0, Lj$/util/X;

    .line 0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 0
    sput-object v0, Lj$/util/Spliterators;->b:Lj$/util/H;

    new-instance v0, Lj$/util/Y;

    .line 0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 0
    sput-object v0, Lj$/util/Spliterators;->c:Lj$/util/K;

    new-instance v0, Lj$/util/W;

    .line 0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 0
    sput-object v0, Lj$/util/Spliterators;->d:Lj$/util/E;

    return-void
.end method

.method private static a(III)V
    .locals 2

    if-gt p1, p2, :cond_2

    if-ltz p1, :cond_1

    if-gt p2, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "origin("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") > fence("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b()Lj$/util/E;
    .locals 1

    sget-object v0, Lj$/util/Spliterators;->d:Lj$/util/E;

    return-object v0
.end method

.method public static c()Lj$/util/H;
    .locals 1

    sget-object v0, Lj$/util/Spliterators;->b:Lj$/util/H;

    return-object v0
.end method

.method public static d()Lj$/util/K;
    .locals 1

    sget-object v0, Lj$/util/Spliterators;->c:Lj$/util/K;

    return-object v0
.end method

.method public static e()Lj$/util/Spliterator;
    .locals 1

    sget-object v0, Lj$/util/Spliterators;->a:Lj$/util/Spliterator;

    return-object v0
.end method

.method public static f(Lj$/util/E;)Lj$/util/r;
    .locals 1

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/T;

    invoke-direct {v0, p0}, Lj$/util/T;-><init>(Lj$/util/E;)V

    return-object v0
.end method

.method public static g(Lj$/util/H;)Lj$/util/v;
    .locals 1

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/Q;

    invoke-direct {v0, p0}, Lj$/util/Q;-><init>(Lj$/util/H;)V

    return-object v0
.end method

.method public static h(Lj$/util/K;)Lj$/util/z;
    .locals 1

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/S;

    invoke-direct {v0, p0}, Lj$/util/S;-><init>(Lj$/util/K;)V

    return-object v0
.end method

.method public static i(Lj$/util/Spliterator;)Ljava/util/Iterator;
    .locals 1

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/P;

    invoke-direct {v0, p0}, Lj$/util/P;-><init>(Lj$/util/Spliterator;)V

    return-object v0
.end method

.method public static j([DII)Lj$/util/E;
    .locals 2

    .line 0
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    array-length v0, v0

    invoke-static {v0, p1, p2}, Lj$/util/Spliterators;->a(III)V

    new-instance v0, Lj$/util/V;

    const/16 v1, 0x410

    invoke-direct {v0, p0, p1, p2, v1}, Lj$/util/V;-><init>([DIII)V

    return-object v0
.end method

.method public static k([III)Lj$/util/H;
    .locals 2

    .line 0
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    invoke-static {v0, p1, p2}, Lj$/util/Spliterators;->a(III)V

    new-instance v0, Lj$/util/a0;

    const/16 v1, 0x410

    invoke-direct {v0, p0, p1, p2, v1}, Lj$/util/a0;-><init>([IIII)V

    return-object v0
.end method

.method public static l([JII)Lj$/util/K;
    .locals 2

    .line 0
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    array-length v0, v0

    invoke-static {v0, p1, p2}, Lj$/util/Spliterators;->a(III)V

    new-instance v0, Lj$/util/c0;

    const/16 v1, 0x410

    invoke-direct {v0, p0, p1, p2, v1}, Lj$/util/c0;-><init>([JIII)V

    return-object v0
.end method

.method public static m(Ljava/util/Iterator;)Lj$/util/Spliterator;
    .locals 1

    .line 0
    new-instance v0, Lj$/util/b0;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    invoke-direct {v0, p0}, Lj$/util/b0;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static spliterator(Ljava/util/Collection;I)Lj$/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;I)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lj$/util/b0;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0, p1}, Lj$/util/b0;-><init>(Ljava/util/Collection;I)V

    return-object v0
.end method

.method public static spliterator([Ljava/lang/Object;III)Lj$/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "III)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0, p1, p2}, Lj$/util/Spliterators;->a(III)V

    new-instance v0, Lj$/util/U;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/U;-><init>([Ljava/lang/Object;III)V

    return-object v0
.end method
