.class public Lorg/jdom/output/XMLOutputter$NamespaceStack;
.super Lorg/jdom/output/NamespaceStack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/output/XMLOutputter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NamespaceStack"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/jdom/output/XMLOutputter;


# direct methods
.method public constructor <init>(Lorg/jdom/output/XMLOutputter;)V
    .locals 0

    invoke-direct {p0}, Lorg/jdom/output/NamespaceStack;-><init>()V

    iput-object p1, p0, Lorg/jdom/output/XMLOutputter$NamespaceStack;->this$0:Lorg/jdom/output/XMLOutputter;

    return-void
.end method
