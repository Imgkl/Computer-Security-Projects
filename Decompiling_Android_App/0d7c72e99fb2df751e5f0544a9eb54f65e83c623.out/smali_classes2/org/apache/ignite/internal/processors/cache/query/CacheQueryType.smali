.class public final enum Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;
.super Ljava/lang/Enum;
.source "CacheQueryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

.field public static final enum CONTINUOUS:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

.field public static final enum FULL_TEXT:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

.field public static final enum SCAN:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

.field public static final enum SPI:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

.field public static final enum SQL:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

.field public static final enum SQL_FIELDS:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;


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
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    const-string v1, "SQL"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->SQL:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    .line 34
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    const-string v1, "SQL_FIELDS"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->SQL_FIELDS:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    .line 37
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    const-string v1, "FULL_TEXT"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->FULL_TEXT:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    .line 40
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    const-string v1, "SCAN"

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->SCAN:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    .line 43
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    const-string v1, "CONTINUOUS"

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->CONTINUOUS:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    .line 46
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    const-string v1, "SPI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->SPI:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->SQL:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->SQL_FIELDS:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->FULL_TEXT:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->SCAN:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->CONTINUOUS:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->SPI:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->$VALUES:[Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->$VALUES:[Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    return-object v0
.end method
