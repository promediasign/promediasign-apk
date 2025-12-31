.class final enum Lcom/googlecode/concurrentlinkedhashmap/Weighers$SingletonEntryWeigher;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/concurrentlinkedhashmap/Weighers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SingletonEntryWeigher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/googlecode/concurrentlinkedhashmap/Weighers$SingletonEntryWeigher;",
        ">;",
        "Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/googlecode/concurrentlinkedhashmap/Weighers$SingletonEntryWeigher;

.field public static final enum INSTANCE:Lcom/googlecode/concurrentlinkedhashmap/Weighers$SingletonEntryWeigher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/googlecode/concurrentlinkedhashmap/Weighers$SingletonEntryWeigher;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/googlecode/concurrentlinkedhashmap/Weighers$SingletonEntryWeigher;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/concurrentlinkedhashmap/Weighers$SingletonEntryWeigher;->INSTANCE:Lcom/googlecode/concurrentlinkedhashmap/Weighers$SingletonEntryWeigher;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/googlecode/concurrentlinkedhashmap/Weighers$SingletonEntryWeigher;

    aput-object v0, v1, v2

    sput-object v1, Lcom/googlecode/concurrentlinkedhashmap/Weighers$SingletonEntryWeigher;->$VALUES:[Lcom/googlecode/concurrentlinkedhashmap/Weighers$SingletonEntryWeigher;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public weightOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
