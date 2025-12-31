.class public Lch/qos/logback/core/joran/action/AppenderRefAction;
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
.field inError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/joran/action/AppenderRefAction;->inError:Z

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lch/qos/logback/core/joran/action/AppenderRefAction;->inError:Z

    .line 3
    .line 4
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Lch/qos/logback/core/spi/AppenderAttachable;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string p3, "Could not find an AppenderAttachable at the top of execution stack. Near ["

    .line 14
    .line 15
    const-string v0, "] line "

    .line 16
    .line 17
    invoke-static {p3, p2, v0}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/action/Action;->getLineNumber(Lch/qos/logback/core/joran/spi/InterpretationContext;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/AppenderRefAction;->inError:Z

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    check-cast v0, Lch/qos/logback/core/spi/AppenderAttachable;

    .line 39
    .line 40
    const-string p2, "ref"

    .line 41
    .line 42
    invoke-interface {p3, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1, p2}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {p2}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    if-eqz p3, :cond_1

    .line 55
    .line 56
    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/AppenderRefAction;->inError:Z

    .line 57
    .line 58
    const-string p1, "Missing appender ref attribute in <appender-ref> tag."

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getObjectMap()Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string p3, "APPENDER_BAG"

    .line 69
    .line 70
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lch/qos/logback/core/Appender;

    .line 81
    .line 82
    if-nez p1, :cond_2

    .line 83
    .line 84
    const-string p1, "Could not find an appender named ["

    .line 85
    .line 86
    const-string p3, "]. Did you define it below instead of above in the configuration file?"

    .line 87
    .line 88
    invoke-static {p1, p2, p3}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/AppenderRefAction;->inError:Z

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string p1, "See http://logback.qos.ch/codes.html#appender_order for more details."

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v1, "Attaching appender named ["

    .line 106
    .line 107
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p2, "] to "

    .line 114
    .line 115
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p0, p2}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-interface {v0, p1}, Lch/qos/logback/core/spi/AppenderAttachable;->addAppender(Lch/qos/logback/core/Appender;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
