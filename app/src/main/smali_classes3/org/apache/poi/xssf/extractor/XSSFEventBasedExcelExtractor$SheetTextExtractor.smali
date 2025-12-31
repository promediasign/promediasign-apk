.class public Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SheetTextExtractor"
.end annotation


# instance fields
.field private firstCellOfRow:Z

.field private final headerFooterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final output:Ljava/lang/StringBuffer;

.field final synthetic this$0:Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->this$0:Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->output:Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->firstCellOfRow:Z

    invoke-static {p1}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->access$000(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->headerFooterMap:Ljava/util/Map;

    return-void
.end method

.method private appendHeaderFooterText(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->headerFooterMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "&L"

    invoke-direct {p0, p2, v0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->handleHeaderFooterDelimiter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "&C"

    invoke-direct {p0, p2, v0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->handleHeaderFooterDelimiter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "&R"

    invoke-direct {p0, p2, v0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->handleHeaderFooterDelimiter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method private handleHeaderFooterDelimiter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x2

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-lez p2, :cond_1

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, "\t"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    add-int/2addr p2, v0

    .line 34
    invoke-static {p1, p2, v1}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public appendCellText(Ljava/lang/StringBuffer;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->this$0:Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;

    iget-object v1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->output:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->access$400(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;Ljava/lang/StringBuffer;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->output:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public appendFooterText(Ljava/lang/StringBuffer;)V
    .locals 1

    const-string v0, "firstFooter"

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendHeaderFooterText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const-string v0, "oddFooter"

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendHeaderFooterText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const-string v0, "evenFooter"

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendHeaderFooterText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public appendHeaderText(Ljava/lang/StringBuffer;)V
    .locals 1

    const-string v0, "firstHeader"

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendHeaderFooterText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const-string v0, "oddHeader"

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendHeaderFooterText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const-string v0, "evenHeader"

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendHeaderFooterText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public cell(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFComment;)V
    .locals 2

    iget-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->firstCellOfRow:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->firstCellOfRow:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->output:Ljava/lang/StringBuffer;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->this$0:Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;

    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->output:Ljava/lang/StringBuffer;

    invoke-static {p1, v0, p2}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->access$100(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;Ljava/lang/StringBuffer;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->output:Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->this$0:Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;

    invoke-static {p1}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->access$200(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getString()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->output:Ljava/lang/StringBuffer;

    if-eqz p2, :cond_2

    const-string p2, " Comment by "

    goto :goto_1

    :cond_2
    const-string p2, "Comment by "

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->this$0:Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;

    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->output:Ljava/lang/StringBuffer;

    invoke-static {p2, v0, p1}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->access$300(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;Ljava/lang/StringBuffer;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->output:Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->output:Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getAuthor()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public endRow(I)V
    .locals 1

    iget-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->output:Ljava/lang/StringBuffer;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public headerFooter(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->headerFooterMap:Ljava/util/Map;

    if-eqz p2, :cond_0

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->output:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->firstCellOfRow:Z

    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->headerFooterMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public startRow(I)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->firstCellOfRow:Z

    return-void
.end method
