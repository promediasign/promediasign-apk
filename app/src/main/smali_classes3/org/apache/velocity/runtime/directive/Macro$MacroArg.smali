.class public Lorg/apache/velocity/runtime/directive/Macro$MacroArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/velocity/runtime/directive/Macro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MacroArg"
.end annotation


# instance fields
.field public defaultVal:Lorg/apache/velocity/runtime/parser/node/Node;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;->defaultVal:Lorg/apache/velocity/runtime/parser/node/Node;

    return-void
.end method
