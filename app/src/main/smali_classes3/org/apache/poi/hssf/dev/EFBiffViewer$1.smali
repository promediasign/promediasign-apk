.class Lorg/apache/poi/hssf/dev/EFBiffViewer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/eventusermodel/HSSFListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/hssf/dev/EFBiffViewer;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/hssf/dev/EFBiffViewer;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/dev/EFBiffViewer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/dev/EFBiffViewer$1;->this$0:Lorg/apache/poi/hssf/dev/EFBiffViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method
