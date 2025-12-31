.class public Lorg/apache/velocity/runtime/parser/Token;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public beginColumn:I

.field public beginLine:I

.field public endColumn:I

.field public endLine:I

.field public image:Ljava/lang/String;

.field public kind:I

.field public next:Lorg/apache/velocity/runtime/parser/Token;

.field public specialToken:Lorg/apache/velocity/runtime/parser/Token;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/velocity/runtime/parser/Token;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    iput-object p2, p0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    return-void
.end method

.method public static newToken(I)Lorg/apache/velocity/runtime/parser/Token;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/velocity/runtime/parser/Token;->newToken(ILjava/lang/String;)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object p0

    return-object p0
.end method

.method public static newToken(ILjava/lang/String;)Lorg/apache/velocity/runtime/parser/Token;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/velocity/runtime/parser/Token;

    invoke-direct {v0, p0, p1}, Lorg/apache/velocity/runtime/parser/Token;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    return-object v0
.end method
