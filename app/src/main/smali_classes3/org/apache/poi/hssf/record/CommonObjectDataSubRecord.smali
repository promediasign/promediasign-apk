.class public final Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final OBJECT_TYPE_ARC:S = 0x4s

.field public static final OBJECT_TYPE_BUTTON:S = 0x7s

.field public static final OBJECT_TYPE_CHART:S = 0x5s

.field public static final OBJECT_TYPE_CHECKBOX:S = 0xbs

.field public static final OBJECT_TYPE_COMBO_BOX:S = 0x14s

.field public static final OBJECT_TYPE_COMMENT:S = 0x19s

.field public static final OBJECT_TYPE_DIALOG_BOX:S = 0xfs

.field public static final OBJECT_TYPE_EDIT_BOX:S = 0xds

.field public static final OBJECT_TYPE_GROUP:S = 0x0s

.field public static final OBJECT_TYPE_GROUP_BOX:S = 0x13s

.field public static final OBJECT_TYPE_LABEL:S = 0xes

.field public static final OBJECT_TYPE_LINE:S = 0x1s

.field public static final OBJECT_TYPE_LIST_BOX:S = 0x12s

.field public static final OBJECT_TYPE_MICROSOFT_OFFICE_DRAWING:S = 0x1es

.field public static final OBJECT_TYPE_OPTION_BUTTON:S = 0xcs

.field public static final OBJECT_TYPE_OVAL:S = 0x3s

.field public static final OBJECT_TYPE_PICTURE:S = 0x8s

.field public static final OBJECT_TYPE_POLYGON:S = 0x9s

.field public static final OBJECT_TYPE_RECTANGLE:S = 0x2s

.field public static final OBJECT_TYPE_RESERVED1:S = 0xas

.field public static final OBJECT_TYPE_RESERVED2:S = 0x15s

.field public static final OBJECT_TYPE_RESERVED3:S = 0x16s

.field public static final OBJECT_TYPE_RESERVED4:S = 0x17s

.field public static final OBJECT_TYPE_RESERVED5:S = 0x18s

.field public static final OBJECT_TYPE_RESERVED6:S = 0x1as

.field public static final OBJECT_TYPE_RESERVED7:S = 0x1bs

.field public static final OBJECT_TYPE_RESERVED8:S = 0x1cs

.field public static final OBJECT_TYPE_RESERVED9:S = 0x1ds

.field public static final OBJECT_TYPE_SCROLL_BAR:S = 0x11s

.field public static final OBJECT_TYPE_SPINNER:S = 0x10s

.field public static final OBJECT_TYPE_TEXT:S = 0x6s

.field private static final autofill:Lorg/apache/poi/util/BitField;

.field private static final autoline:Lorg/apache/poi/util/BitField;

.field private static final locked:Lorg/apache/poi/util/BitField;

.field private static final printable:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x15s


# instance fields
.field private field_1_objectType:S

.field private field_2_objectId:I

.field private field_3_option:S

.field private field_4_reserved1:I

.field private field_5_reserved2:I

.field private field_6_reserved3:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->locked:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->printable:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x2000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->autofill:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x4000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->autoline:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    const/16 v0, 0x12

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result p2

    iput-short p2, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_1_objectType:S

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_2_objectId:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result p2

    iput-short p2, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_4_reserved1:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_5_reserved2:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_6_reserved3:I

    return-void

    :cond_0
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    const-string v0, "Expected size 18 but got ("

    const-string v1, ")"

    .line 2
    invoke-static {p2, v0, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-direct {p1, p2}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->clone()Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>()V

    iget-short v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_1_objectType:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_1_objectType:S

    iget v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_2_objectId:I

    iput v1, v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_2_objectId:I

    iget-short v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    iget v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_4_reserved1:I

    iput v1, v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_4_reserved1:I

    iget v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_5_reserved2:I

    iput v1, v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_5_reserved2:I

    iget v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_6_reserved3:I

    iput v1, v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_6_reserved3:I

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/hssf/record/SubRecord;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->clone()Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    move-result-object v0

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public getObjectId()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_2_objectId:I

    return v0
.end method

.method public getObjectType()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_1_objectType:S

    return v0
.end method

.method public getOption()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    return v0
.end method

.method public getReserved1()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_4_reserved1:I

    return v0
.end method

.method public getReserved2()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_5_reserved2:I

    return v0
.end method

.method public getReserved3()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_6_reserved3:I

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x15

    return v0
.end method

.method public isAutofill()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->autofill:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isAutoline()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->autoline:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->locked:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isPrintable()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->printable:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    const/16 v0, 0x15

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getDataSize()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_1_objectType:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_2_objectId:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_4_reserved1:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_5_reserved2:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_6_reserved3:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method

.method public setAutofill(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->autofill:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    return-void
.end method

.method public setAutoline(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->autoline:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    return-void
.end method

.method public setLocked(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->locked:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    return-void
.end method

.method public setObjectId(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_2_objectId:I

    return-void
.end method

.method public setObjectType(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_1_objectType:S

    return-void
.end method

.method public setOption(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    return-void
.end method

.method public setPrintable(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->printable:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    return-void
.end method

.method public setReserved1(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_4_reserved1:I

    return-void
.end method

.method public setReserved2(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_5_reserved2:I

    return-void
.end method

.method public setReserved3(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_6_reserved3:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[ftCmo]\n    .objectType           = 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getObjectType()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getObjectType()S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .objectId             = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getObjectId()I

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getObjectId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .option               = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getOption()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getOption()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "         .locked                   = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->isLocked()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v4, "\n         .printable                = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->isPrintable()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v4, "\n         .autofill                 = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->isAutofill()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v4, "\n         .autoline                 = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->isAutoline()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v4, "\n    .reserved1            = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getReserved1()I

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getReserved1()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .reserved2            = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getReserved2()I

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getReserved2()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .reserved3            = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getReserved3()I

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getReserved3()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "[/ftCmo]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
