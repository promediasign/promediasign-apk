.class public final Lorg/apache/poi/hssf/record/StringRecord;
.super Lorg/apache/poi/hssf/record/cont/ContinuableRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x207s


# instance fields
.field private _is16bitUnicode:Z

.field private _text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/StringRecord;->_is16bitUnicode:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lorg/apache/poi/hssf/record/StringRecord;->_text:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readCompressedUnicode(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/StringRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/StringRecord;-><init>()V

    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/StringRecord;->_is16bitUnicode:Z

    iput-boolean v1, v0, Lorg/apache/poi/hssf/record/StringRecord;->_is16bitUnicode:Z

    iget-object v1, p0, Lorg/apache/poi/hssf/record/StringRecord;->_text:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/StringRecord;->_text:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x207

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/StringRecord;->_text:Ljava/lang/String;

    return-object v0
.end method

.method public serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/StringRecord;->_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/StringRecord;->_text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeStringData(Ljava/lang/String;)V

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/StringRecord;->_text:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/poi/hssf/record/StringRecord;->_is16bitUnicode:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "[STRING]\n    .string            = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/poi/hssf/record/StringRecord;->_text:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "\n[/STRING]\n"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method
