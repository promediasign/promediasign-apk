.class public final Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "SourceFile"


# instance fields
.field private final _begin:Lorg/apache/poi/hssf/record/Record;

.field private final _end:Lorg/apache/poi/hssf/record/Record;

.field private _psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

.field private final _recs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_begin:Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v0

    const/16 v1, 0x1aa

    if-ne v0, v1, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextSid()I

    move-result v1

    const/16 v2, 0x1ab

    if-eq v1, v2, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextSid()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->isComponentRecord(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextSid()I

    move-result v1

    const/16 v2, 0x89c

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->addLateHeaderFooter(Lorg/apache/poi/hssf/record/HeaderFooterRecord;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found more than one PageSettingsBlock in chart sub-stream, had sid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextSid()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_recs:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_end:Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result p1

    if-ne p1, v2, :cond_4

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Bad custom view settings end record"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Bad begin record"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static isBeginRecord(I)Z
    .locals 1

    const/16 v0, 0x1aa

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public append(Lorg/apache/poi/hssf/record/RecordBase;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_recs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_recs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_begin:Lorg/apache/poi/hssf/record/Record;

    invoke-interface {p1, v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_recs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_recs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/RecordBase;

    instance-of v2, v1, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    goto :goto_1

    :cond_1
    check-cast v1, Lorg/apache/poi/hssf/record/Record;

    invoke-interface {p1, v1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_end:Lorg/apache/poi/hssf/record/Record;

    invoke-interface {p1, v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    return-void
.end method
