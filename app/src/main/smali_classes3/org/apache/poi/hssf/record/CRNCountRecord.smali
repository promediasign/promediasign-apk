.class public final Lorg/apache/poi/hssf/record/CRNCountRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x59s


# instance fields
.field private field_1_number_crn_records:I

.field private field_2_sheet_table_index:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "incomplete code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_1_number_crn_records:I

    if-gez v0, :cond_0

    neg-int v0, v0

    int-to-short v0, v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_1_number_crn_records:I

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_2_sheet_table_index:I

    return-void
.end method


# virtual methods
.method public getDataSize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getNumberOfCRNs()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_1_number_crn_records:I

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x59

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_1_number_crn_records:I

    int-to-short v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_2_sheet_table_index:I

    int-to-short v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lorg/apache/poi/hssf/record/CRNCountRecord;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    .line 14
    .line 15
    const-string v1, " [XCT nCRNs="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_1_number_crn_records:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 23
    .line 24
    .line 25
    const-string v1, " sheetIx="

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_2_sheet_table_index:I

    .line 31
    .line 32
    const-string v2, "]"

    .line 33
    .line 34
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->j(Ljava/lang/StringBuffer;Ljava/lang/String;I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method
