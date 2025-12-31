.class public Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;,
        Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;,
        Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;
    }
.end annotation


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private cellRef:Ljava/lang/String;

.field private commentCellRefs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            ">;"
        }
    .end annotation
.end field

.field private commentsTable:Lorg/apache/poi/xssf/model/CommentsTable;

.field private fIsOpen:Z

.field private formatIndex:S

.field private formatString:Ljava/lang/String;

.field private final formatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

.field private formula:Ljava/lang/StringBuffer;

.field private formulasNotResults:Z

.field private headerFooter:Ljava/lang/StringBuffer;

.field private hfIsOpen:Z

.field private isIsOpen:Z

.field private nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

.field private nextRowNum:I

.field private final output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

.field private rowNum:I

.field private sharedStringsTable:Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;

.field private stylesTable:Lorg/apache/poi/xssf/model/StylesTable;

.field private vIsOpen:Z

.field private value:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/model/StylesTable;Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/ss/usermodel/DataFormatter;Z)V
    .locals 7

    .line 1
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;-><init>(Lorg/apache/poi/xssf/model/StylesTable;Lorg/apache/poi/xssf/model/CommentsTable;Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/ss/usermodel/DataFormatter;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/model/StylesTable;Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Z)V
    .locals 6

    .line 2
    new-instance v4, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v4}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;-><init>(Lorg/apache/poi/xssf/model/StylesTable;Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/ss/usermodel/DataFormatter;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/model/StylesTable;Lorg/apache/poi/xssf/model/CommentsTable;Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/ss/usermodel/DataFormatter;Z)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formula:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->headerFooter:Ljava/lang/StringBuffer;

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->stylesTable:Lorg/apache/poi/xssf/model/StylesTable;

    iput-object p2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentsTable:Lorg/apache/poi/xssf/model/CommentsTable;

    iput-object p3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->sharedStringsTable:Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;

    iput-object p4, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    iput-boolean p6, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formulasNotResults:Z

    sget-object p1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->NUMBER:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    iput-object p5, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {p0}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->init()V

    return-void
.end method

.method private checkForEmptyCellComments(Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->END_OF_SHEET_DATA:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    if-ne p1, v0, :cond_1

    :goto_0
    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->outputEmptyCellComment(Lorg/apache/poi/ss/util/CellAddress;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->cellRef:Ljava/lang/String;

    if-nez v0, :cond_4

    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->END_OF_ROW:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    if-ne p1, v0, :cond_3

    :goto_1
    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result p1

    iget v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->outputEmptyCellComment(Lorg/apache/poi/ss/util/CellAddress;)V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cell ref should be null only if there are only empty cells in the row; rowNum: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    iget-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->cellRef:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellAddress;

    sget-object v2, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->CELL:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    if-ne p1, v2, :cond_5

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/util/CellAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    return-void

    :cond_5
    invoke-virtual {v1, v0}, Lorg/apache/poi/ss/util/CellAddress;->compareTo(Lorg/apache/poi/ss/util/CellAddress;)I

    move-result v0

    if-lez v0, :cond_6

    sget-object v3, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->END_OF_ROW:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    if-ne p1, v3, :cond_6

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v3

    iget v4, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    if-gt v3, v4, :cond_6

    :goto_2
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->outputEmptyCellComment(Lorg/apache/poi/ss/util/CellAddress;)V

    goto :goto_3

    :cond_6
    if-gez v0, :cond_7

    if-ne p1, v2, :cond_7

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    if-gt v0, v1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_8
    return-void
.end method

.method private init()V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentsTable:Lorg/apache/poi/xssf/model/CommentsTable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentsTable:Lorg/apache/poi/xssf/model/CommentsTable;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/CommentsTable;->getCTComments()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getCommentList()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;->getCommentArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentCellRefs:Ljava/util/Queue;

    new-instance v5, Lorg/apache/poi/ss/util/CellAddress;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isTextTag(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "v"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "inlineStr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "t"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->isIsOpen:Z

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private outputEmptyCellComment(Lorg/apache/poi/ss/util/CellAddress;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentsTable:Lorg/apache/poi/xssf/model/CommentsTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/model/CommentsTable;->findCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->cell(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFComment;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->vIsOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_0
    iget-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->fIsOpen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formula:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_1
    iget-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->hfIsOpen:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->headerFooter:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_2
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 p3, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string v1, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->isTextTag(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_5

    .line 19
    .line 20
    iput-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->vIsOpen:Z

    .line 21
    .line 22
    sget-object p1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$1;->$SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType:[I

    .line 23
    .line 24
    iget-object p2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    aget p1, p1, p2

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    packed-switch p1, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p3, "(TODO: Unexpected type: "

    .line 39
    .line 40
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    .line 44
    .line 45
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p3, ")"

    .line 49
    .line 50
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :pswitch_0
    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuffer;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object p3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatString:Ljava/lang/String;

    .line 66
    .line 67
    if-eqz p3, :cond_3

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    if-lez p3, :cond_3

    .line 74
    .line 75
    iget-object p3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    .line 76
    .line 77
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    iget-short p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatIndex:S

    .line 82
    .line 83
    iget-object v2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatString:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p3, v0, v1, p1, v2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    goto/16 :goto_0

    .line 90
    .line 91
    :pswitch_1
    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuffer;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    .line 102
    .line 103
    iget-object v3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->sharedStringsTable:Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;

    .line 104
    .line 105
    invoke-virtual {v3, v1}, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->getEntryAt(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-direct {v2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto/16 :goto_0

    .line 117
    .line 118
    :catch_0
    move-exception v1

    .line 119
    sget-object v2, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->logger:Lorg/apache/poi/util/POILogger;

    .line 120
    .line 121
    const-string v3, "Failed to parse SST index \'"

    .line 122
    .line 123
    invoke-static {v3, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const/4 v3, 0x2

    .line 128
    new-array v3, v3, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object p1, v3, v0

    .line 131
    .line 132
    aput-object v1, v3, p3

    .line 133
    .line 134
    const/4 p1, 0x7

    .line 135
    invoke-virtual {v2, p1, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    move-object p1, p2

    .line 139
    goto :goto_0

    .line 140
    :pswitch_2
    new-instance p1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    .line 141
    .line 142
    iget-object p3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuffer;

    .line 143
    .line 144
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p3

    .line 148
    invoke-direct {p1, p3}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    goto :goto_0

    .line 156
    :pswitch_3
    iget-boolean p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formulasNotResults:Z

    .line 157
    .line 158
    if-eqz p1, :cond_1

    .line 159
    .line 160
    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formula:Ljava/lang/StringBuffer;

    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    goto :goto_0

    .line 167
    :cond_1
    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuffer;

    .line 168
    .line 169
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    iget-object p3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatString:Ljava/lang/String;

    .line 174
    .line 175
    if-eqz p3, :cond_3

    .line 176
    .line 177
    :try_start_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 178
    .line 179
    .line 180
    move-result-wide v0

    .line 181
    iget-object p3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    .line 182
    .line 183
    iget-short v2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatIndex:S

    .line 184
    .line 185
    iget-object v3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatString:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {p3, v0, v1, v2, v3}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    goto :goto_0

    .line 192
    :catch_1
    nop

    .line 193
    goto :goto_0

    .line 194
    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string p3, "ERROR:"

    .line 197
    .line 198
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object p3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuffer;

    .line 202
    .line 203
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    goto :goto_0

    .line 211
    :pswitch_5
    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuffer;

    .line 212
    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    const/16 p3, 0x30

    .line 218
    .line 219
    if-ne p1, p3, :cond_2

    .line 220
    .line 221
    const-string p1, "FALSE"

    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_2
    const-string p1, "TRUE"

    .line 225
    .line 226
    :cond_3
    :goto_0
    sget-object p3, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->CELL:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    .line 227
    .line 228
    invoke-direct {p0, p3}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->checkForEmptyCellComments(Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;)V

    .line 229
    .line 230
    .line 231
    iget-object p3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->commentsTable:Lorg/apache/poi/xssf/model/CommentsTable;

    .line 232
    .line 233
    if-eqz p3, :cond_4

    .line 234
    .line 235
    new-instance p2, Lorg/apache/poi/ss/util/CellAddress;

    .line 236
    .line 237
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->cellRef:Ljava/lang/String;

    .line 238
    .line 239
    invoke-direct {p2, v0}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p3, p2}, Lorg/apache/poi/xssf/model/CommentsTable;->findCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    :cond_4
    iget-object p3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    .line 247
    .line 248
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->cellRef:Ljava/lang/String;

    .line 249
    .line 250
    invoke-interface {p3, v0, p1, p2}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->cell(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFComment;)V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_2

    .line 254
    .line 255
    :cond_5
    const-string p1, "f"

    .line 256
    .line 257
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    if-eqz p1, :cond_6

    .line 262
    .line 263
    iput-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->fIsOpen:Z

    .line 264
    .line 265
    goto/16 :goto_2

    .line 266
    .line 267
    :cond_6
    const-string p1, "is"

    .line 268
    .line 269
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    if-eqz p1, :cond_7

    .line 274
    .line 275
    iput-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->isIsOpen:Z

    .line 276
    .line 277
    goto/16 :goto_2

    .line 278
    .line 279
    :cond_7
    const-string p1, "row"

    .line 280
    .line 281
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-eqz p1, :cond_8

    .line 286
    .line 287
    sget-object p1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->END_OF_ROW:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    .line 288
    .line 289
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->checkForEmptyCellComments(Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;)V

    .line 290
    .line 291
    .line 292
    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    .line 293
    .line 294
    iget p2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    .line 295
    .line 296
    invoke-interface {p1, p2}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->endRow(I)V

    .line 297
    .line 298
    .line 299
    iget p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    .line 300
    .line 301
    add-int/2addr p1, p3

    .line 302
    iput p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextRowNum:I

    .line 303
    .line 304
    goto :goto_2

    .line 305
    :cond_8
    const-string p1, "sheetData"

    .line 306
    .line 307
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result p1

    .line 311
    if-eqz p1, :cond_9

    .line 312
    .line 313
    sget-object p1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->END_OF_SHEET_DATA:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    .line 314
    .line 315
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->checkForEmptyCellComments(Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;)V

    .line 316
    .line 317
    .line 318
    goto :goto_2

    .line 319
    :cond_9
    const-string p1, "oddHeader"

    .line 320
    .line 321
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result p1

    .line 325
    if-nez p1, :cond_c

    .line 326
    .line 327
    const-string p1, "evenHeader"

    .line 328
    .line 329
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result p1

    .line 333
    if-nez p1, :cond_c

    .line 334
    .line 335
    const-string p1, "firstHeader"

    .line 336
    .line 337
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result p1

    .line 341
    if-eqz p1, :cond_a

    .line 342
    .line 343
    goto :goto_1

    .line 344
    :cond_a
    const-string p1, "oddFooter"

    .line 345
    .line 346
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    if-nez p1, :cond_b

    .line 351
    .line 352
    const-string p1, "evenFooter"

    .line 353
    .line 354
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result p1

    .line 358
    if-nez p1, :cond_b

    .line 359
    .line 360
    const-string p1, "firstFooter"

    .line 361
    .line 362
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    if-eqz p1, :cond_d

    .line 367
    .line 368
    :cond_b
    iput-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->hfIsOpen:Z

    .line 369
    .line 370
    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    .line 371
    .line 372
    iget-object p3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->headerFooter:Ljava/lang/StringBuffer;

    .line 373
    .line 374
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object p3

    .line 378
    invoke-interface {p1, p3, v0, p2}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->headerFooter(Ljava/lang/String;ZLjava/lang/String;)V

    .line 379
    .line 380
    .line 381
    goto :goto_2

    .line 382
    :cond_c
    :goto_1
    iput-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->hfIsOpen:Z

    .line 383
    .line 384
    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    .line 385
    .line 386
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->headerFooter:Ljava/lang/StringBuffer;

    .line 387
    .line 388
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-interface {p1, v0, p3, p2}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->headerFooter(Ljava/lang/String;ZLjava/lang/String;)V

    .line 393
    .line 394
    .line 395
    :cond_d
    :goto_2
    return-void

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->isTextTag(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean p3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->vIsOpen:Z

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->value:Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_6

    :cond_1
    const-string p1, "is"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean p3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->isIsOpen:Z

    goto/16 :goto_6

    :cond_2
    const-string p1, "f"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "t"

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formula:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    sget-object p2, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->NUMBER:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    if-ne p1, p2, :cond_3

    sget-object p1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->FORMULA:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    :cond_3
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, "shared"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "ref"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "si"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p1, :cond_5

    :cond_4
    iput-boolean p3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->fIsOpen:Z

    goto/16 :goto_6

    :cond_5
    iget-boolean p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formulasNotResults:Z

    if-eqz p1, :cond_12

    sget-object p1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->logger:Lorg/apache/poi/util/POILogger;

    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "shared formulas not yet supported!"

    aput-object p3, p2, v0

    const/4 p3, 0x5

    invoke-virtual {p1, p3, p2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_6
    const-string p1, "oddHeader"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    const-string p1, "evenHeader"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    const-string p1, "firstHeader"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    const-string p1, "firstFooter"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    const-string p1, "oddFooter"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    const-string p1, "evenFooter"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto/16 :goto_5

    :cond_7
    const-string p1, "row"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "r"

    if-eqz p1, :cond_9

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sub-int/2addr p1, p3

    :goto_1
    iput p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    goto :goto_2

    :cond_8
    iget p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextRowNum:I

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->output:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    iget p2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->rowNum:I

    invoke-interface {p1, p2}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->startRow(I)V

    goto/16 :goto_6

    :cond_9
    const-string p1, "c"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    sget-object p1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->NUMBER:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    const/4 p1, -0x1

    iput-short p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatIndex:S

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatString:Ljava/lang/String;

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->cellRef:Ljava/lang/String;

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "s"

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v1, "b"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object p1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->BOOLEAN:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    :goto_3
    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->nextDataType:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    goto :goto_6

    :cond_a
    const-string v1, "e"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object p1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->ERROR:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    goto :goto_3

    :cond_b
    const-string v1, "inlineStr"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object p1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->INLINE_STRING:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    goto :goto_3

    :cond_c
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    sget-object p1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->SST_STRING:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    goto :goto_3

    :cond_d
    const-string p3, "str"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    sget-object p1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;->FORMULA:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$xssfDataType;

    goto :goto_3

    :cond_e
    iget-object p2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->stylesTable:Lorg/apache/poi/xssf/model/StylesTable;

    if-eqz p2, :cond_10

    if-eqz p4, :cond_f

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->stylesTable:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {p2, p1}, Lorg/apache/poi/xssf/model/StylesTable;->getStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object p1

    goto :goto_4

    :cond_f
    invoke-virtual {p2}, Lorg/apache/poi/xssf/model/StylesTable;->getNumCellStyles()I

    move-result p2

    if-lez p2, :cond_10

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->stylesTable:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/model/StylesTable;->getStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object p1

    :cond_10
    :goto_4
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getDataFormat()S

    move-result p2

    iput-short p2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatIndex:S

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatString:Ljava/lang/String;

    if-nez p1, :cond_12

    iget-short p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatIndex:S

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getBuiltinFormat(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->formatString:Ljava/lang/String;

    goto :goto_6

    :cond_11
    :goto_5
    iput-boolean p3, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->hfIsOpen:Z

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;->headerFooter:Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_12
    :goto_6
    return-void
.end method
