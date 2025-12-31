.class Lch/qos/logback/core/pattern/parser/Token;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static BARE_COMPOSITE_KEYWORD_TOKEN:Lch/qos/logback/core/pattern/parser/Token; = null

.field static final COMPOSITE_KEYWORD:I = 0x3ed

.field static final CURLY_LEFT:I = 0x7b

.field static final CURLY_RIGHT:I = 0x7d

.field static final DOT:I = 0x2e

.field static final EOF:I = 0x7fffffff

.field static EOF_TOKEN:Lch/qos/logback/core/pattern/parser/Token; = null

.field static final FORMAT_MODIFIER:I = 0x3ea

.field static final LITERAL:I = 0x3e8

.field static final MINUS:I = 0x2d

.field static final OPTION:I = 0x3ee

.field static final PERCENT:I = 0x25

.field static PERCENT_TOKEN:Lch/qos/logback/core/pattern/parser/Token; = null

.field static final RIGHT_PARENTHESIS:I = 0x29

.field static RIGHT_PARENTHESIS_TOKEN:Lch/qos/logback/core/pattern/parser/Token; = null

.field static final SIMPLE_KEYWORD:I = 0x3ec


# instance fields
.field private final optionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final type:I

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lch/qos/logback/core/pattern/parser/Token;

    const v1, 0x7fffffff

    const-string v2, "EOF"

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/pattern/parser/Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lch/qos/logback/core/pattern/parser/Token;->EOF_TOKEN:Lch/qos/logback/core/pattern/parser/Token;

    new-instance v0, Lch/qos/logback/core/pattern/parser/Token;

    const/16 v1, 0x29

    invoke-direct {v0, v1}, Lch/qos/logback/core/pattern/parser/Token;-><init>(I)V

    sput-object v0, Lch/qos/logback/core/pattern/parser/Token;->RIGHT_PARENTHESIS_TOKEN:Lch/qos/logback/core/pattern/parser/Token;

    new-instance v0, Lch/qos/logback/core/pattern/parser/Token;

    const/16 v1, 0x3ed

    const-string v2, "BARE"

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/pattern/parser/Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lch/qos/logback/core/pattern/parser/Token;->BARE_COMPOSITE_KEYWORD_TOKEN:Lch/qos/logback/core/pattern/parser/Token;

    new-instance v0, Lch/qos/logback/core/pattern/parser/Token;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Lch/qos/logback/core/pattern/parser/Token;-><init>(I)V

    sput-object v0, Lch/qos/logback/core/pattern/parser/Token;->PERCENT_TOKEN:Lch/qos/logback/core/pattern/parser/Token;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lch/qos/logback/core/pattern/parser/Token;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lch/qos/logback/core/pattern/parser/Token;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lch/qos/logback/core/pattern/parser/Token;->type:I

    iput-object p2, p0, Lch/qos/logback/core/pattern/parser/Token;->value:Ljava/lang/String;

    iput-object p3, p0, Lch/qos/logback/core/pattern/parser/Token;->optionsList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lch/qos/logback/core/pattern/parser/Token;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lch/qos/logback/core/pattern/parser/Token;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lch/qos/logback/core/pattern/parser/Token;

    iget v1, p0, Lch/qos/logback/core/pattern/parser/Token;->type:I

    iget v3, p1, Lch/qos/logback/core/pattern/parser/Token;->type:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/Token;->value:Ljava/lang/String;

    iget-object p1, p1, Lch/qos/logback/core/pattern/parser/Token;->value:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/Token;->optionsList:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lch/qos/logback/core/pattern/parser/Token;->type:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/Token;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lch/qos/logback/core/pattern/parser/Token;->type:I

    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/Token;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lch/qos/logback/core/pattern/parser/Token;->type:I

    .line 2
    .line 3
    const/16 v1, 0x25

    .line 4
    .line 5
    if-eq v0, v1, :cond_3

    .line 6
    .line 7
    const/16 v1, 0x29

    .line 8
    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/16 v1, 0x3e8

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x3ea

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    const-string v0, "UNKNOWN"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_0
    const-string v0, "OPTION"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_1
    const-string v0, "COMPOSITE_KEYWORD"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_2
    const-string v0, "SIMPLE_KEYWORD"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v0, "FormatModifier"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string v0, "LITERAL"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-string v0, "RIGHT_PARENTHESIS"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const-string v0, "%"

    .line 44
    .line 45
    :goto_0
    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/Token;->value:Ljava/lang/String;

    .line 46
    .line 47
    const-string v2, "Token("

    .line 48
    .line 49
    if-nez v1, :cond_4

    .line 50
    .line 51
    const-string v1, ")"

    .line 52
    .line 53
    invoke-static {v2, v0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0

    .line 58
    :cond_4
    const-string v1, ", \""

    .line 59
    .line 60
    invoke-static {v2, v0, v1}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/Token;->value:Ljava/lang/String;

    .line 65
    .line 66
    const-string v2, "\")"

    .line 67
    .line 68
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
