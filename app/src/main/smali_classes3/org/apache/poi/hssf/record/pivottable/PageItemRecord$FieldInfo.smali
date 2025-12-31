.class final Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldInfo"
.end annotation


# static fields
.field public static final ENCODED_SIZE:I = 0x6


# instance fields
.field private _idObj:I

.field private _isxvd:I

.field private _isxvi:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_isxvi:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_isxvd:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_idObj:I

    return-void
.end method


# virtual methods
.method public appendDebugInfo(Ljava/lang/StringBuffer;)V
    .locals 2

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4
    .line 5
    .line 6
    const-string v0, "isxvi="

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_isxvi:I

    .line 12
    .line 13
    const-string v1, " isxvd="

    .line 14
    .line 15
    invoke-static {p1, v1, v0}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_isxvd:I

    .line 19
    .line 20
    const-string v1, " idObj="

    .line 21
    .line 22
    invoke-static {p1, v1, v0}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_idObj:I

    .line 26
    .line 27
    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    .line 33
    .line 34
    const/16 v0, 0x29

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_isxvi:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_isxvd:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_idObj:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
