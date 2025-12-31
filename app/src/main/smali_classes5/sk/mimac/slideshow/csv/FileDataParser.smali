.class public Lsk/mimac/slideshow/csv/FileDataParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DATE_FORMATS:[Ljava/lang/String;

.field private static final DELETE_DATE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final DELETE_INTEGER_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private configFileName:Ljava/lang/String;

.field private configImportType:Lsk/mimac/slideshow/enums/ConfigImportType;

.field private final fileDatesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lsk/mimac/slideshow/csv/FileConfig;",
            ">;"
        }
    .end annotation
.end field

.field private keepFiles:Z

.field private rebootDevice:Z

.field private reloadApp:Z

.field private reloadScreenLayout:Z

.field private final rootFolder:Ljava/io/File;

.field private updateFile:Ljava/io/File;

.field private updateFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-class v0, Lsk/mimac/slideshow/csv/FileDataParser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    const-string v0, "\\p{all}*_DEL_[0-9]+[DH]\\.[a-zA-Z0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/csv/FileDataParser;->DELETE_INTEGER_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\\p{all}*_DEL_[0-9\\-\\.]{8,10}( [0-9:]{3,8})?\\.[a-zA-Z0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/csv/FileDataParser;->DELETE_DATE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    const-string v6, "dd.MM.yyyy HH:mm:ss"

    const-string v7, "yyyy-MM-dd\'T\'HH:mm:ss"

    const-string v1, "yyyy-MM-dd"

    const-string v2, "yyyy-MM-dd HH:mm"

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    const-string v4, "dd.MM.yyyy"

    const-string v5, "dd.MM.yyyy HH:mm"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/csv/FileDataParser;->DATE_FORMATS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/csv/FileDataParser;->fileDatesMap:Ljava/util/Map;

    iput-object p1, p0, Lsk/mimac/slideshow/csv/FileDataParser;->rootFolder:Ljava/io/File;

    return-void
.end method

.method public static checkFileNamePattern(Ljava/lang/String;)Lsk/mimac/slideshow/csv/FileConfig;
    .locals 11

    sget-object v0, Lsk/mimac/slideshow/csv/FileDataParser;->DELETE_INTEGER_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/16 v1, 0x5f

    const/16 v2, 0x2e

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x44

    if-eq p0, v0, :cond_1

    const/16 v0, 0x48

    if-eq p0, v0, :cond_0

    return-object v3

    :cond_0
    const/16 p0, 0xb

    :goto_0
    invoke-virtual {v2, p0, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x6

    goto :goto_0

    :goto_1
    new-instance p0, Lsk/mimac/slideshow/csv/FileConfig;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lsk/mimac/slideshow/csv/FileConfig;-><init>(Ljava/util/Date;Ljava/util/Date;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    sget-object v0, Lsk/mimac/slideshow/csv/FileDataParser;->DELETE_DATE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    sget-object v1, Lsk/mimac/slideshow/csv/FileDataParser;->DATE_FORMATS:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    new-instance v0, Lsk/mimac/slideshow/csv/FileConfig;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lsk/mimac/slideshow/csv/FileConfig;-><init>(Ljava/util/Date;Ljava/util/Date;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    const-string v2, "File name \'{}\' looks like containing deletion date, but can\'t parse the date: {}"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, p0, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-object v3
.end method

.method private getDateFormat()Ljava/text/DateFormat;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static isSeparator(C)Z
    .locals 1

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private parseClickCode(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "click:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x6

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNumeric(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    :cond_1
    sget-object v0, Lsk/mimac/slideshow/csv/FileDataParser;->DATE_FORMATS:[Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseLength(Ljava/util/List;)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const/4 v0, 0x3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseSyncCode(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "sync:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x5

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private processConfigCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/csv/FileDataParser;->configFileName:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p1, "delete"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lsk/mimac/slideshow/enums/ConfigImportType;->DELETE:Lsk/mimac/slideshow/enums/ConfigImportType;

    :goto_0
    iput-object p1, p0, Lsk/mimac/slideshow/csv/FileDataParser;->configImportType:Lsk/mimac/slideshow/enums/ConfigImportType;

    goto :goto_1

    :cond_0
    const-string p1, "cloud"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lsk/mimac/slideshow/enums/ConfigImportType;->CLOUD:Lsk/mimac/slideshow/enums/ConfigImportType;

    goto :goto_0

    :cond_1
    sget-object p1, Lsk/mimac/slideshow/enums/ConfigImportType;->KEEP:Lsk/mimac/slideshow/enums/ConfigImportType;

    goto :goto_0

    :goto_1
    return-void
.end method

.method private processDeleteCommand(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    iget-object v1, p0, Lsk/mimac/slideshow/csv/FileDataParser;->rootFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Deleting files by \'{}\' in \'{}\'"

    invoke-interface {v0, v2, p1, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/csv/FileDataParser;->rootFolder:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lsk/mimac/slideshow/utils/FileFilterUtils;->getFilesForFilter(Ljava/io/File;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    :try_start_0
    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->forceDelete(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsk/mimac/slideshow/database/dao/FileDataDao;->delete(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    sget-object v3, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Can\'t delete file \'{}\'"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processSpecialCommand(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, ":DELETE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :sswitch_1
    const-string v2, ":CONFIG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, ":KEEP_FILES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_3
    const-string v2, ":VALID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_4
    const-string v2, ":WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_5
    const-string v2, ":UPDATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_6
    const-string v2, ":RELOAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_7
    const-string v2, ":REBOOT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Unknown special command in CSV file: {}"

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_0
    iput-boolean v4, p0, Lsk/mimac/slideshow/csv/FileDataParser;->keepFiles:Z

    goto/16 :goto_4

    :pswitch_1
    invoke-static {p1}, Lsk/mimac/slideshow/PlatformDependentFactory;->connectToWiFi(Ljava/util/List;)V

    goto :goto_4

    :pswitch_2
    iput-boolean v4, p0, Lsk/mimac/slideshow/csv/FileDataParser;->rebootDevice:Z

    goto :goto_4

    :pswitch_3
    iput-boolean v4, p0, Lsk/mimac/slideshow/csv/FileDataParser;->reloadApp:Z

    goto :goto_4

    :pswitch_4
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/csv/FileDataParser;->processUpdate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_5
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    :cond_1
    invoke-direct {p0, v0, v2}, Lsk/mimac/slideshow/csv/FileDataParser;->processConfigCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_6
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/csv/FileDataParser;->processDeleteCommand(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    :cond_3
    invoke-direct {p0, v0, v2}, Lsk/mimac/slideshow/csv/FileDataParser;->processValidCommand(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    sget-object v1, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t process special command in CSV file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x73fda7a1 -> :sswitch_7
        -0x73f91dad -> :sswitch_6
        -0x6e43667d -> :sswitch_5
        0x359fa4f -> :sswitch_4
        0x67d3abe2 -> :sswitch_3
        0x718350d7 -> :sswitch_2
        0x72fbe3fc -> :sswitch_1
        0x7422e665 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/BuildInfo;->VERSION:Ljava/lang/String;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lsk/mimac/slideshow/csv/FileDataParser;->updateFileName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Version \'{}\' is already installed, skipping update from APK file \'{}\'"

    invoke-interface {v0, v1, p2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private processValidCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/csv/FileDataParser;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    const-string v1, "Current time is "

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lsk/mimac/slideshow/csv/FileDataParser;->getDateFormat()Ljava/text/DateFormat;

    move-result-object p2

    new-instance v2, Lsk/mimac/slideshow/csv/DontProcessException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", file is valid from "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lsk/mimac/slideshow/csv/DontProcessException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/csv/FileDataParser;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lsk/mimac/slideshow/csv/FileDataParser;->getDateFormat()Ljava/text/DateFormat;

    move-result-object p2

    new-instance v2, Lsk/mimac/slideshow/csv/DontProcessException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", file is valid until "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lsk/mimac/slideshow/csv/DontProcessException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    return-void
.end method

.method private static splitLine(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lsk/mimac/slideshow/csv/FileDataParser;->isSeparator(C)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    if-nez v4, :cond_0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v2, 0x1

    goto :goto_1

    :cond_0
    const/16 v6, 0x22

    if-ne v5, v6, :cond_3

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v2, 0x1

    if-eq v5, v6, :cond_1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lsk/mimac/slideshow/csv/FileDataParser;->isSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v2, 0x2

    move v2, v6

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    if-ne v3, v2, :cond_3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    :cond_3
    :goto_1
    add-int/2addr v2, v7

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_5

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method private updateApp(Ljava/io/File;)V
    .locals 1

    invoke-static {p1}, Lsk/mimac/slideshow/http/page/UpdateFormPage;->checkApkFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lsk/mimac/slideshow/csv/FileDataParser;->updateFile:Ljava/io/File;

    goto :goto_0

    :cond_0
    sget-object p1, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Skipping app update because the new APK file has the same build number"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkConfig(Ljava/lang/String;Ljava/io/File;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/csv/FileDataParser;->configFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object p1, Lsk/mimac/slideshow/settings/UserSettings;->EXTERNAL_CONFIG_IMPORT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {p1}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/csv/FileDataParser;->configImportType:Lsk/mimac/slideshow/enums/ConfigImportType;

    invoke-static {p2, p1}, Lsk/mimac/slideshow/config/RestoreService;->importFromXml(Ljava/io/File;Lsk/mimac/slideshow/enums/ConfigImportType;)Z

    move-result p1

    iput-boolean p1, p0, Lsk/mimac/slideshow/csv/FileDataParser;->reloadScreenLayout:Z

    goto :goto_0

    :cond_0
    sget-object p1, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    const-string p2, "External configuration import is disabled, won\'t import configuration from \'{}\'"

    iget-object v0, p0, Lsk/mimac/slideshow/csv/FileDataParser;->configFileName:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iput-object v2, p0, Lsk/mimac/slideshow/csv/FileDataParser;->configFileName:Ljava/lang/String;

    return v1

    :cond_1
    iget-object v0, p0, Lsk/mimac/slideshow/csv/FileDataParser;->updateFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->EXTERNAL_CONFIG_IMPORT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Detected update file \'{}\'"

    invoke-interface {v0, v3, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    sget-object v3, Lsk/mimac/slideshow/FileConstants;->TEMP_PATH:Ljava/lang/String;

    const-string v4, "slideshow.apk"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :try_start_0
    invoke-static {p2, v0}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/csv/FileDataParser;->updateApp(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/commons/compress/archivers/ArchiveException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    :goto_1
    sget-object v0, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t update app from file \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    sget-object p1, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    const-string p2, "External configuration import is disabled, won\'t update application from \'{}\'"

    iget-object v0, p0, Lsk/mimac/slideshow/csv/FileDataParser;->updateFileName:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    iput-object v2, p0, Lsk/mimac/slideshow/csv/FileDataParser;->updateFileName:Ljava/lang/String;

    return v1

    :cond_3
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ".apk"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public checkConfig(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 5

    .line 2
    iget-object v0, p0, Lsk/mimac/slideshow/csv/FileDataParser;->configFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object p1, Lsk/mimac/slideshow/settings/UserSettings;->EXTERNAL_CONFIG_IMPORT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {p1}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/csv/FileDataParser;->configImportType:Lsk/mimac/slideshow/enums/ConfigImportType;

    invoke-static {p2, p1}, Lsk/mimac/slideshow/config/RestoreService;->importFromXml(Ljava/io/InputStream;Lsk/mimac/slideshow/enums/ConfigImportType;)Z

    move-result p1

    iput-boolean p1, p0, Lsk/mimac/slideshow/csv/FileDataParser;->reloadScreenLayout:Z

    goto :goto_0

    :cond_0
    sget-object p1, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    const-string p2, "External configuration import is disabled, won\'t import configuration from \'{}\'"

    iget-object v0, p0, Lsk/mimac/slideshow/csv/FileDataParser;->configFileName:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iput-object v2, p0, Lsk/mimac/slideshow/csv/FileDataParser;->configFileName:Ljava/lang/String;

    return v1

    :cond_1
    iget-object v0, p0, Lsk/mimac/slideshow/csv/FileDataParser;->updateFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->EXTERNAL_CONFIG_IMPORT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v3, Lsk/mimac/slideshow/FileConstants;->TEMP_PATH:Ljava/lang/String;

    const-string v4, "slideshow.apk"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :try_start_0
    sget-object v3, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Detected update file \'{}\'"

    invoke-interface {v3, v4, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2, v0}, Lorg/apache/commons/io/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)V

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/csv/FileDataParser;->updateApp(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/commons/compress/archivers/ArchiveException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    :goto_1
    sget-object v0, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t update app from file \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    sget-object p1, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    const-string p2, "External configuration import is disabled, won\'t update application from \'{}\'"

    iget-object v0, p0, Lsk/mimac/slideshow/csv/FileDataParser;->updateFileName:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    iput-object v2, p0, Lsk/mimac/slideshow/csv/FileDataParser;->updateFileName:Ljava/lang/String;

    return v1

    :cond_3
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ".apk"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public finalizeProcessing()V
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/csv/FileDataParser;->updateFile:Ljava/io/File;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Lsk/mimac/slideshow/http/page/UpdateFormPage;->updateApk(Ljava/io/File;)Lsk/mimac/slideshow/utils/Shell$Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    sget-object v1, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    iget-object v2, p0, Lsk/mimac/slideshow/csv/FileDataParser;->updateFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Can\'t update file from \'{}\'"

    invoke-interface {v1, v3, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_1
    iget-boolean v0, p0, Lsk/mimac/slideshow/csv/FileDataParser;->reloadScreenLayout:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->forceReloadScheduledLayout()V

    :cond_1
    iget-object v0, p0, Lsk/mimac/slideshow/csv/FileDataParser;->updateFileName:Ljava/lang/String;

    const-string v1, "setup.csv"

    if-eqz v0, :cond_2

    sget-object v2, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Didn\'t find update APK file \'{}\' defined in the {} file"

    invoke-interface {v2, v3, v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lsk/mimac/slideshow/csv/FileDataParser;->configFileName:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v2, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Didn\'t find configuration XML file \'{}\' defined in the {} file"

    invoke-interface {v2, v3, v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    iget-boolean v0, p0, Lsk/mimac/slideshow/csv/FileDataParser;->reloadApp:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lsk/mimac/slideshow/csv/FileDataParser;->updateFile:Ljava/io/File;

    if-nez v0, :cond_5

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->EXTERNAL_CONFIG_IMPORT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Reloading app based on command from {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->reloadApp()V

    goto :goto_2

    :cond_4
    sget-object v0, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    const-string v2, "External configuration import is disabled, won\'t reload app based on command from {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    :goto_2
    iget-boolean v0, p0, Lsk/mimac/slideshow/csv/FileDataParser;->rebootDevice:Z

    if-eqz v0, :cond_7

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->EXTERNAL_CONFIG_IMPORT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Rebooting device based on command from {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->reboot()V

    goto :goto_3

    :cond_6
    sget-object v0, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    const-string v2, "External configuration import is disabled, won\'t reboot device based on command from {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public getFileDates(Ljava/lang/String;)Lsk/mimac/slideshow/csv/FileConfig;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/csv/FileDataParser;->fileDatesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/csv/FileConfig;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lsk/mimac/slideshow/csv/FileDataParser;->checkFileNamePattern(Ljava/lang/String;)Lsk/mimac/slideshow/csv/FileConfig;

    move-result-object p1

    return-object p1
.end method

.method public isConfigFile(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/csv/FileDataParser;->updateFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/csv/FileDataParser;->configFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isKeepFiles()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/csv/FileDataParser;->keepFiles:Z

    return v0
.end method

.method public parseCsv(Ljava/io/InputStream;)V
    .locals 10

    sget-object v0, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Detected file data file \'{}\'"

    const-string v2, "setup.csv"

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v1, "//"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lsk/mimac/slideshow/csv/FileDataParser;->splitLine(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v1}, Lsk/mimac/slideshow/csv/FileDataParser;->processSpecialCommand(Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lsk/mimac/slideshow/csv/FileDataParser;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_4

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lsk/mimac/slideshow/csv/FileDataParser;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    :cond_4
    const-string v4, "mute"

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-direct {p0, v1}, Lsk/mimac/slideshow/csv/FileDataParser;->parseLength(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v1}, Lsk/mimac/slideshow/csv/FileDataParser;->parseSyncCode(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1}, Lsk/mimac/slideshow/csv/FileDataParser;->parseClickCode(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lsk/mimac/slideshow/csv/FileDataParser;->fileDatesMap:Ljava/util/Map;

    new-instance v9, Lsk/mimac/slideshow/csv/FileConfig;

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lsk/mimac/slideshow/csv/FileConfig;-><init>(Ljava/util/Date;Ljava/util/Date;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_4

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sget-object v0, Lsk/mimac/slideshow/csv/FileDataParser;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t process CSV"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method
