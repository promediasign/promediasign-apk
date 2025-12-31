.class final Lorg/h2/command/dml/Select$LazyResultQueryFlat;
.super Lorg/h2/command/dml/Select$LazyResultSelect;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/command/dml/Select;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LazyResultQueryFlat"
.end annotation


# instance fields
.field sampleSize:I

.field final synthetic this$0:Lorg/h2/command/dml/Select;


# direct methods
.method public constructor <init>(Lorg/h2/command/dml/Select;[Lorg/h2/expression/Expression;II)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/Select$LazyResultQueryFlat;->this$0:Lorg/h2/command/dml/Select;

    invoke-direct {p0, p1, p2, p4}, Lorg/h2/command/dml/Select$LazyResultSelect;-><init>(Lorg/h2/command/dml/Select;[Lorg/h2/expression/Expression;I)V

    iput p3, p0, Lorg/h2/command/dml/Select$LazyResultQueryFlat;->sampleSize:I

    return-void
.end method


# virtual methods
.method public fetchNextRow()[Lorg/h2/value/Value;
    .locals 4

    :cond_0
    iget v0, p0, Lorg/h2/command/dml/Select$LazyResultQueryFlat;->sampleSize:I

    if-lez v0, :cond_1

    iget v1, p0, Lorg/h2/command/dml/Select$LazyResultSelect;->rowNumber:I

    if-ge v1, v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/h2/command/dml/Select$LazyResultQueryFlat;->this$0:Lorg/h2/command/dml/Select;

    invoke-static {v0}, Lorg/h2/command/dml/Select;->access$300(Lorg/h2/command/dml/Select;)Lorg/h2/table/TableFilter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->next()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/h2/command/dml/Select$LazyResultQueryFlat;->this$0:Lorg/h2/command/dml/Select;

    iget v1, p0, Lorg/h2/command/dml/Select$LazyResultSelect;->rowNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/h2/command/dml/Select$LazyResultSelect;->rowNumber:I

    invoke-static {v0, v1}, Lorg/h2/command/dml/Select;->access$500(Lorg/h2/command/dml/Select;I)V

    iget-object v0, p0, Lorg/h2/command/dml/Select$LazyResultQueryFlat;->this$0:Lorg/h2/command/dml/Select;

    invoke-static {v0}, Lorg/h2/command/dml/Select;->access$600(Lorg/h2/command/dml/Select;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/h2/command/dml/Select$LazyResultSelect;->columnCount:I

    new-array v0, v0, [Lorg/h2/value/Value;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/command/dml/Select$LazyResultSelect;->columnCount:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/h2/command/dml/Select$LazyResultQueryFlat;->this$0:Lorg/h2/command/dml/Select;

    invoke-static {v2}, Lorg/h2/command/dml/Select;->access$700(Lorg/h2/command/dml/Select;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Expression;

    iget-object v3, p0, Lorg/h2/command/dml/Select$LazyResultQueryFlat;->this$0:Lorg/h2/command/dml/Select;

    invoke-static {v3}, Lorg/h2/command/dml/Select;->access$800(Lorg/h2/command/dml/Select;)Lorg/h2/engine/Session;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method
