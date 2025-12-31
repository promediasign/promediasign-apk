.class public final Lorg/apache/poi/hssf/model/RecordStream;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _countRead:I

.field private final _endIx:I

.field private final _list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation
.end field

.field private _nextIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hssf/model/RecordStream;-><init>(Ljava/util/List;II)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;II)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/model/RecordStream;->_list:Ljava/util/List;

    iput p2, p0, Lorg/apache/poi/hssf/model/RecordStream;->_nextIndex:I

    iput p3, p0, Lorg/apache/poi/hssf/model/RecordStream;->_endIx:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/hssf/model/RecordStream;->_countRead:I

    return-void
.end method


# virtual methods
.method public getCountRead()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/model/RecordStream;->_countRead:I

    return v0
.end method

.method public getNext()Lorg/apache/poi/hssf/record/Record;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/RecordStream;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/poi/hssf/model/RecordStream;->_countRead:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/hssf/model/RecordStream;->_countRead:I

    iget-object v0, p0, Lorg/apache/poi/hssf/model/RecordStream;->_list:Ljava/util/List;

    iget v1, p0, Lorg/apache/poi/hssf/model/RecordStream;->_nextIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/hssf/model/RecordStream;->_nextIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/Record;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempt to read past end of record stream"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/model/RecordStream;->_nextIndex:I

    iget v1, p0, Lorg/apache/poi/hssf/model/RecordStream;->_endIx:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public peekNextClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/RecordStream;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/RecordStream;->_list:Ljava/util/List;

    iget v1, p0, Lorg/apache/poi/hssf/model/RecordStream;->_nextIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public peekNextSid()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/RecordStream;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/RecordStream;->_list:Ljava/util/List;

    iget v1, p0, Lorg/apache/poi/hssf/model/RecordStream;->_nextIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v0

    return v0
.end method
