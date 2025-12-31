.class public Lorg/apache/velocity/runtime/parser/Parser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/runtime/parser/node/ParserTreeConstants;
.implements Lorg/apache/velocity/runtime/parser/ParserConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/velocity/runtime/parser/Parser$JJCalls;,
        Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess;
    }
.end annotation


# static fields
.field private static jj_la1_0:[I

.field private static jj_la1_1:[I

.field private static jj_la1_2:[I


# instance fields
.field public currentTemplate:Lorg/apache/velocity/Template;

.field private final jj_2_rtns:[Lorg/apache/velocity/runtime/parser/Parser$JJCalls;

.field private jj_endpos:I

.field private jj_expentries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field private jj_expentry:[I

.field private jj_gc:I

.field private jj_gen:I

.field private jj_kind:I

.field private jj_la:I

.field private final jj_la1:[I

.field private jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

.field private jj_lasttokens:[I

.field private jj_lookingAhead:Z

.field private final jj_ls:Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess;

.field public jj_nt:Lorg/apache/velocity/runtime/parser/Token;

.field private jj_ntk:I

.field private jj_rescan:Z

.field private jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

.field private jj_semLA:Z

.field protected jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

.field private log:Lorg/slf4j/Logger;

.field private macroNames:Ljava/util/Map;

.field private rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

.field public strictEscape:Z

.field public token:Lorg/apache/velocity/runtime/parser/Token;

.field public token_source:Lorg/apache/velocity/runtime/parser/ParserTokenManager;

.field velcharstream:Lorg/apache/velocity/runtime/parser/VelocityCharStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1_init_0()V

    invoke-static {}, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1_init_1()V

    invoke-static {}, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1_init_2()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/RuntimeServices;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/apache/velocity/runtime/parser/VelocityCharStream;-><init>(Ljava/io/InputStream;II)V

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;-><init>(Lorg/apache/velocity/runtime/parser/CharStream;)V

    const-string v0, "parser"

    invoke-interface {p1, v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getLog(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->log:Lorg/slf4j/Logger;

    new-instance v0, Lorg/apache/velocity/runtime/parser/VelocityCharStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v3, v3}, Lorg/apache/velocity/runtime/parser/VelocityCharStream;-><init>(Ljava/io/InputStream;II)V

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->velcharstream:Lorg/apache/velocity/runtime/parser/VelocityCharStream;

    const-string v0, "runtime.references.strict.escape"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->strictEscape:Z

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/CharStream;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->macroNames:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->currentTemplate:Lorg/apache/velocity/Template;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->strictEscape:Z

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->velcharstream:Lorg/apache/velocity/runtime/parser/VelocityCharStream;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->log:Lorg/slf4j/Logger;

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lookingAhead:Z

    const/16 v2, 0x63

    new-array v3, v2, [I

    iput-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v3, 0x16

    new-array v3, v3, [Lorg/apache/velocity/runtime/parser/Parser$JJCalls;

    iput-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_rtns:[Lorg/apache/velocity/runtime/parser/Parser$JJCalls;

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_rescan:Z

    iput v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gc:I

    new-instance v3, Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess;

    invoke-direct {v3, v0}, Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess;-><init>(Lorg/apache/velocity/runtime/parser/Parser$1;)V

    iput-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ls:Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_expentries:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_kind:I

    const/16 v3, 0x64

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lasttokens:[I

    new-instance v3, Lorg/apache/velocity/runtime/parser/ParserTokenManager;

    invoke-direct {v3, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;-><init>(Lorg/apache/velocity/runtime/parser/CharStream;)V

    iput-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->token_source:Lorg/apache/velocity/runtime/parser/ParserTokenManager;

    new-instance p1, Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p1}, Lorg/apache/velocity/runtime/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    iput v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v2, :cond_0

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    aput v0, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_rtns:[Lorg/apache/velocity/runtime/parser/Parser$JJCalls;

    array-length v0, p1

    if-ge v1, v0, :cond_1

    new-instance v0, Lorg/apache/velocity/runtime/parser/Parser$JJCalls;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/Parser$JJCalls;-><init>()V

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/ParserTokenManager;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->macroNames:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->currentTemplate:Lorg/apache/velocity/Template;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->strictEscape:Z

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->velcharstream:Lorg/apache/velocity/runtime/parser/VelocityCharStream;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->log:Lorg/slf4j/Logger;

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lookingAhead:Z

    const/16 v2, 0x63

    new-array v3, v2, [I

    iput-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v3, 0x16

    new-array v3, v3, [Lorg/apache/velocity/runtime/parser/Parser$JJCalls;

    iput-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_rtns:[Lorg/apache/velocity/runtime/parser/Parser$JJCalls;

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_rescan:Z

    iput v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gc:I

    new-instance v3, Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess;

    invoke-direct {v3, v0}, Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess;-><init>(Lorg/apache/velocity/runtime/parser/Parser$1;)V

    iput-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ls:Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_expentries:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_kind:I

    const/16 v3, 0x64

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lasttokens:[I

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->token_source:Lorg/apache/velocity/runtime/parser/ParserTokenManager;

    new-instance p1, Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p1}, Lorg/apache/velocity/runtime/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    iput v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v2, :cond_0

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    aput v0, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_rtns:[Lorg/apache/velocity/runtime/parser/Parser$JJCalls;

    array-length v0, p1

    if-ge v1, v0, :cond_1

    new-instance v0, Lorg/apache/velocity/runtime/parser/Parser$JJCalls;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/Parser$JJCalls;-><init>()V

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private escapedDirective(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "\\"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v1, v0, 0x1

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    const/16 v6, 0x7b

    .line 24
    .line 25
    if-ne v5, v6, :cond_0

    .line 26
    .line 27
    invoke-static {v3, v2, v2}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    :cond_0
    iget-boolean v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->strictEscape:Z

    .line 32
    .line 33
    if-nez v2, :cond_3

    .line 34
    .line 35
    invoke-virtual {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->isDirective(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_3

    .line 40
    .line 41
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->macroNames:Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_3

    .line 48
    .line 49
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    .line 50
    .line 51
    iget-object v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->currentTemplate:Lorg/apache/velocity/Template;

    .line 52
    .line 53
    invoke-interface {v2, v3, v5}, Lorg/apache/velocity/runtime/RuntimeServices;->isVelocimacro(Ljava/lang/String;Lorg/apache/velocity/Template;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const-string v2, "if"

    .line 61
    .line 62
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_3

    .line 67
    .line 68
    const-string v2, "end"

    .line 69
    .line 70
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_3

    .line 75
    .line 76
    const-string v2, "set"

    .line 77
    .line 78
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_3

    .line 83
    .line 84
    const-string v2, "else"

    .line 85
    .line 86
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_3

    .line 91
    .line 92
    const-string v2, "elseif"

    .line 93
    .line 94
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_2

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    return-object p1

    .line 102
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    div-int/lit8 v0, v0, 0x2

    .line 108
    .line 109
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    return-object p1
.end method

.method private isAssignment()Z
    .locals 4

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token_source:Lorg/apache/velocity/runtime/parser/ParserTokenManager;

    iget v0, v0, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->curLexState:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x20

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->velcharstream:Lorg/apache/velocity/runtime/parser/VelocityCharStream;

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->readChar()C

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/16 v3, 0x3d

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->velcharstream:Lorg/apache/velocity/runtime/parser/VelocityCharStream;

    invoke-virtual {v0, v2}, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->backup(I)V

    return v1

    :catch_0
    :cond_2
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->velcharstream:Lorg/apache/velocity/runtime/parser/VelocityCharStream;

    invoke-virtual {v0, v2}, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->backup(I)V

    goto :goto_2

    :goto_1
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->velcharstream:Lorg/apache/velocity/runtime/parser/VelocityCharStream;

    invoke-virtual {v1, v2}, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->backup(I)V

    throw v0

    :goto_2
    const/4 v0, 0x1

    return v0
.end method

.method private isLeftParenthesis()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->velcharstream:Lorg/apache/velocity/runtime/parser/VelocityCharStream;

    invoke-virtual {v2}, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->readChar()C

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x28

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->velcharstream:Lorg/apache/velocity/runtime/parser/VelocityCharStream;

    invoke-virtual {v0, v1}, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->backup(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->velcharstream:Lorg/apache/velocity/runtime/parser/VelocityCharStream;

    invoke-virtual {v2, v1}, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->backup(I)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->velcharstream:Lorg/apache/velocity/runtime/parser/VelocityCharStream;

    invoke-virtual {v2, v1}, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->backup(I)V

    throw v0

    :catch_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->velcharstream:Lorg/apache/velocity/runtime/parser/VelocityCharStream;

    invoke-virtual {v2, v1}, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->backup(I)V

    return v0
.end method

.method private jj_2_1(I)Z
    .locals 3

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_1()Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0
.end method

.method private jj_2_10(I)Z
    .locals 3

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x1

    const/16 v1, 0x9

    :try_start_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_10()Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0
.end method

.method private jj_2_11(I)Z
    .locals 3

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x1

    const/16 v1, 0xa

    :try_start_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_11()Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0
.end method

.method private jj_2_12(I)Z
    .locals 3

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x1

    const/16 v1, 0xb

    :try_start_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_12()Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0
.end method

.method private jj_2_13(I)Z
    .locals 3

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x1

    const/16 v1, 0xc

    :try_start_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_13()Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0
.end method

.method private jj_2_14(I)Z
    .locals 3

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x1

    const/16 v1, 0xd

    :try_start_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_14()Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0
.end method

.method private jj_2_15(I)Z
    .locals 3

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x1

    const/16 v1, 0xe

    :try_start_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_15()Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0
.end method

.method private jj_2_16(I)Z
    .locals 3

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x1

    const/16 v1, 0xf

    :try_start_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_16()Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0
.end method

.method private jj_2_17(I)Z
    .locals 3

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x1

    const/16 v1, 0x10

    :try_start_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_17()Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0
.end method

.method private jj_2_18(I)Z
    .locals 3

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x1

    const/16 v1, 0x11

    :try_start_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_18()Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0
.end method

.method private jj_2_19(I)Z
    .locals 3

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x1

    const/16 v1, 0x12

    :try_start_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_19()Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0
.end method

.method private jj_2_2(I)Z
    .locals 2

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_2()Z

    move-result v1
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v1, v0

    invoke-direct {p0, v0, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v1

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    throw v1

    :catch_0
    invoke-direct {p0, v0, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0
.end method

.method private jj_2_20(I)Z
    .locals 3

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x1

    const/16 v1, 0x13

    :try_start_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_20()Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0
.end method

.method private jj_2_21(I)Z
    .locals 3

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x1

    const/16 v1, 0x14

    :try_start_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_21()Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0
.end method

.method private jj_2_22(I)Z
    .locals 3

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x1

    const/16 v1, 0x15

    :try_start_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_22()Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0
.end method

.method private jj_2_3(I)Z
    .locals 3

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x1

    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_3()Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0
.end method

.method private jj_2_4(I)Z
    .locals 3

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x1

    const/4 v1, 0x3

    :try_start_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_4()Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0
.end method

.method private jj_2_5(I)Z
    .locals 3

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x1

    const/4 v1, 0x4

    :try_start_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_5()Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0
.end method

.method private jj_2_6(I)Z
    .locals 3

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x1

    const/4 v1, 0x5

    :try_start_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_6()Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0
.end method

.method private jj_2_7(I)Z
    .locals 3

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x1

    const/4 v1, 0x6

    :try_start_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_7()Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0
.end method

.method private jj_2_8(I)Z
    .locals 3

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x1

    const/4 v1, 0x7

    :try_start_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_8()Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0
.end method

.method private jj_2_9(I)Z
    .locals 3

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x1

    const/16 v1, 0x8

    :try_start_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_9()Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_save(II)V

    return v0
.end method

.method private jj_3R_100()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_101()Z
    .locals 1

    const/16 v0, 0x3b

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_102()Z
    .locals 1

    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_103()Z
    .locals 3

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_112()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_113()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_114()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_165()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_166()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_167()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_168()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_169()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_104()Z
    .locals 1

    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_105()Z
    .locals 3

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_10()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_115()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v2, 0x9

    invoke-direct {p0, v2}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x42

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_106()Z
    .locals 3

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_116()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_107()Z
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_108()Z
    .locals 1

    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_109()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_117()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_110()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_122()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_111()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_110()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_112()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_113()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_46()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_114()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_73()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_115()Z
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_120()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_116()Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_58()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_171()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_117()Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_121()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_129()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_118()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_110()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_119()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_110()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_120()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_121()Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_123()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_131()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_122()Z
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_124()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_109()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_125()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_123()Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_126()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_133()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_124()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_125()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_126()Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_128()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_138()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_127()Z
    .locals 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_109()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_128()Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_130()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_142()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_129()Z
    .locals 2

    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_121()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_130()Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_132()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_158()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_131()Z
    .locals 2

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_123()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_132()Z
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_134()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_135()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_136()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_137()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_133()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_139()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_140()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_134()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_135()Z
    .locals 2

    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_132()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_136()Z
    .locals 2

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_141()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_137()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_141()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_138()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_143()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_144()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_145()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_146()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_139()Z
    .locals 2

    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_126()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_140()Z
    .locals 2

    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_126()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_141()Z
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_147()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_148()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_149()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_150()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_151()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_152()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_153()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_154()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_155()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_156()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_157()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_164()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_142()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_159()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_160()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_143()Z
    .locals 2

    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_128()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_144()Z
    .locals 2

    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_128()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_145()Z
    .locals 2

    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_128()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_146()Z
    .locals 2

    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_128()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_147()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_148()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_102()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_149()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_46()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_150()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_73()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_151()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_103()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_152()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_104()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_153()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_105()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_154()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_106()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_155()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_107()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_156()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_108()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_157()Z
    .locals 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_109()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_158()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_161()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_162()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_163()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_159()Z
    .locals 2

    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_130()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_160()Z
    .locals 2

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_130()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_161()Z
    .locals 2

    const/16 v0, 0x24

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_132()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_162()Z
    .locals 2

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_132()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_163()Z
    .locals 2

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_132()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_164()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_165()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_166()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_167()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_46()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_168()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_73()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_169()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_170()Z
    .locals 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_58()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_58()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_171()Z
    .locals 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_58()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_46()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_70()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_71()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_47()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_72()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x18

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_48()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_49()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_46()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_50()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_73()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_51()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_52()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_53()Z
    .locals 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_74()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_54()Z
    .locals 2

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x16

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_55()Z
    .locals 3

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_75()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_100()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x30

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_56()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_57()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_76()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_77()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_78()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_79()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_80()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_81()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_82()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_83()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_84()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_85()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_58()Z
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_86()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_87()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_88()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_89()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_90()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_91()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_92()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_93()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_94()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_95()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_96()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_59()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_60()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_46()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_61()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_73()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_62()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_63()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_97()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_64()Z
    .locals 3

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_97()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_98()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    :cond_2
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_65()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_97()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_66()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_67()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_46()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_68()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_73()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_69()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_70()Z
    .locals 2

    const/16 v0, 0x3f

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_99()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    :cond_1
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_12()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_71()Z
    .locals 3

    const/16 v0, 0x41

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x3f

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_111()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    :cond_2
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_14()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x42

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_72()Z
    .locals 2

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x16

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_73()Z
    .locals 1

    const/16 v0, 0x36

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_74()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_75()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_46()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_76()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_46()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_77()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_101()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_78()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_102()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_79()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_73()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_80()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_103()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_81()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_104()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_82()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_105()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_83()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_106()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_84()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_107()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_85()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_108()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_86()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_87()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_102()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_88()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_73()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_89()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_103()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_90()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_105()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_91()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_106()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_92()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_107()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_93()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_108()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_94()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_46()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_95()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_104()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_96()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_97()Z
    .locals 1

    const/16 v0, 0x3f

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_98()Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_109()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_127()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_99()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_110()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_1()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_46()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_10()Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_58()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_58()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_170()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_11()Z
    .locals 3

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_59()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_60()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_61()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_62()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_12()Z
    .locals 3

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_13()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_63()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_118()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_13()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_64()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_14()Z
    .locals 3

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_15()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_65()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_119()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_15()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_64()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_16()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    :cond_0
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_17()Z
    .locals 1

    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_18()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    :cond_0
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_19()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    :cond_0
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_2()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_47()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_20()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    :cond_0
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_21()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    :cond_0
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_22()Z
    .locals 3

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_66()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_67()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_68()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_69()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_3()Z
    .locals 1

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_4()Z
    .locals 3

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_48()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_49()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_50()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_51()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_5()Z
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_52()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_53()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    :cond_1
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_6()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_54()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_6()Z
    .locals 4

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_55()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lookingAhead:Z

    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v1

    iget v1, v1, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    const/16 v2, 0xb

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_semLA:Z

    iput-boolean v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lookingAhead:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_56()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3R_57()Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    return v3

    :cond_4
    :goto_1
    return v0
.end method

.method private jj_3_7()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    :cond_0
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_8()Z
    .locals 1

    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_9()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    :cond_0
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private jj_add_error_token(II)V
    .locals 6

    const/16 v0, 0x64

    if-lt p2, v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_endpos:I

    add-int/lit8 v1, v0, 0x1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lasttokens:[I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_endpos:I

    aput p1, p2, v0

    goto :goto_3

    :cond_1
    if-eqz v0, :cond_7

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_expentry:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_endpos:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_expentry:[I

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lasttokens:[I

    aget v3, v3, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_expentries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    array-length v3, v2

    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_expentry:[I

    array-length v4, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_expentry:[I

    array-length v5, v4

    if-ge v3, v5, :cond_5

    aget v5, v2, v3

    aget v4, v4, v3

    if-eq v5, v4, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_expentries:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz p2, :cond_7

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lasttokens:[I

    iput p2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_endpos:I

    add-int/lit8 p2, p2, -0x1

    aput p1, v0, p2

    :cond_7
    :goto_3
    return-void
.end method

.method private jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;
    .locals 3

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    if-eqz v1, :cond_0

    :goto_0
    iput-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->token_source:Lorg/apache/velocity/runtime/parser/ParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->getNextToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_0

    :goto_1
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iget v1, v1, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-ne v1, p1, :cond_4

    iget p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    iget p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gc:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gc:I

    const/16 v0, 0x64

    if-le p1, v0, :cond_3

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gc:I

    :goto_2
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_rtns:[Lorg/apache/velocity/runtime/parser/Parser$JJCalls;

    array-length v1, v0

    if-ge p1, v1, :cond_3

    aget-object v0, v0, p1

    :goto_3
    if-eqz v0, :cond_2

    iget v1, v0, Lorg/apache/velocity/runtime/parser/Parser$JJCalls;->gen:I

    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    if-ge v1, v2, :cond_1

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/apache/velocity/runtime/parser/Parser$JJCalls;->first:Lorg/apache/velocity/runtime/parser/Token;

    :cond_1
    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Parser$JJCalls;->next:Lorg/apache/velocity/runtime/parser/Parser$JJCalls;

    goto :goto_3

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    return-object p1

    :cond_4
    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_kind:I

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->generateParseException()Lorg/apache/velocity/runtime/parser/ParseException;

    move-result-object p1

    throw p1
.end method

.method private static jj_la1_init_0()V
    .locals 1

    const/16 v0, 0x63

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1_0:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x2000000
        0x2000
        -0xffff400
        0x400000
        0x1a00000
        -0x80000000
        0x108
        0x10000000
        0x0
        0x30000000
        0x30000000
        0x30000000
        0x30000000
        0x30000000
        0x30000000
        0x20
        0x30000000
        0x30000000
        0x30000000
        0x30000000
        0x400000
        0x200000
        0x30000000
        0x30000000
        0x10000000
        0x10000000
        0x20
        0x30000000
        0x30000000
        0x200
        0x20
        -0x4ffffef8
        0x30000000
        0x30000000
        0x0
        0x30000000
        0x30000000
        0x30000000
        0x30000000
        0x0
        0x30000000
        0x30000000
        0x30000000
        0x30000000
        0x30000000
        0x30000000
        0x30000000
        0x30000000
        -0x80000000
        0x108
        0x30000000
        0x30000000
        0x20
        -0x4ffffaf8
        0x2
        0x0
        0x2
        0x2
        0x0
        0x2
        0x0
        -0x7ffff400
        0x10000000
        0x30000000
        0x30000000
        0x10000000
        0x10000000
        0x10000000
        0x10000000
        0x10000000
        0x30000000
        0x30000000
        0x10000000
        0x10000000
        0x30000000
        0x30000000
        0x30000000
        0x30000000
        0x10000000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x30000000
        0x30000000
        -0x4ffffaf8
        0x30000000
        0x30000000
        -0x80000000
        0x508
        0x30000000
        0x30000000
    .end array-data
.end method

.method private static jj_la1_init_1()V
    .locals 1

    const/16 v0, 0x63

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1_1:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0xc00000
        0x0
        0x0
        -0x77c00000
        0x800003
        0x0
        0x18000000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x7f3ffffd
        0x0
        0x0
        -0x7fc00000
        0x0
        0x0
        0x0
        0x0
        -0x7fc00000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x400000
        -0x7f7ffffd
        0x0
        0x0
        0x0
        -0x7f3f7ff9
        0x0
        -0x80000000
        0x0
        0x0
        -0x80000000
        0x0
        -0x80000000
        0xc00000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x100
        0x80
        0x6000
        0x6000
        0x1e00
        0x1e00
        0xc
        0xc
        0x70
        0x70
        0x0
        0x0
        -0x7f3f7ff9
        0x0
        0x0
        -0x7fc00000
        0x800003
        0x0
        0x0
    .end array-data
.end method

.method private static jj_la1_init_2()V
    .locals 1

    const/16 v0, 0x63

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1_2:[I

    return-void

    :array_0
    .array-data 4
        0x80
        0x0
        0x20
        0x3c7
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x0
        0x2
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x2c7
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private jj_ntk()I
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_nt:Lorg/apache/velocity/runtime/parser/Token;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->token_source:Lorg/apache/velocity/runtime/parser/ParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->getNextToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    :cond_0
    iget v0, v1, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    return v0
.end method

.method private jj_rescan_token()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_rescan:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x16

    if-ge v1, v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_rtns:[Lorg/apache/velocity/runtime/parser/Parser$JJCalls;

    aget-object v2, v2, v1

    :cond_0
    iget v3, v2, Lorg/apache/velocity/runtime/parser/Parser$JJCalls;->gen:I

    iget v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    if-le v3, v4, :cond_1

    iget v3, v2, Lorg/apache/velocity/runtime/parser/Parser$JJCalls;->arg:I

    iput v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    iget-object v3, v2, Lorg/apache/velocity/runtime/parser/Parser$JJCalls;->first:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_22()Z

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_21()Z

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_20()Z

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_19()Z

    goto :goto_1

    :pswitch_4
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_18()Z

    goto :goto_1

    :pswitch_5
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_17()Z

    goto :goto_1

    :pswitch_6
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_16()Z

    goto :goto_1

    :pswitch_7
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_15()Z

    goto :goto_1

    :pswitch_8
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_14()Z

    goto :goto_1

    :pswitch_9
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_13()Z

    goto :goto_1

    :pswitch_a
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_12()Z

    goto :goto_1

    :pswitch_b
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_11()Z

    goto :goto_1

    :pswitch_c
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_10()Z

    goto :goto_1

    :pswitch_d
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_9()Z

    goto :goto_1

    :pswitch_e
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_8()Z

    goto :goto_1

    :pswitch_f
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_7()Z

    goto :goto_1

    :pswitch_10
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_6()Z

    goto :goto_1

    :pswitch_11
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_5()Z

    goto :goto_1

    :pswitch_12
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_4()Z

    goto :goto_1

    :pswitch_13
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_3()Z

    goto :goto_1

    :pswitch_14
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_2()Z

    goto :goto_1

    :pswitch_15
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_3_1()Z

    :cond_1
    :goto_1
    iget-object v2, v2, Lorg/apache/velocity/runtime/parser/Parser$JJCalls;->next:Lorg/apache/velocity/runtime/parser/Parser$JJCalls;
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_rescan:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method private jj_save(II)V
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_rtns:[Lorg/apache/velocity/runtime/parser/Parser$JJCalls;

    aget-object p1, v0, p1

    :goto_0
    iget v0, p1, Lorg/apache/velocity/runtime/parser/Parser$JJCalls;->gen:I

    iget v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    if-le v0, v1, :cond_1

    iget-object v0, p1, Lorg/apache/velocity/runtime/parser/Parser$JJCalls;->next:Lorg/apache/velocity/runtime/parser/Parser$JJCalls;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/velocity/runtime/parser/Parser$JJCalls;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/Parser$JJCalls;-><init>()V

    iput-object v0, p1, Lorg/apache/velocity/runtime/parser/Parser$JJCalls;->next:Lorg/apache/velocity/runtime/parser/Parser$JJCalls;

    move-object p1, v0

    goto :goto_1

    :cond_0
    move-object p1, v0

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    add-int/2addr v0, p2

    iget v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    sub-int/2addr v0, v1

    iput v0, p1, Lorg/apache/velocity/runtime/parser/Parser$JJCalls;->gen:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p1, Lorg/apache/velocity/runtime/parser/Parser$JJCalls;->first:Lorg/apache/velocity/runtime/parser/Token;

    iput p2, p1, Lorg/apache/velocity/runtime/parser/Parser$JJCalls;->arg:I

    return-void
.end method

.method private jj_scan_token(I)Z
    .locals 5

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->token_source:Lorg/apache/velocity/runtime/parser/ParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->getNextToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    :cond_0
    iput-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    :goto_0
    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_rescan:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    if-eq v0, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_add_error_token(II)V

    :cond_3
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    iget v3, v0, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-eq v3, p1, :cond_4

    return v2

    :cond_4
    iget p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la:I

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lastpos:Lorg/apache/velocity/runtime/parser/Token;

    if-eq v0, p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ls:Lorg/apache/velocity/runtime/parser/Parser$LookaheadSuccess;

    throw p1

    :cond_6
    :goto_2
    return v1
.end method


# virtual methods
.method public final AdditiveExpression()V
    .locals 7

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->MultiplicativeExpression()V

    :goto_0
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_0
    const/16 v2, 0x23

    const/16 v3, 0x22

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v1, 0x56

    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v2, v0, v1

    return-void

    :cond_1
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v0, v3, :cond_7

    if-ne v0, v2, :cond_6

    invoke-direct {p0, v2}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTAddNode;

    const/16 v1, 0x25

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTAddNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->MultiplicativeExpression()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0, v6}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_4

    instance-of v2, v1, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v2, :cond_3

    check-cast v1, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_3
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_4
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_2
    move-exception v1

    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_5

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v6}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    :cond_5
    throw v1

    :cond_6
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v2, 0x57

    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v3, v0, v2

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v0

    :cond_7
    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTSubtractNode;

    const/16 v1, 0x26

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTSubtractNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->MultiplicativeExpression()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_4
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_9

    instance-of v2, v1, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v2, :cond_8

    check-cast v1, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v1

    :catchall_4
    move-exception v1

    goto :goto_3

    :cond_8
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_9
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_5
    move-exception v1

    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_a

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v6}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    :cond_a
    throw v1
.end method

.method public final Assignment()V
    .locals 5

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTAssignment;

    const/16 v1, 0x1c

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTAssignment;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->PrimaryExpression()V

    const/16 v2, 0x30

    invoke-direct {p0, v2}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Expression()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    return-void

    :catchall_0
    move-exception v2

    const/4 v3, 0x1

    :try_start_1
    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v4, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v3, 0x0

    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_1

    instance-of v4, v2, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v4, :cond_0

    check-cast v2, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_0

    :cond_0
    check-cast v2, Ljava/lang/Error;

    throw v2

    :cond_1
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    :cond_2
    throw v2
.end method

.method public final Comment()V
    .locals 6

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTComment;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTComment;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v2, 0x1

    :try_start_0
    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    const/16 v5, 0x15

    if-eq v3, v5, :cond_3

    const/16 v5, 0x17

    if-eq v3, v5, :cond_1

    const/16 v5, 0x18

    if-ne v3, v5, :cond_2

    :cond_1
    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v5, v3, v1

    invoke-direct {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v1, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v1

    :cond_3
    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    iget v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v1, v4, :cond_4

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v1

    :cond_4
    const/16 v3, 0x16

    if-eq v1, v3, :cond_5

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/4 v4, 0x4

    aput v3, v1, v4

    goto :goto_1

    :cond_5
    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return-void

    :goto_2
    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    throw v1
.end method

.method public final ConditionalAndExpression()V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->EqualityExpression()V

    :goto_0
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_0
    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v1, 0x51

    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v2, v0, v1

    return-void

    :cond_1
    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTAndNode;

    const/16 v1, 0x1e

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTAndNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->EqualityExpression()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    goto :goto_0

    :catchall_0
    move-exception v2

    const/4 v3, 0x1

    :try_start_1
    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v4, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v3, 0x0

    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_3

    instance-of v4, v2, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v4, :cond_2

    check-cast v2, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_1

    :cond_2
    check-cast v2, Ljava/lang/Error;

    throw v2

    :cond_3
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    :cond_4
    throw v2
.end method

.method public final ConditionalOrExpression()V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->ConditionalAndExpression()V

    :goto_0
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_0
    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v1, 0x50

    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v2, v0, v1

    return-void

    :cond_1
    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTOrNode;

    const/16 v1, 0x1d

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTOrNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->ConditionalAndExpression()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    goto :goto_0

    :catchall_0
    move-exception v2

    const/4 v3, 0x1

    :try_start_1
    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v4, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v3, 0x0

    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_3

    instance-of v4, v2, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v4, :cond_2

    check-cast v2, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_1

    :cond_2
    check-cast v2, Ljava/lang/Error;

    throw v2

    :cond_3
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    :cond_4
    throw v2
.end method

.method public final Directive()Z
    .locals 18

    move-object/from16 v1, p0

    new-instance v2, Lorg/apache/velocity/runtime/parser/node/ASTDirective;

    const/16 v0, 0xd

    invoke-direct {v2, v1, v0}, Lorg/apache/velocity/runtime/parser/node/ASTDirective;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v3, v1, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x1

    :try_start_0
    iget v7, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v7

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v4, 0x0

    goto/16 :goto_28

    :cond_0
    :goto_0
    const/16 v9, 0x1c

    if-eq v7, v9, :cond_1

    iget-object v7, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v10, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v11, 0x8

    aput v10, v7, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-direct {v1, v9}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v7

    iget-object v7, v7, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->setPrefix(Ljava/lang/String;)V

    :goto_1
    iget v7, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v7, v8, :cond_2

    :try_start_3
    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v7

    :cond_2
    const/16 v10, 0x3b

    const/16 v11, 0x3c

    if-eq v7, v10, :cond_4

    if-ne v7, v11, :cond_3

    invoke-direct {v1, v11}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v7

    goto :goto_2

    :cond_3
    iget-object v0, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v3, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v4, 0x9

    aput v3, v0, v4

    invoke-direct {v1, v8}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :try_start_4
    invoke-direct {v1, v10}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v7

    :goto_2
    iget-object v10, v7, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    const/16 v12, 0x23

    invoke-virtual {v10, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    iget v13, v7, Lorg/apache/velocity/runtime/parser/Token;->kind:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v14, 0x2

    if-ne v13, v11, :cond_5

    :try_start_5
    iget-object v11, v7, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    add-int/2addr v10, v14

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v5

    invoke-virtual {v11, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :cond_5
    :try_start_6
    iget-object v11, v7, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    add-int/2addr v10, v5

    invoke-virtual {v11, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    :goto_3
    invoke-virtual {v1, v10}, Lorg/apache/velocity/runtime/parser/Parser;->getDirective(Ljava/lang/String;)Lorg/apache/velocity/runtime/directive/Directive;

    move-result-object v11

    const-string v13, "macro"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v2, v10}, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->setDirectiveName(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v11, :cond_7

    :try_start_7
    const-string v15, "@"

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v6, 0x1

    :goto_4
    const/4 v10, 0x0

    goto :goto_5

    :cond_6
    iget-object v15, v1, Lorg/apache/velocity/runtime/parser/Parser;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    iget-object v6, v1, Lorg/apache/velocity/runtime/parser/Parser;->currentTemplate:Lorg/apache/velocity/Template;

    invoke-interface {v15, v10, v6}, Lorg/apache/velocity/runtime/RuntimeServices;->isVelocimacro(Ljava/lang/String;Lorg/apache/velocity/Template;)Z

    move-result v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v10, v6

    const/4 v6, 0x2

    goto :goto_5

    :cond_7
    :try_start_8
    invoke-virtual {v11}, Lorg/apache/velocity/runtime/directive/Directive;->getType()I

    move-result v6

    goto :goto_4

    :goto_5
    iget-object v15, v1, Lorg/apache/velocity/runtime/parser/Parser;->token_source:Lorg/apache/velocity/runtime/parser/ParserTokenManager;

    invoke-virtual {v15, v4}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->SwitchTo(I)V

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/Parser;->isLeftParenthesis()Z

    move-result v4

    const/16 v15, 0xe

    const/16 v12, 0x1d

    if-eqz v4, :cond_33

    :goto_6
    iget v4, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-ne v4, v8, :cond_8

    :try_start_9
    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_8
    if-eq v4, v9, :cond_2f

    if-eq v4, v12, :cond_2f

    :try_start_a
    iget-object v4, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v0, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v5, 0xa

    aput v0, v4, v5

    invoke-direct {v1, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    const/4 v0, 0x0

    :goto_7
    invoke-direct {v1, v14}, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_5(I)Z

    move-result v4

    if-eqz v4, :cond_29

    :goto_8
    iget v4, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v4, v8, :cond_9

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v4

    goto :goto_a

    :catchall_1
    move-exception v0

    const/4 v4, 0x0

    :goto_9
    const/4 v5, 0x1

    goto/16 :goto_28

    :cond_9
    :goto_a
    if-eq v4, v9, :cond_25

    if-eq v4, v12, :cond_25

    iget-object v4, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v5, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v16, 0xc

    aput v5, v4, v16

    iget v4, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v4, v8, :cond_a

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v4

    :cond_a
    const/4 v5, 0x5

    if-eq v4, v5, :cond_b

    iget-object v4, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v5, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v17, 0x10

    aput v5, v4, v17

    :goto_b
    const/4 v4, 0x1

    goto :goto_d

    :cond_b
    invoke-direct {v1, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    :goto_c
    iget v4, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v4, v8, :cond_c

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v4

    :cond_c
    if-eq v4, v9, :cond_21

    if-eq v4, v12, :cond_21

    iget-object v4, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v5, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v5, v4, v15

    goto :goto_b

    :goto_d
    invoke-direct {v1, v4}, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_6(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    if-eqz v13, :cond_f

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/Parser;->isAssignment()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/Parser;->DirectiveAssign()V

    :goto_e
    iget v4, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v4, v8, :cond_d

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v4

    :cond_d
    if-eq v4, v9, :cond_14

    if-eq v4, v12, :cond_14

    iget-object v4, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v5, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v17, 0x11

    aput v5, v4, v17

    const/16 v4, 0x30

    invoke-direct {v1, v4}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    :goto_f
    iget v4, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v4, v8, :cond_e

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v4

    :cond_e
    if-eq v4, v9, :cond_10

    if-eq v4, v12, :cond_10

    iget-object v4, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v5, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v17, 0x13

    aput v5, v4, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    const/4 v4, 0x1

    goto :goto_10

    :cond_10
    iget v4, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v4, v8, :cond_11

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v4

    :cond_11
    if-eq v4, v9, :cond_13

    if-ne v4, v12, :cond_12

    invoke-direct {v1, v12}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_f

    :cond_12
    iget-object v0, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v3, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v4, 0x14

    aput v3, v0, v4

    invoke-direct {v1, v8}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v0

    :cond_13
    invoke-direct {v1, v9}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_f

    :cond_14
    iget v4, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v4, v8, :cond_15

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v4

    :cond_15
    if-eq v4, v9, :cond_17

    if-ne v4, v12, :cond_16

    invoke-direct {v1, v12}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_e

    :cond_16
    iget-object v0, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v3, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v4, 0x12

    aput v3, v0, v4

    invoke-direct {v1, v8}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v0

    :cond_17
    invoke-direct {v1, v9}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_e

    :goto_10
    invoke-virtual {v1, v4}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v5

    iget v4, v5, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    const/16 v5, 0xb

    if-eq v4, v5, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/Parser;->DirectiveArg()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v11, :cond_19

    if-ne v4, v5, :cond_19

    if-nez v10, :cond_18

    goto :goto_11

    :cond_18
    new-instance v3, Lorg/apache/velocity/runtime/directive/MacroParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid argument "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    add-int/2addr v0, v5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in macro call "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lorg/apache/velocity/runtime/parser/Parser;->currentTemplate:Lorg/apache/velocity/Template;

    invoke-virtual {v4}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4, v7}, Lorg/apache/velocity/runtime/directive/MacroParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/velocity/runtime/parser/Token;)V

    throw v3

    :cond_19
    :goto_11
    add-int/lit8 v0, v0, 0x1

    :goto_12
    const/16 v15, 0xe

    goto/16 :goto_7

    :cond_1a
    invoke-direct {v1, v8}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v0

    :cond_1b
    iget v4, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v4, v8, :cond_1c

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v4

    :cond_1c
    const/16 v5, 0x16

    const/16 v15, 0x15

    if-ne v4, v15, :cond_20

    if-eqz v13, :cond_1f

    invoke-direct {v1, v15}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    iget v4, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v4, v8, :cond_1d

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v4

    :cond_1d
    if-eq v4, v5, :cond_1e

    iget-object v4, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v5, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v5, v4, v15

    goto :goto_12

    :cond_1e
    invoke-direct {v1, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_12

    :cond_1f
    new-instance v0, Lorg/apache/velocity/runtime/directive/MacroParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A Line comment is not allowed in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " arguments"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lorg/apache/velocity/runtime/parser/Parser;->currentTemplate:Lorg/apache/velocity/Template;

    invoke-virtual {v4}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4, v7}, Lorg/apache/velocity/runtime/directive/MacroParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/velocity/runtime/parser/Token;)V

    throw v0

    :cond_20
    iget-object v0, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v3, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v3, v0, v5

    invoke-direct {v1, v8}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v0

    :cond_21
    iget v4, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v4, v8, :cond_22

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v4

    :cond_22
    if-eq v4, v9, :cond_24

    if-ne v4, v12, :cond_23

    invoke-direct {v1, v12}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    :goto_13
    const/16 v15, 0xe

    goto/16 :goto_c

    :cond_23
    iget-object v0, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v3, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v4, 0xf

    aput v3, v0, v4

    invoke-direct {v1, v8}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v0

    :cond_24
    invoke-direct {v1, v9}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_13

    :cond_25
    iget v4, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v4, v8, :cond_26

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v4

    :cond_26
    if-eq v4, v9, :cond_28

    if-ne v4, v12, :cond_27

    invoke-direct {v1, v12}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    :goto_14
    const/16 v15, 0xe

    goto/16 :goto_8

    :cond_27
    iget-object v0, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v3, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v4, 0xd

    aput v3, v0, v4

    invoke-direct {v1, v8}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v0

    :cond_28
    const/16 v4, 0xd

    invoke-direct {v1, v9}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_14

    :cond_29
    :goto_15
    iget v0, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v8, :cond_2a

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_2a
    if-eq v0, v9, :cond_2b

    if-eq v0, v12, :cond_2b

    iget-object v0, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v4, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v5, 0x17

    aput v4, v0, v5

    const/16 v0, 0xb

    invoke-direct {v1, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_17

    :cond_2b
    iget v0, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v8, :cond_2c

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_2c
    if-eq v0, v9, :cond_2e

    if-ne v0, v12, :cond_2d

    invoke-direct {v1, v12}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_15

    :cond_2d
    iget-object v0, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v3, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v4, 0x18

    aput v3, v0, v4

    invoke-direct {v1, v8}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v0

    :cond_2e
    invoke-direct {v1, v9}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_15

    :cond_2f
    const/16 v4, 0xd

    iget v0, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v8, :cond_30

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_30
    if-eq v0, v9, :cond_32

    if-ne v0, v12, :cond_31

    invoke-direct {v1, v12}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    :goto_16
    const/16 v0, 0xd

    const/4 v5, 0x1

    const/16 v15, 0xe

    goto/16 :goto_6

    :cond_31
    iget-object v0, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v3, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v4, 0xb

    aput v3, v0, v4

    invoke-direct {v1, v8}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v0

    :cond_32
    invoke-direct {v1, v9}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_16

    :cond_33
    iget-object v0, v1, Lorg/apache/velocity/runtime/parser/Parser;->token_source:Lorg/apache/velocity/runtime/parser/ParserTokenManager;

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->stateStackPop()Z

    :goto_17
    invoke-direct {v1, v14}, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_7(I)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const-string v5, ""

    if-eqz v0, :cond_39

    :try_start_b
    iget v0, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v8, :cond_34

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_34
    if-eq v0, v9, :cond_35

    iget-object v0, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v10, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v15, 0x19

    aput v10, v0, v15

    const/4 v0, 0x0

    goto :goto_18

    :cond_35
    invoke-direct {v1, v9}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v0

    :goto_18
    invoke-direct {v1, v12}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v10

    if-ne v6, v14, :cond_37

    if-nez v0, :cond_36

    iget-object v0, v10, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    goto :goto_19

    :cond_36
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v10, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    invoke-virtual {v2, v0}, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->setPostfix(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_1c

    :cond_37
    if-nez v0, :cond_38

    iget-object v0, v10, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    :goto_1a
    move-object v5, v0

    goto :goto_1b

    :cond_38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v10, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :goto_1b
    const/4 v0, 0x0

    const/4 v10, 0x1

    goto :goto_1d

    :cond_39
    const/4 v0, 0x0

    :goto_1c
    const/4 v10, 0x0

    :goto_1d
    if-eqz v11, :cond_3a

    iget-object v15, v1, Lorg/apache/velocity/runtime/parser/Parser;->currentTemplate:Lorg/apache/velocity/Template;

    invoke-virtual {v15}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v3, v7, v15}, Lorg/apache/velocity/runtime/directive/Directive;->checkArgs(Ljava/util/ArrayList;Lorg/apache/velocity/runtime/parser/Token;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_3a
    if-ne v6, v14, :cond_3b

    iget-object v3, v1, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return v0

    :cond_3b
    :try_start_c
    new-instance v6, Lorg/apache/velocity/runtime/parser/node/ASTBlock;

    const/16 v15, 0xe

    invoke-direct {v6, v1, v15}, Lorg/apache/velocity/runtime/parser/node/ASTBlock;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v15, v1, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v15, v6}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_1e
    const/4 v15, 0x1

    :try_start_d
    invoke-virtual {v1, v15}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v4

    iget v4, v4, Lorg/apache/velocity/runtime/parser/Token;->kind:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    const/16 v12, 0x31

    if-eq v4, v12, :cond_3d

    if-eqz v10, :cond_3c

    :try_start_e
    invoke-virtual {v1, v15}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v4

    iget v4, v4, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-ne v4, v9, :cond_3c

    invoke-virtual {v1, v14}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v4

    iget v4, v4, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-eq v4, v12, :cond_3d

    goto :goto_1f

    :catchall_2
    move-exception v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_24

    :cond_3c
    :goto_1f
    invoke-virtual {v1, v10}, Lorg/apache/velocity/runtime/parser/Parser;->Statement(Z)Z

    move-result v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    const/16 v12, 0x1d

    goto :goto_1e

    :cond_3d
    :try_start_f
    iget-object v4, v1, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    const/4 v15, 0x1

    invoke-virtual {v4, v6, v15}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    invoke-virtual {v6, v5}, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->setPrefix(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    invoke-direct {v1, v15}, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_8(I)Z

    move-result v4

    if-eqz v4, :cond_3e

    if-eqz v10, :cond_3e

    invoke-direct {v1, v9}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v4

    iget-object v4, v4, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->setPostfix(Ljava/lang/String;)V

    :cond_3e
    invoke-direct {v1, v12}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v4

    invoke-direct {v1, v14}, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_9(I)Z

    move-result v5

    if-eqz v5, :cond_42

    iget v0, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v8, :cond_3f

    invoke-direct/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_3f
    if-eq v0, v9, :cond_40

    iget-object v0, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v5, v1, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v8, 0x1a

    aput v5, v0, v8

    const/4 v0, 0x0

    :goto_20
    const/16 v5, 0x1d

    goto :goto_21

    :cond_40
    invoke-direct {v1, v9}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v0

    goto :goto_20

    :goto_21
    invoke-direct {v1, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v5

    if-nez v0, :cond_41

    iget-object v0, v5, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    goto :goto_22

    :cond_41
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v5, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_22
    invoke-virtual {v2, v0}, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->setPostfix(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_42
    iget-object v5, v4, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    const/16 v8, 0x23

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-lez v5, :cond_43

    iget-object v4, v4, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->setMorePostfix(Ljava/lang/String;)V

    :cond_43
    iget-object v4, v1, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v13, :cond_44

    const/4 v4, 0x0

    :try_start_12
    invoke-virtual {v2, v4}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/velocity/runtime/parser/node/Node;->getFirstToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v5

    iget-object v5, v5, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    iget-object v6, v1, Lorg/apache/velocity/runtime/parser/Parser;->macroNames:Ljava/util/Map;

    invoke-interface {v6, v5, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :catchall_3
    move-exception v0

    const/4 v5, 0x0

    goto :goto_28

    :cond_44
    const/4 v4, 0x0

    :goto_23
    if-eqz v11, :cond_45

    iget-object v5, v1, Lorg/apache/velocity/runtime/parser/Parser;->currentTemplate:Lorg/apache/velocity/Template;

    invoke-virtual {v5}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v3, v7, v5}, Lorg/apache/velocity/runtime/directive/Directive;->checkArgs(Ljava/util/ArrayList;Lorg/apache/velocity/runtime/parser/Token;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :cond_45
    return v0

    :catchall_4
    move-exception v0

    const/4 v4, 0x0

    const/4 v3, 0x0

    goto :goto_24

    :catchall_5
    move-exception v0

    const/4 v4, 0x0

    const/4 v3, 0x1

    :goto_24
    if-eqz v3, :cond_46

    :try_start_13
    iget-object v5, v1, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v5, v6}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v8, 0x0

    goto :goto_25

    :catchall_6
    move-exception v0

    goto :goto_26

    :cond_46
    iget-object v5, v1, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v5}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->popNode()Lorg/apache/velocity/runtime/parser/node/Node;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    move v8, v3

    :goto_25
    :try_start_14
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-nez v3, :cond_48

    instance-of v3, v0, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v3, :cond_47

    check-cast v0, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v0

    :catchall_7
    move-exception v0

    move v3, v8

    goto :goto_26

    :cond_47
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_48
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    :goto_26
    if-eqz v3, :cond_49

    :try_start_15
    iget-object v3, v1, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v3, v6, v5}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    goto :goto_27

    :catchall_8
    move-exception v0

    goto/16 :goto_9

    :cond_49
    :goto_27
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :goto_28
    if-eqz v5, :cond_4a

    :try_start_16
    iget-object v3, v1, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v6, 0x0

    goto :goto_29

    :catchall_9
    move-exception v0

    goto :goto_2a

    :cond_4a
    iget-object v3, v1, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->popNode()Lorg/apache/velocity/runtime/parser/node/Node;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    move v6, v5

    :goto_29
    :try_start_17
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-nez v3, :cond_4c

    instance-of v3, v0, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v3, :cond_4b

    check-cast v0, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v0

    :catchall_a
    move-exception v0

    move v5, v6

    goto :goto_2a

    :cond_4b
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_4c
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    :goto_2a
    if-eqz v5, :cond_4d

    iget-object v3, v1, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    :cond_4d
    throw v0
.end method

.method public final DirectiveArg()I
    .locals 5

    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_0
    const/16 v2, 0x1f

    if-eq v0, v2, :cond_b

    const/16 v2, 0x36

    const/16 v3, 0x8

    if-eq v0, v2, :cond_a

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_9

    const/16 v2, 0x3f

    if-eq v0, v2, :cond_8

    const/16 v2, 0x41

    if-eq v0, v2, :cond_8

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/4 v2, 0x6

    iget v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v4, v0, v2

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_4(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->IntegerRange()V

    const/16 v0, 0x11

    return v0

    :cond_1
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_2
    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    if-eq v0, v3, :cond_6

    const/16 v2, 0x37

    const/4 v3, 0x7

    if-eq v0, v2, :cond_5

    const/16 v2, 0x20

    if-eq v0, v2, :cond_4

    const/16 v2, 0x21

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->False()V

    const/16 v0, 0x16

    return v0

    :cond_3
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v2, v0, v3

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v0

    :cond_4
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->True()V

    const/16 v0, 0x15

    return v0

    :cond_5
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->FloatingPointLiteral()V

    return v3

    :cond_6
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Map()V

    const/16 v0, 0xf

    return v0

    :cond_7
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->ObjectArray()V

    const/16 v0, 0x10

    return v0

    :cond_8
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Reference()V

    const/16 v0, 0x14

    return v0

    :cond_9
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Word()V

    const/16 v0, 0xb

    return v0

    :cond_a
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->IntegerLiteral()V

    return v3

    :cond_b
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->StringLiteral()V

    const/16 v0, 0x9

    return v0
.end method

.method public final DirectiveAssign()V
    .locals 5

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTDirectiveAssign;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTDirectiveAssign;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Reference()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x0

    :try_start_2
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_1

    instance-of v4, v2, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v4, :cond_0

    check-cast v2, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_0

    :cond_0
    check-cast v2, Ljava/lang/Error;

    throw v2

    :cond_1
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_2
    move-exception v2

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    :cond_2
    throw v2
.end method

.method public final ElseIfStatement(Lorg/apache/velocity/runtime/parser/node/ASTBlock;)Lorg/apache/velocity/runtime/parser/node/ASTBlock;
    .locals 12

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTElseIfStatement;

    const/16 v1, 0x19

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTElseIfStatement;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v3, 0x1

    goto/16 :goto_b

    :cond_0
    :goto_0
    const/16 v5, 0x1c

    if-eq v3, v5, :cond_1

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v6, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v7, 0x46

    aput v6, v3, v7

    goto :goto_1

    :cond_1
    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->setPostfix(Ljava/lang/String;)V

    :goto_1
    const/16 v3, 0x33

    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v6

    :goto_2
    iget v7, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v7, v4, :cond_2

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v7

    :cond_2
    const/16 v8, 0x1d

    if-eq v7, v5, :cond_e

    if-eq v7, v8, :cond_e

    iget-object v7, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v9, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v10, 0x47

    aput v9, v7, v10

    const/16 v7, 0xa

    invoke-direct {p0, v7}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Expression()V

    const/16 v7, 0xb

    invoke-direct {p0, v7}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v7, Lorg/apache/velocity/runtime/parser/node/ASTBlock;

    const/16 v9, 0xe

    invoke-direct {v7, p0, v9}, Lorg/apache/velocity/runtime/parser/node/ASTBlock;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v9, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v9, v7}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x2

    :try_start_1
    invoke-direct {p0, v9}, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_20(I)Z

    move-result v10

    if-eqz v10, :cond_6

    iget v10, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v10, v4, :cond_3

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v10

    goto :goto_3

    :catchall_1
    move-exception p1

    const/4 v3, 0x1

    goto/16 :goto_8

    :cond_3
    :goto_3
    if-eq v10, v5, :cond_4

    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v10, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v11, 0x49

    aput v10, v4, v11

    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v4

    :goto_4
    invoke-direct {p0, v8}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v8

    if-nez v4, :cond_5

    iget-object v4, v8, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    goto :goto_5

    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5
    invoke-virtual {v7, v4}, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->setPrefix(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v8

    iget v8, v8, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-eq v8, v3, :cond_8

    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v8

    iget v8, v8, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    const/16 v10, 0x34

    if-eq v8, v10, :cond_8

    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v8

    iget v8, v8, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    const/16 v11, 0x31

    if-eq v8, v11, :cond_8

    if-eqz v4, :cond_7

    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v8

    iget v8, v8, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-ne v8, v5, :cond_7

    invoke-virtual {p0, v9}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v8

    iget v8, v8, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-eq v8, v3, :cond_8

    invoke-virtual {p0, v9}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v8

    iget v8, v8, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-eq v8, v10, :cond_8

    invoke-virtual {p0, v9}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v8

    iget v8, v8, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-eq v8, v11, :cond_8

    :cond_7
    invoke-virtual {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->Statement(Z)Z

    move-result v4

    goto :goto_6

    :cond_8
    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v7, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-boolean v4, v7, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->endsWithNewline:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v3, v6, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-lez v3, :cond_9

    iget-object v4, v6, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->setMorePostfix(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p1

    const/4 v3, 0x0

    goto :goto_b

    :cond_9
    :goto_7
    return-object v7

    :catchall_3
    move-exception p1

    const/4 v3, 0x0

    :goto_8
    if-eqz v3, :cond_a

    :try_start_5
    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v4, v7}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v3, 0x0

    goto :goto_9

    :catchall_4
    move-exception p1

    goto :goto_a

    :cond_a
    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v4}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->popNode()Lorg/apache/velocity/runtime/parser/node/Node;

    :goto_9
    instance-of v4, p1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_c

    instance-of v4, p1, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v4, :cond_b

    check-cast p1, Lorg/apache/velocity/runtime/parser/ParseException;

    throw p1

    :cond_b
    check-cast p1, Ljava/lang/Error;

    throw p1

    :cond_c
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :goto_a
    if-eqz v3, :cond_d

    :try_start_6
    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v7, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    :cond_d
    throw p1

    :cond_e
    iget v7, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v7, v4, :cond_f

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v7

    :cond_f
    if-eq v7, v5, :cond_11

    if-ne v7, v8, :cond_10

    invoke-direct {p0, v8}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto/16 :goto_2

    :cond_10
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v5, 0x48

    aput v3, p1, v5

    invoke-direct {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance p1, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {p1}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw p1

    :cond_11
    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :goto_b
    if-eqz v3, :cond_12

    :try_start_7
    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v4, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    goto :goto_c

    :catchall_5
    move-exception p1

    goto :goto_d

    :cond_12
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->popNode()Lorg/apache/velocity/runtime/parser/node/Node;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move v2, v3

    :goto_c
    :try_start_8
    instance-of v3, p1, Ljava/lang/RuntimeException;

    if-nez v3, :cond_14

    instance-of v3, p1, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v3, :cond_13

    check-cast p1, Lorg/apache/velocity/runtime/parser/ParseException;

    throw p1

    :catchall_6
    move-exception p1

    move v3, v2

    goto :goto_d

    :cond_13
    check-cast p1, Ljava/lang/Error;

    throw p1

    :cond_14
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :goto_d
    if-eqz v3, :cond_15

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    :cond_15
    throw p1
.end method

.method public final ElseStatement(Lorg/apache/velocity/runtime/parser/node/ASTBlock;)Lorg/apache/velocity/runtime/parser/node/ASTBlock;
    .locals 10

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTElseStatement;

    const/16 v1, 0x18

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTElseStatement;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v3, 0x1

    goto/16 :goto_a

    :cond_0
    :goto_0
    const/16 v5, 0x1c

    if-eq v3, v5, :cond_1

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v6, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v7, 0x44

    aput v6, v3, v7

    goto :goto_1

    :cond_1
    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->setPostfix(Ljava/lang/String;)V

    :goto_1
    const/16 v3, 0x34

    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v3

    new-instance v6, Lorg/apache/velocity/runtime/parser/node/ASTBlock;

    const/16 v7, 0xe

    invoke-direct {v6, p0, v7}, Lorg/apache/velocity/runtime/parser/node/ASTBlock;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v7, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v7, v6}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x2

    :try_start_1
    invoke-direct {p0, v7}, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_19(I)Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v8, v4, :cond_2

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v8

    goto :goto_2

    :catchall_1
    move-exception p1

    const/4 v3, 0x1

    goto/16 :goto_7

    :cond_2
    :goto_2
    if-eq v8, v5, :cond_3

    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v8, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v9, 0x45

    aput v8, v4, v9

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v4

    :goto_3
    const/16 v8, 0x1d

    invoke-direct {p0, v8}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v8

    if-nez v4, :cond_4

    iget-object v4, v8, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    goto :goto_4

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {v6, v4}, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->setPrefix(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v8

    iget v8, v8, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    const/16 v9, 0x31

    if-eq v8, v9, :cond_7

    if-eqz v4, :cond_6

    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v8

    iget v8, v8, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-ne v8, v5, :cond_6

    invoke-virtual {p0, v7}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v8

    iget v8, v8, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-eq v8, v9, :cond_7

    :cond_6
    invoke-virtual {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->Statement(Z)Z

    move-result v4

    goto :goto_5

    :cond_7
    iget-object v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v5, v6, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-boolean v4, v6, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->endsWithNewline:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v4, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v4, v3, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-lez v4, :cond_8

    iget-object v3, v3, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->setMorePostfix(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    const/4 v3, 0x0

    goto :goto_a

    :cond_8
    :goto_6
    return-object v6

    :catchall_3
    move-exception p1

    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_9

    :try_start_5
    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v4, v6}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v3, 0x0

    goto :goto_8

    :catchall_4
    move-exception p1

    goto :goto_9

    :cond_9
    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v4}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->popNode()Lorg/apache/velocity/runtime/parser/node/Node;

    :goto_8
    instance-of v4, p1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_b

    instance-of v4, p1, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v4, :cond_a

    check-cast p1, Lorg/apache/velocity/runtime/parser/ParseException;

    throw p1

    :cond_a
    check-cast p1, Ljava/lang/Error;

    throw p1

    :cond_b
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :goto_9
    if-eqz v3, :cond_c

    :try_start_6
    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v6, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    :cond_c
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_a
    if-eqz v3, :cond_d

    :try_start_7
    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v4, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    goto :goto_b

    :catchall_5
    move-exception p1

    goto :goto_c

    :cond_d
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->popNode()Lorg/apache/velocity/runtime/parser/node/Node;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move v2, v3

    :goto_b
    :try_start_8
    instance-of v3, p1, Ljava/lang/RuntimeException;

    if-nez v3, :cond_f

    instance-of v3, p1, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v3, :cond_e

    check-cast p1, Lorg/apache/velocity/runtime/parser/ParseException;

    throw p1

    :catchall_6
    move-exception p1

    move v3, v2

    goto :goto_c

    :cond_e
    check-cast p1, Ljava/lang/Error;

    throw p1

    :cond_f
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :goto_c
    if-eqz v3, :cond_10

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    :cond_10
    throw p1
.end method

.method public final EqualityExpression()V
    .locals 7

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->RelationalExpression()V

    :goto_0
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_0
    const/16 v2, 0x2e

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v1, 0x52

    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v2, v0, v1

    return-void

    :cond_1
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v0, v3, :cond_7

    if-ne v0, v2, :cond_6

    invoke-direct {p0, v2}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTNENode;

    const/16 v1, 0x20

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTNENode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->RelationalExpression()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0, v6}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_4

    instance-of v2, v1, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v2, :cond_3

    check-cast v1, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_3
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_4
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_2
    move-exception v1

    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_5

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v6}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    :cond_5
    throw v1

    :cond_6
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v2, 0x53

    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v3, v0, v2

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v0

    :cond_7
    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTEQNode;

    const/16 v1, 0x1f

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTEQNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->RelationalExpression()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_4
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_9

    instance-of v2, v1, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v2, :cond_8

    check-cast v1, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v1

    :catchall_4
    move-exception v1

    goto :goto_3

    :cond_8
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_9
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_5
    move-exception v1

    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_a

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v6}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    :cond_a
    throw v1
.end method

.method public final Escape()V
    .locals 8

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTEscape;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTEscape;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x45

    const/4 v4, 0x1

    :try_start_0
    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v3

    add-int/2addr v2, v4

    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_3(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v5, v0, v4}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v3, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    iget v5, v3, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    packed-switch v5, :pswitch_data_0

    const/4 v5, 0x0

    goto :goto_1

    :pswitch_0
    const/4 v5, 0x1

    :goto_1
    iget-object v3, v3, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v6, p0, Lorg/apache/velocity/runtime/parser/Parser;->strictEscape:Z

    if-nez v6, :cond_1

    invoke-virtual {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->isDirective(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/apache/velocity/runtime/parser/Parser;->macroNames:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/apache/velocity/runtime/parser/Parser;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    iget-object v7, p0, Lorg/apache/velocity/runtime/parser/Parser;->currentTemplate:Lorg/apache/velocity/Template;

    invoke-interface {v6, v3, v7}, Lorg/apache/velocity/runtime/RuntimeServices;->isVelocimacro(Ljava/lang/String;Lorg/apache/velocity/Template;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_5

    :cond_1
    :goto_2
    const/4 v5, 0x1

    :cond_2
    const-string v3, ""

    iput-object v3, v0, Lorg/apache/velocity/runtime/parser/node/ASTEscape;->val:Ljava/lang/String;

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lorg/apache/velocity/runtime/parser/node/ASTEscape;->val:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_3

    const-string v7, "\\"

    goto :goto_4

    :cond_3
    const-string v7, "\\\\"

    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/apache/velocity/runtime/parser/node/ASTEscape;->val:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return-void

    :catchall_1
    move-exception v2

    const/4 v1, 0x1

    :goto_5
    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0, v4}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    :cond_5
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final EscapedDirective()V
    .locals 5

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTEscapedDirective;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTEscapedDirective;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/16 v1, 0xd

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :try_start_1
    iget-object v4, v1, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->escapedDirective(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    :cond_0
    throw v1
.end method

.method public final Expression()V
    .locals 5

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTExpression;

    const/16 v1, 0x1b

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTExpression;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->ConditionalOrExpression()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x0

    :try_start_2
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_1

    instance-of v4, v2, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v4, :cond_0

    check-cast v2, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_0

    :cond_0
    check-cast v2, Ljava/lang/Error;

    throw v2

    :cond_1
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_2
    move-exception v2

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    :cond_2
    throw v2
.end method

.method public final False()V
    .locals 4

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTFalse;

    const/16 v1, 0x16

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTFalse;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/16 v1, 0x21

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    throw v1
.end method

.method public final FloatingPointLiteral()V
    .locals 4

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTFloatingPointLiteral;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTFloatingPointLiteral;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/16 v1, 0x37

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    throw v1
.end method

.method public final Identifier()V
    .locals 4

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/16 v1, 0x3f

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    throw v1
.end method

.method public final IfStatement()Z
    .locals 14

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;

    const/16 v1, 0x17

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception v3

    const/4 v4, 0x1

    goto/16 :goto_e

    :cond_0
    :goto_0
    const/16 v5, 0x1c

    if-eq v3, v5, :cond_1

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v6, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v7, 0x3f

    aput v6, v3, v7

    goto :goto_1

    :cond_1
    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;->setPrefix(Ljava/lang/String;)V

    :goto_1
    const/16 v3, 0x32

    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    :goto_2
    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v3, v4, :cond_2

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v3

    :cond_2
    const/16 v6, 0x1d

    if-eq v3, v5, :cond_16

    if-eq v3, v6, :cond_16

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v7, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v8, 0x40

    aput v7, v3, v8

    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Expression()V

    const/16 v3, 0xb

    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v3, Lorg/apache/velocity/runtime/parser/node/ASTBlock;

    const/16 v7, 0xe

    invoke-direct {v3, p0, v7}, Lorg/apache/velocity/runtime/parser/node/ASTBlock;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v7, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v7, v3}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x2

    :try_start_1
    invoke-direct {p0, v7}, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_16(I)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    iget v8, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v8, v4, :cond_3

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v8

    goto :goto_3

    :catchall_1
    move-exception v4

    goto/16 :goto_c

    :cond_3
    :goto_3
    if-eq v8, v5, :cond_4

    iget-object v8, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v10, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v11, 0x42

    aput v10, v8, v11

    move-object v8, v9

    goto :goto_4

    :cond_4
    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v8

    :goto_4
    invoke-direct {p0, v6}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v10

    if-nez v8, :cond_5

    iget-object v8, v10, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    goto :goto_5

    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v8, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v10, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_5
    invoke-virtual {v3, v8}, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->setPrefix(Ljava/lang/String;)V

    const/4 v8, 0x1

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v10

    iget v10, v10, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    const/16 v11, 0x31

    const/16 v12, 0x34

    const/16 v13, 0x33

    if-eq v10, v13, :cond_8

    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v10

    iget v10, v10, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-eq v10, v12, :cond_8

    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v10

    iget v10, v10, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-eq v10, v11, :cond_8

    if-eqz v8, :cond_7

    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v10

    iget v10, v10, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-ne v10, v5, :cond_7

    invoke-virtual {p0, v7}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v10

    iget v10, v10, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-eq v10, v13, :cond_8

    invoke-virtual {p0, v7}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v10

    iget v10, v10, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-eq v10, v12, :cond_8

    invoke-virtual {p0, v7}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v10

    iget v10, v10, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-eq v10, v11, :cond_8

    :cond_7
    invoke-virtual {p0, v8}, Lorg/apache/velocity/runtime/parser/Parser;->Statement(Z)Z

    move-result v8

    goto :goto_6

    :cond_8
    iget-object v10, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v10, v3, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v10

    iget v10, v10, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-eq v10, v13, :cond_9

    if-eqz v8, :cond_a

    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v10

    iget v10, v10, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-ne v10, v5, :cond_a

    invoke-virtual {p0, v7}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v10

    iget v10, v10, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-ne v10, v13, :cond_a

    :cond_9
    :goto_7
    invoke-virtual {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->ElseIfStatement(Lorg/apache/velocity/runtime/parser/node/ASTBlock;)Lorg/apache/velocity/runtime/parser/node/ASTBlock;

    move-result-object v3

    iget-boolean v8, v3, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->endsWithNewline:Z

    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v10

    iget v10, v10, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-eq v10, v13, :cond_9

    if-eqz v8, :cond_a

    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v10

    iget v10, v10, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-ne v10, v5, :cond_a

    invoke-virtual {p0, v7}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v10

    iget v10, v10, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-ne v10, v13, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v10

    iget v10, v10, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-eq v10, v12, :cond_b

    if-eqz v8, :cond_c

    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v10

    iget v10, v10, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-ne v10, v5, :cond_c

    invoke-virtual {p0, v7}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v10

    iget v10, v10, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-ne v10, v12, :cond_c

    :cond_b
    invoke-virtual {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->ElseStatement(Lorg/apache/velocity/runtime/parser/node/ASTBlock;)Lorg/apache/velocity/runtime/parser/node/ASTBlock;

    move-result-object v3

    iget-boolean v8, v3, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->endsWithNewline:Z

    :cond_c
    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_17(I)Z

    move-result v10

    if-eqz v10, :cond_d

    if-eqz v8, :cond_d

    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v8

    iget-object v8, v8, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->setPostfix(Ljava/lang/String;)V

    :cond_d
    invoke-direct {p0, v11}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v8

    invoke-direct {p0, v7}, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_18(I)Z

    move-result v7

    if-eqz v7, :cond_11

    iget v7, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v7, v4, :cond_e

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v7

    :cond_e
    if-eq v7, v5, :cond_f

    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v7, 0x43

    aput v5, v4, v7

    goto :goto_8

    :cond_f
    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v9

    :goto_8
    invoke-direct {p0, v6}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v4

    if-nez v9, :cond_10

    iget-object v4, v4, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    goto :goto_9

    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v9, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_9
    invoke-virtual {v0, v4}, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;->setPostfix(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_a

    :cond_11
    const/4 v4, 0x0

    :goto_a
    iget-object v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v5, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v5, v8, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    const/16 v6, 0x23

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-lez v5, :cond_12

    iget-object v6, v8, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v6, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->setMorePostfix(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception v3

    const/4 v4, 0x0

    goto :goto_e

    :cond_12
    :goto_b
    return v4

    :goto_c
    :try_start_4
    iget-object v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v5, v3}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    instance-of v5, v4, Ljava/lang/RuntimeException;

    if-nez v5, :cond_14

    instance-of v5, v4, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v5, :cond_13

    check-cast v4, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v4

    :catchall_3
    move-exception v4

    const/4 v5, 0x0

    goto :goto_d

    :cond_13
    check-cast v4, Ljava/lang/Error;

    throw v4

    :cond_14
    check-cast v4, Ljava/lang/RuntimeException;

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_4
    move-exception v4

    const/4 v5, 0x1

    :goto_d
    if-eqz v5, :cond_15

    :try_start_6
    iget-object v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v5, v3, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    :cond_15
    throw v4

    :cond_16
    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v3, v4, :cond_17

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v3

    :cond_17
    if-eq v3, v5, :cond_19

    if-ne v3, v6, :cond_18

    invoke-direct {p0, v6}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto/16 :goto_2

    :cond_18
    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v6, 0x41

    aput v5, v3, v6

    invoke-direct {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v3, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v3

    :cond_19
    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :goto_e
    if-eqz v4, :cond_1a

    :try_start_7
    iget-object v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v5, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    goto :goto_f

    :catchall_5
    move-exception v2

    goto :goto_10

    :cond_1a
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->popNode()Lorg/apache/velocity/runtime/parser/node/Node;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move v2, v4

    :goto_f
    :try_start_8
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-nez v4, :cond_1c

    instance-of v4, v3, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v4, :cond_1b

    check-cast v3, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v3

    :catchall_6
    move-exception v3

    move v4, v2

    move-object v2, v3

    goto :goto_10

    :cond_1b
    check-cast v3, Ljava/lang/Error;

    throw v3

    :cond_1c
    check-cast v3, Ljava/lang/RuntimeException;

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :goto_10
    if-eqz v4, :cond_1d

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    :cond_1d
    throw v2
.end method

.method public final Index()V
    .locals 5

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTIndex;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTIndex;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->IndexParameter()V

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x0

    :try_start_2
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_1

    instance-of v4, v2, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v4, :cond_0

    check-cast v2, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_0

    :cond_0
    check-cast v2, Ljava/lang/Error;

    throw v2

    :cond_1
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_2
    move-exception v2

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    :cond_2
    throw v2
.end method

.method public final IndexParameter()V
    .locals 6

    :goto_0
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_0
    const/16 v2, 0x1d

    const/16 v3, 0x1c

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v4, 0x2b

    iget v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v5, v0, v4

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Expression()V

    :goto_1
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_1
    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v1, 0x2d

    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v2, v0, v1

    return-void

    :cond_2
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_3
    if-eq v0, v3, :cond_5

    if-ne v0, v2, :cond_4

    invoke-direct {p0, v2}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v2, 0x2e

    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v3, v0, v2

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v0

    :cond_5
    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_1

    :cond_6
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_7

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_7
    if-eq v0, v3, :cond_9

    if-ne v0, v2, :cond_8

    invoke-direct {p0, v2}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v2, 0x2c

    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v3, v0, v2

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v0

    :cond_9
    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_0
.end method

.method public final IntegerLiteral()V
    .locals 4

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTIntegerLiteral;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTIntegerLiteral;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/16 v1, 0x36

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    throw v1
.end method

.method public final IntegerRange()V
    .locals 11

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTIntegerRange;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTIntegerRange;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    :goto_0
    iget v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_7

    :cond_0
    :goto_1
    const/16 v4, 0x1d

    const/16 v5, 0x1c

    if-eq v1, v5, :cond_18

    if-eq v1, v4, :cond_18

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v6, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v7, 0x21

    aput v6, v1, v7

    iget v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v1, v3, :cond_1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v1

    :cond_1
    const/16 v6, 0x41

    const/16 v7, 0x3f

    const/16 v8, 0x36

    if-eq v1, v8, :cond_4

    if-eq v1, v7, :cond_3

    if-ne v1, v6, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v5, 0x23

    aput v4, v1, v5

    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v1, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v1

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Reference()V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->IntegerLiteral()V

    :goto_3
    iget v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v1, v3, :cond_5

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v1

    :cond_5
    if-eq v1, v5, :cond_14

    if-eq v1, v4, :cond_14

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v9, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v10, 0x24

    aput v9, v1, v10

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    :goto_4
    iget v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v1, v3, :cond_6

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v1

    :cond_6
    if-eq v1, v5, :cond_10

    if-eq v1, v4, :cond_10

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v9, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v10, 0x26

    aput v9, v1, v10

    iget v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v1, v3, :cond_7

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v1

    :cond_7
    if-eq v1, v8, :cond_a

    if-eq v1, v7, :cond_9

    if-ne v1, v6, :cond_8

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v5, 0x28

    aput v4, v1, v5

    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v1, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v1

    :cond_9
    :goto_5
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Reference()V

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->IntegerLiteral()V

    :goto_6
    iget v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v1, v3, :cond_b

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v1

    :cond_b
    if-eq v1, v5, :cond_c

    if-eq v1, v4, :cond_c

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v4, 0x29

    aput v3, v1, v4

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return-void

    :cond_c
    :try_start_1
    iget v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v1, v3, :cond_d

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v1

    :cond_d
    if-eq v1, v5, :cond_f

    if-ne v1, v4, :cond_e

    invoke-direct {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_6

    :cond_e
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v5, 0x2a

    aput v4, v1, v5

    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v1, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v1

    :cond_f
    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_6

    :cond_10
    iget v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v1, v3, :cond_11

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v1

    :cond_11
    if-eq v1, v5, :cond_13

    if-ne v1, v4, :cond_12

    invoke-direct {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto/16 :goto_4

    :cond_12
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v5, 0x27

    aput v4, v1, v5

    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v1, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v1

    :cond_13
    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto/16 :goto_4

    :cond_14
    iget v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v1, v3, :cond_15

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v1

    :cond_15
    if-eq v1, v5, :cond_17

    if-ne v1, v4, :cond_16

    invoke-direct {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto/16 :goto_3

    :cond_16
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v5, 0x25

    aput v4, v1, v5

    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v1, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v1

    :cond_17
    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto/16 :goto_3

    :cond_18
    iget v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v1, v3, :cond_19

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v1

    :cond_19
    if-eq v1, v5, :cond_1b

    if-ne v1, v4, :cond_1a

    invoke-direct {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto/16 :goto_0

    :cond_1a
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v5, 0x22

    aput v4, v1, v5

    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v1, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v1

    :cond_1b
    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :goto_7
    :try_start_2
    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v3, 0x0

    :try_start_3
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_1d

    instance-of v4, v1, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v4, :cond_1c

    check-cast v1, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_8

    :cond_1c
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_1d
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_2
    move-exception v1

    const/4 v3, 0x1

    :goto_8
    if-eqz v3, :cond_1e

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    :cond_1e
    throw v1
.end method

.method public final Map()V
    .locals 6

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTMap;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTMap;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/16 v1, 0x8

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_10(I)Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Parameter()V

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    :goto_0
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Parameter()V

    iget v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v4, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v4

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_5

    :cond_0
    :goto_1
    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v5, 0x1b

    aput v4, v1, v5

    goto :goto_3

    :cond_1
    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Parameter()V

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_0

    :cond_2
    :goto_2
    iget v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v1, v3, :cond_3

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v1

    :cond_3
    const/16 v4, 0x1d

    const/16 v5, 0x1c

    if-eq v1, v5, :cond_7

    if-eq v1, v4, :cond_7

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v4, v1, v5

    :goto_3
    iget v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v1, v3, :cond_4

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v1

    :cond_4
    const/16 v4, 0x9

    if-eq v1, v4, :cond_5

    const/16 v4, 0x42

    if-ne v1, v4, :cond_6

    :cond_5
    invoke-direct {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v5, 0x1e

    aput v4, v1, v5

    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v1, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return-void

    :cond_7
    :try_start_1
    iget v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v1, v3, :cond_8

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v1

    :cond_8
    if-eq v1, v5, :cond_a

    if-ne v1, v4, :cond_9

    invoke-direct {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v5, v1, v4

    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v1, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v1

    :cond_a
    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_5
    :try_start_2
    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v3, 0x0

    :try_start_3
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_c

    instance-of v4, v1, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v4, :cond_b

    check-cast v1, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_6

    :cond_b
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_c
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_2
    move-exception v1

    const/4 v3, 0x1

    :goto_6
    if-eqz v3, :cond_d

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    :cond_d
    throw v1
.end method

.method public final Method()V
    .locals 6

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTMethod;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Identifier()V

    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_3

    :cond_0
    :goto_0
    const/4 v5, 0x3

    if-eq v3, v5, :cond_3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_3

    if-eq v3, v2, :cond_3

    const/16 v2, 0x2f

    if-eq v3, v2, :cond_3

    const/16 v2, 0x3f

    if-eq v3, v2, :cond_3

    const/16 v2, 0x41

    if-eq v3, v2, :cond_3

    const/16 v2, 0x1c

    if-eq v3, v2, :cond_3

    const/16 v2, 0x1d

    if-eq v3, v2, :cond_3

    const/16 v2, 0x36

    if-eq v3, v2, :cond_3

    const/16 v5, 0x37

    if-eq v3, v5, :cond_3

    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v4, v3, v2

    goto :goto_2

    :goto_1
    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v2, v4, :cond_1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v2

    :cond_1
    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v4, 0x35

    aput v3, v2, v4

    :goto_2
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return-void

    :cond_2
    :try_start_1
    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    :cond_3
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Expression()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    :try_start_2
    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v3, 0x0

    :try_start_3
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_5

    instance-of v4, v2, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v4, :cond_4

    check-cast v2, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_4

    :cond_4
    check-cast v2, Ljava/lang/Error;

    throw v2

    :cond_5
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_2
    move-exception v2

    const/4 v3, 0x1

    :goto_4
    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    :cond_6
    throw v2

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final MultiplicativeExpression()V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->UnaryExpression()V

    :goto_0
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v1, 0x58

    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v2, v0, v1

    return-void

    :pswitch_0
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v2, 0x59

    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v3, v0, v2

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v0

    :pswitch_1
    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTModNode;

    const/16 v1, 0x29

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTModNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->UnaryExpression()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0, v4}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    iget-object v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v5, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-nez v3, :cond_3

    instance-of v3, v1, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v3, :cond_2

    check-cast v1, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_2
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_3
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_2
    move-exception v1

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v4}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    :cond_4
    throw v1

    :pswitch_2
    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTDivNode;

    const/16 v1, 0x28

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTDivNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->UnaryExpression()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_4
    iget-object v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v5, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-nez v3, :cond_6

    instance-of v3, v1, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v3, :cond_5

    check-cast v1, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v1

    :catchall_4
    move-exception v1

    goto :goto_3

    :cond_5
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_6
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_5
    move-exception v1

    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v4}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    :cond_7
    throw v1

    :pswitch_3
    const/16 v0, 0x24

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTMulNode;

    const/16 v1, 0x27

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTMulNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    :try_start_6
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->UnaryExpression()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_1

    :catchall_6
    move-exception v1

    :try_start_7
    iget-object v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v5, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    :try_start_8
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-nez v3, :cond_9

    instance-of v3, v1, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v3, :cond_8

    check-cast v1, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v1

    :catchall_7
    move-exception v1

    goto :goto_4

    :cond_8
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_9
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :catchall_8
    move-exception v1

    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v4}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    :cond_a
    throw v1

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x24
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final ObjectArray()V
    .locals 5

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTObjectArray;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTObjectArray;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    if-eq v3, v1, :cond_3

    const/16 v1, 0x8

    if-eq v3, v1, :cond_3

    const/16 v1, 0x3f

    if-eq v3, v1, :cond_3

    const/16 v1, 0x41

    if-eq v3, v1, :cond_3

    const/16 v1, 0x1c

    if-eq v3, v1, :cond_3

    const/16 v1, 0x1d

    if-eq v3, v1, :cond_3

    const/16 v1, 0x36

    if-eq v3, v1, :cond_3

    const/16 v1, 0x37

    if-eq v3, v1, :cond_3

    packed-switch v3, :pswitch_data_0

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v4, 0x20

    aput v3, v1, v4

    goto :goto_2

    :goto_1
    iget v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v1, v4, :cond_1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v1

    :cond_1
    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v4, 0x1f

    aput v3, v1, v4

    :goto_2
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return-void

    :cond_2
    :try_start_1
    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    :cond_3
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Parameter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    :try_start_2
    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v3, 0x0

    :try_start_3
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_5

    instance-of v4, v1, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v4, :cond_4

    check-cast v1, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_4

    :cond_4
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_5
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_2
    move-exception v1

    const/4 v3, 0x1

    :goto_4
    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    :cond_6
    throw v1

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final Parameter()V
    .locals 6

    :goto_0
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_0
    const/16 v2, 0x1d

    const/16 v3, 0x1c

    if-eq v0, v3, :cond_11

    if-eq v0, v2, :cond_11

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v4, 0x2f

    iget v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v5, v0, v4

    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_1
    const/16 v4, 0x1f

    if-eq v0, v4, :cond_b

    const/16 v4, 0x36

    if-eq v0, v4, :cond_a

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v4, 0x31

    iget v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v5, v0, v4

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_11(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->IntegerRange()V

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_3
    const/4 v4, 0x3

    if-eq v0, v4, :cond_9

    const/16 v4, 0x8

    if-eq v0, v4, :cond_8

    const/16 v4, 0x37

    if-eq v0, v4, :cond_7

    const/16 v4, 0x3f

    if-eq v0, v4, :cond_6

    const/16 v4, 0x41

    if-eq v0, v4, :cond_6

    const/16 v4, 0x20

    if-eq v0, v4, :cond_5

    const/16 v4, 0x21

    if-ne v0, v4, :cond_4

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->False()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v2, 0x32

    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v3, v0, v2

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v0

    :cond_5
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->True()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Reference()V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->FloatingPointLiteral()V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Map()V

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->ObjectArray()V

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->IntegerLiteral()V

    goto :goto_1

    :cond_b
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->StringLiteral()V

    :goto_1
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_c

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_c
    if-eq v0, v3, :cond_d

    if-eq v0, v2, :cond_d

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v1, 0x33

    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v2, v0, v1

    return-void

    :cond_d
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_e

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_e
    if-eq v0, v3, :cond_10

    if-ne v0, v2, :cond_f

    invoke-direct {p0, v2}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_1

    :cond_f
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v2, 0x34

    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v3, v0, v2

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v0

    :cond_10
    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_1

    :cond_11
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_12

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_12
    if-eq v0, v3, :cond_14

    if-ne v0, v2, :cond_13

    invoke-direct {p0, v2}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v2, 0x30

    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v3, v0, v2

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v0

    :cond_14
    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto/16 :goto_0
.end method

.method public final PrimaryExpression()V
    .locals 6

    :goto_0
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_0
    const/16 v2, 0x1d

    const/16 v3, 0x1c

    if-eq v0, v3, :cond_12

    if-eq v0, v2, :cond_12

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v4, 0x5d

    iget v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v5, v0, v4

    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_1
    const/16 v4, 0x1f

    if-eq v0, v4, :cond_c

    const/16 v4, 0x36

    if-eq v0, v4, :cond_b

    const/16 v4, 0x3f

    if-eq v0, v4, :cond_a

    const/16 v4, 0x41

    if-eq v0, v4, :cond_a

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v4, 0x5f

    iget v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v5, v0, v4

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_22(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->IntegerRange()V

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_3
    const/4 v4, 0x3

    if-eq v0, v4, :cond_9

    const/16 v4, 0x8

    if-eq v0, v4, :cond_8

    const/16 v4, 0xa

    if-eq v0, v4, :cond_7

    const/16 v4, 0x37

    if-eq v0, v4, :cond_6

    const/16 v4, 0x20

    if-eq v0, v4, :cond_5

    const/16 v4, 0x21

    if-ne v0, v4, :cond_4

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->False()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v2, 0x60

    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v3, v0, v2

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v0

    :cond_5
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->True()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->FloatingPointLiteral()V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Expression()V

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Map()V

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->ObjectArray()V

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Reference()V

    goto :goto_1

    :cond_b
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->IntegerLiteral()V

    goto :goto_1

    :cond_c
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->StringLiteral()V

    :goto_1
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_d

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_d
    if-eq v0, v3, :cond_e

    if-eq v0, v2, :cond_e

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v1, 0x61

    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v2, v0, v1

    return-void

    :cond_e
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_f

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_f
    if-eq v0, v3, :cond_11

    if-ne v0, v2, :cond_10

    invoke-direct {p0, v2}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_1

    :cond_10
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v2, 0x62

    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v3, v0, v2

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v0

    :cond_11
    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_1

    :cond_12
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_13

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_13
    if-eq v0, v3, :cond_15

    if-ne v0, v2, :cond_14

    invoke-direct {p0, v2}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v2, 0x5e

    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v3, v0, v2

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v0

    :cond_15
    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto/16 :goto_0
.end method

.method public ReInit(Lorg/apache/velocity/runtime/parser/CharStream;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token_source:Lorg/apache/velocity/runtime/parser/ParserTokenManager;

    invoke-virtual {v0, p1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->ReInit(Lorg/apache/velocity/runtime/parser/CharStream;)V

    new-instance p1, Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p1}, Lorg/apache/velocity/runtime/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lookingAhead:Z

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->reset()V

    iput v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x63

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    aput p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_rtns:[Lorg/apache/velocity/runtime/parser/Parser$JJCalls;

    array-length v1, p1

    if-ge v0, v1, :cond_1

    new-instance v1, Lorg/apache/velocity/runtime/parser/Parser$JJCalls;

    invoke-direct {v1}, Lorg/apache/velocity/runtime/parser/Parser$JJCalls;-><init>()V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public ReInit(Lorg/apache/velocity/runtime/parser/ParserTokenManager;)V
    .locals 3

    .line 2
    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->token_source:Lorg/apache/velocity/runtime/parser/ParserTokenManager;

    new-instance p1, Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p1}, Lorg/apache/velocity/runtime/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x63

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    aput p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_rtns:[Lorg/apache/velocity/runtime/parser/Parser$JJCalls;

    array-length v1, p1

    if-ge v0, v1, :cond_1

    new-instance v1, Lorg/apache/velocity/runtime/parser/Parser$JJCalls;

    invoke-direct {v1}, Lorg/apache/velocity/runtime/parser/Parser$JJCalls;-><init>()V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final Reference()V
    .locals 10

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTReference;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTReference;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v1, 0x1

    :try_start_0
    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception v2

    goto/16 :goto_8

    :cond_0
    :goto_0
    const/4 v4, 0x3

    const/16 v5, 0x40

    const/4 v6, 0x2

    const/16 v7, 0x3f

    if-eq v2, v7, :cond_a

    const/16 v8, 0x41

    if-ne v2, v8, :cond_9

    invoke-direct {p0, v8}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0, v7}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    :goto_1
    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v2

    :cond_1
    if-eq v2, v1, :cond_8

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v8, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v9, 0x3a

    aput v8, v2, v9

    :goto_2
    invoke-direct {p0, v6}, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_14(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_15(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Method()V

    goto :goto_3

    :cond_2
    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v2

    :cond_3
    if-ne v2, v7, :cond_6

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Identifier()V

    :goto_3
    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v2, v3, :cond_4

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v2

    :cond_4
    if-eq v2, v1, :cond_5

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v8, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v9, 0x3c

    aput v8, v2, v9

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Index()V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v5, 0x3b

    aput v4, v2, v5

    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v2, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v2

    :cond_7
    const/16 v2, 0x42

    invoke-direct {p0, v2}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto/16 :goto_7

    :cond_8
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Index()V

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v5, 0x3d

    aput v4, v2, v5

    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v2, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v2

    :cond_a
    invoke-direct {p0, v7}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    :goto_4
    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v2, v3, :cond_b

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v2

    :cond_b
    if-eq v2, v1, :cond_12

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v8, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v9, 0x37

    aput v8, v2, v9

    :goto_5
    invoke-direct {p0, v6}, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_12(I)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_13(I)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Method()V

    goto :goto_6

    :cond_c
    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v2, v3, :cond_d

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v2

    :cond_d
    if-ne v2, v7, :cond_10

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Identifier()V

    :goto_6
    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v2, v3, :cond_e

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v2

    :cond_e
    if-eq v2, v1, :cond_f

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v8, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v9, 0x39

    aput v8, v2, v9

    goto :goto_5

    :cond_f
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Index()V

    goto :goto_6

    :cond_10
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v5, 0x38

    aput v4, v2, v5

    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v2, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_11
    :goto_7
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return-void

    :cond_12
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Index()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_8
    :try_start_2
    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v3, 0x0

    :try_start_3
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_14

    instance-of v4, v2, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v4, :cond_13

    check-cast v2, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_9

    :cond_13
    check-cast v2, Ljava/lang/Error;

    throw v2

    :cond_14
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_2
    move-exception v2

    const/4 v3, 0x1

    :goto_9
    if-eqz v3, :cond_15

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    :cond_15
    throw v2
.end method

.method public final RelationalExpression()V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->AdditiveExpression()V

    :goto_0
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v1, 0x54

    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v2, v0, v1

    return-void

    :pswitch_0
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v2, 0x55

    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v3, v0, v2

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v0

    :pswitch_1
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTGENode;

    const/16 v1, 0x24

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTGENode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->AdditiveExpression()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0, v4}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    iget-object v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v5, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-nez v3, :cond_3

    instance-of v3, v1, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v3, :cond_2

    check-cast v1, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_2
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_3
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_2
    move-exception v1

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v4}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    :cond_4
    throw v1

    :pswitch_2
    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTGTNode;

    const/16 v1, 0x22

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTGTNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->AdditiveExpression()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_4
    iget-object v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v5, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-nez v3, :cond_6

    instance-of v3, v1, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v3, :cond_5

    check-cast v1, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v1

    :catchall_4
    move-exception v1

    goto :goto_3

    :cond_5
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_6
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_5
    move-exception v1

    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v4}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    :cond_7
    throw v1

    :pswitch_3
    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTLENode;

    const/16 v1, 0x23

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTLENode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    :try_start_6
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->AdditiveExpression()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_1

    :catchall_6
    move-exception v1

    :try_start_7
    iget-object v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v5, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    :try_start_8
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-nez v3, :cond_9

    instance-of v3, v1, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v3, :cond_8

    check-cast v1, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v1

    :catchall_7
    move-exception v1

    goto :goto_4

    :cond_8
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_9
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :catchall_8
    move-exception v1

    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v4}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    :cond_a
    throw v1

    :pswitch_4
    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTLTNode;

    const/16 v1, 0x21

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTLTNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    :try_start_9
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->AdditiveExpression()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto/16 :goto_1

    :catchall_9
    move-exception v1

    :try_start_a
    iget-object v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v5, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    :try_start_b
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-nez v3, :cond_c

    instance-of v3, v1, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v3, :cond_b

    check-cast v1, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v1

    :catchall_a
    move-exception v1

    goto :goto_5

    :cond_b
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_c
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    :catchall_b
    move-exception v1

    const/4 v2, 0x1

    :goto_5
    if-eqz v2, :cond_d

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v4}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    :cond_d
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final SetDirective()Z
    .locals 9

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;

    const/16 v1, 0x1a

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception v3

    goto/16 :goto_7

    :cond_0
    :goto_0
    const/16 v5, 0x1c

    if-eq v3, v5, :cond_1

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v6, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v7, 0x4a

    aput v6, v3, v7

    goto :goto_1

    :cond_1
    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->setPrefix(Ljava/lang/String;)V

    :goto_1
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    :goto_2
    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v3, v4, :cond_2

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v3

    :cond_2
    const/16 v6, 0x1d

    if-eq v3, v5, :cond_c

    if-eq v3, v6, :cond_c

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v7, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v8, 0x4b

    aput v7, v3, v8

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Reference()V

    :goto_3
    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v3, v4, :cond_3

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v3

    :cond_3
    if-eq v3, v5, :cond_8

    if-eq v3, v6, :cond_8

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v7, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v8, 0x4d

    aput v7, v3, v8

    const/16 v3, 0x30

    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Expression()V

    const/16 v3, 0xb

    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->token_source:Lorg/apache/velocity/runtime/parser/ParserTokenManager;

    iput-boolean v2, v3, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->inSet:Z

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_21(I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v3, v4, :cond_4

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v3

    :cond_4
    if-eq v3, v5, :cond_5

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v5, 0x4f

    aput v4, v3, v5

    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v3

    :goto_4
    invoke-direct {p0, v6}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v4

    if-nez v3, :cond_6

    iget-object v3, v4, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    goto :goto_5

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v0, v3}, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->setPostfix(Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v4, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return v3

    :cond_8
    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v3, v4, :cond_9

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v3

    :cond_9
    if-eq v3, v5, :cond_b

    if-ne v3, v6, :cond_a

    invoke-direct {p0, v6}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_3

    :cond_a
    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v6, 0x4e

    aput v5, v3, v6

    invoke-direct {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v3, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v3

    :cond_b
    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto/16 :goto_3

    :cond_c
    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v3, v4, :cond_d

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v3

    :cond_d
    if-eq v3, v5, :cond_f

    if-ne v3, v6, :cond_e

    invoke-direct {p0, v6}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto/16 :goto_2

    :cond_e
    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v6, 0x4c

    aput v5, v3, v6

    invoke-direct {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v3, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v3

    :cond_f
    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :goto_7
    :try_start_1
    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v4, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-nez v4, :cond_11

    instance-of v4, v3, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v4, :cond_10

    check-cast v3, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v3

    :catchall_1
    move-exception v3

    goto :goto_8

    :cond_10
    check-cast v3, Ljava/lang/Error;

    throw v3

    :cond_11
    check-cast v3, Ljava/lang/RuntimeException;

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_2
    move-exception v3

    const/4 v2, 0x1

    :goto_8
    if-eqz v2, :cond_12

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    :cond_12
    throw v3
.end method

.method public final Statement(Z)Z
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v1

    iget v1, v1, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    const/16 v2, 0x32

    if-eq v1, v2, :cond_10

    const/16 v1, 0x1c

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v4

    iget v4, v4, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-ne v4, v1, :cond_0

    invoke-virtual {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v4

    iget v4, v4, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-ne v4, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_1(I)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Reference()V

    return v4

    :cond_1
    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_2_2(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Comment()V

    return v4

    :cond_2
    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_3

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v2

    :cond_3
    const/16 v6, 0x19

    if-eq v2, v6, :cond_f

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v6, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v6, v2, v0

    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v2

    iget v2, v2, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    const/16 v6, 0xe

    if-eq v2, v6, :cond_e

    if-eqz p1, :cond_4

    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v2

    iget v2, v2, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-ne v2, v1, :cond_4

    invoke-virtual {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v2

    iget v2, v2, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-ne v2, v6, :cond_4

    goto/16 :goto_4

    :cond_4
    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v2, v5, :cond_5

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v2

    :cond_5
    const/16 v6, 0xd

    if-eq v2, v6, :cond_d

    const/16 v6, 0x45

    if-eq v2, v6, :cond_c

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v6, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v6, v2, v3

    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v2

    iget v2, v2, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    const/16 v6, 0x3b

    if-eq v2, v6, :cond_b

    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v2

    iget v2, v2, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    const/16 v7, 0x3c

    if-eq v2, v7, :cond_b

    if-eqz p1, :cond_6

    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object p1

    iget p1, p1, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-ne p1, v1, :cond_6

    invoke-virtual {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object p1

    iget p1, p1, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-eq p1, v6, :cond_b

    invoke-virtual {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object p1

    iget p1, p1, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-ne p1, v7, :cond_6

    goto/16 :goto_3

    :cond_6
    iget p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne p1, v5, :cond_7

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result p1

    :cond_7
    const/16 v2, 0xa

    if-eq p1, v2, :cond_a

    const/16 v2, 0xb

    if-eq p1, v2, :cond_a

    const/16 v2, 0x36

    if-eq p1, v2, :cond_a

    const/16 v2, 0x37

    if-eq p1, v2, :cond_a

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/4 v0, 0x3

    iget v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v1, p1, v0

    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance p1, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {p1}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw p1

    :pswitch_0
    new-instance p1, Lorg/apache/velocity/runtime/parser/node/ASTText;

    invoke-direct {p1, p0, v3}, Lorg/apache/velocity/runtime/parser/node/ASTText;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, p1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/16 v1, 0x48

    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    iget v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v1, v5, :cond_8

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_8
    :goto_0
    const/16 v2, 0x47

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v2, v1, v4

    goto :goto_1

    :cond_9
    invoke-direct {p0, v2}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    :goto_1
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, p1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :goto_2
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, p1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    throw v1

    :pswitch_1
    new-instance p1, Lorg/apache/velocity/runtime/parser/node/ASTText;

    invoke-direct {p1, p0, v3}, Lorg/apache/velocity/runtime/parser/node/ASTText;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, p1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/16 v1, 0x1e

    :try_start_1
    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, p1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return v0

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, p1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    throw v1

    :pswitch_2
    new-instance p1, Lorg/apache/velocity/runtime/parser/node/ASTText;

    invoke-direct {p1, p0, v3}, Lorg/apache/velocity/runtime/parser/node/ASTText;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, p1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/16 v1, 0x1d

    :try_start_2
    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, p1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return v0

    :catchall_2
    move-exception v1

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, p1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    throw v1

    :pswitch_3
    new-instance p1, Lorg/apache/velocity/runtime/parser/node/ASTText;

    invoke-direct {p1, p0, v3}, Lorg/apache/velocity/runtime/parser/node/ASTText;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, p1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    :try_start_3
    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, p1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return v4

    :catchall_3
    move-exception v1

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, p1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    throw v1

    :cond_a
    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Text()Z

    move-result p1

    return p1

    :cond_b
    :goto_3
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Directive()Z

    move-result p1

    return p1

    :cond_c
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Escape()V

    return v4

    :cond_d
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->EscapedDirective()V

    return v4

    :cond_e
    :goto_4
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->SetDirective()Z

    move-result p1

    return p1

    :cond_f
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->Textblock()V

    return v4

    :cond_10
    :goto_5
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->IfStatement()Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x46
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final StringLiteral()V
    .locals 4

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/16 v1, 0x1f

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    throw v1
.end method

.method public final Text()Z
    .locals 6

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTText;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTText;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v1, 0x1

    :try_start_0
    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception v2

    goto/16 :goto_1

    :cond_0
    :goto_0
    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_8

    const/16 v4, 0xb

    if-eq v2, v4, :cond_7

    const/16 v4, 0x1f

    if-eq v2, v4, :cond_6

    const/16 v4, 0x49

    if-eq v2, v4, :cond_5

    const/16 v4, 0x36

    if-eq v2, v4, :cond_4

    const/16 v4, 0x37

    if-eq v2, v4, :cond_3

    const/16 v4, 0x46

    if-eq v2, v4, :cond_2

    const/16 v4, 0x47

    if-eq v2, v4, :cond_1

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    iget v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    const/16 v5, 0x3e

    aput v4, v2, v5

    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v2, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v2

    :pswitch_0
    const/16 v2, 0x42

    invoke-direct {p0, v2}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return v5

    :pswitch_1
    const/16 v2, 0x41

    invoke-direct {p0, v2}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return v5

    :pswitch_2
    const/16 v2, 0x40

    invoke-direct {p0, v2}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return v5

    :cond_1
    invoke-direct {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return v1

    :cond_2
    invoke-direct {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return v5

    :cond_3
    invoke-direct {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return v5

    :cond_4
    invoke-direct {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return v5

    :cond_5
    invoke-direct {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return v5

    :cond_6
    invoke-direct {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return v5

    :cond_7
    invoke-direct {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return v5

    :cond_8
    invoke-direct {p0, v4}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v5

    :goto_1
    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final Textblock()V
    .locals 4

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTTextblock;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTTextblock;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/16 v1, 0x19

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    throw v1
.end method

.method public final True()V
    .locals 4

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTTrue;

    const/16 v1, 0x15

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTTrue;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/16 v1, 0x20

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    throw v1
.end method

.method public final UnaryExpression()V
    .locals 7

    :goto_0
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_0
    const/16 v2, 0x1d

    const/16 v3, 0x1c

    if-eq v0, v3, :cond_a

    if-eq v0, v2, :cond_a

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v4, 0x5a

    iget v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v5, v0, v4

    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_1
    const/4 v4, 0x3

    if-eq v0, v4, :cond_9

    const/16 v4, 0x8

    if-eq v0, v4, :cond_9

    const/16 v4, 0xa

    if-eq v0, v4, :cond_9

    const/4 v4, 0x0

    const/16 v5, 0x2f

    const/4 v6, 0x1

    if-eq v0, v5, :cond_5

    const/16 v5, 0x3f

    if-eq v0, v5, :cond_9

    const/16 v5, 0x41

    if-eq v0, v5, :cond_9

    if-eq v0, v3, :cond_9

    if-eq v0, v2, :cond_9

    const/16 v2, 0x36

    if-eq v0, v2, :cond_9

    const/16 v2, 0x37

    if-eq v0, v2, :cond_9

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v2, 0x5c

    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v3, v0, v2

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v0

    :pswitch_0
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTNegateNode;

    const/16 v1, 0x2b

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTNegateNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->PrimaryExpression()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0, v6}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    goto :goto_4

    :catchall_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_3

    instance-of v2, v1, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_2
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_3
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_2
    move-exception v1

    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_4

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v6}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    :cond_4
    throw v1

    :cond_5
    invoke-direct {p0, v5}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTNotNode;

    const/16 v1, 0x2a

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTNotNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->UnaryExpression()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_4
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_7

    instance-of v2, v1, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v2, :cond_6

    check-cast v1, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v1

    :catchall_4
    move-exception v1

    goto :goto_3

    :cond_6
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_7
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_5
    move-exception v1

    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_8

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0, v6}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    :cond_8
    throw v1

    :cond_9
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->PrimaryExpression()V

    :goto_4
    return-void

    :cond_a
    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_b

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk()I

    move-result v0

    :cond_b
    if-eq v0, v3, :cond_d

    if-ne v0, v2, :cond_c

    invoke-direct {p0, v2}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    const/16 v2, 0x5b

    iget v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    aput v3, v0, v2

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    new-instance v0, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    throw v0

    :cond_d
    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final Word()V
    .locals 4

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTWord;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTWord;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/16 v1, 0x3b

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    throw v1
.end method

.method public final disable_tracing()V
    .locals 0

    return-void
.end method

.method public final enable_tracing()V
    .locals 0

    return-void
.end method

.method public generateParseException()Lorg/apache/velocity/runtime/parser/ParseException;
    .locals 8

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_expentries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/16 v0, 0x4a

    new-array v1, v0, [Z

    iget v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_kind:I

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    aput-boolean v3, v1, v2

    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_kind:I

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x63

    if-ge v4, v5, :cond_5

    iget-object v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1:[I

    aget v5, v5, v4

    iget v6, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    if-ne v5, v6, :cond_4

    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0x20

    if-ge v5, v6, :cond_4

    sget-object v6, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1_0:[I

    aget v6, v6, v4

    shl-int v7, v3, v5

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    aput-boolean v3, v1, v5

    :cond_1
    sget-object v6, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1_1:[I

    aget v6, v6, v4

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    add-int/lit8 v6, v5, 0x20

    aput-boolean v3, v1, v6

    :cond_2
    sget-object v6, Lorg/apache/velocity/runtime/parser/Parser;->jj_la1_2:[I

    aget v6, v6, v4

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    add-int/lit8 v6, v5, 0x40

    aput-boolean v3, v1, v6

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_7

    aget-boolean v5, v1, v4

    if-eqz v5, :cond_6

    new-array v5, v3, [I

    iput-object v5, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_expentry:[I

    aput v4, v5, v2

    iget-object v6, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_expentries:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    iput v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_endpos:I

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/Parser;->jj_rescan_token()V

    invoke-direct {p0, v2, v2}, Lorg/apache/velocity/runtime/parser/Parser;->jj_add_error_token(II)V

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_expentries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[I

    :goto_3
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_expentries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_8

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_expentries:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    new-instance v1, Lorg/apache/velocity/runtime/parser/ParseException;

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    sget-object v3, Lorg/apache/velocity/runtime/parser/ParserConstants;->tokenImage:[Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>(Lorg/apache/velocity/runtime/parser/Token;[[I[Ljava/lang/String;)V

    return-object v1
.end method

.method public getDirective(Ljava/lang/String;)Lorg/apache/velocity/runtime/directive/Directive;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {v0, p1}, Lorg/apache/velocity/runtime/RuntimeServices;->getDirective(Ljava/lang/String;)Lorg/apache/velocity/runtime/directive/Directive;

    move-result-object p1

    return-object p1
.end method

.method public final getNextToken()Lorg/apache/velocity/runtime/parser/Token;
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    if-eqz v1, :cond_0

    :goto_0
    iput-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->token_source:Lorg/apache/velocity/runtime/parser/ParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->getNextToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_0

    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_ntk:I

    iget v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_gen:I

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    return-object v0
.end method

.method public final getToken(I)Lorg/apache/velocity/runtime/parser/Token;
    .locals 3

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_lookingAhead:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->jj_scanpos:Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->token:Lorg/apache/velocity/runtime/parser/Token;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    iget-object v2, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    if-eqz v2, :cond_1

    :goto_2
    move-object v0, v2

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->token_source:Lorg/apache/velocity/runtime/parser/ParserTokenManager;

    invoke-virtual {v2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->getNextToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public isDirective(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {v0, p1}, Lorg/apache/velocity/runtime/RuntimeServices;->getDirective(Ljava/lang/String;)Lorg/apache/velocity/runtime/directive/Directive;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public parse(Ljava/io/Reader;Lorg/apache/velocity/Template;)Lorg/apache/velocity/runtime/parser/node/SimpleNode;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "{}: {}"

    .line 3
    .line 4
    iput-object p2, p0, Lorg/apache/velocity/runtime/parser/Parser;->currentTemplate:Lorg/apache/velocity/Template;

    .line 5
    .line 6
    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->token_source:Lorg/apache/velocity/runtime/parser/ParserTokenManager;

    .line 7
    .line 8
    invoke-virtual {v2}, Lorg/apache/velocity/runtime/parser/ParserTokenManager;->clearStateVars()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->velcharstream:Lorg/apache/velocity/runtime/parser/VelocityCharStream;

    .line 12
    .line 13
    invoke-virtual {v2, p1, v0, v0}, Lorg/apache/velocity/runtime/parser/VelocityCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/Parser;->velcharstream:Lorg/apache/velocity/runtime/parser/VelocityCharStream;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/parser/Parser;->ReInit(Lorg/apache/velocity/runtime/parser/CharStream;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/Parser;->process()Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_0
    .catch Lorg/apache/velocity/runtime/directive/MacroParseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/velocity/runtime/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/velocity/runtime/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    const/4 p2, 0x0

    .line 26
    iput-object p2, p0, Lorg/apache/velocity/runtime/parser/Parser;->currentTemplate:Lorg/apache/velocity/Template;

    .line 27
    .line 28
    return-object p1

    .line 29
    :catch_0
    move-exception p1

    .line 30
    goto :goto_0

    .line 31
    :catch_1
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :catch_2
    move-exception p1

    .line 34
    goto :goto_2

    .line 35
    :catch_3
    move-exception p1

    .line 36
    goto :goto_3

    .line 37
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p2, ": "

    .line 50
    .line 51
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->log:Lorg/slf4j/Logger;

    .line 66
    .line 67
    invoke-static {v0, p2, p1, p2, p1}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    throw p1

    .line 72
    :goto_1
    new-instance p2, Lorg/apache/velocity/runtime/parser/ParseException;

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v1, "Lexical error: "

    .line 77
    .line 78
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {p2, p1}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p2

    .line 96
    :goto_2
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/Parser;->log:Lorg/slf4j/Logger;

    .line 97
    .line 98
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Parser;->currentTemplate:Lorg/apache/velocity/Template;

    .line 99
    .line 100
    invoke-virtual {v0}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p1}, Lorg/apache/velocity/runtime/parser/ParseException;->getMessage()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-interface {p2, v1, v0, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    new-instance p2, Lorg/apache/velocity/runtime/parser/TemplateParseException;

    .line 112
    .line 113
    iget-object v0, p1, Lorg/apache/velocity/runtime/parser/ParseException;->currentToken:Lorg/apache/velocity/runtime/parser/Token;

    .line 114
    .line 115
    iget-object v1, p1, Lorg/apache/velocity/runtime/parser/ParseException;->expectedTokenSequences:[[I

    .line 116
    .line 117
    iget-object p1, p1, Lorg/apache/velocity/runtime/parser/ParseException;->tokenImage:[Ljava/lang/String;

    .line 118
    .line 119
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->currentTemplate:Lorg/apache/velocity/Template;

    .line 120
    .line 121
    invoke-virtual {v2}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-direct {p2, v0, v1, p1, v2}, Lorg/apache/velocity/runtime/parser/TemplateParseException;-><init>(Lorg/apache/velocity/runtime/parser/Token;[[I[Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p2

    .line 129
    :goto_3
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->log:Lorg/slf4j/Logger;

    .line 130
    .line 131
    invoke-virtual {p2}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-virtual {p1}, Lorg/apache/velocity/runtime/directive/MacroParseException;->getMessage()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    const/4 v4, 0x3

    .line 140
    new-array v4, v4, [Ljava/lang/Object;

    .line 141
    .line 142
    const/4 v5, 0x0

    .line 143
    aput-object p2, v4, v5

    .line 144
    .line 145
    aput-object v3, v4, v0

    .line 146
    .line 147
    const/4 p2, 0x2

    .line 148
    aput-object p1, v4, p2

    .line 149
    .line 150
    invoke-interface {v2, v1, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    throw p1
.end method

.method public final process()Lorg/apache/velocity/runtime/parser/node/SimpleNode;
    .locals 5

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/ASTprocess;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/parser/node/ASTprocess;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v2, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v4

    iget v4, v4, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->Statement(Z)Z

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_0
    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->jj_consume_token(I)Lorg/apache/velocity/runtime/parser/Token;

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :goto_1
    :try_start_1
    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v4, v0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-nez v4, :cond_2

    instance-of v4, v3, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/apache/velocity/runtime/parser/ParseException;

    throw v3

    :catchall_1
    move-exception v3

    goto :goto_2

    :cond_1
    check-cast v3, Ljava/lang/Error;

    throw v3

    :cond_2
    check-cast v3, Ljava/lang/RuntimeException;

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_2
    move-exception v3

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Parser;->jjtree:Lorg/apache/velocity/runtime/parser/node/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V

    :cond_3
    throw v3
.end method
