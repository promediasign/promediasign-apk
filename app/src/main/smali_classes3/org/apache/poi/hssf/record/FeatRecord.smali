.class public final Lorg/apache/poi/hssf/record/FeatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static logger:Lorg/apache/poi/util/POILogger; = null

.field public static final sid:S = 0x868s

.field public static final v11_sid:S = 0x872s

.field public static final v12_sid:S = 0x878s


# instance fields
.field private cbFeatData:J

.field private cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

.field private futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

.field private isf_sharedFeatureType:I

.field private reserved1:B

.field private reserved2:J

.field private reserved3:I

.field private sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/FeatRecord;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/FeatRecord;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    const/16 v1, 0x868

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->setRecordType(S)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 5

    const/4 v0, 0x1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    new-instance v1, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    iput-byte v1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->reserved1:B

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->reserved2:J

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cbFeatData:J

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/FeatRecord;->reserved3:I

    new-array v1, v1, [Lorg/apache/poi/ss/util/CellRangeAddress;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    new-instance v4, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v4, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    aput-object v4, v3, v2

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    sget-object p1, Lorg/apache/poi/hssf/record/FeatRecord;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown Shared Feature "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    const-string v4, " found!"

    .line 2
    invoke-static {v4, v3, v2}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance v0, Lorg/apache/poi/hssf/record/common/FeatSmartTag;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/common/FeatSmartTag;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    :goto_1
    iput-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;

    goto :goto_2

    :cond_2
    new-instance v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/apache/poi/hssf/record/common/FeatProtection;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/common/FeatProtection;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto :goto_1

    :goto_2
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FeatRecord;->clone()Lorg/apache/poi/hssf/record/FeatRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/FeatRecord;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/Record;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/FeatRecord;

    return-object v0
.end method

.method public getCbFeatData()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cbFeatData:J

    return-wide v0
.end method

.method public getCellRefs()[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object v0
.end method

.method public getDataSize()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1b

    iget-object v1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/common/SharedFeature;->getDataSize()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getIsf_sharedFeatureType()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    return v0
.end method

.method public getSharedFeature()Lorg/apache/poi/hssf/record/common/SharedFeature;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;

    return-object v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x868

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->reserved1:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->reserved2:J

    long-to-int v1, v0

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

    array-length v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cbFeatData:J

    long-to-int v1, v0

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->reserved3:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;

    invoke-interface {v0, p1}, Lorg/apache/poi/hssf/record/common/SharedFeature;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method

.method public setCbFeatData(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cbFeatData:J

    return-void
.end method

.method public setCellRefs([Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

    return-void
.end method

.method public setSharedFeature(Lorg/apache/poi/hssf/record/common/SharedFeature;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;

    instance-of v0, p1, Lorg/apache/poi/hssf/record/common/FeatProtection;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    iput v1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    :cond_1
    instance-of v0, p1, Lorg/apache/poi/hssf/record/common/FeatSmartTag;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    :cond_2
    iget v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Lorg/apache/poi/hssf/record/common/SharedFeature;->getDataSize()I

    move-result p1

    int-to-long v0, p1

    :goto_0
    iput-wide v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cbFeatData:J

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[SHARED FEATURE]\n[/SHARED FEATURE]\n"

    return-object v0
.end method
