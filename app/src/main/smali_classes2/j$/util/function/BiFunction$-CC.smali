.class public final synthetic Lj$/util/function/BiFunction$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/concurrent/t;

    invoke-direct {v0, p0, p1}, Lj$/util/concurrent/t;-><init>(Ljava/util/function/BiFunction;Ljava/util/function/Function;)V

    return-object v0
.end method
