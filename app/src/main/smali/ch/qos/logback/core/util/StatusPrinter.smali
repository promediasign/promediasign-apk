.class public Lch/qos/logback/core/util/StatusPrinter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static cachingDateFormat:Lch/qos/logback/core/util/CachingDateFormatter;

.field private static ps:Ljava/io/PrintStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v0, Lch/qos/logback/core/util/StatusPrinter;->ps:Ljava/io/PrintStream;

    new-instance v0, Lch/qos/logback/core/util/CachingDateFormatter;

    const-string v1, "HH:mm:ss,SSS"

    invoke-direct {v0, v1}, Lch/qos/logback/core/util/CachingDateFormatter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lch/qos/logback/core/util/StatusPrinter;->cachingDateFormat:Lch/qos/logback/core/util/CachingDateFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendThrowable(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V
    .locals 5

    invoke-static {p1}, Lch/qos/logback/core/helpers/ThrowableToStringArray;->convert(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    const-string v4, "Caused by: "

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "\t... "

    :goto_1
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v4, "\tat "

    goto :goto_1

    :goto_2
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static buildStr(Ljava/lang/StringBuilder;Ljava/lang/String;Lch/qos/logback/core/status/Status;)V
    .locals 4

    .line 1
    invoke-interface {p2}, Lch/qos/logback/core/status/Status;->hasChildren()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "+ "

    .line 8
    .line 9
    :goto_0
    invoke-static {p1, v0}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const-string v0, "|-"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :goto_1
    sget-object v1, Lch/qos/logback/core/util/StatusPrinter;->cachingDateFormat:Lch/qos/logback/core/util/CachingDateFormatter;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {p2}, Lch/qos/logback/core/status/Status;->getDate()Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    invoke-virtual {v1, v2, v3}, Lch/qos/logback/core/util/CachingDateFormatter;->format(J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, " "

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    sget-object v0, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-interface {p2}, Lch/qos/logback/core/status/Status;->getThrowable()Ljava/lang/Throwable;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-interface {p2}, Lch/qos/logback/core/status/Status;->getThrowable()Ljava/lang/Throwable;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {p0, v0}, Lch/qos/logback/core/util/StatusPrinter;->appendThrowable(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-interface {p2}, Lch/qos/logback/core/status/Status;->hasChildren()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-interface {p2}, Lch/qos/logback/core/status/Status;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lch/qos/logback/core/status/Status;

    .line 86
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v2, "  "

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {p0, v1, v0}, Lch/qos/logback/core/util/StatusPrinter;->buildStr(Ljava/lang/StringBuilder;Ljava/lang/String;Lch/qos/logback/core/status/Status;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    return-void
.end method

.method private static buildStrFromStatusList(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lch/qos/logback/core/status/Status;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/status/Status;

    const-string v1, ""

    invoke-static {p0, v1, v0}, Lch/qos/logback/core/util/StatusPrinter;->buildStr(Ljava/lang/StringBuilder;Ljava/lang/String;Lch/qos/logback/core/status/Status;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static print(Lch/qos/logback/core/Context;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lch/qos/logback/core/util/StatusPrinter;->print(Lch/qos/logback/core/Context;J)V

    return-void
.end method

.method public static print(Lch/qos/logback/core/Context;J)V
    .locals 1

    .line 2
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lch/qos/logback/core/Context;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lch/qos/logback/core/util/StatusPrinter;->ps:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "WARN: Context named \""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lch/qos/logback/core/Context;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" has no status manager"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v0, p1, p2}, Lch/qos/logback/core/util/StatusPrinter;->print(Lch/qos/logback/core/status/StatusManager;J)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context argument cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static print(Lch/qos/logback/core/status/StatusManager;)V
    .locals 2

    .line 3
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lch/qos/logback/core/util/StatusPrinter;->print(Lch/qos/logback/core/status/StatusManager;J)V

    return-void
.end method

.method public static print(Lch/qos/logback/core/status/StatusManager;J)V
    .locals 1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lch/qos/logback/core/status/StatusManager;->getCopyOfStatusList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lch/qos/logback/core/status/StatusUtil;->filterStatusListByTimeThreshold(Ljava/util/List;J)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lch/qos/logback/core/util/StatusPrinter;->buildStrFromStatusList(Ljava/lang/StringBuilder;Ljava/util/List;)V

    sget-object p0, Lch/qos/logback/core/util/StatusPrinter;->ps:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static print(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/status/Status;",
            ">;)V"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lch/qos/logback/core/util/StatusPrinter;->buildStrFromStatusList(Ljava/lang/StringBuilder;Ljava/util/List;)V

    sget-object p0, Lch/qos/logback/core/util/StatusPrinter;->ps:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static printIfErrorsOccured(Lch/qos/logback/core/Context;)V
    .locals 4

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lch/qos/logback/core/Context;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lch/qos/logback/core/util/StatusPrinter;->ps:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WARN: Context named \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lch/qos/logback/core/Context;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" has no status manager"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lch/qos/logback/core/status/StatusUtil;

    invoke-direct {v1, p0}, Lch/qos/logback/core/status/StatusUtil;-><init>(Lch/qos/logback/core/Context;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lch/qos/logback/core/status/StatusUtil;->getHighestLevel(J)I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    invoke-static {v0}, Lch/qos/logback/core/util/StatusPrinter;->print(Lch/qos/logback/core/status/StatusManager;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context argument cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static printInCaseOfErrorsOrWarnings(Lch/qos/logback/core/Context;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lch/qos/logback/core/util/StatusPrinter;->printInCaseOfErrorsOrWarnings(Lch/qos/logback/core/Context;J)V

    return-void
.end method

.method public static printInCaseOfErrorsOrWarnings(Lch/qos/logback/core/Context;J)V
    .locals 2

    .line 2
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lch/qos/logback/core/Context;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lch/qos/logback/core/util/StatusPrinter;->ps:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "WARN: Context named \""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lch/qos/logback/core/Context;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" has no status manager"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lch/qos/logback/core/status/StatusUtil;

    invoke-direct {v1, p0}, Lch/qos/logback/core/status/StatusUtil;-><init>(Lch/qos/logback/core/Context;)V

    invoke-virtual {v1, p1, p2}, Lch/qos/logback/core/status/StatusUtil;->getHighestLevel(J)I

    move-result p0

    const/4 v1, 0x1

    if-lt p0, v1, :cond_1

    invoke-static {v0, p1, p2}, Lch/qos/logback/core/util/StatusPrinter;->print(Lch/qos/logback/core/status/StatusManager;J)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context argument cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setPrintStream(Ljava/io/PrintStream;)V
    .locals 0

    sput-object p0, Lch/qos/logback/core/util/StatusPrinter;->ps:Ljava/io/PrintStream;

    return-void
.end method
