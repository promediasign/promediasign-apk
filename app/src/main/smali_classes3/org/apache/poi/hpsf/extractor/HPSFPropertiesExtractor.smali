.class public Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;
.super Lorg/apache/poi/POIOLE2TextExtractor;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/POIDocument;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/POIOLE2TextExtractor;-><init>(Lorg/apache/poi/POIDocument;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/POIOLE2TextExtractor;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/POIOLE2TextExtractor;-><init>(Lorg/apache/poi/POIOLE2TextExtractor;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/hpsf/HPSFPropertiesOnlyDocument;

    invoke-direct {v0, p1}, Lorg/apache/poi/hpsf/HPSFPropertiesOnlyDocument;-><init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/POIOLE2TextExtractor;-><init>(Lorg/apache/poi/POIDocument;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hpsf/HPSFPropertiesOnlyDocument;

    invoke-direct {v0, p1}, Lorg/apache/poi/hpsf/HPSFPropertiesOnlyDocument;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/POIOLE2TextExtractor;-><init>(Lorg/apache/poi/POIDocument;)V

    return-void
.end method

.method private static getPropertiesText(Lorg/apache/poi/hpsf/PropertySet;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertySetIDMap()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    invoke-virtual {v4}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    if-nez v1, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-virtual {v4}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getPropertyValueText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPropertyValueText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "(not set)"

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    new-instance v3, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;

    new-instance v4, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    :try_start_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Lorg/apache/poi/POITextExtractor;->close()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v3}, Lorg/apache/poi/POITextExtractor;->close()V

    throw p0

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDocumentSummaryInformationText()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/apache/poi/POIOLE2TextExtractor;->document:Lorg/apache/poi/POIDocument;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/POIDocument;->getDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getPropertiesText(Lorg/apache/poi/hpsf/PropertySet;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getCustomProperties()Lorg/apache/poi/hpsf/CustomProperties;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/CustomProperties;->nameSet()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Lorg/apache/poi/hpsf/CustomProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v4}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getPropertyValueText(Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const-string v5, " = "

    .line 63
    .line 64
    const-string v6, "\n"

    .line 65
    .line 66
    invoke-static {v1, v3, v5, v4, v6}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method

.method public getMetadataTextExtractor()Lorg/apache/poi/POITextExtractor;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You already have the Metadata Text Extractor, not recursing!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSummaryInformationText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIOLE2TextExtractor;->document:Lorg/apache/poi/POIDocument;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/POIDocument;->getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getPropertiesText(Lorg/apache/poi/hpsf/PropertySet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getSummaryInformationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getDocumentSummaryInformationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
