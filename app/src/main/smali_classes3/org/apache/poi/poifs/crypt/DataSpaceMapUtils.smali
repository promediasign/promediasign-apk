.class public Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;,
        Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;,
        Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$IRMDSTransformInfo;,
        Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceDefinition;,
        Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;,
        Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMap;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDefaultDataSpace(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V
    .locals 13

    new-instance v0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;

    const/4 v1, 0x0

    filled-new-array {v1}, [I

    move-result-object v2

    const-string v3, "EncryptedPackage"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "StrongEncryptionDataSpace"

    invoke-direct {v0, v2, v3, v4}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;-><init>([I[Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMap;

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;

    aput-object v0, v3, v1

    invoke-direct {v2, v3}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMap;-><init>([Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;)V

    const-string v0, "\u0006DataSpaces/DataSpaceMap"

    invoke-static {p0, v0, v2}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->createEncryptionEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    new-instance v0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceDefinition;

    const-string v2, "StrongEncryptionTransform"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceDefinition;-><init>([Ljava/lang/String;)V

    const-string v2, "\u0006DataSpaces/DataSpaceInfo/StrongEncryptionDataSpace"

    invoke-static {p0, v2, v0}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->createEncryptionEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    new-instance v0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x1

    const-string v5, "{FF9A3F03-56EF-4613-BDD5-5A41C1D07246}"

    const-string v6, "Microsoft.Container.EncryptionTransform"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;-><init>(ILjava/lang/String;Ljava/lang/String;IIIIII)V

    new-instance v2, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$IRMDSTransformInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$IRMDSTransformInfo;-><init>(Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;ILjava/lang/String;)V

    const-string v0, "\u0006DataSpaces/TransformInfo/StrongEncryptionTransform/\u0006Primary"

    invoke-static {p0, v0, v2}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->createEncryptionEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    new-instance v0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;

    const-string v4, "Microsoft.Container.DataSpaces"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;-><init>(Ljava/lang/String;IIIIII)V

    const-string v1, "\u0006DataSpaces/Version"

    invoke-static {p0, v1, v0}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->createEncryptionEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    return-void
.end method

.method public static createEncryptionEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 3

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-interface {p0, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->hasEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    invoke-interface {p0, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    goto :goto_1

    :cond_0
    aget-object v2, p1, v1

    invoke-interface {p0, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object p0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x1388

    new-array v1, v1, [B

    new-instance v2, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    invoke-direct {v2, v1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BI)V

    invoke-interface {p2, v2}, Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    invoke-interface {p0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->hasEntry(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/poi/poifs/filesystem/Entry;->delete()Z

    :cond_2
    invoke-virtual {v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result p2

    new-instance v0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$1;

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$1;-><init>([B)V

    invoke-interface {p0, p1, p2, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p0

    return-object p0
.end method

.method public static readUnicodeLPP4(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    div-int/lit8 v1, v0, 0x2

    invoke-static {p0, v1}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v1

    rem-int/lit8 v0, v0, 0x4

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    :cond_0
    return-object v1

    :cond_1
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "UNICODE-LP-P4 structure is a multiple of 4 bytes. If Padding is present, it MUST be exactly 2 bytes long"

    invoke-direct {p0, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readUtf8LPP4(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;
    .locals 7

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-array v2, v0, [B

    invoke-interface {p0, v2}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    rem-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    if-lez v3, :cond_1

    const/4 v5, 0x0

    :goto_0
    rsub-int/lit8 v6, v3, 0x4

    if-ge v5, v6, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p0, v2, v4, v0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    if-nez v0, :cond_3

    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    const-string p0, ""

    :goto_2
    return-object p0
.end method

.method public static writeUnicodeLPP4(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-interface {p0, p1}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    array-length p1, p1

    rem-int/lit8 p1, p1, 0x4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    :cond_0
    return-void
.end method

.method public static writeUtf8LPP4(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length v2, p1

    invoke-interface {p0, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-interface {p0, p1}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    array-length p1, p1

    rem-int/2addr p1, v0

    if-lez p1, :cond_3

    const/4 v2, 0x0

    :goto_0
    rsub-int/lit8 v3, p1, 0x4

    if-ge v2, v3, :cond_3

    invoke-interface {p0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-interface {p0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    :cond_3
    return-void
.end method
