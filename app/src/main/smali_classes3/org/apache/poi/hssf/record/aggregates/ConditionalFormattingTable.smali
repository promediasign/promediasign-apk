.class public final Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "SourceFile"


# instance fields
.field private final _cfHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/poi/hssf/record/CFHeaderRecord;

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/poi/hssf/record/CFHeader12Record;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    return-void

    :cond_1
    :goto_1
    invoke-static {p1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->createCFAggregate(Lorg/apache/poi/hssf/model/RecordStream;)Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkIndex(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v1, "Specified CF index "

    .line 15
    .line 16
    const-string v2, " is outside the allowable range (0.."

    .line 17
    .line 18
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/lit8 v1, v1, -0x1

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ")"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method


# virtual methods
.method public add(Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;)I
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->getHeader()Lorg/apache/poi/hssf/record/CFHeaderBase;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFHeaderBase;->setID(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public get(I)Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->checkIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    return-object p1
.end method

.method public remove(I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->checkIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public updateFormulasAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->updateFormulasAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    goto :goto_0

    :cond_0
    return-void
.end method
