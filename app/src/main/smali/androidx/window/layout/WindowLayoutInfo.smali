.class public final Landroidx/window/layout/WindowLayoutInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final displayFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/window/layout/DisplayFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/window/layout/DisplayFeature;",
            ">;)V"
        }
    .end annotation

    const-string v0, "displayFeatures"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/WindowLayoutInfo;->displayFeatures:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/window/layout/WindowLayoutInfo;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    iget-object v0, p0, Landroidx/window/layout/WindowLayoutInfo;->displayFeatures:Ljava/util/List;

    iget-object p1, p1, Landroidx/window/layout/WindowLayoutInfo;->displayFeatures:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getDisplayFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/window/layout/DisplayFeature;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/window/layout/WindowLayoutInfo;->displayFeatures:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/window/layout/WindowLayoutInfo;->displayFeatures:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Landroidx/window/layout/WindowLayoutInfo;->displayFeatures:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    const-string v1, "WindowLayoutInfo{ DisplayFeatures["

    const-string v2, "] }"

    const-string v3, ", "

    const/16 v4, 0x38

    invoke-static {v0, v3, v1, v2, v4}, Lkotlin/collections/CollectionsKt;->c(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
