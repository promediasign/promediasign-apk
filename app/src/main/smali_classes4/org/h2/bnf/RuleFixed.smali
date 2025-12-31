.class public Lorg/h2/bnf/RuleFixed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/bnf/Rule;


# static fields
.field public static final AF:I = 0xd

.field public static final ANY_EXCEPT_2_DOLLAR:I = 0x8

.field public static final ANY_EXCEPT_DOUBLE_QUOTE:I = 0x4

.field public static final ANY_EXCEPT_SINGLE_QUOTE:I = 0x3

.field public static final ANY_UNTIL_END:I = 0x6

.field public static final ANY_UNTIL_EOL:I = 0x5

.field public static final ANY_WORD:I = 0x7

.field public static final AZ_UNDERSCORE:I = 0xc

.field public static final CLOSE_BRACKET:I = 0x10

.field public static final CONCAT:I = 0xb

.field public static final DIGIT:I = 0xe

.field public static final HEX_START:I = 0xa

.field public static final HMS:I = 0x1

.field public static final NANOS:I = 0x2

.field public static final OPEN_BRACKET:I = 0xf

.field public static final YMD:I


# instance fields
.field private final type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/h2/bnf/RuleFixed;->type:I

    return-void
.end method


# virtual methods
.method public accept(Lorg/h2/bnf/BnfVisitor;)V
    .locals 1

    iget v0, p0, Lorg/h2/bnf/RuleFixed;->type:I

    invoke-interface {p1, v0}, Lorg/h2/bnf/BnfVisitor;->visitRuleFixed(I)V

    return-void
.end method

.method public autoComplete(Lorg/h2/bnf/Sentence;)Z
    .locals 9

    invoke-virtual {p1}, Lorg/h2/bnf/Sentence;->stopIfRequired()V

    invoke-virtual {p1}, Lorg/h2/bnf/Sentence;->getQuery()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/h2/bnf/RuleFixed;->type:I

    const-string v2, "Hello World"

    const-string v3, "0"

    const-string v4, "1"

    const/4 v5, 0x2

    const-string v6, "anything"

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/h2/bnf/RuleFixed;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "]"

    invoke-virtual {p1, v1, v1, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1

    :goto_0
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    :goto_1
    move-object v1, v0

    :cond_2
    :goto_2
    const/4 v2, 0x1

    goto/16 :goto_13

    :pswitch_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "["

    invoke-virtual {p1, v1, v1, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_1

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v0

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "digit"

    :goto_4
    invoke-virtual {p1, v2, v4, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    :goto_5
    const/4 v2, 0x0

    goto/16 :goto_13

    :pswitch_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_6

    const/16 v2, 0x46

    if-gt v1, v2, :cond_6

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_6
    move-object v1, v0

    :goto_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "hex character"

    const-string v3, "0A"

    :goto_7
    invoke-virtual {p1, v2, v3, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    :pswitch_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_8

    :cond_7
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_8
    move-object v1, v0

    :goto_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "character"

    const-string v3, "A"

    goto :goto_7

    :pswitch_6
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "||"

    if-eqz v2, :cond_9

    invoke-virtual {p1, v3, v1, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v3, v3, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :pswitch_7
    const-string v1, "0X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_a

    :cond_b
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "x"

    invoke-virtual {p1, v1, v2, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_9

    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p1, v1, v1, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_d
    :goto_9
    move-object v1, v0

    goto/16 :goto_5

    :cond_e
    :goto_a
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_8
    move-object v1, v0

    :goto_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "$$"

    if-lez v3, :cond_f

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1, v6, v2, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, v4, v4, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :pswitch_9
    move-object v1, v0

    :goto_c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_10

    invoke-static {v1}, Lorg/h2/bnf/Bnf;->startWithSpace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1, v6, v6, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :pswitch_a
    move-object v1, v0

    :goto_d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_11

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_11

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_11
    const-string v2, "\"\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "identifier"

    invoke-virtual {p1, v6, v2, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "\""

    :goto_e
    invoke-virtual {p1, v2, v2, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :pswitch_b
    move-object v1, v0

    :goto_f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_13

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x27

    if-eq v3, v4, :cond_13

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_13
    const-string v3, "\'\'"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1, v6, v2, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "\'"

    goto :goto_e

    :pswitch_c
    move-object v1, v0

    :goto_10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_15

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "nanoseconds"

    invoke-virtual {p1, v2, v3, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    :pswitch_d
    move-object v1, v0

    :goto_11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_16

    const-string v2, "0123456789:"

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_16

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "12:00:00"

    goto/16 :goto_4

    :pswitch_e
    move-object v1, v0

    :goto_12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_17

    const-string v2, "0123456789-"

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_17

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "2006-01-01"

    invoke-virtual {p1, v2, v4, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    :goto_13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    if-eqz v2, :cond_18

    :goto_14
    invoke-static {v1}, Lorg/h2/bnf/Bnf;->startWithSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_18
    invoke-virtual {p1, v1}, Lorg/h2/bnf/Sentence;->setQuery(Ljava/lang/String;)V

    return v7

    :cond_19
    return v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setLinks(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/bnf/RuleHead;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
