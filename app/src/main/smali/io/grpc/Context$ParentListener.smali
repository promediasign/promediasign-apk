.class Lio/grpc/Context$ParentListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/Context$CancellationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/Context;


# direct methods
.method private constructor <init>(Lio/grpc/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/Context$ParentListener;->this$0:Lio/grpc/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/Context;Lio/grpc/Context$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/Context$ParentListener;-><init>(Lio/grpc/Context;)V

    return-void
.end method
