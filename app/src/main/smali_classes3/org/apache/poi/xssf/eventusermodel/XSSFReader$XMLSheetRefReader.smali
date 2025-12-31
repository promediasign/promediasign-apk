.class Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XMLSheetRefReader;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/eventusermodel/XSSFReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XMLSheetRefReader"
.end annotation


# instance fields
.field private final sheetRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XMLSheetRefReader;->sheetRefs:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/xssf/eventusermodel/XSSFReader$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XMLSheetRefReader;-><init>()V

    return-void
.end method


# virtual methods
.method public getSheetRefs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XMLSheetRefReader;->sheetRefs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    const-string p1, "sheet"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    const/4 p2, 0x0

    move-object p2, p1

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge p3, v0, :cond_3

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object p3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XMLSheetRefReader;->sheetRefs:Ljava/util/List;

    new-instance p4, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;

    invoke-direct {p4, p2, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method
