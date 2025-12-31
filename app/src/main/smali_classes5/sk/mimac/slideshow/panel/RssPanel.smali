.class public Lsk/mimac/slideshow/panel/RssPanel;
.super Lsk/mimac/slideshow/panel/Panel;
.source "SourceFile"


# instance fields
.field private final color:I

.field private final displayType:Lsk/mimac/slideshow/enums/RssPanelDisplayType;

.field private final fontFamily:Ljava/lang/String;

.field private final fontSize:Ljava/lang/Integer;

.field private final removeXml:Z

.field private final rssUrls:Ljava/lang/String;

.field private final scrollSpeed:I

.field private final showMessage:Z

.field private final showTitle:Z


# direct methods
.method public constructor <init>(IILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/panel/Panel;-><init>(II)V

    const-string p1, "rssReaderUrl"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lsk/mimac/slideshow/panel/RssPanel;->rssUrls:Ljava/lang/String;

    const-string p1, "textColor"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lsk/mimac/slideshow/utils/ColorUtils;->parseColorRGBA(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lsk/mimac/slideshow/panel/RssPanel;->color:I

    const-string p1, "showTitle"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "false"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lsk/mimac/slideshow/panel/RssPanel;->showTitle:Z

    const-string p1, "showMessage"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lsk/mimac/slideshow/panel/RssPanel;->showMessage:Z

    const-string p1, "rssDisplayType"

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lsk/mimac/slideshow/enums/RssPanelDisplayType;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lsk/mimac/slideshow/enums/RssPanelDisplayType;->LINES:Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    :goto_0
    iput-object p1, p0, Lsk/mimac/slideshow/panel/RssPanel;->displayType:Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    const-string p1, "scrollSpeed"

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x5

    :goto_1
    iput p1, p0, Lsk/mimac/slideshow/panel/RssPanel;->scrollSpeed:I

    const-string p1, "fontFamily"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lsk/mimac/slideshow/panel/RssPanel;->fontFamily:Ljava/lang/String;

    const-string p1, "removeXml"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lsk/mimac/slideshow/panel/RssPanel;->removeXml:Z

    const-string p1, "fontSize"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput-object p1, p0, Lsk/mimac/slideshow/panel/RssPanel;->fontSize:Ljava/lang/Integer;

    return-void
.end method

.method private static append(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    invoke-virtual {p0, p2, v0, p1, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private appendMessage(Landroid/text/SpannableStringBuilder;Lsk/mimac/slideshow/rss/RssMessage;)V
    .locals 3

    iget-boolean v0, p0, Lsk/mimac/slideshow/panel/RssPanel;->showTitle:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lsk/mimac/slideshow/rss/RssMessage;->getHeader()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v2, 0x21

    invoke-static {p1, v0, v1, v2}, Lsk/mimac/slideshow/panel/RssPanel;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;I)V

    :cond_0
    iget-boolean v0, p0, Lsk/mimac/slideshow/panel/RssPanel;->showTitle:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lsk/mimac/slideshow/panel/RssPanel;->showMessage:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lsk/mimac/slideshow/rss/RssMessage;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    iget-boolean v0, p0, Lsk/mimac/slideshow/panel/RssPanel;->showMessage:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lsk/mimac/slideshow/rss/RssMessage;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    return-void
.end method

.method private displayLines(Lsk/mimac/slideshow/rss/RssMessage;)Lsk/mimac/slideshow/model/TextModel;
    .locals 8

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-boolean v0, p0, Lsk/mimac/slideshow/panel/RssPanel;->showTitle:Z

    const-string v2, "\n"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lsk/mimac/slideshow/rss/RssMessage;->getHeader()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v6, 0x21

    invoke-static {v1, v0, v4, v6}, Lsk/mimac/slideshow/panel/RssPanel;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;I)V

    iget-boolean v0, p0, Lsk/mimac/slideshow/panel/RssPanel;->showMessage:Z

    if-eqz v0, :cond_1

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lsk/mimac/slideshow/panel/RssPanel;->showMessage:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lsk/mimac/slideshow/rss/RssMessage;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v5, 0x2

    :cond_2
    :goto_1
    move v2, v5

    goto :goto_2

    :cond_3
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :goto_2
    new-instance p1, Lsk/mimac/slideshow/model/TextModel;

    iget v4, p0, Lsk/mimac/slideshow/panel/RssPanel;->scrollSpeed:I

    iget v5, p0, Lsk/mimac/slideshow/panel/RssPanel;->color:I

    iget-object v6, p0, Lsk/mimac/slideshow/panel/RssPanel;->fontFamily:Ljava/lang/String;

    iget-object v7, p0, Lsk/mimac/slideshow/panel/RssPanel;->fontSize:Ljava/lang/Integer;

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lsk/mimac/slideshow/model/TextModel;-><init>(Ljava/lang/CharSequence;IZIILjava/lang/String;Ljava/lang/Integer;)V

    return-object p1
.end method

.method private displayMarquee(Ljava/util/List;)Lsk/mimac/slideshow/model/TextModel;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/rss/RssMessage;",
            ">;)",
            "Lsk/mimac/slideshow/model/TextModel;"
        }
    .end annotation

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v8, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    if-lez v0, :cond_0

    const-string v2, " \u2022 "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/rss/RssMessage;

    invoke-direct {p0, v1, v2}, Lsk/mimac/slideshow/panel/RssPanel;->appendMessage(Landroid/text/SpannableStringBuilder;Lsk/mimac/slideshow/rss/RssMessage;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, " "

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    new-instance p1, Lsk/mimac/slideshow/model/TextModel;

    iget v4, p0, Lsk/mimac/slideshow/panel/RssPanel;->scrollSpeed:I

    iget v5, p0, Lsk/mimac/slideshow/panel/RssPanel;->color:I

    iget-object v6, p0, Lsk/mimac/slideshow/panel/RssPanel;->fontFamily:Ljava/lang/String;

    iget-object v7, p0, Lsk/mimac/slideshow/panel/RssPanel;->fontSize:Ljava/lang/Integer;

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lsk/mimac/slideshow/model/TextModel;-><init>(Ljava/lang/CharSequence;IZIILjava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lsk/mimac/slideshow/panel/RssPanel;->displayType:Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    sget-object v1, Lsk/mimac/slideshow/enums/RssPanelDisplayType;->MARQUEE_TO_RIGHT:Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    if-ne v0, v1, :cond_3

    const/4 v8, 0x1

    :cond_3
    invoke-virtual {p1, v8}, Lsk/mimac/slideshow/model/TextModel;->setToRight(Z)V

    return-object p1
.end method

.method private displaySingleLine(Lsk/mimac/slideshow/rss/RssMessage;)Lsk/mimac/slideshow/model/TextModel;
    .locals 8

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-direct {p0, v1, p1}, Lsk/mimac/slideshow/panel/RssPanel;->appendMessage(Landroid/text/SpannableStringBuilder;Lsk/mimac/slideshow/rss/RssMessage;)V

    new-instance p1, Lsk/mimac/slideshow/model/TextModel;

    iget v4, p0, Lsk/mimac/slideshow/panel/RssPanel;->scrollSpeed:I

    iget v5, p0, Lsk/mimac/slideshow/panel/RssPanel;->color:I

    iget-object v6, p0, Lsk/mimac/slideshow/panel/RssPanel;->fontFamily:Ljava/lang/String;

    iget-object v7, p0, Lsk/mimac/slideshow/panel/RssPanel;->fontSize:Ljava/lang/Integer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lsk/mimac/slideshow/model/TextModel;-><init>(Ljava/lang/CharSequence;IZIILjava/lang/String;Ljava/lang/Integer;)V

    return-object p1
.end method

.method private displayVerticalScroll(Ljava/util/List;)Lsk/mimac/slideshow/model/TextModel;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/rss/RssMessage;",
            ">;)",
            "Lsk/mimac/slideshow/model/TextModel;"
        }
    .end annotation

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v8, 0x1

    if-ge v0, v3, :cond_3

    const-string v3, "\n"

    if-lez v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsk/mimac/slideshow/rss/RssMessage;

    iget-boolean v5, p0, Lsk/mimac/slideshow/panel/RssPanel;->showTitle:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lsk/mimac/slideshow/rss/RssMessage;->getHeader()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v7, 0x21

    invoke-static {v1, v5, v6, v7}, Lsk/mimac/slideshow/panel/RssPanel;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;I)V

    add-int/lit8 v2, v2, 0x1

    iget-boolean v5, p0, Lsk/mimac/slideshow/panel/RssPanel;->showMessage:Z

    if-eqz v5, :cond_1

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    iget-boolean v3, p0, Lsk/mimac/slideshow/panel/RssPanel;->showMessage:Z

    if-eqz v3, :cond_2

    invoke-virtual {v4}, Lsk/mimac/slideshow/rss/RssMessage;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_4

    const-string p1, " "

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4
    new-instance p1, Lsk/mimac/slideshow/model/TextModel;

    iget v4, p0, Lsk/mimac/slideshow/panel/RssPanel;->scrollSpeed:I

    iget v5, p0, Lsk/mimac/slideshow/panel/RssPanel;->color:I

    iget-object v6, p0, Lsk/mimac/slideshow/panel/RssPanel;->fontFamily:Ljava/lang/String;

    iget-object v7, p0, Lsk/mimac/slideshow/panel/RssPanel;->fontSize:Ljava/lang/Integer;

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lsk/mimac/slideshow/model/TextModel;-><init>(Ljava/lang/CharSequence;IZIILjava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1, v8}, Lsk/mimac/slideshow/model/TextModel;->setVerticalScroll(Z)V

    return-object p1
.end method


# virtual methods
.method public getTextModel()Lsk/mimac/slideshow/model/TextModel;
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/panel/RssPanel;->rssUrls:Ljava/lang/String;

    iget-boolean v1, p0, Lsk/mimac/slideshow/panel/RssPanel;->removeXml:Z

    invoke-static {v0, v1}, Lsk/mimac/slideshow/rss/RssReader;->getInstance(Ljava/lang/String;Z)Lsk/mimac/slideshow/rss/RssReader;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/panel/RssPanel$1;->$SwitchMap$sk$mimac$slideshow$enums$RssPanelDisplayType:[I

    iget-object v2, p0, Lsk/mimac/slideshow/panel/RssPanel;->displayType:Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/rss/RssReader;->getAllMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/panel/RssPanel;->displayVerticalScroll(Ljava/util/List;)Lsk/mimac/slideshow/model/TextModel;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown display type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsk/mimac/slideshow/panel/RssPanel;->displayType:Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lsk/mimac/slideshow/rss/RssReader;->getAllMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/panel/RssPanel;->displayMarquee(Ljava/util/List;)Lsk/mimac/slideshow/model/TextModel;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v0}, Lsk/mimac/slideshow/rss/RssReader;->getNextMessage()Lsk/mimac/slideshow/rss/RssMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/panel/RssPanel;->displaySingleLine(Lsk/mimac/slideshow/rss/RssMessage;)Lsk/mimac/slideshow/model/TextModel;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {v0}, Lsk/mimac/slideshow/rss/RssReader;->getNextMessage()Lsk/mimac/slideshow/rss/RssMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/panel/RssPanel;->displayLines(Lsk/mimac/slideshow/rss/RssMessage;)Lsk/mimac/slideshow/model/TextModel;

    move-result-object v0

    return-object v0
.end method
