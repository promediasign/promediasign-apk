.class public Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field private characters:Ljava/lang/StringBuffer;

.field private count:I

.field private inRPh:Z

.field private final includePhoneticRuns:Z

.field private phoneticStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private strings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tIsOpen:Z

.field private uniqueCount:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-boolean p2, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->includePhoneticRuns:Z

    sget-object p2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHARED_STRINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {p2}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->readFrom(Ljava/io/InputStream;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Z)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-boolean p2, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->includePhoneticRuns:Z

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->readFrom(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->tIsOpen:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->inRPh:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->includePhoneticRuns:Z

    if-eqz v1, :cond_0

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->characters:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p3, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "si"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->strings:Ljava/util/List;

    iget-object p2, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->characters:Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "t"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    iput-boolean p3, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->tIsOpen:Z

    goto :goto_0

    :cond_2
    const-string p1, "rPh"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean p3, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->inRPh:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->count:I

    return v0
.end method

.method public getEntryAt(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->strings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->strings:Ljava/util/List;

    return-object v0
.end method

.method public getUniqueCount()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->uniqueCount:I

    return v0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 3

    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result p1

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->unread(I)V

    new-instance p1, Lorg/xml/sax/InputSource;

    invoke-direct {p1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {}, Lorg/apache/poi/util/SAXHelper;->newXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SAX parser appears to be broken - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p3, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "sst"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "count"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->count:I

    :cond_1
    const-string p1, "uniqueCount"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->uniqueCount:I

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    iget p2, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->uniqueCount:I

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->strings:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->phoneticStrings:Ljava/util/Map;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->characters:Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const-string p1, "si"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->characters:Ljava/lang/StringBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0

    :cond_4
    const-string p1, "t"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_5

    iput-boolean p3, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->tIsOpen:Z

    goto :goto_0

    :cond_5
    const-string p1, "rPh"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iput-boolean p3, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->inRPh:Z

    iget-boolean p1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->includePhoneticRuns:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->characters:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->characters:Ljava/lang/StringBuffer;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    :goto_0
    return-void
.end method
