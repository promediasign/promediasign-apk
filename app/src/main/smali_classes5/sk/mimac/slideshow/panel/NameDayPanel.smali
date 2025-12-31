.class public Lsk/mimac/slideshow/panel/NameDayPanel;
.super Lsk/mimac/slideshow/panel/Panel;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final color:I

.field private final fontFamily:Ljava/lang/String;

.field private final fontSize:Ljava/lang/Integer;

.field private final nameDayCalendar:Ljava/lang/String;

.field private final textBefore:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/panel/NameDayPanel;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/panel/NameDayPanel;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

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

    const-string p1, "textColor"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lsk/mimac/slideshow/utils/ColorUtils;->parseColorRGBA(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lsk/mimac/slideshow/panel/NameDayPanel;->color:I

    const-string p1, "fontFamily"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lsk/mimac/slideshow/panel/NameDayPanel;->fontFamily:Ljava/lang/String;

    const-string p1, "textBefore"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lsk/mimac/slideshow/panel/NameDayPanel;->textBefore:Ljava/lang/String;

    const-string p1, "nameDayCalendar"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lsk/mimac/slideshow/panel/NameDayPanel;->nameDayCalendar:Ljava/lang/String;

    const-string p1, "fontSize"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lsk/mimac/slideshow/panel/NameDayPanel;->fontSize:Ljava/lang/Integer;

    return-void
.end method

.method private getNameText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "name-day-list/name-day/"

    :try_start_0
    const-class v1, Lsk/mimac/slideshow/panel/NameDayPanel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lsk/mimac/slideshow/panel/NameDayPanel;->nameDayCalendar:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    :try_start_1
    sget-object p1, Lsk/mimac/slideshow/panel/NameDayPanel;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t find name day calendar \'{}\'"

    iget-object v2, p0, Lsk/mimac/slideshow/panel/NameDayPanel;->nameDayCalendar:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 p1, 0x3b

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_1
    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    sget-object v0, Lsk/mimac/slideshow/panel/NameDayPanel;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t read name day calendar \'{}\'"

    iget-object v2, p0, Lsk/mimac/slideshow/panel/NameDayPanel;->nameDayCalendar:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_4
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public getTextModel()Lsk/mimac/slideshow/model/TextModel;
    .locals 10

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    aput-object v0, v1, v3

    const-string v0, "%02d-%02d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lsk/mimac/slideshow/panel/Panel;->height:I

    mul-int/lit8 v1, v1, 0x6

    iget v2, p0, Lsk/mimac/slideshow/panel/Panel;->width:I

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsk/mimac/slideshow/panel/NameDayPanel;->textBefore:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/panel/NameDayPanel;->getNameText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lsk/mimac/slideshow/model/TextModel;

    iget v7, p0, Lsk/mimac/slideshow/panel/NameDayPanel;->color:I

    iget-object v8, p0, Lsk/mimac/slideshow/panel/NameDayPanel;->fontFamily:Ljava/lang/String;

    iget-object v9, p0, Lsk/mimac/slideshow/panel/NameDayPanel;->fontSize:Ljava/lang/Integer;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lsk/mimac/slideshow/model/TextModel;-><init>(Ljava/lang/CharSequence;IZIILjava/lang/String;Ljava/lang/Integer;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsk/mimac/slideshow/panel/NameDayPanel;->textBefore:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/panel/NameDayPanel;->getNameText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lsk/mimac/slideshow/model/TextModel;

    iget v7, p0, Lsk/mimac/slideshow/panel/NameDayPanel;->color:I

    iget-object v8, p0, Lsk/mimac/slideshow/panel/NameDayPanel;->fontFamily:Ljava/lang/String;

    iget-object v9, p0, Lsk/mimac/slideshow/panel/NameDayPanel;->fontSize:Ljava/lang/Integer;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lsk/mimac/slideshow/model/TextModel;-><init>(Ljava/lang/CharSequence;IZIILjava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method
