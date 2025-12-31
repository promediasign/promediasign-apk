.class final enum Lj$/util/f;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Lj$/util/e;


# static fields
.field public static final enum INSTANCE:Lj$/util/f;

.field private static final synthetic a:[Lj$/util/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Lj$/util/f;

    .line 0
    const-string v2, "INSTANCE"

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 0
    sput-object v1, Lj$/util/f;->INSTANCE:Lj$/util/f;

    const/4 v2, 0x1

    new-array v2, v2, [Lj$/util/f;

    aput-object v1, v2, v0

    sput-object v2, Lj$/util/f;->a:[Lj$/util/f;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/util/f;
    .locals 1

    const-class v0, Lj$/util/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/util/f;

    return-object p0
.end method

.method public static values()[Lj$/util/f;
    .locals 1

    sget-object v0, Lj$/util/f;->a:[Lj$/util/f;

    invoke-virtual {v0}, [Lj$/util/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/util/f;

    return-object v0
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    .line 0
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final reversed()Ljava/util/Comparator;
    .locals 1

    invoke-static {}, Lj$/util/Comparator$-CC;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2

    .line 0
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lj$/util/c;-><init>(Ljava/util/Comparator;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;
    .locals 2

    .line 0
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/b;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lj$/util/b;-><init>(Ljava/lang/Object;I)V

    .line 0
    invoke-static {p0, v0}, Lj$/util/d;->o(Ljava/util/Comparator;Ljava/util/Comparator;)Lj$/util/c;

    move-result-object p1

    return-object p1
.end method

.method public final thenComparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2

    .line 0
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/c;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p1, v1}, Lj$/util/c;-><init>(Ljava/util/Comparator;Ljava/lang/Object;I)V

    .line 0
    invoke-static {p0, v0}, Lj$/util/d;->o(Ljava/util/Comparator;Ljava/util/Comparator;)Lj$/util/c;

    move-result-object p1

    return-object p1
.end method

.method public final thenComparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;
    .locals 2

    .line 0
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/b;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lj$/util/b;-><init>(Ljava/lang/Object;I)V

    .line 0
    invoke-static {p0, v0}, Lj$/util/d;->o(Ljava/util/Comparator;Ljava/util/Comparator;)Lj$/util/c;

    move-result-object p1

    return-object p1
.end method

.method public final thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;
    .locals 2

    .line 0
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lj$/util/b;-><init>(Ljava/lang/Object;I)V

    .line 0
    invoke-static {p0, v0}, Lj$/util/d;->o(Ljava/util/Comparator;Ljava/util/Comparator;)Lj$/util/c;

    move-result-object p1

    return-object p1
.end method

.method public final thenComparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;
    .locals 2

    .line 0
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/b;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lj$/util/b;-><init>(Ljava/lang/Object;I)V

    .line 0
    invoke-static {p0, v0}, Lj$/util/d;->o(Ljava/util/Comparator;Ljava/util/Comparator;)Lj$/util/c;

    move-result-object p1

    return-object p1
.end method
