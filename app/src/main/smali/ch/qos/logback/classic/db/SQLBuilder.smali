.class public Lch/qos/logback/classic/db/SQLBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCreateExceptionTableSQL(Lch/qos/logback/classic/db/names/DBNameResolver;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CREATE TABLE IF NOT EXISTS "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lch/qos/logback/classic/db/names/TableName;->LOGGING_EVENT_EXCEPTION:Lch/qos/logback/classic/db/names/TableName;

    .line 9
    .line 10
    invoke-interface {p0, v1}, Lch/qos/logback/classic/db/names/DBNameResolver;->getTableName(Ljava/lang/Enum;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " ("

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    sget-object v2, Lch/qos/logback/classic/db/names/ColumnName;->EVENT_ID:Lch/qos/logback/classic/db/names/ColumnName;

    .line 23
    .line 24
    const-string v3, " BIGINT NOT NULL, "

    .line 25
    .line 26
    invoke-static {p0, v2, v0, v3}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v3, Lch/qos/logback/classic/db/names/ColumnName;->I:Lch/qos/logback/classic/db/names/ColumnName;

    .line 30
    .line 31
    const-string v4, " SMALLINT NOT NULL, "

    .line 32
    .line 33
    invoke-static {p0, v3, v0, v4}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object v4, Lch/qos/logback/classic/db/names/ColumnName;->TRACE_LINE:Lch/qos/logback/classic/db/names/ColumnName;

    .line 37
    .line 38
    invoke-interface {p0, v4}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v4, " VARCHAR(254) NOT NULL, PRIMARY KEY ("

    .line 46
    .line 47
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-interface {p0, v2}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v4, ", "

    .line 58
    .line 59
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-interface {p0, v3}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, "), FOREIGN KEY ("

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v3, ") REFERENCES "

    .line 75
    .line 76
    invoke-static {p0, v2, v0, v3}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v3, Lch/qos/logback/classic/db/names/TableName;->LOGGING_EVENT:Lch/qos/logback/classic/db/names/TableName;

    .line 80
    .line 81
    invoke-interface {p0, v3}, Lch/qos/logback/classic/db/names/DBNameResolver;->getTableName(Ljava/lang/Enum;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-interface {p0, v2}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p0, ")  ON DELETE CASCADE )"

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0
.end method

.method public static buildCreateLoggingEventTableSQL(Lch/qos/logback/classic/db/names/DBNameResolver;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CREATE TABLE IF NOT EXISTS "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lch/qos/logback/classic/db/names/TableName;->LOGGING_EVENT:Lch/qos/logback/classic/db/names/TableName;

    .line 9
    .line 10
    invoke-interface {p0, v1}, Lch/qos/logback/classic/db/names/DBNameResolver;->getTableName(Ljava/lang/Enum;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " ("

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->TIMESTMP:Lch/qos/logback/classic/db/names/ColumnName;

    .line 23
    .line 24
    const-string v2, " BIGINT NOT NULL, "

    .line 25
    .line 26
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->FORMATTED_MESSAGE:Lch/qos/logback/classic/db/names/ColumnName;

    .line 30
    .line 31
    const-string v2, " TEXT NOT NULL, "

    .line 32
    .line 33
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->LOGGER_NAME:Lch/qos/logback/classic/db/names/ColumnName;

    .line 37
    .line 38
    const-string v2, " VARCHAR(254) NOT NULL, "

    .line 39
    .line 40
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->LEVEL_STRING:Lch/qos/logback/classic/db/names/ColumnName;

    .line 44
    .line 45
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->THREAD_NAME:Lch/qos/logback/classic/db/names/ColumnName;

    .line 49
    .line 50
    const-string v2, " VARCHAR(254), "

    .line 51
    .line 52
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->REFERENCE_FLAG:Lch/qos/logback/classic/db/names/ColumnName;

    .line 56
    .line 57
    const-string v3, " SMALLINT, "

    .line 58
    .line 59
    invoke-static {p0, v1, v0, v3}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->ARG0:Lch/qos/logback/classic/db/names/ColumnName;

    .line 63
    .line 64
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->ARG1:Lch/qos/logback/classic/db/names/ColumnName;

    .line 68
    .line 69
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->ARG2:Lch/qos/logback/classic/db/names/ColumnName;

    .line 73
    .line 74
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->ARG3:Lch/qos/logback/classic/db/names/ColumnName;

    .line 78
    .line 79
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->CALLER_FILENAME:Lch/qos/logback/classic/db/names/ColumnName;

    .line 83
    .line 84
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->CALLER_CLASS:Lch/qos/logback/classic/db/names/ColumnName;

    .line 88
    .line 89
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->CALLER_METHOD:Lch/qos/logback/classic/db/names/ColumnName;

    .line 93
    .line 94
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->CALLER_LINE:Lch/qos/logback/classic/db/names/ColumnName;

    .line 98
    .line 99
    const-string v2, " CHAR(4), "

    .line 100
    .line 101
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->EVENT_ID:Lch/qos/logback/classic/db/names/ColumnName;

    .line 105
    .line 106
    invoke-interface {p0, v1}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p0, " INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT)"

    .line 114
    .line 115
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0
.end method

.method public static buildCreatePropertyTableSQL(Lch/qos/logback/classic/db/names/DBNameResolver;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CREATE TABLE IF NOT EXISTS "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lch/qos/logback/classic/db/names/TableName;->LOGGING_EVENT_PROPERTY:Lch/qos/logback/classic/db/names/TableName;

    .line 9
    .line 10
    invoke-interface {p0, v1}, Lch/qos/logback/classic/db/names/DBNameResolver;->getTableName(Ljava/lang/Enum;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " ("

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    sget-object v2, Lch/qos/logback/classic/db/names/ColumnName;->EVENT_ID:Lch/qos/logback/classic/db/names/ColumnName;

    .line 23
    .line 24
    const-string v3, " BIGINT NOT NULL, "

    .line 25
    .line 26
    invoke-static {p0, v2, v0, v3}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v3, Lch/qos/logback/classic/db/names/ColumnName;->MAPPED_KEY:Lch/qos/logback/classic/db/names/ColumnName;

    .line 30
    .line 31
    const-string v4, " VARCHAR(254) NOT NULL, "

    .line 32
    .line 33
    invoke-static {p0, v3, v0, v4}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object v4, Lch/qos/logback/classic/db/names/ColumnName;->MAPPED_VALUE:Lch/qos/logback/classic/db/names/ColumnName;

    .line 37
    .line 38
    invoke-interface {p0, v4}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v4, " VARCHAR(254) NOT NULL, PRIMARY KEY ("

    .line 46
    .line 47
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-interface {p0, v2}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v4, ", "

    .line 58
    .line 59
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-interface {p0, v3}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, "), FOREIGN KEY ("

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v3, ") REFERENCES "

    .line 75
    .line 76
    invoke-static {p0, v2, v0, v3}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v3, Lch/qos/logback/classic/db/names/TableName;->LOGGING_EVENT:Lch/qos/logback/classic/db/names/TableName;

    .line 80
    .line 81
    invoke-interface {p0, v3}, Lch/qos/logback/classic/db/names/DBNameResolver;->getTableName(Ljava/lang/Enum;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-interface {p0, v2}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p0, ")  ON DELETE CASCADE )"

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0
.end method

.method public static buildDeleteExpiredLogsSQL(Lch/qos/logback/classic/db/names/DBNameResolver;J)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DELETE FROM "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lch/qos/logback/classic/db/names/TableName;->LOGGING_EVENT:Lch/qos/logback/classic/db/names/TableName;

    .line 9
    .line 10
    invoke-interface {p0, v1}, Lch/qos/logback/classic/db/names/DBNameResolver;->getTableName(Ljava/lang/Enum;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " WHERE "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->TIMESTMP:Lch/qos/logback/classic/db/names/ColumnName;

    .line 23
    .line 24
    const-string v2, " <= "

    .line 25
    .line 26
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p0, ";"

    .line 30
    .line 31
    invoke-static {v0, p1, p2, p0}, LA/g;->l(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static buildInsertExceptionSQL(Lch/qos/logback/classic/db/names/DBNameResolver;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "INSERT INTO "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lch/qos/logback/classic/db/names/TableName;->LOGGING_EVENT_EXCEPTION:Lch/qos/logback/classic/db/names/TableName;

    .line 9
    .line 10
    invoke-interface {p0, v1}, Lch/qos/logback/classic/db/names/DBNameResolver;->getTableName(Ljava/lang/Enum;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " ("

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->EVENT_ID:Lch/qos/logback/classic/db/names/ColumnName;

    .line 23
    .line 24
    const-string v2, ", "

    .line 25
    .line 26
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->I:Lch/qos/logback/classic/db/names/ColumnName;

    .line 30
    .line 31
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->TRACE_LINE:Lch/qos/logback/classic/db/names/ColumnName;

    .line 35
    .line 36
    invoke-interface {p0, v1}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, ") VALUES (?, ?, ?)"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public static buildInsertPropertiesSQL(Lch/qos/logback/classic/db/names/DBNameResolver;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "INSERT INTO "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lch/qos/logback/classic/db/names/TableName;->LOGGING_EVENT_PROPERTY:Lch/qos/logback/classic/db/names/TableName;

    .line 9
    .line 10
    invoke-interface {p0, v1}, Lch/qos/logback/classic/db/names/DBNameResolver;->getTableName(Ljava/lang/Enum;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " ("

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->EVENT_ID:Lch/qos/logback/classic/db/names/ColumnName;

    .line 23
    .line 24
    const-string v2, ", "

    .line 25
    .line 26
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->MAPPED_KEY:Lch/qos/logback/classic/db/names/ColumnName;

    .line 30
    .line 31
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->MAPPED_VALUE:Lch/qos/logback/classic/db/names/ColumnName;

    .line 35
    .line 36
    invoke-interface {p0, v1}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, ") VALUES (?, ?, ?)"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public static buildInsertSQL(Lch/qos/logback/classic/db/names/DBNameResolver;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "INSERT INTO "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lch/qos/logback/classic/db/names/TableName;->LOGGING_EVENT:Lch/qos/logback/classic/db/names/TableName;

    .line 9
    .line 10
    invoke-interface {p0, v1}, Lch/qos/logback/classic/db/names/DBNameResolver;->getTableName(Ljava/lang/Enum;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " ("

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->TIMESTMP:Lch/qos/logback/classic/db/names/ColumnName;

    .line 23
    .line 24
    const-string v2, ", "

    .line 25
    .line 26
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->FORMATTED_MESSAGE:Lch/qos/logback/classic/db/names/ColumnName;

    .line 30
    .line 31
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->LOGGER_NAME:Lch/qos/logback/classic/db/names/ColumnName;

    .line 35
    .line 36
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->LEVEL_STRING:Lch/qos/logback/classic/db/names/ColumnName;

    .line 40
    .line 41
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->THREAD_NAME:Lch/qos/logback/classic/db/names/ColumnName;

    .line 45
    .line 46
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->REFERENCE_FLAG:Lch/qos/logback/classic/db/names/ColumnName;

    .line 50
    .line 51
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->ARG0:Lch/qos/logback/classic/db/names/ColumnName;

    .line 55
    .line 56
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->ARG1:Lch/qos/logback/classic/db/names/ColumnName;

    .line 60
    .line 61
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->ARG2:Lch/qos/logback/classic/db/names/ColumnName;

    .line 65
    .line 66
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->ARG3:Lch/qos/logback/classic/db/names/ColumnName;

    .line 70
    .line 71
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->CALLER_FILENAME:Lch/qos/logback/classic/db/names/ColumnName;

    .line 75
    .line 76
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->CALLER_CLASS:Lch/qos/logback/classic/db/names/ColumnName;

    .line 80
    .line 81
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->CALLER_METHOD:Lch/qos/logback/classic/db/names/ColumnName;

    .line 85
    .line 86
    invoke-static {p0, v1, v0, v2}, LA/g;->w(Lch/qos/logback/classic/db/names/DBNameResolver;Lch/qos/logback/classic/db/names/ColumnName;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->CALLER_LINE:Lch/qos/logback/classic/db/names/ColumnName;

    .line 90
    .line 91
    invoke-interface {p0, v1}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p0, ") VALUES (?, ?, ? ,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0
.end method
