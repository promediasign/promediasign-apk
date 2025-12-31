.class Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private footer:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

.field private footerEven:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

.field private footerFirst:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

.field private header:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

.field private headerEven:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

.field private headerFirst:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse([B)Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;
    .locals 5

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;

    invoke-direct {v0}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;-><init>()V

    new-instance v1, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    const-string v2, "header"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;-><init>(Ljava/lang/String;Z)V

    iput-object v1, v0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->header:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    new-instance v1, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    const-string v2, "footer"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;-><init>(Ljava/lang/String;Z)V

    iput-object v1, v0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->footer:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    new-instance v1, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    const-string v2, "evenHeader"

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;-><init>(Ljava/lang/String;Z)V

    iput-object v1, v0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->headerEven:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    new-instance v1, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    const-string v2, "evenFooter"

    invoke-direct {v1, v2, v4}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;-><init>(Ljava/lang/String;Z)V

    iput-object v1, v0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->footerEven:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    new-instance v1, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    const-string v2, "firstHeader"

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;-><init>(Ljava/lang/String;Z)V

    iput-object v1, v0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->headerFirst:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    new-instance v1, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    const-string v2, "firstFooter"

    invoke-direct {v1, v2, v4}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;-><init>(Ljava/lang/String;Z)V

    iput-object v1, v0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->footerFirst:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    iget-object v1, v0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->header:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    const/4 v2, 0x2

    invoke-static {p0, v2, v1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->readHeaderFooter([BILorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, v0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->footer:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    invoke-static {p0, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->readHeaderFooter([BILorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->headerEven:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    invoke-static {p0, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->readHeaderFooter([BILorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->footerEven:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    invoke-static {p0, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->readHeaderFooter([BILorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->headerFirst:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    invoke-static {p0, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->readHeaderFooter([BILorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->footerFirst:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    invoke-static {p0, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->readHeaderFooter([BILorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)I

    return-object v0
.end method

.method private static readHeaderFooter([BILorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)I
    .locals 2

    add-int/lit8 v0, p1, 0x4

    array-length v1, p0

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLNullableWideString([BILjava/lang/StringBuilder;)I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->setRawString(Ljava/lang/String;)V

    return p0
.end method


# virtual methods
.method public getFooter()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->footer:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    return-object v0
.end method

.method public getFooterEven()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->footerEven:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    return-object v0
.end method

.method public getFooterFirst()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->footerFirst:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    return-object v0
.end method

.method public getHeader()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->header:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    return-object v0
.end method

.method public getHeaderEven()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->headerEven:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    return-object v0
.end method

.method public getHeaderFirst()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->headerFirst:Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    return-object v0
.end method
