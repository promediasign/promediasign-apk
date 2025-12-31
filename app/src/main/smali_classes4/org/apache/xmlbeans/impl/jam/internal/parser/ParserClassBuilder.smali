.class public Lorg/apache/xmlbeans/impl/jam/internal/parser/ParserClassBuilder;
.super Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/jam/provider/JamClassPopulator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/jam/internal/parser/ParserClassBuilder$MainTool;
    }
.end annotation


# instance fields
.field private mOut:Ljava/io/PrintWriter;

.field private mSourcePath:Lorg/apache/xmlbeans/impl/jam/provider/ResourcePath;

.field private mVerbose:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParserClassBuilder;->mVerbose:Z

    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParserClassBuilder;->mOut:Ljava/io/PrintWriter;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/jam/internal/parser/ParserClassBuilder$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParserClassBuilder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParserClassBuilder;->mVerbose:Z

    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParserClassBuilder;->mOut:Ljava/io/PrintWriter;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;->getInputSourcepath()Lorg/apache/xmlbeans/impl/jam/provider/ResourcePath;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParserClassBuilder;->mSourcePath:Lorg/apache/xmlbeans/impl/jam/provider/ResourcePath;

    return-void
.end method

.method public static synthetic access$100(Ljava/io/Reader;Lorg/apache/xmlbeans/impl/jam/JamClassLoader;)[Lorg/apache/xmlbeans/impl/jam/mutable/MClass;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParserClassBuilder;->parse(Ljava/io/Reader;Lorg/apache/xmlbeans/impl/jam/JamClassLoader;)[Lorg/apache/xmlbeans/impl/jam/mutable/MClass;

    move-result-object p0

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParserClassBuilder$MainTool;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParserClassBuilder$MainTool;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParserClassBuilder$MainTool;->process([Ljava/lang/String;)V

    return-void
.end method

.method private static parse(Ljava/io/Reader;Lorg/apache/xmlbeans/impl/jam/JamClassLoader;)[Lorg/apache/xmlbeans/impl/jam/mutable/MClass;
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null loader"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "temporarily NI"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null in"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/mutable/MClass;
    .locals 6

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    if-eqz p2, :cond_4

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuffer;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 11
    .line 12
    const/16 v2, 0x2e

    .line 13
    .line 14
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 22
    .line 23
    .line 24
    const-string v1, ".java"

    .line 25
    .line 26
    invoke-static {v0, p2, v1}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "."

    .line 31
    .line 32
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, -0x1

    .line 37
    if-ne v1, v2, :cond_3

    .line 38
    .line 39
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParserClassBuilder;->mSourcePath:Lorg/apache/xmlbeans/impl/jam/provider/ResourcePath;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/jam/provider/ResourcePath;->findInPath(Ljava/lang/String;)Ljava/io/InputStream;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x0

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    iget-boolean p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParserClassBuilder;->mVerbose:Z

    .line 49
    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParserClassBuilder;->mOut:Ljava/io/PrintWriter;

    .line 53
    .line 54
    new-instance p2, Ljava/lang/StringBuffer;

    .line 55
    .line 56
    const-string v1, "[ParserClassBuilder] could not find "

    .line 57
    .line 58
    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    return-object v2

    .line 72
    :cond_1
    iget-boolean v3, p0, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParserClassBuilder;->mVerbose:Z

    .line 73
    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParserClassBuilder;->mOut:Ljava/io/PrintWriter;

    .line 77
    .line 78
    new-instance v4, Ljava/lang/StringBuffer;

    .line 79
    .line 80
    const-string v5, "[ParserClassBuilder] loading class "

    .line 81
    .line 82
    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    .line 87
    .line 88
    const-string p1, "  "

    .line 89
    .line 90
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/parser/ParserClassBuilder;->mOut:Ljava/io/PrintWriter;

    .line 104
    .line 105
    new-instance p2, Ljava/lang/StringBuffer;

    .line 106
    .line 107
    const-string v3, "[ParserClassBuilder] from file "

    .line 108
    .line 109
    invoke-direct {p2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_2
    new-instance p1, Ljava/io/InputStreamReader;

    .line 123
    .line 124
    invoke-direct {p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 125
    .line 126
    .line 127
    :try_start_0
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :catch_0
    move-exception p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 133
    .line 134
    .line 135
    :goto_0
    return-object v2

    .line 136
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 137
    .line 138
    const-string p2, "inner classes are NYI at the moment"

    .line 139
    .line 140
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p1

    .line 144
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 145
    .line 146
    const-string p2, "null name"

    .line 147
    .line 148
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 153
    .line 154
    const-string p2, "null pkg"

    .line 155
    .line 156
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p1
.end method

.method public populate(Lorg/apache/xmlbeans/impl/jam/mutable/MClass;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "NYI"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
