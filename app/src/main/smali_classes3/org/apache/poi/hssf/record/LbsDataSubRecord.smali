.class public Lorg/apache/poi/hssf/record/LbsDataSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;
    }
.end annotation


# static fields
.field public static final sid:I = 0x13


# instance fields
.field private _bsels:[Z

.field private _cLines:I

.field private _cbFContinued:I

.field private _dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

.field private _flags:I

.field private _iSel:I

.field private _idEdit:I

.field private _linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

.field private _rgLines:[Ljava/lang/String;

.field private _unknownPostFormulaByte:Ljava/lang/Byte;

.field private _unknownPreFormulaInt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;II)V
    .locals 5

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    iput p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cbFContinued:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_3

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v3

    iput v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPreFormulaInt:I

    invoke-static {v2, p1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->readTokens(ILorg/apache/poi/util/LittleEndianInput;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    array-length v4, v3

    if-ne v4, v1, :cond_2

    aget-object v3, v3, v0

    iput-object v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    sub-int/2addr p2, v2

    add-int/lit8 p2, p2, -0x6

    if-eqz p2, :cond_1

    if-ne p2, v1, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result p2

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    const-string p2, "Unexpected leftover bytes"

    invoke-direct {p1, p2}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Read "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p3, v3

    const-string v0, " tokens but expected exactly 1"

    .line 2
    invoke-static {v0, p3, p2}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-direct {p1, p2}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_iSel:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_idEdit:I

    const/16 p2, 0x14

    if-ne p3, p2, :cond_4

    new-instance p2, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    invoke-direct {p2, p1}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    :cond_4
    iget p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    iget p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_rgLines:[Ljava/lang/String;

    const/4 p2, 0x0

    :goto_2
    iget p3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    if-ge p2, p3, :cond_5

    iget-object p3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_rgLines:[Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->readUnicodeString(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    iget p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    shr-int/lit8 p2, p2, 0x4

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_7

    iget p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    new-array p2, p2, [Z

    iput-object p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_bsels:[Z

    const/4 p2, 0x0

    :goto_3
    iget p3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    if-ge p2, p3, :cond_7

    iget-object p3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_bsels:[Z

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v2

    if-ne v2, v1, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    aput-boolean v2, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method public static newAutoFilterInstance()Lorg/apache/poi/hssf/record/LbsDataSubRecord;
    .locals 3

    new-instance v0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;-><init>()V

    const/16 v1, 0x1fee

    iput v1, v0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cbFContinued:I

    const/4 v1, 0x0

    iput v1, v0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_iSel:I

    const/16 v1, 0x301

    iput v1, v0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    new-instance v1, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;-><init>()V

    iput-object v1, v0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->access$002(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;I)I

    iget-object v1, v0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->access$102(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;I)I

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->clone()Lorg/apache/poi/hssf/record/LbsDataSubRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/LbsDataSubRecord;
    .locals 0

    .line 2
    return-object p0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/hssf/record/SubRecord;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->clone()Lorg/apache/poi/hssf/record/LbsDataSubRecord;

    move-result-object v0

    return-object v0
.end method

.method public getDataSize()I
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v0

    add-int v2, v1, v0

    iget-object v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    if-eqz v3, :cond_1

    add-int/lit8 v2, v0, 0x9

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :cond_1
    :goto_0
    add-int/2addr v2, v1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->getDataSize()I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_rgLines:[Ljava/lang/String;

    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    invoke-static {v4}, Lorg/apache/poi/util/StringUtil;->getEncodedSize(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_bsels:[Z

    if-eqz v0, :cond_4

    array-length v0, v0

    add-int/2addr v2, v0

    :cond_4
    return v2
.end method

.method public getFormula()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-object v0
.end method

.method public getNumberOfItems()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    return v0
.end method

.method public isTerminating()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 5

    const/16 v0, 0x13

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cbFContinued:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v0

    add-int/lit8 v2, v0, 0x6

    iget-object v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    if-eqz v3, :cond_1

    add-int/lit8 v2, v0, 0x7

    :cond_1
    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPreFormulaInt:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->write(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    :cond_2
    :goto_0
    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_iSel:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_idEdit:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_rgLines:[Ljava/lang/String;

    if-eqz v0, :cond_4

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    invoke-static {p1, v4}, Lorg/apache/poi/util/StringUtil;->writeUnicodeString(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_bsels:[Z

    if-eqz v0, :cond_5

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_5

    aget-boolean v3, v0, v1

    invoke-interface {p1, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const/16 v1, 0x100

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "[ftLbsData]\n    .unknownShort1 ="

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cbFContinued:I

    .line 14
    .line 15
    const-string v2, "\n    .formula        = \n"

    .line 16
    .line 17
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 21
    .line 22
    const/16 v2, 0xa

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 30
    .line 31
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getRVAType()C

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    :cond_0
    const-string v1, "    .nEntryCount   ="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    .line 47
    .line 48
    const-string v3, "\n    .selEntryIx    ="

    .line 49
    .line 50
    invoke-static {v0, v3, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    iget v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_iSel:I

    .line 54
    .line 55
    const-string v3, "\n    .style         ="

    .line 56
    .line 57
    invoke-static {v0, v3, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    iget v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    .line 61
    .line 62
    const-string v3, "\n    .unknownShort10="

    .line 63
    .line 64
    invoke-static {v0, v3, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    iget v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_idEdit:I

    .line 68
    .line 69
    const-string v3, "\n"

    .line 70
    .line 71
    invoke-static {v0, v3, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    .line 75
    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 84
    .line 85
    .line 86
    :cond_1
    const-string v1, "[/ftLbsData]\n"

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0
.end method
