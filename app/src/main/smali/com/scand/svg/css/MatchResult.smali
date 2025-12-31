.class public Lcom/scand/svg/css/MatchResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALWAYS:Lcom/scand/svg/css/MatchResult;


# instance fields
.field pseudoElement:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scand/svg/css/MatchResult;

    invoke-direct {v0}, Lcom/scand/svg/css/MatchResult;-><init>()V

    sput-object v0, Lcom/scand/svg/css/MatchResult;->ALWAYS:Lcom/scand/svg/css/MatchResult;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/css/MatchResult;->pseudoElement:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPseudoElement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/MatchResult;->pseudoElement:Ljava/lang/String;

    return-object v0
.end method
