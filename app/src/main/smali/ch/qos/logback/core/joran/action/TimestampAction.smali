.class public Lch/qos/logback/core/joran/action/TimestampAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "SourceFile"


# static fields
.field static CONTEXT_BIRTH:Ljava/lang/String; = "contextBirth"

.field static DATE_PATTERN_ATTRIBUTE:Ljava/lang/String; = "datePattern"

.field static TIME_REFERENCE_ATTRIBUTE:Ljava/lang/String; = "timeReference"


# instance fields
.field inError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/joran/action/TimestampAction;->inError:Z

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4

    .line 1
    const-string p2, "key"

    .line 2
    .line 3
    invoke-interface {p3, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p2}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v0, "Attribute named [key] cannot be empty"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-boolean v1, p0, Lch/qos/logback/core/joran/action/TimestampAction;->inError:Z

    .line 20
    .line 21
    :cond_0
    sget-object v0, Lch/qos/logback/core/joran/action/TimestampAction;->DATE_PATTERN_ATTRIBUTE:Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, "Attribute named ["

    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object v3, Lch/qos/logback/core/joran/action/TimestampAction;->DATE_PATTERN_ATTRIBUTE:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, "] cannot be empty"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {p0, v2}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iput-boolean v1, p0, Lch/qos/logback/core/joran/action/TimestampAction;->inError:Z

    .line 58
    .line 59
    :cond_1
    sget-object v1, Lch/qos/logback/core/joran/action/TimestampAction;->TIME_REFERENCE_ATTRIBUTE:Ljava/lang/String;

    .line 60
    .line 61
    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    sget-object v2, Lch/qos/logback/core/joran/action/TimestampAction;->CONTEXT_BIRTH:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    const-string v1, "Using context birth as time reference."

    .line 74
    .line 75
    invoke-virtual {p0, v1}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    .line 79
    .line 80
    invoke-interface {v1}, Lch/qos/logback/core/Context;->getBirthTime()J

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide v1

    .line 89
    const-string v3, "Using current interpretation time, i.e. now, as time reference."

    .line 90
    .line 91
    invoke-virtual {p0, v3}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    iget-boolean v3, p0, Lch/qos/logback/core/joran/action/TimestampAction;->inError:Z

    .line 95
    .line 96
    if-eqz v3, :cond_3

    .line 97
    .line 98
    return-void

    .line 99
    :cond_3
    const-string v3, "scope"

    .line 100
    .line 101
    invoke-interface {p3, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    invoke-static {p3}, Lch/qos/logback/core/joran/action/ActionUtil;->stringToScope(Ljava/lang/String;)Lch/qos/logback/core/joran/action/ActionUtil$Scope;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    new-instance v3, Lch/qos/logback/core/util/CachingDateFormatter;

    .line 110
    .line 111
    invoke-direct {v3, v0}, Lch/qos/logback/core/util/CachingDateFormatter;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v1, v2}, Lch/qos/logback/core/util/CachingDateFormatter;->format(J)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const-string v1, "Adding property to the context with key=\""

    .line 119
    .line 120
    const-string v2, "\" and value=\""

    .line 121
    .line 122
    const-string v3, "\" to the "

    .line 123
    .line 124
    invoke-static {v1, p2, v2, v0, v3}, Lorg/apache/ftpserver/main/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v2, " scope"

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {p0, v1}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {p1, p2, v0, p3}, Lch/qos/logback/core/joran/action/ActionUtil;->setProperty(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Ljava/lang/String;Lch/qos/logback/core/joran/action/ActionUtil$Scope;)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
