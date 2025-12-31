.class public final Lorg/apache/poi/hssf/record/MMSRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0xc1s


# instance fields
.field private field_1_addMenuCount:B

.field private field_2_delMenuCount:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/MMSRecord;->field_1_addMenuCount:B

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result p1

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/MMSRecord;->field_2_delMenuCount:B

    return-void
.end method


# virtual methods
.method public getAddMenuCount()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/MMSRecord;->field_1_addMenuCount:B

    return v0
.end method

.method public getDataSize()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getDelMenuCount()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/MMSRecord;->field_2_delMenuCount:B

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0xc1

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MMSRecord;->getAddMenuCount()B

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MMSRecord;->getDelMenuCount()B

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    return-void
.end method

.method public setAddMenuCount(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/MMSRecord;->field_1_addMenuCount:B

    return-void
.end method

.method public setDelMenuCount(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/MMSRecord;->field_2_delMenuCount:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[MMS]\n    .addMenu        = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MMSRecord;->getAddMenuCount()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .delMenu        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MMSRecord;->getDelMenuCount()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n[/MMS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
