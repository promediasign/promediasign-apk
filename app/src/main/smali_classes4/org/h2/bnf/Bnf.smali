.class public Lorg/h2/bnf/Bnf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private currentToken:Ljava/lang/String;

.field private currentTopic:Ljava/lang/String;

.field private firstChar:C

.field private index:I

.field private lastRepeat:Lorg/h2/bnf/Rule;

.field private final ruleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/bnf/RuleHead;",
            ">;"
        }
    .end annotation
.end field

.field private statements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/bnf/RuleHead;",
            ">;"
        }
    .end annotation
.end field

.field private syntax:Ljava/lang/String;

.field private tokens:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/bnf/Bnf;->ruleMap:Ljava/util/HashMap;

    return-void
.end method

.method private addFixedRule(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lorg/h2/bnf/RuleFixed;

    invoke-direct {v0, p2}, Lorg/h2/bnf/RuleFixed;-><init>(I)V

    const-string p2, "Fixed"

    invoke-direct {p0, p1, p2, v0}, Lorg/h2/bnf/Bnf;->addRule(Ljava/lang/String;Ljava/lang/String;Lorg/h2/bnf/Rule;)Lorg/h2/bnf/RuleHead;

    return-void
.end method

.method private addRule(Ljava/lang/String;Ljava/lang/String;Lorg/h2/bnf/Rule;)Lorg/h2/bnf/RuleHead;
    .locals 2

    new-instance v0, Lorg/h2/bnf/RuleHead;

    invoke-direct {v0, p2, p1, p3}, Lorg/h2/bnf/RuleHead;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/h2/bnf/Rule;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x20

    const/16 v1, 0x5f

    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/h2/bnf/Bnf;->ruleMap:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_0

    iget-object p1, p0, Lorg/h2/bnf/Bnf;->ruleMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance p2, Ljava/lang/AssertionError;

    const-string p3, "already exists: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public static getInstance(Ljava/io/Reader;)Lorg/h2/bnf/Bnf;
    .locals 3

    new-instance v0, Lorg/h2/bnf/Bnf;

    invoke-direct {v0}, Lorg/h2/bnf/Bnf;-><init>()V

    if-nez p0, :cond_0

    const-string p0, "/org/h2/res/help.csv"

    invoke-static {p0}, Lorg/h2/util/Utils;->getResource(Ljava/lang/String;)[B

    move-result-object p0

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object p0, v1

    :cond_0
    invoke-direct {v0, p0}, Lorg/h2/bnf/Bnf;->parse(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static getRuleMapKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, p0, v2

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x5f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTokenizer(Ljava/lang/String;)Ljava/util/StringTokenizer;
    .locals 3

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, " [](){}|.,\r\n<>:-+*/=<\">!\'$"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private parse(Ljava/io/Reader;)V
    .locals 11

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/bnf/Bnf;->statements:Ljava/util/ArrayList;

    new-instance v0, Lorg/h2/tools/Csv;

    invoke-direct {v0}, Lorg/h2/tools/Csv;-><init>()V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lorg/h2/tools/Csv;->setLineCommentCharacter(C)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/h2/tools/Csv;->read(Ljava/io/Reader;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "Function"

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    const-string v0, "SECTION"

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v5, "System"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "TOPIC"

    invoke-interface {p1, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SYNTAX"

    invoke-interface {p1, v6}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/h2/bnf/Bnf;->syntax:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/bnf/Bnf;->currentTopic:Ljava/lang/String;

    invoke-direct {p0}, Lorg/h2/bnf/Bnf;->tokenize()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/h2/bnf/Bnf;->tokens:[Ljava/lang/String;

    iput v4, p0, Lorg/h2/bnf/Bnf;->index:I

    invoke-direct {p0}, Lorg/h2/bnf/Bnf;->parseRule()Lorg/h2/bnf/Rule;

    move-result-object v6

    const-string v7, "Command"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Lorg/h2/bnf/RuleList;

    new-instance v8, Lorg/h2/bnf/RuleElement;

    const-string v9, ";\n\n"

    iget-object v10, p0, Lorg/h2/bnf/Bnf;->currentTopic:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/h2/bnf/RuleElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v6, v8, v4}, Lorg/h2/bnf/RuleList;-><init>(Lorg/h2/bnf/Rule;Lorg/h2/bnf/Rule;Z)V

    move-object v6, v7

    :cond_2
    invoke-direct {p0, v5, v0, v6}, Lorg/h2/bnf/Bnf;->addRule(Ljava/lang/String;Ljava/lang/String;Lorg/h2/bnf/Rule;)Lorg/h2/bnf/RuleHead;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v1, :cond_3

    move-object v1, v6

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/h2/bnf/RuleList;

    invoke-direct {v0, v6, v1, v2}, Lorg/h2/bnf/RuleList;-><init>(Lorg/h2/bnf/Rule;Lorg/h2/bnf/Rule;Z)V

    move-object v1, v0

    goto :goto_0

    :cond_4
    const-string v2, "Commands"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/bnf/Bnf;->statements:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string p1, "@func@"

    invoke-direct {p0, p1, v3, v1}, Lorg/h2/bnf/Bnf;->addRule(Ljava/lang/String;Ljava/lang/String;Lorg/h2/bnf/Rule;)Lorg/h2/bnf/RuleHead;

    const-string p1, "@ymd@"

    invoke-direct {p0, p1, v4}, Lorg/h2/bnf/Bnf;->addFixedRule(Ljava/lang/String;I)V

    const-string p1, "@hms@"

    invoke-direct {p0, p1, v2}, Lorg/h2/bnf/Bnf;->addFixedRule(Ljava/lang/String;I)V

    const-string p1, "@nanos@"

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/h2/bnf/Bnf;->addFixedRule(Ljava/lang/String;I)V

    const-string p1, "anything_except_single_quote"

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/h2/bnf/Bnf;->addFixedRule(Ljava/lang/String;I)V

    const-string p1, "anything_except_double_quote"

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/h2/bnf/Bnf;->addFixedRule(Ljava/lang/String;I)V

    const-string p1, "anything_until_end_of_line"

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lorg/h2/bnf/Bnf;->addFixedRule(Ljava/lang/String;I)V

    const-string p1, "anything_until_end_comment"

    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lorg/h2/bnf/Bnf;->addFixedRule(Ljava/lang/String;I)V

    const-string p1, "anything_except_two_dollar_signs"

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/h2/bnf/Bnf;->addFixedRule(Ljava/lang/String;I)V

    const-string p1, "anything"

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lorg/h2/bnf/Bnf;->addFixedRule(Ljava/lang/String;I)V

    const-string p1, "@hex_start@"

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lorg/h2/bnf/Bnf;->addFixedRule(Ljava/lang/String;I)V

    const-string p1, "@concat@"

    const/16 v0, 0xb

    invoke-direct {p0, p1, v0}, Lorg/h2/bnf/Bnf;->addFixedRule(Ljava/lang/String;I)V

    const-string p1, "@az_@"

    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Lorg/h2/bnf/Bnf;->addFixedRule(Ljava/lang/String;I)V

    const-string p1, "@af@"

    const/16 v0, 0xd

    invoke-direct {p0, p1, v0}, Lorg/h2/bnf/Bnf;->addFixedRule(Ljava/lang/String;I)V

    const-string p1, "@digit@"

    const/16 v0, 0xe

    invoke-direct {p0, p1, v0}, Lorg/h2/bnf/Bnf;->addFixedRule(Ljava/lang/String;I)V

    const-string p1, "@open_bracket@"

    const/16 v0, 0xf

    invoke-direct {p0, p1, v0}, Lorg/h2/bnf/Bnf;->addFixedRule(Ljava/lang/String;I)V

    const-string p1, "@close_bracket@"

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lorg/h2/bnf/Bnf;->addFixedRule(Ljava/lang/String;I)V

    return-void
.end method

.method private parseList()Lorg/h2/bnf/Rule;
    .locals 4

    invoke-direct {p0}, Lorg/h2/bnf/Bnf;->parseToken()Lorg/h2/bnf/Rule;

    move-result-object v0

    iget-char v1, p0, Lorg/h2/bnf/Bnf;->firstChar:C

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_0

    if-eqz v1, :cond_0

    new-instance v1, Lorg/h2/bnf/RuleList;

    invoke-direct {p0}, Lorg/h2/bnf/Bnf;->parseList()Lorg/h2/bnf/Rule;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lorg/h2/bnf/RuleList;-><init>(Lorg/h2/bnf/Rule;Lorg/h2/bnf/Rule;Z)V

    move-object v0, v1

    :cond_0
    iput-object v0, p0, Lorg/h2/bnf/Bnf;->lastRepeat:Lorg/h2/bnf/Rule;

    return-object v0
.end method

.method private parseOr()Lorg/h2/bnf/Rule;
    .locals 4

    invoke-direct {p0}, Lorg/h2/bnf/Bnf;->parseList()Lorg/h2/bnf/Rule;

    move-result-object v0

    iget-char v1, p0, Lorg/h2/bnf/Bnf;->firstChar:C

    const/16 v2, 0x7c

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lorg/h2/bnf/Bnf;->read()V

    new-instance v1, Lorg/h2/bnf/RuleList;

    invoke-direct {p0}, Lorg/h2/bnf/Bnf;->parseOr()Lorg/h2/bnf/Rule;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lorg/h2/bnf/RuleList;-><init>(Lorg/h2/bnf/Rule;Lorg/h2/bnf/Rule;Z)V

    move-object v0, v1

    :cond_0
    iput-object v0, p0, Lorg/h2/bnf/Bnf;->lastRepeat:Lorg/h2/bnf/Rule;

    return-object v0
.end method

.method private parseRule()Lorg/h2/bnf/Rule;
    .locals 1

    invoke-direct {p0}, Lorg/h2/bnf/Bnf;->read()V

    invoke-direct {p0}, Lorg/h2/bnf/Bnf;->parseOr()Lorg/h2/bnf/Rule;

    move-result-object v0

    return-object v0
.end method

.method private parseToken()Lorg/h2/bnf/Rule;
    .locals 5

    iget-char v0, p0, Lorg/h2/bnf/Bnf;->firstChar:C

    const/16 v1, 0x41

    if-lt v0, v1, :cond_0

    const/16 v1, 0x5a

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x61

    if-lt v0, v1, :cond_2

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    :cond_1
    new-instance v0, Lorg/h2/bnf/RuleElement;

    iget-object v1, p0, Lorg/h2/bnf/Bnf;->currentToken:Ljava/lang/String;

    iget-object v2, p0, Lorg/h2/bnf/Bnf;->currentTopic:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/h2/bnf/RuleElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const/16 v1, 0x5b

    const-string v2, " syntax:"

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lorg/h2/bnf/Bnf;->read()V

    invoke-direct {p0}, Lorg/h2/bnf/Bnf;->parseOr()Lorg/h2/bnf/Rule;

    move-result-object v0

    new-instance v1, Lorg/h2/bnf/RuleOptional;

    invoke-direct {v1, v0}, Lorg/h2/bnf/RuleOptional;-><init>(Lorg/h2/bnf/Rule;)V

    iget-char v0, p0, Lorg/h2/bnf/Bnf;->firstChar:C

    const/16 v3, 0x5d

    if-ne v0, v3, :cond_3

    :goto_0
    move-object v0, v1

    goto/16 :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "expected ], got "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/h2/bnf/Bnf;->currentToken:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/bnf/Bnf;->syntax:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Lorg/h2/bnf/Bnf;->read()V

    invoke-direct {p0}, Lorg/h2/bnf/Bnf;->parseOr()Lorg/h2/bnf/Rule;

    move-result-object v0

    iget-char v1, p0, Lorg/h2/bnf/Bnf;->firstChar:C

    const/16 v3, 0x7d

    if-ne v1, v3, :cond_5

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "expected }, got "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/h2/bnf/Bnf;->currentToken:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/bnf/Bnf;->syntax:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_6
    const-string v0, "@commaDots@"

    iget-object v1, p0, Lorg/h2/bnf/Bnf;->currentToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    new-instance v0, Lorg/h2/bnf/RuleList;

    new-instance v2, Lorg/h2/bnf/RuleElement;

    const-string v3, ","

    iget-object v4, p0, Lorg/h2/bnf/Bnf;->currentTopic:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/h2/bnf/RuleElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/h2/bnf/Bnf;->lastRepeat:Lorg/h2/bnf/Rule;

    invoke-direct {v0, v2, v3, v1}, Lorg/h2/bnf/RuleList;-><init>(Lorg/h2/bnf/Rule;Lorg/h2/bnf/Rule;Z)V

    new-instance v1, Lorg/h2/bnf/RuleRepeat;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/h2/bnf/RuleRepeat;-><init>(Lorg/h2/bnf/Rule;Z)V

    goto :goto_0

    :cond_7
    const-string v0, "@dots@"

    iget-object v2, p0, Lorg/h2/bnf/Bnf;->currentToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lorg/h2/bnf/RuleRepeat;

    iget-object v2, p0, Lorg/h2/bnf/Bnf;->lastRepeat:Lorg/h2/bnf/Rule;

    invoke-direct {v0, v2, v1}, Lorg/h2/bnf/RuleRepeat;-><init>(Lorg/h2/bnf/Rule;Z)V

    goto :goto_1

    :cond_8
    new-instance v0, Lorg/h2/bnf/RuleElement;

    iget-object v1, p0, Lorg/h2/bnf/Bnf;->currentToken:Ljava/lang/String;

    iget-object v2, p0, Lorg/h2/bnf/Bnf;->currentTopic:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/h2/bnf/RuleElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iput-object v0, p0, Lorg/h2/bnf/Bnf;->lastRepeat:Lorg/h2/bnf/Rule;

    invoke-direct {p0}, Lorg/h2/bnf/Bnf;->read()V

    return-object v0
.end method

.method private read()V
    .locals 4

    iget v0, p0, Lorg/h2/bnf/Bnf;->index:I

    iget-object v1, p0, Lorg/h2/bnf/Bnf;->tokens:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/h2/bnf/Bnf;->index:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lorg/h2/bnf/Bnf;->currentToken:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lorg/h2/bnf/Bnf;->firstChar:C

    goto :goto_0

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lorg/h2/bnf/Bnf;->currentToken:Ljava/lang/String;

    iput-char v3, p0, Lorg/h2/bnf/Bnf;->firstChar:C

    :goto_0
    return-void
.end method

.method public static startWithSpace(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private tokenize()[Ljava/lang/String;
    .locals 5

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/bnf/Bnf;->syntax:Ljava/lang/String;

    const-string v2, "yyyy-MM-dd"

    const-string v3, "@ymd@"

    invoke-static {v1, v2, v3}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/bnf/Bnf;->syntax:Ljava/lang/String;

    const-string v2, "hh:mm:ss"

    const-string v3, "@hms@"

    invoke-static {v1, v2, v3}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/bnf/Bnf;->syntax:Ljava/lang/String;

    const-string v2, "nnnnnnnnn"

    const-string v3, "@nanos@"

    invoke-static {v1, v2, v3}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/bnf/Bnf;->syntax:Ljava/lang/String;

    const-string v2, "function"

    const-string v3, "@func@"

    invoke-static {v1, v2, v3}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/bnf/Bnf;->syntax:Ljava/lang/String;

    const-string v2, "0x"

    const-string v3, "@hexStart@"

    invoke-static {v1, v2, v3}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/bnf/Bnf;->syntax:Ljava/lang/String;

    const-string v2, ",..."

    const-string v3, "@commaDots@"

    invoke-static {v1, v2, v3}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/bnf/Bnf;->syntax:Ljava/lang/String;

    const-string v2, "..."

    const-string v3, "@dots@"

    invoke-static {v1, v2, v3}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/bnf/Bnf;->syntax:Ljava/lang/String;

    const-string v2, "||"

    const-string v3, "@concat@"

    invoke-static {v1, v2, v3}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/bnf/Bnf;->syntax:Ljava/lang/String;

    const-string v2, "a-z|_"

    const-string v3, "@az_@"

    invoke-static {v1, v2, v3}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/bnf/Bnf;->syntax:Ljava/lang/String;

    const-string v2, "A-Z|_"

    invoke-static {v1, v2, v3}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/bnf/Bnf;->syntax:Ljava/lang/String;

    const-string v2, "A-F"

    const-string v3, "@af@"

    invoke-static {v1, v2, v3}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/bnf/Bnf;->syntax:Ljava/lang/String;

    const-string v2, "0-9"

    const-string v3, "@digit@"

    invoke-static {v1, v2, v3}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/bnf/Bnf;->syntax:Ljava/lang/String;

    const-string v2, "\'[\'"

    const-string v3, "@openBracket@"

    invoke-static {v1, v2, v3}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/bnf/Bnf;->syntax:Ljava/lang/String;

    const-string v2, "\']\'"

    const-string v3, "@closeBracket@"

    invoke-static {v1, v2, v3}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/bnf/Bnf;->syntax:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/bnf/Bnf;->getTokenizer(Ljava/lang/String;)Ljava/util/StringTokenizer;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/util/StringUtils;->cache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, " \r\n"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/bnf/Bnf;->ruleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/h2/bnf/RuleHead;

    iget-object v0, p0, Lorg/h2/bnf/Bnf;->ruleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getNextTokenList(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/h2/bnf/Sentence;

    invoke-direct {v0}, Lorg/h2/bnf/Sentence;-><init>()V

    invoke-virtual {v0, p1}, Lorg/h2/bnf/Sentence;->setQuery(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lorg/h2/bnf/Bnf;->statements:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/bnf/RuleHead;

    invoke-virtual {v1}, Lorg/h2/bnf/RuleHead;->getSection()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Commands"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/h2/bnf/Sentence;->start()V

    invoke-virtual {v1}, Lorg/h2/bnf/RuleHead;->getRule()Lorg/h2/bnf/Rule;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/h2/bnf/Rule;->autoComplete(Lorg/h2/bnf/Sentence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    :catch_0
    :cond_2
    invoke-virtual {v0}, Lorg/h2/bnf/Sentence;->getNext()Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public getRuleHead(Ljava/lang/String;)Lorg/h2/bnf/RuleHead;
    .locals 1

    iget-object v0, p0, Lorg/h2/bnf/Bnf;->ruleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/bnf/RuleHead;

    return-object p1
.end method

.method public getStatements()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/bnf/RuleHead;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/bnf/Bnf;->statements:Ljava/util/ArrayList;

    return-object v0
.end method

.method public linkStatements()V
    .locals 3

    iget-object v0, p0, Lorg/h2/bnf/Bnf;->ruleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/bnf/RuleHead;

    invoke-virtual {v1}, Lorg/h2/bnf/RuleHead;->getRule()Lorg/h2/bnf/Rule;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/bnf/Bnf;->ruleMap:Ljava/util/HashMap;

    invoke-interface {v1, v2}, Lorg/h2/bnf/Rule;->setLinks(Ljava/util/HashMap;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateTopic(Ljava/lang/String;Lorg/h2/bnf/context/DbContextRule;)V
    .locals 2

    invoke-static {p1}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/bnf/Bnf;->ruleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/bnf/RuleHead;

    if-nez v0, :cond_0

    new-instance v0, Lorg/h2/bnf/RuleHead;

    const-string v1, "db"

    invoke-direct {v0, v1, p1, p2}, Lorg/h2/bnf/RuleHead;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/h2/bnf/Rule;)V

    iget-object p2, p0, Lorg/h2/bnf/Bnf;->ruleMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/h2/bnf/Bnf;->statements:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lorg/h2/bnf/RuleHead;->setRule(Lorg/h2/bnf/Rule;)V

    :goto_0
    return-void
.end method

.method public visit(Lorg/h2/bnf/BnfVisitor;Ljava/lang/String;)V
    .locals 1

    iput-object p2, p0, Lorg/h2/bnf/Bnf;->syntax:Ljava/lang/String;

    invoke-direct {p0}, Lorg/h2/bnf/Bnf;->tokenize()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/bnf/Bnf;->tokens:[Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, p0, Lorg/h2/bnf/Bnf;->index:I

    invoke-direct {p0}, Lorg/h2/bnf/Bnf;->parseRule()Lorg/h2/bnf/Rule;

    move-result-object p2

    iget-object v0, p0, Lorg/h2/bnf/Bnf;->ruleMap:Ljava/util/HashMap;

    invoke-interface {p2, v0}, Lorg/h2/bnf/Rule;->setLinks(Ljava/util/HashMap;)V

    invoke-interface {p2, p1}, Lorg/h2/bnf/Rule;->accept(Lorg/h2/bnf/BnfVisitor;)V

    return-void
.end method
