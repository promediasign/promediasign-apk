.class Lorg/apache/velocity/runtime/parser/ParserTokenManager$ParserState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/velocity/runtime/parser/ParserTokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParserState"
.end annotation


# instance fields
.field lexstate:I

.field lparen:I

.field rparen:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/velocity/runtime/parser/ParserTokenManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/ParserTokenManager$ParserState;-><init>()V

    return-void
.end method
