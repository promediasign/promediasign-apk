.class final Lorg/h2/command/dml/Select$LazyResultGroupSorted;
.super Lorg/h2/command/dml/Select$LazyResultSelect;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/command/dml/Select;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LazyResultGroupSorted"
.end annotation


# instance fields
.field previousKeyValues:[Lorg/h2/value/Value;

.field final synthetic this$0:Lorg/h2/command/dml/Select;


# direct methods
.method public constructor <init>(Lorg/h2/command/dml/Select;[Lorg/h2/expression/Expression;I)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/Select$LazyResultGroupSorted;->this$0:Lorg/h2/command/dml/Select;

    invoke-direct {p0, p1, p2, p3}, Lorg/h2/command/dml/Select$LazyResultSelect;-><init>(Lorg/h2/command/dml/Select;[Lorg/h2/expression/Expression;I)V

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/h2/command/dml/Select;->access$902(Lorg/h2/command/dml/Select;Ljava/util/HashMap;)Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public fetchNextRow()[Lorg/h2/value/Value;
    .locals 6

    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/Select$LazyResultGroupSorted;->this$0:Lorg/h2/command/dml/Select;

    invoke-static {v0}, Lorg/h2/command/dml/Select;->access$300(Lorg/h2/command/dml/Select;)Lorg/h2/table/TableFilter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->next()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/h2/command/dml/Select$LazyResultGroupSorted;->this$0:Lorg/h2/command/dml/Select;

    iget v2, p0, Lorg/h2/command/dml/Select$LazyResultSelect;->rowNumber:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lorg/h2/command/dml/Select;->access$1000(Lorg/h2/command/dml/Select;I)V

    iget-object v0, p0, Lorg/h2/command/dml/Select$LazyResultGroupSorted;->this$0:Lorg/h2/command/dml/Select;

    invoke-static {v0}, Lorg/h2/command/dml/Select;->access$600(Lorg/h2/command/dml/Select;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/h2/command/dml/Select$LazyResultSelect;->rowNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/command/dml/Select$LazyResultSelect;->rowNumber:I

    iget-object v0, p0, Lorg/h2/command/dml/Select$LazyResultGroupSorted;->this$0:Lorg/h2/command/dml/Select;

    invoke-static {v0}, Lorg/h2/command/dml/Select;->access$1100(Lorg/h2/command/dml/Select;)[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lorg/h2/value/Value;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/h2/command/dml/Select$LazyResultGroupSorted;->this$0:Lorg/h2/command/dml/Select;

    invoke-static {v4}, Lorg/h2/command/dml/Select;->access$1100(Lorg/h2/command/dml/Select;)[I

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lorg/h2/command/dml/Select$LazyResultGroupSorted;->this$0:Lorg/h2/command/dml/Select;

    invoke-static {v4}, Lorg/h2/command/dml/Select;->access$1100(Lorg/h2/command/dml/Select;)[I

    move-result-object v4

    aget v4, v4, v3

    iget-object v5, p0, Lorg/h2/command/dml/Select$LazyResultGroupSorted;->this$0:Lorg/h2/command/dml/Select;

    invoke-static {v5}, Lorg/h2/command/dml/Select;->access$700(Lorg/h2/command/dml/Select;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Expression;

    iget-object v5, p0, Lorg/h2/command/dml/Select$LazyResultGroupSorted;->this$0:Lorg/h2/command/dml/Select;

    invoke-static {v5}, Lorg/h2/command/dml/Select;->access$1200(Lorg/h2/command/dml/Select;)Lorg/h2/engine/Session;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/h2/command/dml/Select$LazyResultGroupSorted;->previousKeyValues:[Lorg/h2/value/Value;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v1, p0, Lorg/h2/command/dml/Select$LazyResultGroupSorted;->this$0:Lorg/h2/command/dml/Select;

    iget-object v3, p0, Lorg/h2/command/dml/Select$LazyResultGroupSorted;->previousKeyValues:[Lorg/h2/value/Value;

    iget v4, p0, Lorg/h2/command/dml/Select$LazyResultSelect;->columnCount:I

    invoke-static {v1, v3, v4}, Lorg/h2/command/dml/Select;->access$1300(Lorg/h2/command/dml/Select;[Lorg/h2/value/Value;I)[Lorg/h2/value/Value;

    move-result-object v1

    :goto_1
    iput-object v0, p0, Lorg/h2/command/dml/Select$LazyResultGroupSorted;->previousKeyValues:[Lorg/h2/value/Value;

    iget-object v0, p0, Lorg/h2/command/dml/Select$LazyResultGroupSorted;->this$0:Lorg/h2/command/dml/Select;

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/h2/command/dml/Select;->access$902(Lorg/h2/command/dml/Select;Ljava/util/HashMap;)Ljava/util/HashMap;

    :cond_3
    iget-object v0, p0, Lorg/h2/command/dml/Select$LazyResultGroupSorted;->this$0:Lorg/h2/command/dml/Select;

    invoke-static {v0}, Lorg/h2/command/dml/Select;->access$1408(Lorg/h2/command/dml/Select;)I

    :goto_2
    iget v0, p0, Lorg/h2/command/dml/Select$LazyResultSelect;->columnCount:I

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lorg/h2/command/dml/Select$LazyResultGroupSorted;->this$0:Lorg/h2/command/dml/Select;

    invoke-static {v0}, Lorg/h2/command/dml/Select;->access$1500(Lorg/h2/command/dml/Select;)[Z

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/h2/command/dml/Select$LazyResultGroupSorted;->this$0:Lorg/h2/command/dml/Select;

    invoke-static {v0}, Lorg/h2/command/dml/Select;->access$1500(Lorg/h2/command/dml/Select;)[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lorg/h2/command/dml/Select$LazyResultGroupSorted;->this$0:Lorg/h2/command/dml/Select;

    invoke-static {v0}, Lorg/h2/command/dml/Select;->access$700(Lorg/h2/command/dml/Select;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/expression/Expression;

    iget-object v3, p0, Lorg/h2/command/dml/Select$LazyResultGroupSorted;->this$0:Lorg/h2/command/dml/Select;

    invoke-static {v3}, Lorg/h2/command/dml/Select;->access$1600(Lorg/h2/command/dml/Select;)Lorg/h2/engine/Session;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_0

    return-object v1

    :cond_7
    iget-object v0, p0, Lorg/h2/command/dml/Select$LazyResultGroupSorted;->previousKeyValues:[Lorg/h2/value/Value;

    if-eqz v0, :cond_8

    iget-object v2, p0, Lorg/h2/command/dml/Select$LazyResultGroupSorted;->this$0:Lorg/h2/command/dml/Select;

    iget v3, p0, Lorg/h2/command/dml/Select$LazyResultSelect;->columnCount:I

    invoke-static {v2, v0, v3}, Lorg/h2/command/dml/Select;->access$1300(Lorg/h2/command/dml/Select;[Lorg/h2/value/Value;I)[Lorg/h2/value/Value;

    move-result-object v0

    iput-object v1, p0, Lorg/h2/command/dml/Select$LazyResultGroupSorted;->previousKeyValues:[Lorg/h2/value/Value;

    move-object v1, v0

    :cond_8
    return-object v1
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lorg/h2/command/dml/Select$LazyResultSelect;->reset()V

    iget-object v0, p0, Lorg/h2/command/dml/Select$LazyResultGroupSorted;->this$0:Lorg/h2/command/dml/Select;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/h2/command/dml/Select;->access$902(Lorg/h2/command/dml/Select;Ljava/util/HashMap;)Ljava/util/HashMap;

    return-void
.end method
