.class public final Lorg/apache/poi/hssf/record/SSTRecord;
.super Lorg/apache/poi/hssf/record/cont/ContinuableRecord;
.source "SourceFile"


# static fields
.field private static final EMPTY_STRING:Lorg/apache/poi/hssf/record/common/UnicodeString;

.field public static final sid:S = 0xfcs


# instance fields
.field bucketAbsoluteOffsets:[I

.field bucketRelativeOffsets:[I

.field private deserializer:Lorg/apache/poi/hssf/record/SSTDeserializer;

.field private field_1_num_strings:I

.field private field_2_num_unique_strings:I

.field private field_3_strings:Lorg/apache/poi/util/IntMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/util/IntMapper<",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/common/UnicodeString;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hssf/record/SSTRecord;->EMPTY_STRING:Lorg/apache/poi/hssf/record/common/UnicodeString;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_1_num_strings:I

    iput v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_2_num_unique_strings:I

    new-instance v0, Lorg/apache/poi/util/IntMapper;

    invoke-direct {v0}, Lorg/apache/poi/util/IntMapper;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    new-instance v0, Lorg/apache/poi/hssf/record/SSTDeserializer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/SSTDeserializer;-><init>(Lorg/apache/poi/util/IntMapper;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->deserializer:Lorg/apache/poi/hssf/record/SSTDeserializer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_1_num_strings:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_2_num_unique_strings:I

    new-instance v0, Lorg/apache/poi/util/IntMapper;

    invoke-direct {v0}, Lorg/apache/poi/util/IntMapper;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    new-instance v0, Lorg/apache/poi/hssf/record/SSTDeserializer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/SSTDeserializer;-><init>(Lorg/apache/poi/util/IntMapper;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->deserializer:Lorg/apache/poi/hssf/record/SSTDeserializer;

    iget v1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_1_num_strings:I

    if-nez v1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_2_num_unique_strings:I

    return-void

    :cond_0
    iget v1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_2_num_unique_strings:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hssf/record/SSTDeserializer;->manufactureStrings(ILorg/apache/poi/hssf/record/RecordInputStream;)V

    return-void
.end method


# virtual methods
.method public addString(Lorg/apache/poi/hssf/record/common/UnicodeString;)I
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_1_num_strings:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_1_num_strings:I

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/poi/hssf/record/SSTRecord;->EMPTY_STRING:Lorg/apache/poi/hssf/record/common/UnicodeString;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/IntMapper;->getIndex(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {v0}, Lorg/apache/poi/util/IntMapper;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_2_num_unique_strings:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_2_num_unique_strings:I

    iget-object v1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-static {v1, p1}, Lorg/apache/poi/hssf/record/SSTDeserializer;->addToStringTable(Lorg/apache/poi/util/IntMapper;Lorg/apache/poi/hssf/record/common/UnicodeString;)V

    :goto_0
    return v0
.end method

.method public calcExtSSTRecordSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {v0}, Lorg/apache/poi/util/IntMapper;->size()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hssf/record/ExtSSTRecord;->getRecordSizeForStrings(I)I

    move-result v0

    return v0
.end method

.method public createExtSSTRecord(I)Lorg/apache/poi/hssf/record/ExtSSTRecord;
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->bucketAbsoluteOffsets:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->bucketRelativeOffsets:[I

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/hssf/record/ExtSSTRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ExtSSTRecord;-><init>()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtSSTRecord;->setNumStringsPerBucket(S)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->bucketAbsoluteOffsets:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iget-object v2, p0, Lorg/apache/poi/hssf/record/SSTRecord;->bucketRelativeOffsets:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    aget v4, v1, v3

    add-int/2addr v4, p1

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/record/ExtSSTRecord;->setBucketOffsets([I[I)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SST record has not yet been serialized."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNumStrings()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_1_num_strings:I

    return v0
.end method

.method public getNumUniqueStrings()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_2_num_unique_strings:I

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0xfc

    return v0
.end method

.method public getString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/IntMapper;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/common/UnicodeString;

    return-object p1
.end method

.method public serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 4

    new-instance v0, Lorg/apache/poi/hssf/record/SSTSerializer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SSTRecord;->getNumStrings()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SSTRecord;->getNumUniqueStrings()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/hssf/record/SSTSerializer;-><init>(Lorg/apache/poi/util/IntMapper;II)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/SSTSerializer;->serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/SSTSerializer;->getBucketAbsoluteOffsets()[I

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->bucketAbsoluteOffsets:[I

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/SSTSerializer;->getBucketRelativeOffsets()[I

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->bucketRelativeOffsets:[I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[SST]\n    .numstrings     = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SSTRecord;->getNumStrings()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .uniquestrings  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SSTRecord;->getNumUniqueStrings()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {v3}, Lorg/apache/poi/util/IntMapper;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {v3, v2}, Lorg/apache/poi/util/IntMapper;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/common/UnicodeString;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    .string_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "      = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getDebugInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "[/SST]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
