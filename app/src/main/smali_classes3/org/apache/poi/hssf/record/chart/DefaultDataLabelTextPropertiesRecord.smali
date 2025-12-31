.class public final Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CATEGORY_DATA_TYPE_ALL_TEXT_CHARACTERISTIC:S = 0x2s

.field public static final CATEGORY_DATA_TYPE_SHOW_LABELS_CHARACTERISTIC:S = 0x0s

.field public static final CATEGORY_DATA_TYPE_VALUE_AND_PERCENTAGE_CHARACTERISTIC:S = 0x1s

.field public static final sid:S = 0x1024s


# instance fields
.field private field_1_categoryDataType:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->field_1_categoryDataType:S

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->clone()Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;-><init>()V

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->field_1_categoryDataType:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->field_1_categoryDataType:S

    return-object v0
.end method

.method public getCategoryDataType()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->field_1_categoryDataType:S

    return v0
.end method

.method public getDataSize()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x1024

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->field_1_categoryDataType:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setCategoryDataType(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->field_1_categoryDataType:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[DEFAULTTEXT]\n    .categoryDataType     = 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->getCategoryDataType()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->getCategoryDataType()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "[/DEFAULTTEXT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
