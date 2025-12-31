.class public abstract Lcom/google/api/client/util/Throwables;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 0

    invoke-static {p0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    return-object p0
.end method

.method public static propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TX;>;)V^TX;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V

    return-void
.end method
