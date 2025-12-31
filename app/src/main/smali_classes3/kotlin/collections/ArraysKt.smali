.class public abstract Lkotlin/collections/ArraysKt;
.super Lkotlin/collections/ArraysKt___ArraysKt;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a([Ljava/lang/Object;[Ljava/lang/Object;IIII)V
    .locals 7

    .line 1
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic b([Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 1
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->drop([Ljava/lang/Object;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c([Ljava/lang/Object;Lkotlinx/coroutines/internal/Symbol;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    return-void
.end method

.method public static bridge synthetic d([Ljava/lang/Object;Lkotlinx/coroutines/internal/Symbol;)V
    .locals 6

    .line 1
    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    return-void
.end method
