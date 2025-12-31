.class public final Lorg/apache/poi/hssf/record/FeatHdrRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final SHAREDFEATURES_ISFFACTOID:I = 0x4

.field public static final SHAREDFEATURES_ISFFEC2:I = 0x3

.field public static final SHAREDFEATURES_ISFLIST:I = 0x5

.field public static final SHAREDFEATURES_ISFPROTECTION:I = 0x2

.field public static final sid:S = 0x867s


# instance fields
.field private cbHdrData:J

.field private futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

.field private isf_sharedFeatureType:I

.field private reserved:B

.field private rgbHdrData:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    const/16 v1, 0x867

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->setRecordType(S)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->isf_sharedFeatureType:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->reserved:B

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->cbHdrData:J

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->rgbHdrData:[B

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FeatHdrRecord;->clone()Lorg/apache/poi/hssf/record/FeatHdrRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/FeatHdrRecord;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/Record;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/FeatHdrRecord;

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->rgbHdrData:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x13

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x867

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->isf_sharedFeatureType:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->reserved:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->cbHdrData:J

    long-to-int v1, v0

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->rgbHdrData:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[FEATURE HEADER]\n[/FEATURE HEADER]\n"

    return-object v0
.end method
