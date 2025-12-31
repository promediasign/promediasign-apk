.class public final enum Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

.field public static final enum DATE:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

.field public static final enum GENERAL:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

.field public static final enum NUMBER:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

.field public static final enum UNUSED:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

.field private static final conversionCategoriesForIntersect:[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

.field private static final namedCategories:[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;


# instance fields
.field public final strings:[Ljava/lang/String;

.field public final types:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    sget-object v1, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->UNUSED:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->GENERAL:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->DATE:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->NUMBER:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    const-string v1, "UNUSED"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->UNUSED:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    new-instance v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    const-string v1, "GENERAL"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3, v3}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->GENERAL:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    new-instance v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    const-class v1, Ljava/lang/Number;

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/util/Date;

    aput-object v6, v5, v2

    aput-object v1, v5, v4

    const-string v6, "date"

    const-string v7, "time"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "DATE"

    invoke-direct {v0, v7, v3, v5, v6}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->DATE:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    new-instance v5, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v1, v6, v2

    const-string v1, "number"

    const-string v7, "choice"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const-string v7, "NUMBER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6, v1}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/String;)V

    sput-object v5, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->NUMBER:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    invoke-static {}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->$values()[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    move-result-object v1

    sput-object v1, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->$VALUES:[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    new-array v1, v3, [Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    aput-object v0, v1, v2

    aput-object v5, v1, v4

    sput-object v1, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->namedCategories:[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    new-array v1, v3, [Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    aput-object v0, v1, v2

    aput-object v5, v1, v4

    sput-object v1, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->conversionCategoriesForIntersect:[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->types:[Ljava/lang/Class;

    iput-object p4, p0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->strings:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .locals 1

    const-class v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    return-object p0
.end method

.method public static values()[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .locals 1

    sget-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->$VALUES:[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    invoke-virtual {v0}, [Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->types:[Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, " conversion category (all types)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    new-instance v1, Lj$/util/StringJoiner;

    const-string v2, " conversion category (one of: "

    const-string v3, ")"

    const-string v4, ", "

    invoke-direct {v1, v4, v2, v3}, Lj$/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->types:[Ljava/lang/Class;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lj$/util/StringJoiner;->add(Ljava/lang/CharSequence;)Lj$/util/StringJoiner;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
