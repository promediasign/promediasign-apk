.class public Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMap;
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
    name = "DataSpaceMap"
.end annotation


# instance fields
.field entries:[Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;


# direct methods
.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    new-array v1, v0, [Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMap;->entries:[Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMap;->entries:[Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;

    new-instance v3, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;

    invoke-direct {v3, p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMap;->entries:[Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;

    return-void
.end method


# virtual methods
.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 4

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMap;->entries:[Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMap;->entries:[Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
