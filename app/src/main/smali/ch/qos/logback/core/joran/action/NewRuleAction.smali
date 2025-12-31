.class public Lch/qos/logback/core/joran/action/NewRuleAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "SourceFile"


# instance fields
.field inError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/joran/action/NewRuleAction;->inError:Z

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4

    .line 1
    const-string p2, ","

    .line 2
    .line 3
    const-string v0, "About to add new Joran parsing rule ["

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lch/qos/logback/core/joran/action/NewRuleAction;->inError:Z

    .line 7
    .line 8
    const-string v1, "pattern"

    .line 9
    .line 10
    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "actionClass"

    .line 15
    .line 16
    invoke-interface {p3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-static {v1}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iput-boolean v3, p0, Lch/qos/logback/core/joran/action/NewRuleAction;->inError:Z

    .line 28
    .line 29
    const-string p1, "No \'pattern\' attribute in <newRule>"

    .line 30
    .line 31
    :goto_0
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-static {p3}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    iput-boolean v3, p0, Lch/qos/logback/core/joran/action/NewRuleAction;->inError:Z

    .line 42
    .line 43
    const-string p1, "No \'actionClass\' attribute in <newRule>"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, "]."

    .line 61
    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getJoranInterpreter()Lch/qos/logback/core/joran/spi/Interpreter;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/Interpreter;->getRuleStore()Lch/qos/logback/core/joran/spi/RuleStore;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    .line 81
    .line 82
    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {p1, v0, p3}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catch_0
    iput-boolean v3, p0, Lch/qos/logback/core/joran/action/NewRuleAction;->inError:Z

    .line 90
    .line 91
    const-string p1, "Could not add new Joran parsing rule ["

    .line 92
    .line 93
    const-string v0, "]"

    .line 94
    .line 95
    invoke-static {p1, v1, p2, p3, v0}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_1
    return-void
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public finish(Lch/qos/logback/core/joran/spi/InterpretationContext;)V
    .locals 0

    return-void
.end method
