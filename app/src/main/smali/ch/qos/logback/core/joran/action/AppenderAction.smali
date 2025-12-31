.class public Lch/qos/logback/core/joran/action/AppenderAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/joran/action/Action;"
    }
.end annotation


# instance fields
.field appender:Lch/qos/logback/core/Appender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/Appender<",
            "TE;>;"
        }
    .end annotation
.end field

.field private inError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/joran/action/AppenderAction;->inError:Z

    return-void
.end method

.method private warnDeprecated(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ch.qos.logback.core.ConsoleAppender"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ConsoleAppender is deprecated for LogcatAppender"

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8

    .line 1
    const-string v0, "]."

    .line 2
    .line 3
    const-string v1, "]"

    .line 4
    .line 5
    const-string v2, "Naming appender as ["

    .line 6
    .line 7
    const-string v3, "No appender name given for appender of type "

    .line 8
    .line 9
    const-string v4, "About to instantiate appender of type ["

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    iput-object v5, p0, Lch/qos/logback/core/joran/action/AppenderAction;->appender:Lch/qos/logback/core/Appender;

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    iput-boolean v5, p0, Lch/qos/logback/core/joran/action/AppenderAction;->inError:Z

    .line 16
    .line 17
    const-string v5, "class"

    .line 18
    .line 19
    invoke-interface {p3, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-static {v5}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    const/4 v7, 0x1

    .line 28
    if-eqz v6, :cond_0

    .line 29
    .line 30
    const-string p3, "Missing class name for appender. Near ["

    .line 31
    .line 32
    const-string v0, "] line "

    .line 33
    .line 34
    invoke-static {p3, p2, v0}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/action/Action;->getLineNumber(Lch/qos/logback/core/joran/spi/InterpretationContext;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iput-boolean v7, p0, Lch/qos/logback/core/joran/action/AppenderAction;->inError:Z

    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p0, p2}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v5}, Lch/qos/logback/core/joran/action/AppenderAction;->warnDeprecated(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-class p2, Lch/qos/logback/core/Appender;

    .line 77
    .line 78
    iget-object v4, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    .line 79
    .line 80
    invoke-static {v5, p2, v4}, Lch/qos/logback/core/util/OptionHelper;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Lch/qos/logback/core/Context;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    check-cast p2, Lch/qos/logback/core/Appender;

    .line 85
    .line 86
    iput-object p2, p0, Lch/qos/logback/core/joran/action/AppenderAction;->appender:Lch/qos/logback/core/Appender;

    .line 87
    .line 88
    iget-object v4, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    .line 89
    .line 90
    invoke-interface {p2, v4}, Lch/qos/logback/core/spi/ContextAware;->setContext(Lch/qos/logback/core/Context;)V

    .line 91
    .line 92
    .line 93
    const-string p2, "name"

    .line 94
    .line 95
    invoke-interface {p3, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p1, p2}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-static {p2}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    if-eqz p3, :cond_1

    .line 108
    .line 109
    new-instance p3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    invoke-virtual {p0, p3}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :catch_0
    move-exception p1

    .line 129
    goto :goto_1

    .line 130
    :cond_1
    iget-object p3, p0, Lch/qos/logback/core/joran/action/AppenderAction;->appender:Lch/qos/logback/core/Appender;

    .line 131
    .line 132
    invoke-interface {p3, p2}, Lch/qos/logback/core/Appender;->setName(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance p3, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    invoke-virtual {p0, p3}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :goto_0
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getObjectMap()Ljava/util/Map;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    const-string v1, "APPENDER_BAG"

    .line 158
    .line 159
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p3

    .line 163
    check-cast p3, Ljava/util/HashMap;

    .line 164
    .line 165
    iget-object v1, p0, Lch/qos/logback/core/joran/action/AppenderAction;->appender:Lch/qos/logback/core/Appender;

    .line 166
    .line 167
    invoke-virtual {p3, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    iget-object p2, p0, Lch/qos/logback/core/joran/action/AppenderAction;->appender:Lch/qos/logback/core/Appender;

    .line 171
    .line 172
    invoke-virtual {p1, p2}, Lch/qos/logback/core/joran/spi/InterpretationContext;->pushObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :goto_1
    iput-boolean v7, p0, Lch/qos/logback/core/joran/action/AppenderAction;->inError:Z

    .line 177
    .line 178
    new-instance p2, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string p3, "Could not create an Appender of type ["

    .line 181
    .line 182
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-virtual {p0, p2, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    .line 197
    .line 198
    new-instance p2, Lch/qos/logback/core/joran/spi/ActionException;

    .line 199
    .line 200
    invoke-direct {p2, p1}, Lch/qos/logback/core/joran/spi/ActionException;-><init>(Ljava/lang/Throwable;)V

    .line 201
    .line 202
    .line 203
    throw p2
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 1

    iget-boolean p2, p0, Lch/qos/logback/core/joran/action/AppenderAction;->inError:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lch/qos/logback/core/joran/action/AppenderAction;->appender:Lch/qos/logback/core/Appender;

    instance-of v0, p2, Lch/qos/logback/core/spi/LifeCycle;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lch/qos/logback/core/spi/LifeCycle;->start()V

    :cond_1
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lch/qos/logback/core/joran/action/AppenderAction;->appender:Lch/qos/logback/core/Appender;

    if-eq p2, v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The object at the of the stack is not the appender named ["

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lch/qos/logback/core/joran/action/AppenderAction;->appender:Lch/qos/logback/core/Appender;

    invoke-interface {p2}, Lch/qos/logback/core/Appender;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] pushed earlier."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->popObject()Ljava/lang/Object;

    :goto_0
    return-void
.end method
