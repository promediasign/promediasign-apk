.class Lorg/h2/expression/Aggregate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/expression/Aggregate;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/h2/value/Value;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/h2/expression/Aggregate;

.field final synthetic val$sortOrder:Lorg/h2/result/SortOrder;


# direct methods
.method public constructor <init>(Lorg/h2/expression/Aggregate;Lorg/h2/result/SortOrder;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/expression/Aggregate$1;->this$0:Lorg/h2/expression/Aggregate;

    iput-object p2, p0, Lorg/h2/expression/Aggregate$1;->val$sortOrder:Lorg/h2/result/SortOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/h2/value/Value;

    check-cast p2, Lorg/h2/value/Value;

    invoke-virtual {p0, p1, p2}, Lorg/h2/expression/Aggregate$1;->compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I
    .locals 1

    .line 2
    check-cast p1, Lorg/h2/value/ValueArray;

    invoke-virtual {p1}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object p1

    check-cast p2, Lorg/h2/value/ValueArray;

    invoke-virtual {p2}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object p2

    iget-object v0, p0, Lorg/h2/expression/Aggregate$1;->val$sortOrder:Lorg/h2/result/SortOrder;

    invoke-virtual {v0, p1, p2}, Lorg/h2/result/SortOrder;->compare([Lorg/h2/value/Value;[Lorg/h2/value/Value;)I

    move-result p1

    return p1
.end method
