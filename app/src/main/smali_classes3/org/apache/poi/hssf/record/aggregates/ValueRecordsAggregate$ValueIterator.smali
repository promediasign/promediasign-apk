.class Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/poi/hssf/record/CellValueRecordInterface;",
        ">;"
    }
.end annotation


# instance fields
.field curColIndex:I

.field curRowIndex:I

.field nextColIndex:I

.field nextRowIndex:I

.field final synthetic this$0:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->this$0:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->curRowIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->curColIndex:I

    iput p1, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->nextRowIndex:I

    iput v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->nextColIndex:I

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->getNextPos()V

    return-void
.end method


# virtual methods
.method public getNextPos()V
    .locals 3

    iget v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->nextRowIndex:I

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->this$0:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-static {v1}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->access$000(Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;)[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    :goto_0
    iget v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->nextRowIndex:I

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->this$0:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-static {v1}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->access$000(Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;)[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->nextColIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->nextColIndex:I

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->this$0:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->access$000(Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;)[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->nextRowIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->nextColIndex:I

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->this$0:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-static {v1}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->access$000(Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;)[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->nextRowIndex:I

    aget-object v1, v1, v2

    array-length v1, v1

    if-lt v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->this$0:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->access$000(Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;)[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->nextRowIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->nextColIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    return-void

    :cond_2
    :goto_1
    iget v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->nextRowIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->nextRowIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->nextColIndex:I

    goto :goto_0

    :cond_3
    return-void
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->nextRowIndex:I

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->this$0:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-static {v1}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->access$000(Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;)[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->next()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->nextRowIndex:I

    iput v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->curRowIndex:I

    iget v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->nextColIndex:I

    iput v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->curColIndex:I

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->this$0:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->access$000(Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;)[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->curRowIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->curColIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->getNextPos()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "iterator has no next"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->this$0:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->access$000(Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;)[[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->curRowIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate$ValueIterator;->curColIndex:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method
