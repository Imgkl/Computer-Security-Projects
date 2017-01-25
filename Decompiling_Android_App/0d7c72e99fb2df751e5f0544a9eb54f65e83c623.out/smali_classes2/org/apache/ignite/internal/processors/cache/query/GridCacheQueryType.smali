.class public final enum Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;
.super Ljava/lang/Enum;
.source "GridCacheQueryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

.field public static final enum SCAN:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

.field public static final enum SET:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

.field public static final enum SPI:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

.field public static final enum SQL:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

.field public static final enum SQL_FIELDS:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

.field public static final enum TEXT:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

.field private static final VALS:[Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    const-string v1, "SPI"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SPI:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    .line 36
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    const-string v1, "SCAN"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SCAN:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    .line 41
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    const-string v1, "SQL"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SQL:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    .line 46
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    const-string v1, "SQL_FIELDS"

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SQL_FIELDS:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    .line 51
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->TEXT:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    .line 56
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    const-string v1, "SET"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SET:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    .line 27
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SPI:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SCAN:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SQL:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SQL_FIELDS:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->TEXT:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SET:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->$VALUES:[Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    .line 59
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->values()[Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->VALS:[Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(B)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;
    .locals 1
    .param p0, "ord"    # B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 68
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->VALS:[Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->VALS:[Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->$VALUES:[Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    return-object v0
.end method
