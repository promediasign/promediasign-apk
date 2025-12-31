.class public abstract Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "SourceFile"


# instance fields
.field evaluator:Lch/qos/logback/core/boolex/EventEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/boolex/EventEvaluator<",
            "*>;"
        }
    .end annotation
.end field

.field inError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->inError:Z

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4

    const-string p2, "Adding evaluator named ["

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->inError:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    const-string v0, "class"

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->defaultClassName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Assuming default evaluator class ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->defaultClassName()Ljava/lang/String;

    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->inError:Z

    const-string p1, "Mandatory \"class\" attribute not set for <evaluator>"

    :goto_0
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "name"

    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->inError:Z

    const-string p1, "Mandatory \"name\" attribute not set for <evaluator>"

    goto :goto_0

    :cond_2
    :try_start_0
    const-class v1, Lch/qos/logback/core/boolex/EventEvaluator;

    iget-object v3, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    invoke-static {v0, v1, v3}, Lch/qos/logback/core/util/OptionHelper;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Lch/qos/logback/core/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/boolex/EventEvaluator;

    iput-object v1, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    iget-object v3, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    invoke-interface {v1, v3}, Lch/qos/logback/core/spi/ContextAware;->setContext(Lch/qos/logback/core/Context;)V

    iget-object v1, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-interface {v1, p3}, Lch/qos/logback/core/boolex/EventEvaluator;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-virtual {p1, v1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->pushObject(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] to the object stack"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->inError:Z

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Could not create evaluator of type "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public abstract defaultClassName()Ljava/lang/String;
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 1

    iget-boolean p2, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->inError:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    instance-of v0, p2, Lch/qos/logback/core/spi/LifeCycle;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lch/qos/logback/core/spi/LifeCycle;->start()V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Starting evaluator named ["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-interface {v0}, Lch/qos/logback/core/boolex/EventEvaluator;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    if-eq p2, v0, :cond_2

    const-string p1, "The object on the top the of the stack is not the evaluator pushed earlier."

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->popObject()Ljava/lang/Object;

    :try_start_0
    iget-object p1, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    const-string p2, "EVALUATOR_MAP"

    invoke-interface {p1, p2}, Lch/qos/logback/core/Context;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_3

    const-string p1, "Could not find EvaluatorMap"

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-interface {p2}, Lch/qos/logback/core/boolex/EventEvaluator;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Could not set evaluator named ["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public finish(Lch/qos/logback/core/joran/spi/InterpretationContext;)V
    .locals 0

    return-void
.end method
