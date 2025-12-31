.class public Lorg/apache/poi/hpsf/PropertySetFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/io/InputStream;)Lorg/apache/poi/hpsf/PropertySet;
    .locals 7

    .line 1
    const/4 v0, 0x0

    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    new-instance v1, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {v1, p0}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    const/16 v4, 0x10

    new-array v4, v4, [B

    invoke-virtual {v1, v4}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([B)V

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v5

    long-to-int v6, v5

    const v5, 0xfffe

    if-ne v2, v5, :cond_3

    if-nez v3, :cond_3

    if-ltz v6, :cond_3

    if-lez v6, :cond_0

    invoke-virtual {v1, v4}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([B)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    new-instance v1, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v1, v4, v0}, Lorg/apache/poi/hpsf/ClassID;-><init>([BI)V

    if-lez v6, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/poi/hpsf/ClassID;

    sget-object v3, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->SUMMARY_INFORMATION_ID:Lorg/apache/poi/hpsf/ClassID;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lorg/apache/poi/hpsf/PropertySet;->matchesSummary(Lorg/apache/poi/hpsf/ClassID;[Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/hpsf/SummaryInformation;

    invoke-direct {v0, p0}, Lorg/apache/poi/hpsf/SummaryInformation;-><init>(Ljava/io/InputStream;)V

    return-object v0

    :cond_1
    if-lez v6, :cond_2

    sget-object v0, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->DOCUMENT_SUMMARY_INFORMATION_ID:[Lorg/apache/poi/hpsf/ClassID;

    invoke-static {v1, v0}, Lorg/apache/poi/hpsf/PropertySet;->matchesSummary(Lorg/apache/poi/hpsf/ClassID;[Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    invoke-direct {v0, p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;-><init>(Ljava/io/InputStream;)V

    return-object v0

    :cond_2
    new-instance v0, Lorg/apache/poi/hpsf/PropertySet;

    invoke-direct {v0, p0}, Lorg/apache/poi/hpsf/PropertySet;-><init>(Ljava/io/InputStream;)V

    return-object v0

    :cond_3
    new-instance p0, Lorg/apache/poi/hpsf/NoPropertySetStreamException;

    invoke-direct {p0}, Lorg/apache/poi/hpsf/NoPropertySetStreamException;-><init>()V

    throw p0
.end method

.method public static create(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;)Lorg/apache/poi/hpsf/PropertySet;
    .locals 1

    .line 2
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    new-instance p1, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {p1, p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1}, Lorg/apache/poi/hpsf/PropertySetFactory;->create(Ljava/io/InputStream;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object p0
    :try_end_1
    .catch Lorg/apache/poi/hpsf/MarkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_0

    :catch_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    return-object v0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    :cond_0
    throw p0
.end method

.method public static newDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    .locals 1

    new-instance v0, Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;-><init>()V

    return-object v0
.end method

.method public static newSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;
    .locals 1

    new-instance v0, Lorg/apache/poi/hpsf/SummaryInformation;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/SummaryInformation;-><init>()V

    return-object v0
.end method
