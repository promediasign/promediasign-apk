.class public Lorg/apache/velocity/runtime/directive/VelocimacroProxy;
.super Lorg/apache/velocity/runtime/directive/Directive;
.source "SourceFile"


# instance fields
.field private bodyReference:Ljava/lang/String;

.field private literalArgArray:[Ljava/lang/String;

.field private macroArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/velocity/runtime/directive/Macro$MacroArg;",
            ">;"
        }
    .end annotation
.end field

.field private macroName:Ljava/lang/String;

.field private maxCallDepth:I

.field private nodeTree:Lorg/apache/velocity/runtime/parser/node/SimpleNode;

.field private numMacroArgs:I

.field private strictArguments:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/directive/Directive;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroArgs:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->literalArgArray:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->nodeTree:Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->numMacroArgs:I

    return-void
.end method


# virtual methods
.method public checkArgumentCount(Lorg/apache/velocity/runtime/parser/node/Node;I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroArgs:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    sub-int/2addr v1, v2

    .line 10
    if-le p2, v1, :cond_1

    .line 11
    .line 12
    iget-boolean v1, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->strictArguments:Z

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->log:Lorg/slf4j/Logger;

    .line 17
    .line 18
    iget-object v1, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroArgs:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;

    .line 25
    .line 26
    iget-object v1, v1, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;->name:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v3, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroArgs:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    sub-int/2addr v3, v2

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    const/4 v4, 0x3

    .line 44
    new-array v4, v4, [Ljava/lang/Object;

    .line 45
    .line 46
    aput-object v1, v4, v0

    .line 47
    .line 48
    aput-object v3, v4, v2

    .line 49
    .line 50
    const/4 v0, 0x2

    .line 51
    aput-object p2, v4, v0

    .line 52
    .line 53
    const-string p2, "VM #{}: too many arguments to macro. Wanted {} got {}"

    .line 54
    .line 55
    invoke-interface {p1, p2, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance v1, Lorg/apache/velocity/exception/VelocityException;

    .line 60
    .line 61
    const-string v3, "Provided "

    .line 62
    .line 63
    const-string v4, " arguments but macro #"

    .line 64
    .line 65
    invoke-static {p2, v3, v4}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    iget-object v3, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroArgs:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;

    .line 76
    .line 77
    iget-object v0, v0, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;->name:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, " accepts at most "

    .line 83
    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroArgs:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    sub-int/2addr v0, v2

    .line 94
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v0, " at "

    .line 98
    .line 99
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/parser/node/Node;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {v1, p1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v1

    .line 117
    :cond_1
    :goto_0
    return-void
.end method

.method public checkDepth(Lorg/apache/velocity/context/InternalContextAdapter;)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->maxCallDepth:I

    .line 2
    .line 3
    if-lez v0, :cond_3

    .line 4
    .line 5
    invoke-interface {p1}, Lorg/apache/velocity/context/InternalContextAdapter;->getCurrentMacroCallDepth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_3

    .line 10
    .line 11
    invoke-interface {p1}, Lorg/apache/velocity/context/InternalContextAdapter;->getMacroNameStack()[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/16 v1, 0x64

    .line 16
    .line 17
    const-string v2, "Max calling depth of "

    .line 18
    .line 19
    invoke-static {v1, v2}, LA/g;->o(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget v2, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->maxCallDepth:I

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, " was exceeded in macro \'"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, "\' with Call Stack:"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    :goto_0
    array-length v3, v0

    .line 45
    if-ge v2, v3, :cond_1

    .line 46
    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    const-string v3, "->"

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    :cond_0
    aget-object v3, v0, v2

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const-string v0, " at "

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-static {p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/directive/Directive;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Directive;->log:Lorg/slf4j/Logger;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :goto_1
    invoke-interface {p1}, Lorg/apache/velocity/context/InternalContextAdapter;->getCurrentMacroCallDepth()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-lez v0, :cond_2

    .line 88
    .line 89
    invoke-interface {p1}, Lorg/apache/velocity/context/InternalContextAdapter;->popCurrentMacroName()V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    new-instance p1, Lorg/apache/velocity/exception/MacroOverflowException;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-direct {p1, v0}, Lorg/apache/velocity/exception/MacroOverflowException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_3
    return-void
.end method

.method public getMacroArgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/velocity/runtime/directive/Macro$MacroArg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroArgs:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumArgs()I
    .locals 1

    iget v0, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->numMacroArgs:I

    return v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public handleArgValues(Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;I)[Ljava/lang/Object;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroArgs:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x2

    .line 9
    mul-int/lit8 v1, v1, 0x2

    .line 10
    .line 11
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x1

    .line 15
    :goto_0
    iget-object v5, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroArgs:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-ge v4, v5, :cond_5

    .line 22
    .line 23
    iget-object v5, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroArgs:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;

    .line 30
    .line 31
    add-int/lit8 v6, v4, -0x1

    .line 32
    .line 33
    mul-int/lit8 v7, v6, 0x2

    .line 34
    .line 35
    iget-object v8, v5, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;->name:Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {p1, v8}, Lorg/apache/velocity/context/Context;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    aput-object v8, v1, v7

    .line 42
    .line 43
    if-ge v6, p3, :cond_0

    .line 44
    .line 45
    invoke-interface {p2, v6}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    :goto_1
    invoke-interface {v6, p1}, Lorg/apache/velocity/runtime/parser/node/Node;->value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    goto :goto_2

    .line 54
    :cond_0
    iget-object v6, v5, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;->defaultVal:Lorg/apache/velocity/runtime/parser/node/Node;

    .line 55
    .line 56
    if-eqz v6, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :goto_2
    iget-object v5, v5, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;->name:Ljava/lang/String;

    .line 60
    .line 61
    invoke-interface {p1, v5, v6}, Lorg/apache/velocity/context/Context;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    add-int/2addr v7, v3

    .line 65
    aput-object v6, v1, v7

    .line 66
    .line 67
    add-int/2addr v4, v3

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-boolean p1, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->strictArguments:Z

    .line 70
    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroArgs:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const/4 v1, -0x1

    .line 80
    :cond_2
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_3

    .line 85
    .line 86
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;

    .line 91
    .line 92
    iget-object v2, v2, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;->defaultVal:Lorg/apache/velocity/runtime/parser/node/Node;

    .line 93
    .line 94
    if-nez v2, :cond_2

    .line 95
    .line 96
    add-int/2addr v1, v3

    .line 97
    goto :goto_3

    .line 98
    :cond_3
    new-instance p1, Lorg/apache/velocity/exception/VelocityException;

    .line 99
    .line 100
    const-string v2, "Need at least "

    .line 101
    .line 102
    const-string v3, " argument for macro #"

    .line 103
    .line 104
    invoke-static {v1, v2, v3}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iget-object v2, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroArgs:Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;

    .line 115
    .line 116
    iget-object v0, v0, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;->name:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v0, " but only "

    .line 122
    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string p3, " where provided at "

    .line 130
    .line 131
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-static {p2}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/parser/node/Node;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-direct {p1, p2}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p1

    .line 149
    :cond_4
    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->log:Lorg/slf4j/Logger;

    .line 150
    .line 151
    iget-object p2, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroArgs:Ljava/util/List;

    .line 152
    .line 153
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    check-cast p2, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;

    .line 158
    .line 159
    iget-object p2, p2, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;->name:Ljava/lang/String;

    .line 160
    .line 161
    iget-object v4, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroArgs:Ljava/util/List;

    .line 162
    .line 163
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    sub-int/2addr v4, v3

    .line 168
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    const/4 v5, 0x3

    .line 177
    new-array v5, v5, [Ljava/lang/Object;

    .line 178
    .line 179
    aput-object p2, v5, v0

    .line 180
    .line 181
    aput-object v4, v5, v3

    .line 182
    .line 183
    aput-object p3, v5, v2

    .line 184
    .line 185
    const-string p2, "VM #{}: too few arguments to macro. Wanted {} got {}"

    .line 186
    .line 187
    invoke-interface {p1, p2, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_5
    return-object v1
.end method

.method public init(Lorg/apache/velocity/runtime/RuntimeServices;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v0, "macro"

    invoke-interface {p1, v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getLog(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->log:Lorg/slf4j/Logger;

    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v0, "velocimacro.arguments.strict"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->strictArguments:Z

    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v0, "velocimacro.max.depth"

    invoke-interface {p1, v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->maxCallDepth:I

    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v0, "velocimacro.body.reference"

    const-string v1, "bodyContent"

    invoke-interface {p1, v0, v1}, Lorg/apache/velocity/runtime/RuntimeServices;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->bodyReference:Ljava/lang/String;

    return-void
.end method

.method public render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;Lorg/apache/velocity/runtime/Renderable;)Z

    move-result p1

    return p1
.end method

.method public render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;Lorg/apache/velocity/runtime/Renderable;)Z
    .locals 4

    .line 2
    const-string v0, "VelocimacroProxy.render() : exception VM = #"

    invoke-interface {p3}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetNumChildren()I

    move-result v1

    if-eqz p4, :cond_0

    iget-object v2, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->bodyReference:Ljava/lang/String;

    invoke-interface {p1, v2}, Lorg/apache/velocity/context/Context;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->bodyReference:Ljava/lang/String;

    invoke-interface {p1, v3, p4}, Lorg/apache/velocity/context/Context;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, p3, v1}, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->checkArgumentCount(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->checkDepth(Lorg/apache/velocity/context/InternalContextAdapter;)V

    invoke-virtual {p0, p1, p3, v1}, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->handleArgValues(Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;I)[Ljava/lang/Object;

    move-result-object p3

    const/4 v1, 0x1

    :try_start_0
    iget-object v3, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroName:Ljava/lang/String;

    invoke-interface {p1, v3}, Lorg/apache/velocity/context/InternalContextAdapter;->pushCurrentMacroName(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->nodeTree:Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    invoke-virtual {v3, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z

    invoke-interface {p1}, Lorg/apache/velocity/context/InternalContextAdapter;->popCurrentMacroName()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->bodyReference:Ljava/lang/String;

    invoke-interface {p1, p2}, Lorg/apache/velocity/context/Context;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p4, :cond_2

    iget-object p2, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->bodyReference:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-interface {p1, p2, v2}, Lorg/apache/velocity/context/Context;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-interface {p1, p2}, Lorg/apache/velocity/context/Context;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_2
    :goto_1
    const/4 p2, 0x1

    :goto_2
    iget-object p4, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroArgs:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p2, p4, :cond_5

    iget-object p4, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroArgs:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;

    iget-object v0, p4, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/apache/velocity/context/Context;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v2, p2, -0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v2, 0x1

    aget-object v3, p3, v3

    if-ne v0, v3, :cond_4

    aget-object v0, p3, v2

    iget-object p4, p4, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-interface {p1, p4, v0}, Lorg/apache/velocity/context/Context;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    invoke-interface {p1, p4}, Lorg/apache/velocity/context/Context;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_4
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    return v1

    :catchall_0
    move-exception p2

    goto :goto_6

    :catch_0
    move-exception p2

    goto :goto_4

    :catch_1
    move-exception p2

    goto :goto_5

    :goto_4
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "()"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/velocity/runtime/directive/Directive;->log:Lorg/slf4j/Logger;

    invoke-interface {v3, v0, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v3, Lorg/apache/velocity/exception/VelocityException;

    invoke-direct {v3, v0, p2}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :goto_5
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->bodyReference:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/apache/velocity/context/Context;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p4, :cond_7

    iget-object p4, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->bodyReference:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-interface {p1, p4, v2}, Lorg/apache/velocity/context/Context;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_6
    invoke-interface {p1, p4}, Lorg/apache/velocity/context/Context;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_7
    :goto_7
    iget-object p4, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroArgs:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge v1, p4, :cond_a

    iget-object p4, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroArgs:Ljava/util/List;

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;

    iget-object v0, p4, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/apache/velocity/context/Context;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v2, v1, -0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v2, 0x1

    aget-object v3, p3, v3

    if-ne v0, v3, :cond_9

    aget-object v0, p3, v2

    iget-object p4, p4, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;->name:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-interface {p1, p4, v0}, Lorg/apache/velocity/context/Context;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_8
    invoke-interface {p1, p4}, Lorg/apache/velocity/context/Context;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_9
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_a
    throw p2
.end method

.method public setMacroArgs(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/velocity/runtime/directive/Macro$MacroArg;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroArgs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->literalArgArray:[Ljava/lang/String;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->literalArgArray:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ".literal.$"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroArgs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroArgs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->numMacroArgs:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->macroName:Ljava/lang/String;

    return-void
.end method

.method public setNodeTree(Lorg/apache/velocity/runtime/parser/node/SimpleNode;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->nodeTree:Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    return-void
.end method
