.class public final synthetic Lj$/io/DesugarBufferedReader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static lines(Ljava/io/BufferedReader;)Lj$/util/stream/Stream;
    .locals 1

    new-instance v0, Lj$/io/a;

    invoke-direct {v0, p0}, Lj$/io/a;-><init>(Ljava/io/BufferedReader;)V

    invoke-static {v0}, Lj$/util/Spliterators;->m(Ljava/util/Iterator;)Lj$/util/Spliterator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lj$/util/stream/z0;->g0(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
