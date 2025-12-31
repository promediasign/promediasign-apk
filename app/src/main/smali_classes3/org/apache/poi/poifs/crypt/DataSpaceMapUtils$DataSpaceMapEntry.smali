.class public Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataSpaceMapEntry"
.end annotation


# instance fields
.field final dataSpaceName:Ljava/lang/String;

.field final referenceComponent:[Ljava/lang/String;

.field final referenceComponentType:[I


# direct methods
.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->referenceComponentType:[I

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->referenceComponent:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->referenceComponentType:[I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->referenceComponent:[Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->readUnicodeLPP4(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->readUnicodeLPP4(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->dataSpaceName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->referenceComponentType:[I

    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->referenceComponent:[Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->dataSpaceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->createDelayedOutput(I)Lorg/apache/poi/util/LittleEndianOutput;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->referenceComponent:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->referenceComponent:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->referenceComponentType:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->referenceComponent:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {p1, v3}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->writeUnicodeLPP4(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->dataSpaceName:Ljava/lang/String;

    invoke-static {p1, v2}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->writeUnicodeLPP4(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method
