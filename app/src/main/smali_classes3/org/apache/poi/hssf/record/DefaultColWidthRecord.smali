.class public final Lorg/apache/poi/hssf/record/DefaultColWidthRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT_COLUMN_WIDTH:I = 0x8

.field public static final sid:S = 0x55s


# instance fields
.field private field_1_col_width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->field_1_col_width:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->field_1_col_width:I

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->clone()Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/DefaultColWidthRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;-><init>()V

    iget v1, p0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->field_1_col_width:I

    iput v1, v0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->field_1_col_width:I

    return-object v0
.end method

.method public getColWidth()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->field_1_col_width:I

    return v0
.end method

.method public getDataSize()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x55

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->getColWidth()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setColWidth(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->field_1_col_width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[DEFAULTCOLWIDTH]\n    .colwidth      = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->getColWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n[/DEFAULTCOLWIDTH]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
