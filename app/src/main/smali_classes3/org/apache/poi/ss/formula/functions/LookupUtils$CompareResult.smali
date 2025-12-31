.class public final Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/LookupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompareResult"
.end annotation


# static fields
.field public static final EQUAL:Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

.field public static final GREATER_THAN:Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

.field public static final LESS_THAN:Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

.field public static final TYPE_MISMATCH:Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;


# instance fields
.field private final _isEqual:Z

.field private final _isGreaterThan:Z

.field private final _isLessThan:Z

.field private final _isTypeMismatch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;-><init>(ZI)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->TYPE_MISMATCH:Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;-><init>(ZI)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->LESS_THAN:Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    invoke-direct {v0, v2, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;-><init>(ZI)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->EQUAL:Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;-><init>(ZI)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->GREATER_THAN:Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    return-void
.end method

.method private constructor <init>(ZI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->_isTypeMismatch:Z

    iput-boolean v1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->_isLessThan:Z

    iput-boolean v1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->_isEqual:Z

    iput-boolean v1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->_isGreaterThan:Z

    goto :goto_3

    :cond_0
    iput-boolean v1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->_isTypeMismatch:Z

    if-gez p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->_isLessThan:Z

    if-nez p2, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->_isEqual:Z

    if-lez p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->_isGreaterThan:Z

    :goto_3
    return-void
.end method

.method private formatAsString()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->_isTypeMismatch:Z

    if-eqz v0, :cond_0

    const-string v0, "TYPE_MISMATCH"

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->_isLessThan:Z

    if-eqz v0, :cond_1

    const-string v0, "LESS_THAN"

    return-object v0

    :cond_1
    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->_isEqual:Z

    if-eqz v0, :cond_2

    const-string v0, "EQUAL"

    return-object v0

    :cond_2
    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->_isGreaterThan:Z

    if-eqz v0, :cond_3

    const-string v0, "GREATER_THAN"

    return-object v0

    :cond_3
    const-string v0, "??error??"

    return-object v0
.end method

.method public static valueOf(I)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;
    .locals 0

    .line 1
    if-gez p0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->LESS_THAN:Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    return-object p0

    :cond_0
    if-lez p0, :cond_1

    sget-object p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->GREATER_THAN:Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->EQUAL:Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    return-object p0
.end method

.method public static valueOf(Z)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;
    .locals 0

    .line 2
    if-eqz p0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->EQUAL:Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->LESS_THAN:Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    return-object p0
.end method


# virtual methods
.method public isEqual()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->_isEqual:Z

    return v0
.end method

.method public isGreaterThan()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->_isGreaterThan:Z

    return v0
.end method

.method public isLessThan()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->_isLessThan:Z

    return v0
.end method

.method public isTypeMismatch()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->_isTypeMismatch:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    .line 7
    .line 8
    const-string v2, " ["

    .line 9
    .line 10
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->y(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->formatAsString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "]"

    .line 18
    .line 19
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method
