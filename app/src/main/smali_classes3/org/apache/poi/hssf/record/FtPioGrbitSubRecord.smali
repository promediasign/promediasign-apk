.class public final Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final AUTO_LOAD_BIT:I = 0x200

.field public static final AUTO_PICT_BIT:I = 0x1

.field public static final CAMERA_BIT:I = 0x80

.field public static final CTL_BIT:I = 0x10

.field public static final DDE_BIT:I = 0x2

.field public static final DEFAULT_SIZE_BIT:I = 0x100

.field public static final ICON_BIT:I = 0x8

.field public static final PRINT_CALC_BIT:I = 0x4

.field public static final PRSTM_BIT:I = 0x20

.field public static final length:S = 0x2s

.field public static final sid:S = 0x8s


# instance fields
.field private flags:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    return-void

    :cond_0
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    const-string v0, "Unexpected size ("

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
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->clone()Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;-><init>()V

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/hssf/record/SubRecord;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->clone()Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;

    move-result-object v0

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getFlagByBit(I)Z
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getFlags()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setFlagByBit(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-short p2, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    or-int/2addr p1, p2

    :goto_0
    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    goto :goto_1

    :cond_0
    iget-short p2, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    const v0, 0xffff

    xor-int/2addr p1, v0

    and-int/2addr p1, p2

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setFlags(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[FtPioGrbit ]\n  size     = 2\n  flags    = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n[/FtPioGrbit ]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
