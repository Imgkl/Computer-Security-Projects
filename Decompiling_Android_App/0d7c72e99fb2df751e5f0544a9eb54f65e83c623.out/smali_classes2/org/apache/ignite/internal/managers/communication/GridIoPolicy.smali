.class public final enum Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
.super Ljava/lang/Enum;
.source "GridIoPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

.field public static final enum AFFINITY_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

.field public static final enum MANAGEMENT_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

.field public static final enum MARSH_CACHE_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

.field public static final enum P2P_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

.field public static final enum PUBLIC_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

.field public static final enum SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

.field public static final enum UTILITY_CACHE_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

.field private static final VALS:[Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    const-string v1, "PUBLIC_POOL"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->PUBLIC_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    .line 31
    new-instance v0, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    const-string v1, "P2P_POOL"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->P2P_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    .line 34
    new-instance v0, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    const-string v1, "SYSTEM_POOL"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    .line 37
    new-instance v0, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    const-string v1, "MANAGEMENT_POOL"

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->MANAGEMENT_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    .line 40
    new-instance v0, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    const-string v1, "AFFINITY_POOL"

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->AFFINITY_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    .line 43
    new-instance v0, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    const-string v1, "UTILITY_CACHE_POOL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->UTILITY_CACHE_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    .line 46
    new-instance v0, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    const-string v1, "MARSH_CACHE_POOL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->MARSH_CACHE_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    .line 26
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    sget-object v1, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->PUBLIC_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->P2P_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->MANAGEMENT_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->AFFINITY_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->UTILITY_CACHE_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->MARSH_CACHE_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->$VALUES:[Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    .line 49
    invoke-static {}, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->values()[Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->VALS:[Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

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

.method public static fromOrdinal(I)Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 58
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->VALS:[Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->VALS:[Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->$VALUES:[Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    return-object v0
.end method
