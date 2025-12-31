.class public final Lio/opencensus/trace/Tracing;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final traceComponent:Lio/opencensus/trace/TraceComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/opencensus/trace/Tracing;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Tracing;->logger:Ljava/util/logging/Logger;

    const-class v0, Lio/opencensus/trace/TraceComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lio/opencensus/trace/Tracing;->loadTraceComponent(Ljava/lang/ClassLoader;)Lio/opencensus/trace/TraceComponent;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Tracing;->traceComponent:Lio/opencensus/trace/TraceComponent;

    return-void
.end method

.method public static getClock()Lio/opencensus/common/Clock;
    .locals 1

    sget-object v0, Lio/opencensus/trace/Tracing;->traceComponent:Lio/opencensus/trace/TraceComponent;

    invoke-virtual {v0}, Lio/opencensus/trace/TraceComponent;->getClock()Lio/opencensus/common/Clock;

    move-result-object v0

    return-object v0
.end method

.method public static getExportComponent()Lio/opencensus/trace/export/ExportComponent;
    .locals 1

    sget-object v0, Lio/opencensus/trace/Tracing;->traceComponent:Lio/opencensus/trace/TraceComponent;

    invoke-virtual {v0}, Lio/opencensus/trace/TraceComponent;->getExportComponent()Lio/opencensus/trace/export/ExportComponent;

    move-result-object v0

    return-object v0
.end method

.method public static getPropagationComponent()Lio/opencensus/trace/propagation/PropagationComponent;
    .locals 1

    sget-object v0, Lio/opencensus/trace/Tracing;->traceComponent:Lio/opencensus/trace/TraceComponent;

    invoke-virtual {v0}, Lio/opencensus/trace/TraceComponent;->getPropagationComponent()Lio/opencensus/trace/propagation/PropagationComponent;

    move-result-object v0

    return-object v0
.end method

.method public static getTraceConfig()Lio/opencensus/trace/config/TraceConfig;
    .locals 1

    sget-object v0, Lio/opencensus/trace/Tracing;->traceComponent:Lio/opencensus/trace/TraceComponent;

    invoke-virtual {v0}, Lio/opencensus/trace/TraceComponent;->getTraceConfig()Lio/opencensus/trace/config/TraceConfig;

    move-result-object v0

    return-object v0
.end method

.method public static getTracer()Lio/opencensus/trace/Tracer;
    .locals 1

    sget-object v0, Lio/opencensus/trace/Tracing;->traceComponent:Lio/opencensus/trace/TraceComponent;

    invoke-virtual {v0}, Lio/opencensus/trace/TraceComponent;->getTracer()Lio/opencensus/trace/Tracer;

    move-result-object v0

    return-object v0
.end method

.method public static loadTraceComponent(Ljava/lang/ClassLoader;)Lio/opencensus/trace/TraceComponent;
    .locals 6

    const-class v0, Lio/opencensus/trace/TraceComponent;

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "io.opencensus.impl.trace.TraceComponentImpl"

    invoke-static {v2, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v0}, Lio/opencensus/internal/Provider;->createInstance(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/opencensus/trace/TraceComponent;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    sget-object v3, Lio/opencensus/trace/Tracing;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Couldn\'t load full implementation for TraceComponent, now trying to load lite implementation."

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    const-string v2, "io.opencensus.impllite.trace.TraceComponentImplLite"

    invoke-static {v2, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v0}, Lio/opencensus/internal/Provider;->createInstance(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/trace/TraceComponent;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    sget-object v0, Lio/opencensus/trace/Tracing;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Couldn\'t load lite implementation for TraceComponent, now using default implementation for TraceComponent."

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lio/opencensus/trace/TraceComponent;->newNoopTraceComponent()Lio/opencensus/trace/TraceComponent;

    move-result-object p0

    return-object p0
.end method
