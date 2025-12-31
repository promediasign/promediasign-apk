.class final Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;
.super Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/LookupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringLookupComparer"
.end annotation


# instance fields
.field private _isMatchFunction:Z

.field private _matchExact:Z

.field private _value:Ljava/lang/String;

.field private final _wildCardPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/eval/StringEval;ZZ)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparerBase;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_value:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->getWildCardPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_wildCardPattern:Ljava/util/regex/Pattern;

    iput-boolean p2, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_matchExact:Z

    iput-boolean p3, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_isMatchFunction:Z

    return-void
.end method


# virtual methods
.method public compareSameType(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;
    .locals 2

    check-cast p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_wildCardPattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    iget-boolean v1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_isMatchFunction:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_matchExact:Z

    if-nez v1, :cond_1

    :cond_0
    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->valueOf(Z)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->valueOf(I)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object p1

    return-object p1
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_value:Ljava/lang/String;

    return-object v0
.end method
