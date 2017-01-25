.class public final enum Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;
.super Ljava/lang/Enum;
.source "CacheDistributionMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

.field public static final enum CLIENT_ONLY:Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

.field public static final enum NEAR_ONLY:Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

.field public static final enum NEAR_PARTITIONED:Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

.field public static final enum PARTITIONED_ONLY:Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

.field private static final VALS:[Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

    const-string v1, "CLIENT_ONLY"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;->CLIENT_ONLY:Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

    .line 40
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

    const-string v1, "NEAR_ONLY"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;->NEAR_ONLY:Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

    .line 47
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

    const-string v1, "NEAR_PARTITIONED"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;->NEAR_PARTITIONED:Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

    .line 53
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

    const-string v1, "PARTITIONED_ONLY"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;->PARTITIONED_ONLY:Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;->CLIENT_ONLY:Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;->NEAR_ONLY:Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;->NEAR_PARTITIONED:Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;->PARTITIONED_ONLY:Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;->$VALUES:[Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

    .line 56
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;->values()[Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;->VALS:[Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 65
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;->VALS:[Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;->VALS:[Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;->$VALUES:[Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/CacheDistributionMode;

    return-object v0
.end method
