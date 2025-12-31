.class public abstract Lorg/apache/poi/hssf/record/SubRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSubRecord(Lorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/hssf/record/SubRecord;
    .locals 3

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v1

    if-eqz v0, :cond_4

    const/16 v2, 0x13

    if-eq v0, v2, :cond_3

    const/16 p1, 0x15

    if-eq v0, p1, :cond_2

    const/16 p1, 0xc

    if-eq v0, p1, :cond_1

    const/16 p1, 0xd

    if-eq v0, p1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;

    invoke-direct {p1, p0, v0, v1}, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;II)V

    return-object p1

    :pswitch_0
    new-instance p1, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    invoke-direct {p1, p0, v1}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    return-object p1

    :pswitch_1
    new-instance p1, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;

    invoke-direct {p1, p0, v1}, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    return-object p1

    :pswitch_2
    new-instance p1, Lorg/apache/poi/hssf/record/FtCfSubRecord;

    invoke-direct {p1, p0, v1}, Lorg/apache/poi/hssf/record/FtCfSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    return-object p1

    :pswitch_3
    new-instance p1, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;

    invoke-direct {p1, p0, v1}, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    return-object p1

    :cond_0
    new-instance p1, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;

    invoke-direct {p1, p0, v1}, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    return-object p1

    :cond_1
    new-instance p1, Lorg/apache/poi/hssf/record/FtCblsSubRecord;

    invoke-direct {p1, p0, v1}, Lorg/apache/poi/hssf/record/FtCblsSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    return-object p1

    :cond_2
    new-instance p1, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {p1, p0, v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    return-object p1

    :cond_3
    new-instance v0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;

    invoke-direct {v0, p0, v1, p1}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;II)V

    return-object v0

    :cond_4
    new-instance p1, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {p1, p0, v1}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SubRecord;->clone()Lorg/apache/poi/hssf/record/SubRecord;

    move-result-object v0

    return-object v0
.end method

.method public abstract clone()Lorg/apache/poi/hssf/record/SubRecord;
.end method

.method public abstract getDataSize()I
.end method

.method public isTerminating()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
.end method

.method public serialize()[B
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SubRecord;->getDataSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Lorg/apache/poi/util/LittleEndianOutputStream;

    invoke-direct {v2, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/SubRecord;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "write size mismatch"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
