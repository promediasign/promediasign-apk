.class public Lorg/h2/mvstore/CursorPos;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public index:I

.field public page:Lorg/h2/mvstore/Page;

.field public final parent:Lorg/h2/mvstore/CursorPos;


# direct methods
.method public constructor <init>(Lorg/h2/mvstore/Page;ILorg/h2/mvstore/CursorPos;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/mvstore/CursorPos;->page:Lorg/h2/mvstore/Page;

    iput p2, p0, Lorg/h2/mvstore/CursorPos;->index:I

    iput-object p3, p0, Lorg/h2/mvstore/CursorPos;->parent:Lorg/h2/mvstore/CursorPos;

    return-void
.end method
