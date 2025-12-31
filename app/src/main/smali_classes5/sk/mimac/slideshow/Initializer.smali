.class public abstract Lsk/mimac/slideshow/Initializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final LOG:Lorg/slf4j/Logger;

.field private static final NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final TIME_PATTERNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lsk/mimac/slideshow/Initializer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/Initializer;->LOG:Lorg/slf4j/Logger;

    const-string v0, "\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/Initializer;->NUMBER_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "HH:mm"

    const-string v1, "HH:mm:ss"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/Initializer;->TIME_PATTERNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private runAfterStartScript()V
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->AFTER_START_SCRIPT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Lsk/mimac/slideshow/utils/Shell;->processWithOutput(Ljava/lang/String;)Lsk/mimac/slideshow/utils/Shell$Response;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/Initializer;->LOG:Lorg/slf4j/Logger;

    const-string v2, "After start script run with result: {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/Initializer;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t run after start script"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private setWatchdog()V
    .locals 8

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->WATCHDOG_REBOOT_TIME:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v1, Lsk/mimac/slideshow/Initializer;->NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    const v1, 0x186a0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/Initializer;->setWatchdogSeconds(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v1, 0x78

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_3

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    sget-object v5, Lsk/mimac/slideshow/Initializer;->TIME_PATTERNS:[Ljava/lang/String;

    invoke-static {v0, v5}, Lorg/apache/commons/lang3/time/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v1, v4

    const/16 v4, 0x258

    const v5, 0x15180

    if-ge v1, v4, :cond_4

    add-int/2addr v1, v5

    :cond_4
    if-le v3, v2, :cond_5

    const/16 v4, 0x2710

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v3, v2, v5, v1}, Lch/qos/logback/core/joran/util/a;->b(IIII)I

    move-result v1

    :cond_5
    :try_start_1
    invoke-direct {p0, v1}, Lsk/mimac/slideshow/Initializer;->setWatchdogSeconds(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    sget-object v2, Lsk/mimac/slideshow/Initializer;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t parse watchdog time \'{}\'"

    invoke-interface {v2, v3, v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private setWatchdogSeconds(I)V
    .locals 7

    const-string v0, "#!/system/bin/sh\nnohup sh -c \'sleep "

    const-string v1, "#!/system/bin/sh\nsleep "

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lsk/mimac/slideshow/Initializer;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "reboot.sh"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "/system/xbin/daemonize"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "Can\'t set watchdog, result code is {}"

    const-string v5, "Watchdog set to {} seconds"

    const-string v6, "chmod 777 "

    if-eqz v3, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; reboot\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v2, v0, v1}, Lorg/apache/commons/io/FileUtils;->write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; daemonize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/utils/Shell;->process(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lsk/mimac/slideshow/Initializer;->LOG:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    invoke-interface {v0, v5, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    sget-object p1, Lsk/mimac/slideshow/Initializer;->LOG:Lorg/slf4j/Logger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-interface {p1, v4, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; reboot\' > /dev/null 2>&1 &\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v2, v0, v1}, Lorg/apache/commons/io/FileUtils;->write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/utils/Shell;->process(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lsk/mimac/slideshow/Initializer;->LOG:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p1, Lsk/mimac/slideshow/Initializer;->LOG:Lorg/slf4j/Logger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_2
    sget-object v0, Lsk/mimac/slideshow/Initializer;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t set watchdog"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public abstract getCacheDir()Ljava/io/File;
.end method

.method public initCommons()V
    .locals 1

    invoke-direct {p0}, Lsk/mimac/slideshow/Initializer;->setWatchdog()V

    invoke-static {}, Lsk/mimac/slideshow/database/DatabaseManager;->loadDatabase()V

    invoke-static {}, Lsk/mimac/slideshow/utils/CertificateUtils;->checkCertificate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/utils/CertificateUtils;->generateCertificate()V

    :cond_0
    invoke-direct {p0}, Lsk/mimac/slideshow/Initializer;->runAfterStartScript()V

    return-void
.end method

.method public abstract setTimers(Ljava/util/Timer;)V
.end method
