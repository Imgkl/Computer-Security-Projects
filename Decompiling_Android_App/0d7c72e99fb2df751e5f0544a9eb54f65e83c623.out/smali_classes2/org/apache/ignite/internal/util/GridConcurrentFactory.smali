.class public Lorg/apache/ignite/internal/util/GridConcurrentFactory;
.super Ljava/lang/Object;
.source "GridConcurrentFactory.java"


# static fields
.field private static final CONCURRENCY_LEVEL:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "IGNITE_MAP_CONCURRENCY_LEVEL"

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lorg/apache/ignite/IgniteSystemProperties;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/util/GridConcurrentFactory;->CONCURRENCY_LEVEL:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static newMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    sget v1, Lorg/apache/ignite/internal/util/GridConcurrentFactory;->CONCURRENCY_LEVEL:I

    mul-int/lit8 v1, v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    sget v3, Lorg/apache/ignite/internal/util/GridConcurrentFactory;->CONCURRENCY_LEVEL:I

    invoke-direct {v0, v1, v2, v3}, Lorg/jsr166/ConcurrentHashMap8;-><init>(IFI)V

    return-object v0
.end method
