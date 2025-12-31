.class public final Lorg/apache/poi/hssf/record/common/FtrHeader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private associatedRange:Lorg/apache/poi/ss/util/CellRangeAddress;

.field private grbitFrt:S

.field private recordType:S


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->associatedRange:Lorg/apache/poi/ss/util/CellRangeAddress;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->recordType:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->grbitFrt:S

    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->associatedRange:Lorg/apache/poi/ss/util/CellRangeAddress;

    return-void
.end method

.method public static getDataSize()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>()V

    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->recordType:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/common/FtrHeader;->recordType:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->grbitFrt:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/common/FtrHeader;->grbitFrt:S

    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->associatedRange:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/common/FtrHeader;->associatedRange:Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object v0
.end method

.method public getAssociatedRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->associatedRange:Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object v0
.end method

.method public getGrbitFrt()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->grbitFrt:S

    return v0
.end method

.method public getRecordType()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->recordType:S

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->recordType:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->grbitFrt:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->associatedRange:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method

.method public setAssociatedRange(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->associatedRange:Lorg/apache/poi/ss/util/CellRangeAddress;

    return-void
.end method

.method public setGrbitFrt(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->grbitFrt:S

    return-void
.end method

.method public setRecordType(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->recordType:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, " [FUTURE HEADER]\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "   Type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->recordType:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "   Flags "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->grbitFrt:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " [/FUTURE HEADER]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
