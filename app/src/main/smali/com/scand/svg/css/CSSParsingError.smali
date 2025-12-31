.class public Lcom/scand/svg/css/CSSParsingError;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private err:Ljava/lang/String;

.field private line:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/scand/svg/css/CSSParsingError;->line:I

    iput-object p2, p0, Lcom/scand/svg/css/CSSParsingError;->err:Ljava/lang/String;

    return-void
.end method
