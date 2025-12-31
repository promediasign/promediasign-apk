.class public final Lorg/apache/poi/hssf/record/BottomMarginRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/Margin;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x29s


# instance fields
.field private field_1_margin:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/BottomMarginRecord;->field_1_margin:D

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BottomMarginRecord;->clone()Lorg/apache/poi/hssf/record/BottomMarginRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/BottomMarginRecord;
    .locals 3

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/BottomMarginRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/BottomMarginRecord;-><init>()V

    iget-wide v1, p0, Lorg/apache/poi/hssf/record/BottomMarginRecord;->field_1_margin:D

    iput-wide v1, v0, Lorg/apache/poi/hssf/record/BottomMarginRecord;->field_1_margin:D

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getMargin()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/BottomMarginRecord;->field_1_margin:D

    return-wide v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x29

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/BottomMarginRecord;->field_1_margin:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    return-void
.end method

.method public setMargin(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hssf/record/BottomMarginRecord;->field_1_margin:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[BottomMargin]\n    .margin               =  ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BottomMarginRecord;->getMargin()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, " )\n[/BottomMargin]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
