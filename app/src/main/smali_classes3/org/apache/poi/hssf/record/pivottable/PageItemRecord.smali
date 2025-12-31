.class public final Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;
    }
.end annotation


# static fields
.field public static final sid:S = 0xb6s


# instance fields
.field private final _fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    rem-int/lit8 v1, v0, 0x6

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    div-int/lit8 v0, v0, 0x6

    .line 13
    .line 14
    new-array v1, v0, [Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v0, :cond_0

    .line 18
    .line 19
    new-instance v3, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    .line 20
    .line 21
    invoke-direct {v3, p1}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 22
    .line 23
    .line 24
    aput-object v3, v1, v2

    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iput-object v1, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->_fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    .line 33
    .line 34
    const-string v1, "Bad data size "

    .line 35
    .line 36
    invoke-static {v0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p1, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method


# virtual methods
.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->_fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0xb6

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->_fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "[SXPI]\n"

    .line 2
    .line 3
    invoke-static {v0}, LA/g;->n(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->_fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    .line 9
    .line 10
    array-length v2, v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    const-string v2, "    item["

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 19
    .line 20
    .line 21
    const-string v2, "]="

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->_fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    .line 27
    .line 28
    aget-object v2, v2, v1

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->appendDebugInfo(Ljava/lang/StringBuffer;)V

    .line 31
    .line 32
    .line 33
    const/16 v2, 0xa

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string v1, "[/SXPI]\n"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method
