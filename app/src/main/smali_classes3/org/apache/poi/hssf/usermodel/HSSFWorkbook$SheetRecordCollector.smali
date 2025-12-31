.class final Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SheetRecordCollector"
.end annotation


# instance fields
.field private _list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation
.end field

.field private _totalSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->_totalSize:I

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->_list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getTotalSize()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->_totalSize:I

    return v0
.end method

.method public serialize(I[B)I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    add-int v3, p1, v1

    invoke-virtual {v2, v3, p2}, Lorg/apache/poi/hssf/record/RecordBase;->serialize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public visitRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->_totalSize:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordBase;->getRecordSize()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->_totalSize:I

    return-void
.end method
