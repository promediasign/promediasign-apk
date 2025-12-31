.class final Lorg/h2/command/Parser$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/command/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/h2/table/TableFilter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/h2/table/TableFilter;

    check-cast p2, Lorg/h2/table/TableFilter;

    invoke-virtual {p0, p1, p2}, Lorg/h2/command/Parser$1;->compare(Lorg/h2/table/TableFilter;Lorg/h2/table/TableFilter;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/h2/table/TableFilter;Lorg/h2/table/TableFilter;)I
    .locals 0

    .line 2
    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lorg/h2/command/Parser;->compareTableFilters(Lorg/h2/table/TableFilter;Lorg/h2/table/TableFilter;)I

    move-result p1

    :goto_0
    return p1
.end method
