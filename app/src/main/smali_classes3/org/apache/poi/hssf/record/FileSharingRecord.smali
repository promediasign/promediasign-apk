.class public final Lorg/apache/poi/hssf/record/FileSharingRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x5bs


# instance fields
.field private field_1_readonly:S

.field private field_2_password:S

.field private field_3_username_unicode_options:B

.field private field_3_username_value:Ljava/lang/String;


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

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_1_readonly:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_2_password:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    iput-byte v1, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_unicode_options:B

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readCompressedUnicode(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_value:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string p1, ""

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->clone()Lorg/apache/poi/hssf/record/FileSharingRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/FileSharingRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/FileSharingRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FileSharingRecord;-><init>()V

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_1_readonly:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FileSharingRecord;->setReadOnly(S)V

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_2_password:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FileSharingRecord;->setPassword(S)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FileSharingRecord;->setUsername(Ljava/lang/String;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x6

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getPassword()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_2_password:S

    return v0
.end method

.method public getReadOnly()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_1_readonly:S

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x5b

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_value:Ljava/lang/String;

    return-object v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->getReadOnly()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->getPassword()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_unicode_options:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :cond_0
    return-void
.end method

.method public setPassword(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_2_password:S

    return-void
.end method

.method public setReadOnly(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_1_readonly:S

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[FILESHARING]\n    .readonly       = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->getReadOnly()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .password       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->getPassword()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .username       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n[/FILESHARING]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
