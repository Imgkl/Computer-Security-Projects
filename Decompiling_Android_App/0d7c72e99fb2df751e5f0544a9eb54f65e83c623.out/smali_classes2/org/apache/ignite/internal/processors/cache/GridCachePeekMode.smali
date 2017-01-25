.class public final enum Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;
.super Ljava/lang/Enum;
.source "GridCachePeekMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

.field public static final enum DB:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

.field public static final enum GLOBAL:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

.field public static final enum NEAR_ONLY:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

.field public static final enum PARTITIONED_ONLY:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

.field public static final enum SMART:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

.field public static final enum SWAP:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

.field public static final enum TX:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

.field private static final VALS:[Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    const-string v1, "TX"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->TX:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    .line 40
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    const-string v1, "GLOBAL"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->GLOBAL:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    .line 47
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    const-string v1, "SMART"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->SMART:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    .line 50
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    const-string v1, "SWAP"

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->SWAP:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    .line 53
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    const-string v1, "DB"

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->DB:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    .line 60
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    const-string v1, "NEAR_ONLY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->NEAR_ONLY:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    .line 67
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    const-string v1, "PARTITIONED_ONLY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->PARTITIONED_ONLY:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->TX:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->GLOBAL:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->SMART:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->SWAP:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->DB:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->NEAR_ONLY:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->PARTITIONED_ONLY:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->$VALUES:[Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    .line 70
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->values()[Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->VALS:[Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(B)Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;
    .locals 1
    .param p0, "ord"    # B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 79
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->VALS:[Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->VALS:[Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->$VALUES:[Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    return-object v0
.end method
