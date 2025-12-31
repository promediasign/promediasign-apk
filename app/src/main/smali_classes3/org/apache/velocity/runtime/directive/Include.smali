.class public Lorg/apache/velocity/runtime/directive/Include;
.super Lorg/apache/velocity/runtime/directive/InputBase;
.source "SourceFile"


# instance fields
.field private outputMsgEnd:Ljava/lang/String;

.field private outputMsgStart:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/directive/InputBase;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/velocity/runtime/directive/Include;->outputMsgStart:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/velocity/runtime/directive/Include;->outputMsgEnd:Ljava/lang/String;

    return-void
.end method

.method private outputErrorToStream(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Include;->outputMsgStart:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/velocity/runtime/directive/Include;->outputMsgEnd:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/velocity/runtime/directive/Include;->outputMsgEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private renderOutput(Lorg/apache/velocity/runtime/parser/node/Node;Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z
    .locals 4

    .line 1
    const-string v0, "#include() null argument"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    :goto_0
    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->log:Lorg/slf4j/Logger;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/velocity/runtime/parser/node/Node;->value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    .line 24
    .line 25
    invoke-interface {p2}, Lorg/apache/velocity/context/InternalContextAdapter;->getCurrentTemplateName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Include;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v0, p2, p1, v2, v3}, Lorg/apache/velocity/app/event/EventHandlerUtil;->includeEvent(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v0, 0x1

    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const/4 v2, 0x0

    .line 43
    :goto_1
    if-nez v2, :cond_3

    .line 44
    .line 45
    :try_start_0
    iget-object v3, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    .line 46
    .line 47
    invoke-virtual {p0, p2}, Lorg/apache/velocity/runtime/directive/InputBase;->getInputEncoding(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-interface {v3, p1, p2}, Lorg/apache/velocity/runtime/RuntimeServices;->getContent(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/ContentResource;

    .line 52
    .line 53
    .line 54
    move-result-object p1
    :try_end_0
    .catch Lorg/apache/velocity/exception/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_5

    .line 56
    :catch_0
    move-exception p2

    .line 57
    goto :goto_2

    .line 58
    :catch_1
    move-exception p2

    .line 59
    goto :goto_3

    .line 60
    :catch_2
    move-exception p2

    .line 61
    goto :goto_4

    .line 62
    :goto_2
    const-string p3, "#include(): arg = \'"

    .line 63
    .line 64
    const-string v0, "\', called at "

    .line 65
    .line 66
    invoke-static {p3, p1, v0}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/directive/Directive;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object p3, p0, Lorg/apache/velocity/runtime/directive/Directive;->log:Lorg/slf4j/Logger;

    .line 82
    .line 83
    invoke-static {p3, p1, p2, p1, p2}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    throw p1

    .line 88
    :goto_3
    iget-object p3, p0, Lorg/apache/velocity/runtime/directive/Directive;->log:Lorg/slf4j/Logger;

    .line 89
    .line 90
    const-string v0, "#include(): arg = \'{}\', called at {}"

    .line 91
    .line 92
    invoke-static {p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/directive/Directive;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-interface {p3, v0, p1, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    throw p2

    .line 100
    :goto_4
    iget-object p3, p0, Lorg/apache/velocity/runtime/directive/Directive;->log:Lorg/slf4j/Logger;

    .line 101
    .line 102
    const-string v0, "#include(): cannot find resource \'{}\', called at {}"

    .line 103
    .line 104
    invoke-static {p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/directive/Directive;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-interface {p3, v0, p1, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    throw p2

    .line 112
    :cond_3
    const/4 p1, 0x0

    .line 113
    :goto_5
    if-eqz v2, :cond_4

    .line 114
    .line 115
    return v0

    .line 116
    :cond_4
    if-nez p1, :cond_5

    .line 117
    .line 118
    return v1

    .line 119
    :cond_5
    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getData()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "include"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public init(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/directive/Directive;->init(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    .line 5
    .line 6
    const-string p2, "directive.include.output.errormsg.start"

    .line 7
    .line 8
    invoke-interface {p1, p2}, Lorg/apache/velocity/runtime/RuntimeServices;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/Include;->outputMsgStart:Ljava/lang/String;

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lorg/apache/velocity/runtime/directive/Include;->outputMsgStart:Ljava/lang/String;

    .line 20
    .line 21
    const-string p3, " "

    .line 22
    .line 23
    invoke-static {p2, p3, p1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/Include;->outputMsgStart:Ljava/lang/String;

    .line 28
    .line 29
    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    .line 30
    .line 31
    const-string p2, "directive.include.output.errormsg.end"

    .line 32
    .line 33
    invoke-interface {p1, p2}, Lorg/apache/velocity/runtime/RuntimeServices;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/Include;->outputMsgEnd:Ljava/lang/String;

    .line 38
    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lorg/apache/velocity/runtime/directive/Include;->outputMsgEnd:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/Include;->outputMsgEnd:Ljava/lang/String;

    .line 54
    .line 55
    return-void
.end method

.method public isScopeProvided()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;)Z
    .locals 7

    .line 1
    invoke-interface {p3}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetNumChildren()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_3

    .line 7
    .line 8
    invoke-interface {p3, v1}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/node/Node;->getType()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/16 v4, 0x9

    .line 17
    .line 18
    const-string v5, " please see log."

    .line 19
    .line 20
    const-string v6, "error with arg "

    .line 21
    .line 22
    if-eq v3, v4, :cond_1

    .line 23
    .line 24
    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/node/Node;->getType()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/16 v4, 0x14

    .line 29
    .line 30
    if-ne v3, v4, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string p3, "invalid #include() argument \'"

    .line 36
    .line 37
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p3, "\' at "

    .line 48
    .line 49
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/directive/Directive;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object p3, p0, Lorg/apache/velocity/runtime/directive/Directive;->log:Lorg/slf4j/Logger;

    .line 64
    .line 65
    invoke-interface {p3, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance p3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-direct {p0, p2, p3}, Lorg/apache/velocity/runtime/directive/Include;->outputErrorToStream(Ljava/io/Writer;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance p2, Lorg/apache/velocity/exception/VelocityException;

    .line 87
    .line 88
    invoke-direct {p2, p1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p2

    .line 92
    :cond_1
    :goto_1
    invoke-direct {p0, v2, p1, p2}, Lorg/apache/velocity/runtime/directive/Include;->renderOutput(Lorg/apache/velocity/runtime/parser/node/Node;Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_2

    .line 97
    .line 98
    invoke-static {v1, v6, v5}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-direct {p0, p2, v2}, Lorg/apache/velocity/runtime/directive/Include;->outputErrorToStream(Ljava/io/Writer;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    const/4 p1, 0x1

    .line 109
    return p1
.end method
