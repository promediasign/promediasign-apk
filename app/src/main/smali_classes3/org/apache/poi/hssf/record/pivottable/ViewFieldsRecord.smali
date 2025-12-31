.class public final Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;
    }
.end annotation


# static fields
.field public static final sid:S = 0xb1s


# instance fields
.field private _cItm:I

.field private _cSub:I

.field private _grbitSub:I

.field private _name:Ljava/lang/String;

.field private _sxaxis:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_sxaxis:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_cSub:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_grbitSub:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_cItm:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    const v1, 0xffff

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_name:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readCompressedUnicode(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getDataSize()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/16 v0, 0xa

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_name:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0xb

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0xb1

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_sxaxis:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_cSub:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_grbitSub:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_cItm:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->writeUnicodeString(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const v0, 0xffff

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "[SXVD]\n    .sxaxis    = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_sxaxis:I

    .line 9
    .line 10
    const-string v2, "\n    .cSub      = "

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_cSub:I

    .line 16
    .line 17
    const-string v2, "\n    .grbitSub  = "

    .line 18
    .line 19
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_grbitSub:I

    .line 23
    .line 24
    const-string v2, "\n    .cItm      = "

    .line 25
    .line 26
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_cItm:I

    .line 30
    .line 31
    const-string v2, "\n    .name      = "

    .line 32
    .line 33
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_name:Ljava/lang/String;

    .line 37
    .line 38
    const-string v2, "\n[/SXVD]\n"

    .line 39
    .line 40
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method
