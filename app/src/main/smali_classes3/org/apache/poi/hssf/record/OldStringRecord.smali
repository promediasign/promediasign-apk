.class public final Lorg/apache/poi/hssf/record/OldStringRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final biff2_sid:S = 0x7s

.field public static final biff345_sid:S = 0x207s


# instance fields
.field private codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

.field private field_1_string_len:S

.field private field_2_bytes:[B

.field private sid:S


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->sid:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    int-to-short v0, v0

    :goto_0
    iput-short v0, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->field_1_string_len:S

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    goto :goto_0

    :goto_1
    iget-short v0, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->field_1_string_len:S

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->field_2_bytes:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->read([BII)I

    return-void
.end method

.method public static getString([BLorg/apache/poi/hssf/record/CodepageRecord;)Ljava/lang/String;
    .locals 1

    .line 2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CodepageRecord;->getCodepage()S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/16 p1, 0x4e4

    :goto_0
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/poi/util/CodePageUtil;->getStringFromCodePage([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported codepage requested"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public getSid()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->sid:S

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->field_2_bytes:[B

    iget-object v1, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

    invoke-static {v0, v1}, Lorg/apache/poi/hssf/record/OldStringRecord;->getString([BLorg/apache/poi/hssf/record/CodepageRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBiff2()Z
    .locals 2

    iget-short v0, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->sid:S

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[OLD STRING]\n    .string            = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldStringRecord;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n[/OLD STRING]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
