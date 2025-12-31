.class public final Lorg/apache/poi/hssf/record/ProtectRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final protectFlag:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x12s


# instance fields
.field private _options:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ProtectRecord;->protectFlag:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/record/ProtectRecord;->_options:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/ProtectRecord;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/ProtectRecord;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ProtectRecord;->setProtect(Z)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/ProtectRecord;

    iget v1, p0, Lorg/apache/poi/hssf/record/ProtectRecord;->_options:I

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/ProtectRecord;-><init>(I)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getProtect()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ProtectRecord;->protectFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ProtectRecord;->_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/ProtectRecord;->_options:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setProtect(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ProtectRecord;->protectFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ProtectRecord;->_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/ProtectRecord;->_options:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[PROTECT]\n    .options = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/poi/hssf/record/ProtectRecord;->_options:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n[/PROTECT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
