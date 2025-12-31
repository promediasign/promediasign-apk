.class public Lorg/h2/engine/Session$TimeoutValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/engine/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeoutValue"
.end annotation


# instance fields
.field final created:J

.field final value:Lorg/h2/value/Value;


# direct methods
.method public constructor <init>(Lorg/h2/value/Value;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/engine/Session$TimeoutValue;->created:J

    iput-object p1, p0, Lorg/h2/engine/Session$TimeoutValue;->value:Lorg/h2/value/Value;

    return-void
.end method
