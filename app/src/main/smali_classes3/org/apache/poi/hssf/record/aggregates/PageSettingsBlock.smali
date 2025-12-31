.class public final Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$PLSAggregate;
    }
.end annotation


# instance fields
.field private _bitmap:Lorg/apache/poi/hssf/record/Record;

.field private _bottomMargin:Lorg/apache/poi/hssf/record/BottomMarginRecord;

.field private _columnBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

.field private _footer:Lorg/apache/poi/hssf/record/FooterRecord;

.field private _hCenter:Lorg/apache/poi/hssf/record/HCenterRecord;

.field private _header:Lorg/apache/poi/hssf/record/HeaderRecord;

.field private _headerFooter:Lorg/apache/poi/hssf/record/HeaderFooterRecord;

.field private _leftMargin:Lorg/apache/poi/hssf/record/LeftMarginRecord;

.field private final _plsRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$PLSAggregate;",
            ">;"
        }
    .end annotation
.end field

.field private _printSetup:Lorg/apache/poi/hssf/record/PrintSetupRecord;

.field private _printSize:Lorg/apache/poi/hssf/record/Record;

.field private _rightMargin:Lorg/apache/poi/hssf/record/RightMarginRecord;

.field private _rowBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

.field private final _sviewHeaderFooters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/HeaderFooterRecord;",
            ">;"
        }
    .end annotation
.end field

.field private _topMargin:Lorg/apache/poi/hssf/record/TopMarginRecord;

.field private _vCenter:Lorg/apache/poi/hssf/record/VCenterRecord;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_sviewHeaderFooters:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_plsRecords:Ljava/util/List;

    new-instance v0, Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rowBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    new-instance v0, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_columnBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    new-instance v0, Lorg/apache/poi/hssf/record/HeaderRecord;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/HeaderRecord;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_header:Lorg/apache/poi/hssf/record/HeaderRecord;

    new-instance v0, Lorg/apache/poi/hssf/record/FooterRecord;

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/FooterRecord;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_footer:Lorg/apache/poi/hssf/record/FooterRecord;

    invoke-static {}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->createHCenter()Lorg/apache/poi/hssf/record/HCenterRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_hCenter:Lorg/apache/poi/hssf/record/HCenterRecord;

    invoke-static {}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->createVCenter()Lorg/apache/poi/hssf/record/VCenterRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_vCenter:Lorg/apache/poi/hssf/record/VCenterRecord;

    invoke-static {}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->createPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSetup:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_sviewHeaderFooters:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_plsRecords:Ljava/util/List;

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->readARecord(Lorg/apache/poi/hssf/model/RecordStream;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_sviewHeaderFooters:Ljava/util/List;

    return-object p0
.end method

.method private checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Duplicate PageSettingsBlock record (sid=0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createHCenter()Lorg/apache/poi/hssf/record/HCenterRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/HCenterRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/HCenterRecord;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/HCenterRecord;->setHCenter(Z)V

    return-object v0
.end method

.method private static createPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;
    .locals 4

    new-instance v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setPaperSize(S)V

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setScale(S)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setPageStart(S)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setFitWidth(S)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setFitHeight(S)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setOptions(S)V

    const/16 v2, 0x12c

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setHResolution(S)V

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setVResolution(S)V

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setHeaderMargin(D)V

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setFooterMargin(D)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setCopies(S)V

    return-object v0
.end method

.method private static createVCenter()Lorg/apache/poi/hssf/record/VCenterRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/VCenterRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/VCenterRecord;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/VCenterRecord;->setVCenter(Z)V

    return-object v0
.end method

.method private getColumnBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_columnBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_columnBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_columnBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    return-object v0
.end method

.method private getMarginRec(I)Lorg/apache/poi/hssf/record/Margin;
    .locals 2

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bottomMargin:Lorg/apache/poi/hssf/record/BottomMarginRecord;

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v1, "Unknown margin constant:  "

    .line 18
    .line 19
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :cond_1
    iget-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_topMargin:Lorg/apache/poi/hssf/record/TopMarginRecord;

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_2
    iget-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rightMargin:Lorg/apache/poi/hssf/record/RightMarginRecord;

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_3
    iget-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_leftMargin:Lorg/apache/poi/hssf/record/LeftMarginRecord;

    .line 34
    .line 35
    return-object p1
.end method

.method private getRowBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rowBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rowBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rowBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    return-object v0
.end method

.method public static isComponentRecord(I)Z
    .locals 1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    const/16 v0, 0x15

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x33

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4d

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe9

    if-eq p0, v0, :cond_0

    const/16 v0, 0x89c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x83

    if-eq p0, v0, :cond_0

    const/16 v0, 0x84

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private readARecord(Lorg/apache/poi/hssf/model/RecordStream;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextSid()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_b

    const/16 v1, 0x15

    if-eq v0, v1, :cond_a

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_8

    const/16 v1, 0x33

    if-eq v0, v1, :cond_7

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_6

    const/16 v1, 0xa1

    if-eq v0, v1, :cond_5

    const/16 v1, 0xe9

    if-eq v0, v1, :cond_4

    const/16 v1, 0x89c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x83

    if-eq v0, v1, :cond_1

    const/16 v1, 0x84

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bottomMargin:Lorg/apache/poi/hssf/record/BottomMarginRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/BottomMarginRecord;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bottomMargin:Lorg/apache/poi/hssf/record/BottomMarginRecord;

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_topMargin:Lorg/apache/poi/hssf/record/TopMarginRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/TopMarginRecord;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_topMargin:Lorg/apache/poi/hssf/record/TopMarginRecord;

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rightMargin:Lorg/apache/poi/hssf/record/RightMarginRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/RightMarginRecord;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rightMargin:Lorg/apache/poi/hssf/record/RightMarginRecord;

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_leftMargin:Lorg/apache/poi/hssf/record/LeftMarginRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/LeftMarginRecord;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_leftMargin:Lorg/apache/poi/hssf/record/LeftMarginRecord;

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_vCenter:Lorg/apache/poi/hssf/record/VCenterRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/VCenterRecord;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_vCenter:Lorg/apache/poi/hssf/record/VCenterRecord;

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_hCenter:Lorg/apache/poi/hssf/record/HCenterRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/HCenterRecord;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_hCenter:Lorg/apache/poi/hssf/record/HCenterRecord;

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->isCurrentSheet()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_headerFooter:Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_sviewHeaderFooters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bitmap:Lorg/apache/poi/hssf/record/Record;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bitmap:Lorg/apache/poi/hssf/record/Record;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSetup:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/PrintSetupRecord;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSetup:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_plsRecords:Ljava/util/List;

    new-instance v1, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$PLSAggregate;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$PLSAggregate;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSize:Lorg/apache/poi/hssf/record/Record;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSize:Lorg/apache/poi/hssf/record/Record;

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rowBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/PageBreakRecord;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rowBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_columnBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/PageBreakRecord;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_columnBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_footer:Lorg/apache/poi/hssf/record/FooterRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/FooterRecord;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_footer:Lorg/apache/poi/hssf/record/FooterRecord;

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_header:Lorg/apache/poi/hssf/record/HeaderRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/HeaderRecord;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_header:Lorg/apache/poi/hssf/record/HeaderRecord;

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static shiftBreaks(Lorg/apache/poi/hssf/record/PageBreakRecord;III)V
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getBreaksIterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    iget v3, v2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt v3, p1, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-gt v3, p2, :cond_2

    const/4 v4, 0x1

    :cond_2
    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    iget v0, p2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->removeBreak(I)V

    iget v0, p2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    add-int/2addr v0, p3

    int-to-short v0, v0

    iget v1, p2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subFrom:I

    iget p2, p2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subTo:I

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/poi/hssf/record/PageBreakRecord;->addBreak(III)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static visitIfPresent(Lorg/apache/poi/hssf/record/PageBreakRecord;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    :cond_1
    return-void
.end method

.method private static visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 0

    .line 2
    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addLateHeaderFooter(Lorg/apache/poi/hssf/record/HeaderFooterRecord;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_headerFooter:Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->getSid()S

    move-result v0

    const/16 v1, 0x89c

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_headerFooter:Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    return-void

    :cond_0
    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected header-footer record sid: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->getSid()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This page settings block already has a header/footer record"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addLateRecords(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 1

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->readARecord(Lorg/apache/poi/hssf/model/RecordStream;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public getColumnBreaks()[I
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getColumnBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getBreaks()[I

    move-result-object v0

    return-object v0
.end method

.method public getFooter()Lorg/apache/poi/hssf/record/FooterRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_footer:Lorg/apache/poi/hssf/record/FooterRecord;

    return-object v0
.end method

.method public getHCenter()Lorg/apache/poi/hssf/record/HCenterRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_hCenter:Lorg/apache/poi/hssf/record/HCenterRecord;

    return-object v0
.end method

.method public getHeader()Lorg/apache/poi/hssf/record/HeaderRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_header:Lorg/apache/poi/hssf/record/HeaderRecord;

    return-object v0
.end method

.method public getMargin(S)D
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getMarginRec(I)Lorg/apache/poi/hssf/record/Margin;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lorg/apache/poi/hssf/record/Margin;->getMargin()D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 13
    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-eq p1, v2, :cond_3

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 21
    .line 22
    if-eq p1, v0, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    if-ne p1, v0, :cond_1

    .line 26
    .line 27
    return-wide v1

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string v1, "Unknown margin constant:  "

    .line 31
    .line 32
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_2
    return-wide v1

    .line 41
    :cond_3
    return-wide v0
.end method

.method public getNumColumnBreaks()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getColumnBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getNumBreaks()I

    move-result v0

    return v0
.end method

.method public getNumRowBreaks()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getRowBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getNumBreaks()I

    move-result v0

    return v0
.end method

.method public getPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSetup:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    return-object v0
.end method

.method public getRowBreaks()[I
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getRowBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getBreaks()[I

    move-result-object v0

    return-object v0
.end method

.method public getVCenter()Lorg/apache/poi/hssf/record/VCenterRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_vCenter:Lorg/apache/poi/hssf/record/VCenterRecord;

    return-object v0
.end method

.method public isColumnBroken(I)Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getColumnBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getBreak(I)Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRowBroken(I)Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getRowBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getBreak(I)Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public positionRecords(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_sviewHeaderFooters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->getGuid()[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/RecordBase;

    instance-of v2, v0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;

    new-instance v2, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$1;

    invoke-direct {v2, p0, v1, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$1;-><init>(Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;Ljava/util/Map;Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;)V

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public removeColumnBreak(I)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getColumnBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PageBreakRecord;->removeBreak(I)V

    return-void
.end method

.method public removeRowBreak(I)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getRowBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getBreaks()[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getRowBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PageBreakRecord;->removeBreak(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sheet does not define any row breaks"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColumnBreak(SSS)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getColumnBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/hssf/record/PageBreakRecord;->addBreak(III)V

    return-void
.end method

.method public setFooter(Lorg/apache/poi/hssf/record/FooterRecord;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_footer:Lorg/apache/poi/hssf/record/FooterRecord;

    return-void
.end method

.method public setHeader(Lorg/apache/poi/hssf/record/HeaderRecord;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_header:Lorg/apache/poi/hssf/record/HeaderRecord;

    return-void
.end method

.method public setMargin(SD)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getMarginRec(I)Lorg/apache/poi/hssf/record/Margin;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lorg/apache/poi/hssf/record/BottomMarginRecord;

    .line 19
    .line 20
    invoke-direct {v0}, Lorg/apache/poi/hssf/record/BottomMarginRecord;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bottomMargin:Lorg/apache/poi/hssf/record/BottomMarginRecord;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string p3, "Unknown margin constant:  "

    .line 29
    .line 30
    invoke-static {p1, p3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p2

    .line 38
    :cond_1
    new-instance v0, Lorg/apache/poi/hssf/record/TopMarginRecord;

    .line 39
    .line 40
    invoke-direct {v0}, Lorg/apache/poi/hssf/record/TopMarginRecord;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_topMargin:Lorg/apache/poi/hssf/record/TopMarginRecord;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    new-instance v0, Lorg/apache/poi/hssf/record/RightMarginRecord;

    .line 47
    .line 48
    invoke-direct {v0}, Lorg/apache/poi/hssf/record/RightMarginRecord;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rightMargin:Lorg/apache/poi/hssf/record/RightMarginRecord;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    new-instance v0, Lorg/apache/poi/hssf/record/LeftMarginRecord;

    .line 55
    .line 56
    invoke-direct {v0}, Lorg/apache/poi/hssf/record/LeftMarginRecord;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_leftMargin:Lorg/apache/poi/hssf/record/LeftMarginRecord;

    .line 60
    .line 61
    :cond_4
    :goto_0
    invoke-interface {v0, p2, p3}, Lorg/apache/poi/hssf/record/Margin;->setMargin(D)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public setPrintSetup(Lorg/apache/poi/hssf/record/PrintSetupRecord;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSetup:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    return-void
.end method

.method public setRowBreak(ISS)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getRowBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    int-to-short p1, p1

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/hssf/record/PageBreakRecord;->addBreak(III)V

    return-void
.end method

.method public shiftColumnBreaks(SSS)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getColumnBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->shiftBreaks(Lorg/apache/poi/hssf/record/PageBreakRecord;III)V

    return-void
.end method

.method public shiftRowBreaks(III)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getRowBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->shiftBreaks(Lorg/apache/poi/hssf/record/PageBreakRecord;III)V

    return-void
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rowBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/PageBreakRecord;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_columnBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/PageBreakRecord;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_header:Lorg/apache/poi/hssf/record/HeaderRecord;

    const-string v1, ""

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/hssf/record/HeaderRecord;

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/HeaderRecord;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1, v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_footer:Lorg/apache/poi/hssf/record/FooterRecord;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/poi/hssf/record/FooterRecord;

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/FooterRecord;-><init>(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1, v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_hCenter:Lorg/apache/poi/hssf/record/HCenterRecord;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_vCenter:Lorg/apache/poi/hssf/record/VCenterRecord;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_leftMargin:Lorg/apache/poi/hssf/record/LeftMarginRecord;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rightMargin:Lorg/apache/poi/hssf/record/RightMarginRecord;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_topMargin:Lorg/apache/poi/hssf/record/TopMarginRecord;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bottomMargin:Lorg/apache/poi/hssf/record/BottomMarginRecord;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_plsRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$PLSAggregate;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$PLSAggregate;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSetup:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSize:Lorg/apache/poi/hssf/record/Record;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_headerFooter:Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bitmap:Lorg/apache/poi/hssf/record/Record;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    return-void
.end method
