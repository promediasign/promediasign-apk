.class public final Lorg/apache/poi/hssf/record/CFHeader12Record;
.super Lorg/apache/poi/hssf/record/CFHeaderBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/common/FutureRecord;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x879s


# instance fields
.field private futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->createEmpty()V

    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    const/16 v1, 0x879

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->setRecordType(S)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;-><init>()V

    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/CFHeaderBase;->read(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-void
.end method

.method public constructor <init>([Lorg/apache/poi/ss/util/CellRangeAddress;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/record/CFHeaderBase;-><init>([Lorg/apache/poi/ss/util/CellRangeAddress;I)V

    new-instance p1, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    const/16 p2, 0x879

    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/record/common/FtrHeader;->setRecordType(S)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeader12Record;->clone()Lorg/apache/poi/hssf/record/CFHeader12Record;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/CFHeader12Record;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/CFHeader12Record;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/CFHeader12Record;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/common/FtrHeader;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-super {p0, v0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->copyTo(Lorg/apache/poi/hssf/record/CFHeaderBase;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/hssf/record/CFHeaderBase;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeader12Record;->clone()Lorg/apache/poi/hssf/record/CFHeader12Record;

    move-result-object v0

    return-object v0
.end method

.method public getAssociatedRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;->getAssociatedRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDataSize()I
    .locals 2

    invoke-static {}, Lorg/apache/poi/hssf/record/common/FtrHeader;->getDataSize()I

    move-result v0

    invoke-super {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getDataSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFutureHeader()Lorg/apache/poi/hssf/record/common/FtrHeader;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    return-object v0
.end method

.method public getFutureRecordType()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;->getRecordType()S

    move-result v0

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    const-string v0, "CFHEADER12"

    return-object v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x879

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getEnclosingCellRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->setAssociatedRange(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    invoke-super {p0, p1}, Lorg/apache/poi/hssf/record/CFHeaderBase;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method
