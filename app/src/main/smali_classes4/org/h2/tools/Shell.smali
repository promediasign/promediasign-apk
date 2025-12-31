.class public Lorg/h2/tools/Shell;
.super Lorg/h2/util/Tool;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final BOX_VERTICAL:C = '|'

.field private static final HISTORY_COUNT:I = 0x14

.field private static final MAX_ROW_BUFFER:I = 0x1388


# instance fields
.field private conn:Ljava/sql/Connection;

.field private err:Ljava/io/PrintStream;

.field private final history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private in:Ljava/io/InputStream;

.field private listMode:Z

.field private maxColumnSize:I

.field private reader:Ljava/io/BufferedReader;

.field private serverPropertiesDir:Ljava/lang/String;

.field private stat:Ljava/sql/Statement;

.field private stopHide:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/h2/util/Tool;-><init>()V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/h2/tools/Shell;->err:Ljava/io/PrintStream;

    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/h2/tools/Shell;->in:Ljava/io/InputStream;

    const/16 v0, 0x64

    iput v0, p0, Lorg/h2/tools/Shell;->maxColumnSize:I

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/tools/Shell;->history:Ljava/util/ArrayList;

    const-string v0, "~"

    iput-object v0, p0, Lorg/h2/tools/Shell;->serverPropertiesDir:Ljava/lang/String;

    return-void
.end method

.method private connect()V
    .locals 8

    .line 1
    const-string v0, "/.h2.server.properties"

    .line 2
    .line 3
    const-string v1, "jdbc:h2:~/test"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    const-string v4, "null"

    .line 9
    .line 10
    iget-object v5, p0, Lorg/h2/tools/Shell;->serverPropertiesDir:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/util/Properties;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    nop

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v5, p0, Lorg/h2/tools/Shell;->serverPropertiesDir:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lorg/h2/util/SortedProperties;->loadProperties(Ljava/lang/String;)Lorg/h2/util/SortedProperties;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :goto_0
    const/4 v4, 0x0

    .line 48
    move-object v6, v3

    .line 49
    const/4 v5, 0x0

    .line 50
    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    if-nez v7, :cond_1

    .line 59
    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    new-instance v0, Lorg/h2/server/web/ConnectionInfo;

    .line 63
    .line 64
    invoke-direct {v0, v6}, Lorg/h2/server/web/ConnectionInfo;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v0, Lorg/h2/server/web/ConnectionInfo;->url:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v2, v0, Lorg/h2/server/web/ConnectionInfo;->user:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v3, v0, Lorg/h2/server/web/ConnectionInfo;->driver:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 75
    .line 76
    const/4 v5, 0x1

    .line 77
    move-object v6, v7

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    :goto_2
    const-string v0, "[Enter]   "

    .line 80
    .line 81
    invoke-static {v0, v1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-direct {p0, v4}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v4, "URL       "

    .line 89
    .line 90
    invoke-virtual {p0, v4}, Lorg/h2/tools/Shell;->print(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, v1}, Lorg/h2/tools/Shell;->readLine(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-nez v3, :cond_3

    .line 102
    .line 103
    invoke-static {v1}, Lorg/h2/util/JdbcUtils;->getDriver(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    :cond_3
    if-eqz v3, :cond_4

    .line 108
    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-direct {p0, v4}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    const-string v4, "Driver    "

    .line 117
    .line 118
    invoke-virtual {p0, v4}, Lorg/h2/tools/Shell;->print(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-direct {p0, v3}, Lorg/h2/tools/Shell;->readLine(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v0, v2}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v0, "User      "

    .line 137
    .line 138
    invoke-virtual {p0, v0}, Lorg/h2/tools/Shell;->print(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, v2}, Lorg/h2/tools/Shell;->readLine(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const-string v2, "[Enter]   Hide"

    .line 146
    .line 147
    invoke-direct {p0, v2}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string v2, "Password  "

    .line 151
    .line 152
    invoke-virtual {p0, v2}, Lorg/h2/tools/Shell;->print(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-direct {p0}, Lorg/h2/tools/Shell;->readLine()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-nez v4, :cond_5

    .line 164
    .line 165
    invoke-direct {p0}, Lorg/h2/tools/Shell;->readPassword()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    :cond_5
    invoke-static {v3, v1, v0, v2}, Lorg/h2/util/JdbcUtils;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iput-object v0, p0, Lorg/h2/tools/Shell;->conn:Ljava/sql/Connection;

    .line 174
    .line 175
    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iput-object v0, p0, Lorg/h2/tools/Shell;->stat:Ljava/sql/Statement;

    .line 180
    .line 181
    const-string v0, "Connected"

    .line 182
    .line 183
    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return-void
.end method

.method private execute(Ljava/lang/String;)V
    .locals 8

    const-string v0, "(Update count: "

    const-string v1, "("

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lorg/h2/tools/Shell;->stat:Ljava/sql/Statement;

    invoke-interface {v5, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, " ms)"

    if-eqz p1, :cond_2

    :try_start_1
    iget-object p1, p0, Lorg/h2/tools/Shell;->stat:Ljava/sql/Statement;

    invoke-interface {p1}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v4

    iget-boolean p1, p0, Lorg/h2/tools/Shell;->listMode:Z

    invoke-direct {p0, v4, p1}, Lorg/h2/tools/Shell;->printResult(Ljava/sql/ResultSet;Z)I

    move-result p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string p1, " row, "

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    const-string p1, " rows, "

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {p0, p1}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/h2/tools/Shell;->stat:Ljava/sql/Statement;

    invoke-interface {p1}, Ljava/sql/Statement;->getUpdateCount()I

    move-result p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    :try_start_2
    invoke-static {v4}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/ResultSet;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_4

    :goto_3
    invoke-static {v4}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/ResultSet;)V

    throw p1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/h2/tools/Shell;->listMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/h2/tools/Shell;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_3
    return-void
.end method

.method private loadRow(Ljava/sql/ResultSet;ILjava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/ResultSet;",
            "I",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    new-array v0, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-interface {p1, v4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, "null"

    :cond_0
    const/4 v6, 0x1

    if-le p2, v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, p0, Lorg/h2/tools/Shell;->maxColumnSize:I

    if-le v7, v8, :cond_1

    invoke-virtual {v5, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    :cond_1
    aput-object v5, v0, v2

    move v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v3
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/h2/tools/Shell;

    invoke-direct {v0}, Lorg/h2/tools/Shell;-><init>()V

    invoke-virtual {v0, p0}, Lorg/h2/tools/Shell;->runTool([Ljava/lang/String;)V

    return-void
.end method

.method private printResult(Ljava/sql/ResultSet;Z)I
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/h2/tools/Shell;->printResultAsList(Ljava/sql/ResultSet;)I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/tools/Shell;->printResultAsTable(Ljava/sql/ResultSet;)I

    move-result p1

    return p1
.end method

.method private printResultAsList(Ljava/sql/ResultSet;)I
    .locals 10

    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    add-int/lit8 v6, v4, 0x1

    invoke-interface {v0, v6}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v4, v6

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    const/16 v7, 0xa

    if-eqz v6, :cond_5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v6, 0x1

    if-le v4, v6, :cond_1

    const-string v6, ""

    invoke-direct {p0, v6}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_4

    if-lez v6, :cond_2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    aget-object v8, v2, v6

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    :goto_3
    if-ge v8, v5, :cond_3

    const/16 v9, 0x20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    const-string v8, ": "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    invoke-interface {p1, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-nez v4, :cond_8

    :goto_4
    if-ge v3, v1, :cond_7

    if-lez v3, :cond_6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    aget-object p1, v2, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    :cond_8
    return v4
.end method

.method private printResultAsTable(Ljava/sql/ResultSet;)I
    .locals 8

    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v1

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    add-int/lit8 v6, v5, 0x1

    invoke-interface {v0, v6}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v7, ""

    :cond_0
    aput-object v7, v3, v5

    move v5, v6

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v1, v2}, Lorg/h2/tools/Shell;->loadRow(Ljava/sql/ResultSet;ILjava/util/ArrayList;)Z

    move-result v3

    or-int/2addr v4, v3

    const/16 v3, 0x1388

    if-le v0, v3, :cond_2

    invoke-direct {p0, v2, v1}, Lorg/h2/tools/Shell;->printRows(Ljava/util/ArrayList;I)[I

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2, v1}, Lorg/h2/tools/Shell;->printRows(Ljava/util/ArrayList;I)[I

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz v4, :cond_4

    const-string p1, "(data is partially truncated)"

    invoke-direct {p0, p1}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    :cond_4
    return v0
.end method

.method private printRows(Ljava/util/ArrayList;I)[I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;I)[I"
        }
    .end annotation

    new-array v0, p2, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-le p2, v3, :cond_1

    iget v3, p0, Lorg/h2/tools/Shell;->maxColumnSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    :cond_1
    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_3
    if-ge v4, p2, :cond_5

    if-lez v4, :cond_3

    const-string v5, " | "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    aget-object v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, p2, -0x1

    if-ge v4, v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    :goto_4
    aget v6, v0, v4

    if-ge v5, v6, :cond_4

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method private println(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method private promptLoop()V
    .locals 10

    const-string v0, "SQL Exception: "

    const-string v1, ""

    invoke-direct {p0, v1}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Welcome to H2 Shell "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/h2/engine/Constants;->getFullVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    const-string v1, "Exit with Ctrl+C"

    invoke-direct {p0, v1}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/tools/Shell;->conn:Ljava/sql/Connection;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/h2/tools/Shell;->showHelp()V

    :cond_0
    iget-object v1, p0, Lorg/h2/tools/Shell;->reader:Ljava/io/BufferedReader;

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lorg/h2/tools/Shell;->in:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lorg/h2/tools/Shell;->reader:Ljava/io/BufferedReader;

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move-object v2, v1

    :goto_1
    :try_start_0
    iget-object v3, p0, Lorg/h2/tools/Shell;->conn:Ljava/sql/Connection;

    if-nez v3, :cond_2

    invoke-direct {p0}, Lorg/h2/tools/Shell;->connect()V

    invoke-direct {p0}, Lorg/h2/tools/Shell;->showHelp()V

    goto :goto_2

    :catch_0
    move-exception v1

    goto/16 :goto_e

    :catch_1
    move-exception v1

    goto/16 :goto_f

    :catch_2
    move-exception v2

    goto/16 :goto_12

    :cond_2
    :goto_2
    if-nez v2, :cond_3

    const-string v3, "sql> "

    :goto_3
    invoke-virtual {p0, v3}, Lorg/h2/tools/Shell;->print(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    const-string v3, "...> "

    goto :goto_3

    :goto_4
    invoke-direct {p0}, Lorg/h2/tools/Shell;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto/16 :goto_10

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_6

    const/16 v8, 0x3b

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_6
    invoke-static {v4}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "exit"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    const-string v8, "quit"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto/16 :goto_10

    :cond_7
    const-string v8, "help"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    const-string v8, "?"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto/16 :goto_d

    :cond_8
    const-string v8, "list"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-boolean v3, p0, Lorg/h2/tools/Shell;->listMode:Z

    xor-int/2addr v3, v6

    iput-boolean v3, p0, Lorg/h2/tools/Shell;->listMode:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result list mode is now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lorg/h2/tools/Shell;->listMode:Z

    if-eqz v4, :cond_9

    const-string v4, "on"

    goto :goto_5

    :cond_9
    const-string v4, "off"

    :goto_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-direct {p0, v3}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-string v8, "history"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v9, 0xa

    if-eqz v8, :cond_d

    iget-object v3, p0, Lorg/h2/tools/Shell;->history:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_7
    if-ge v7, v3, :cond_b

    iget-object v4, p0, Lorg/h2/tools/Shell;->history:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x20

    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xd

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    iget-object v3, p0, Lorg/h2/tools/Shell;->history:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_c

    const-string v3, "To re-run a statement, type the number and press and enter"

    goto :goto_6

    :cond_c
    const-string v3, "No history"

    goto :goto_6

    :cond_d
    const-string v8, "autocommit"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v3, p0, Lorg/h2/tools/Shell;->conn:Ljava/sql/Connection;

    invoke-interface {v3, v6}, Ljava/sql/Connection;->setAutoCommit(Z)V

    goto :goto_8

    :cond_e
    const-string v4, "false"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lorg/h2/tools/Shell;->conn:Ljava/sql/Connection;

    invoke-interface {v3, v7}, Ljava/sql/Connection;->setAutoCommit(Z)V

    goto :goto_8

    :cond_f
    const-string v3, "Usage: autocommit [true|false]"

    invoke-direct {p0, v3}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Autocommit is now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/h2/tools/Shell;->conn:Ljava/sql/Connection;

    invoke-interface {v4}, Ljava/sql/Connection;->getAutoCommit()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    :cond_10
    const-string v8, "maxwidth"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/h2/tools/Shell;->maxColumnSize:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :catch_3
    :try_start_2
    const-string v3, "Usage: maxwidth <integer value>"

    invoke-direct {p0, v3}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Maximum column width is now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/h2/tools/Shell;->maxColumnSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    :cond_11
    if-nez v2, :cond_14

    invoke-static {v3}, Lorg/h2/util/StringUtils;->isNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_13

    iget-object v4, p0, Lorg/h2/tools/Shell;->history:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v3, v4, :cond_12

    goto :goto_a

    :cond_12
    iget-object v2, p0, Lorg/h2/tools/Shell;->history:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_b

    :cond_13
    :goto_a
    const-string v3, "Not found"

    invoke-direct {p0, v3}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    :goto_b
    move-object v3, v2

    goto :goto_c

    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_15
    :goto_c
    if-eqz v5, :cond_17

    if-eqz v6, :cond_16

    iget-object v2, p0, Lorg/h2/tools/Shell;->history:Ljava/util/ArrayList;

    invoke-virtual {v2, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lorg/h2/tools/Shell;->history:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v4, 0x14

    if-le v2, v4, :cond_16

    iget-object v2, p0, Lorg/h2/tools/Shell;->history:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_16
    invoke-direct {p0, v3}, Lorg/h2/tools/Shell;->execute(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    move-object v2, v3

    goto/16 :goto_1

    :cond_18
    :goto_d
    invoke-direct {p0}, Lorg/h2/tools/Shell;->showHelp()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/h2/tools/Shell;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_10

    :goto_f
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    :cond_19
    :goto_10
    iget-object v1, p0, Lorg/h2/tools/Shell;->conn:Ljava/sql/Connection;

    if-eqz v1, :cond_1a

    :try_start_3
    invoke-interface {v1}, Ljava/sql/Connection;->close()V

    const-string v1, "Connection closed"

    invoke-direct {p0, v1}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_11

    :catch_4
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/tools/Shell;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_1a
    :goto_11
    return-void

    :goto_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private readLine()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/h2/tools/Shell;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Aborted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/h2/tools/Shell;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private readPassword()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "java.lang.System.console"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/h2/util/Utils;->callStaticMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Password  "

    invoke-virtual {p0, v2}, Lorg/h2/tools/Shell;->print(Ljava/lang/String;)V

    const-string v2, "readPassword"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/h2/util/Utils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :goto_0
    return-object v0

    :catch_0
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Password hider"

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-boolean v0, p0, Lorg/h2/tools/Shell;->stopHide:Z

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-string v0, "Password  > "

    invoke-virtual {p0, v0}, Lorg/h2/tools/Shell;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/tools/Shell;->readLine()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/h2/tools/Shell;->stopHide:Z

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-string v1, "\u0008\u0008"

    invoke-virtual {p0, v1}, Lorg/h2/tools/Shell;->print(Ljava/lang/String;)V

    return-object v0
.end method

.method private showHelp()V
    .locals 1

    const-string v0, "Commands are case insensitive; SQL statements end with \';\'"

    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    const-string v0, "help or ?      Display this help"

    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    const-string v0, "list           Toggle result list / stack trace mode"

    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    const-string v0, "maxwidth       Set maximum column width (default is 100)"

    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    const-string v0, "autocommit     Enable or disable autocommit"

    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    const-string v0, "history        Show the last 20 statements"

    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    const-string v0, "quit or exit   Close the connection and exit"

    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public print(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method public run()V
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lorg/h2/tools/Shell;->stopHide:Z

    if-nez v0, :cond_0

    const-string v0, "\u0008\u0008><"

    invoke-virtual {p0, v0}, Lorg/h2/tools/Shell;->print(Ljava/lang/String;)V

    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs runTool(Ljava/sql/Connection;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/h2/tools/Shell;->conn:Ljava/sql/Connection;

    invoke-interface {p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/tools/Shell;->stat:Ljava/sql/Statement;

    invoke-virtual {p0, p2}, Lorg/h2/tools/Shell;->runTool([Ljava/lang/String;)V

    return-void
.end method

.method public varargs runTool([Ljava/lang/String;)V
    .locals 8

    .line 2
    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    move-object v2, v1

    move-object v3, v2

    const/4 v4, 0x0

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_9

    array-length v5, p1

    if-ge v4, v5, :cond_9

    aget-object v5, p1, v4

    const-string v6, "-url"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    aget-object v0, p1, v4

    goto :goto_1

    :cond_0
    const-string v6, "-user"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    aget-object v2, p1, v4

    goto :goto_1

    :cond_1
    const-string v6, "-password"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    aget-object v3, p1, v4

    goto :goto_1

    :cond_2
    const-string v6, "-driver"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v4, v4, 0x1

    aget-object v5, p1, v4

    invoke-static {v5}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    goto :goto_1

    :cond_3
    const-string v6, "-sql"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    aget-object v1, p1, v4

    goto :goto_1

    :cond_4
    const-string v6, "-properties"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v4, v4, 0x1

    aget-object v5, p1, v4

    iput-object v5, p0, Lorg/h2/tools/Shell;->serverPropertiesDir:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v6, "-help"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "-?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    const-string v6, "-list"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iput-boolean v7, p0, Lorg/h2/tools/Shell;->listMode:Z

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v5}, Lorg/h2/util/Tool;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    :goto_1
    add-int/2addr v4, v7

    goto :goto_0

    :cond_8
    :goto_2
    invoke-virtual {p0}, Lorg/h2/util/Tool;->showUsage()V

    return-void

    :cond_9
    if-eqz v0, :cond_a

    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;

    invoke-static {v0, v2, v3}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/tools/Shell;->conn:Ljava/sql/Connection;

    invoke-interface {p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/tools/Shell;->stat:Ljava/sql/Statement;

    :cond_a
    if-nez v1, :cond_b

    invoke-direct {p0}, Lorg/h2/tools/Shell;->promptLoop()V

    goto :goto_4

    :cond_b
    new-instance p1, Lorg/h2/util/ScriptReader;

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lorg/h2/util/ScriptReader;-><init>(Ljava/io/Reader;)V

    :goto_3
    invoke-virtual {p1}, Lorg/h2/util/ScriptReader;->readStatement()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    iget-object p1, p0, Lorg/h2/tools/Shell;->conn:Ljava/sql/Connection;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/sql/Connection;->close()V

    :cond_c
    :goto_4
    return-void

    :cond_d
    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->execute(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public setErr(Ljava/io/PrintStream;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/tools/Shell;->err:Ljava/io/PrintStream;

    return-void
.end method

.method public setIn(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/tools/Shell;->in:Ljava/io/InputStream;

    return-void
.end method

.method public setInReader(Ljava/io/BufferedReader;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/tools/Shell;->reader:Ljava/io/BufferedReader;

    return-void
.end method
