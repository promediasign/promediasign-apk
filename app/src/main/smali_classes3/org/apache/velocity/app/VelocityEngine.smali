.class public Lorg/apache/velocity/app/VelocityEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/runtime/RuntimeConstants;


# instance fields
.field private ri:Lorg/apache/velocity/runtime/RuntimeInstance;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/RuntimeInstance;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/app/VelocityEngine;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    return-void
.end method


# virtual methods
.method public getTemplate(Ljava/lang/String;)Lorg/apache/velocity/Template;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/app/VelocityEngine;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p1}, Lorg/apache/velocity/runtime/RuntimeInstance;->getTemplate(Ljava/lang/String;)Lorg/apache/velocity/Template;

    move-result-object p1

    return-object p1
.end method

.method public init(Ljava/util/Properties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/app/VelocityEngine;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p1}, Lorg/apache/velocity/runtime/RuntimeInstance;->init(Ljava/util/Properties;)V

    return-void
.end method
