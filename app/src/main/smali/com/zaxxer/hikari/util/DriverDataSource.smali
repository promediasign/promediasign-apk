.class public final Lcom/zaxxer/hikari/util/DriverDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/sql/DataSource;


# instance fields
.field private final LOGGER:Lorg/slf4j/Logger;

.field private driver:Ljava/sql/Driver;

.field private final driverProperties:Ljava/util/Properties;

.field private final jdbcUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/zaxxer/hikari/util/DriverDataSource;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lcom/zaxxer/hikari/util/DriverDataSource;->LOGGER:Lorg/slf4j/Logger;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/zaxxer/hikari/util/DriverDataSource;->jdbcUrl:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v1, Ljava/util/Properties;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/zaxxer/hikari/util/DriverDataSource;->driverProperties:Ljava/util/Properties;

    .line 20
    .line 21
    invoke-virtual {p3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/util/Map$Entry;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/zaxxer/hikari/util/DriverDataSource;->driverProperties:Ljava/util/Properties;

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v2, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    if-eqz p4, :cond_1

    .line 64
    .line 65
    iget-object p3, p0, Lcom/zaxxer/hikari/util/DriverDataSource;->driverProperties:Ljava/util/Properties;

    .line 66
    .line 67
    const-string v1, "user"

    .line 68
    .line 69
    invoke-virtual {p3, v1, p4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    invoke-virtual {p3, v1, p4}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    :cond_1
    if-eqz p5, :cond_2

    .line 77
    .line 78
    iget-object p3, p0, Lcom/zaxxer/hikari/util/DriverDataSource;->driverProperties:Ljava/util/Properties;

    .line 79
    .line 80
    const-string p4, "password"

    .line 81
    .line 82
    invoke-virtual {p3, p4, p5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p5

    .line 86
    invoke-virtual {p3, p4, p5}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    :cond_2
    if-eqz p2, :cond_5

    .line 90
    .line 91
    invoke-static {}, Ljava/sql/DriverManager;->getDrivers()Ljava/util/Enumeration;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    :cond_3
    invoke-interface {p3}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 96
    .line 97
    .line 98
    move-result p4

    .line 99
    if-eqz p4, :cond_4

    .line 100
    .line 101
    invoke-interface {p3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p4

    .line 105
    check-cast p4, Ljava/sql/Driver;

    .line 106
    .line 107
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    move-result-object p5

    .line 111
    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p5

    .line 115
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p5

    .line 119
    if-eqz p5, :cond_3

    .line 120
    .line 121
    iput-object p4, p0, Lcom/zaxxer/hikari/util/DriverDataSource;->driver:Ljava/sql/Driver;

    .line 122
    .line 123
    :cond_4
    iget-object p3, p0, Lcom/zaxxer/hikari/util/DriverDataSource;->driver:Ljava/sql/Driver;

    .line 124
    .line 125
    if-nez p3, :cond_5

    .line 126
    .line 127
    iget-object p3, p0, Lcom/zaxxer/hikari/util/DriverDataSource;->LOGGER:Lorg/slf4j/Logger;

    .line 128
    .line 129
    const-string p4, "Registered driver with driverClassName={} was not found, trying direct instantiation."

    .line 130
    .line 131
    invoke-interface {p3, p4, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    invoke-virtual {p3, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    invoke-virtual {p3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    check-cast p3, Ljava/sql/Driver;

    .line 147
    .line 148
    iput-object p3, p0, Lcom/zaxxer/hikari/util/DriverDataSource;->driver:Ljava/sql/Driver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :catch_0
    move-exception p3

    .line 152
    iget-object p4, p0, Lcom/zaxxer/hikari/util/DriverDataSource;->LOGGER:Lorg/slf4j/Logger;

    .line 153
    .line 154
    const-string p5, "Could not instantiate instance of driver class {}, trying JDBC URL resolution"

    .line 155
    .line 156
    invoke-interface {p4, p5, p2, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_5
    :goto_1
    :try_start_1
    iget-object p3, p0, Lcom/zaxxer/hikari/util/DriverDataSource;->driver:Ljava/sql/Driver;

    .line 160
    .line 161
    if-nez p3, :cond_6

    .line 162
    .line 163
    invoke-static {p1}, Ljava/sql/DriverManager;->getDriver(Ljava/lang/String;)Ljava/sql/Driver;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    iput-object p2, p0, Lcom/zaxxer/hikari/util/DriverDataSource;->driver:Ljava/sql/Driver;

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :catch_1
    move-exception p2

    .line 171
    goto :goto_3

    .line 172
    :cond_6
    invoke-interface {p3, p1}, Ljava/sql/Driver;->acceptsURL(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result p3

    .line 176
    if-eqz p3, :cond_7

    .line 177
    .line 178
    :goto_2
    return-void

    .line 179
    :cond_7
    new-instance p3, Ljava/lang/RuntimeException;

    .line 180
    .line 181
    new-instance p4, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string p5, "Driver "

    .line 187
    .line 188
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string p2, " claims to not accept JDBC URL "

    .line 195
    .line 196
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    invoke-direct {p3, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw p3
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    :goto_3
    new-instance p3, Ljava/lang/RuntimeException;

    .line 211
    .line 212
    const-string p4, "Unable to get driver instance for jdbcUrl="

    .line 213
    .line 214
    invoke-static {p4, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-direct {p3, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    .line 220
    .line 221
    throw p3
.end method


# virtual methods
.method public getConnection()Ljava/sql/Connection;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zaxxer/hikari/util/DriverDataSource;->driver:Ljava/sql/Driver;

    iget-object v1, p0, Lcom/zaxxer/hikari/util/DriverDataSource;->jdbcUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/zaxxer/hikari/util/DriverDataSource;->driverProperties:Ljava/util/Properties;

    invoke-interface {v0, v1, v2}, Ljava/sql/Driver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/zaxxer/hikari/util/DriverDataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p1

    return-object p1
.end method

.method public getLogWriter()Ljava/io/PrintWriter;
    .locals 1

    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public getLoginTimeout()I
    .locals 1

    invoke-static {}, Ljava/sql/DriverManager;->getLoginTimeout()I

    move-result v0

    return v0
.end method

.method public getParentLogger()Ljava/util/logging/Logger;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/util/DriverDataSource;->driver:Ljava/sql/Driver;

    invoke-interface {v0}, Ljava/sql/Driver;->getParentLogger()Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public setLogWriter(Ljava/io/PrintWriter;)V
    .locals 0

    new-instance p1, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {p1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw p1
.end method

.method public setLoginTimeout(I)V
    .locals 0

    invoke-static {p1}, Ljava/sql/DriverManager;->setLoginTimeout(I)V

    return-void
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance p1, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {p1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw p1
.end method
