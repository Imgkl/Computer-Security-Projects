.class final enum Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;
.super Ljava/lang/Enum;
.source "GridCacheWriteBehindStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ValueStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

.field public static final enum FLUSHED:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

.field public static final enum NEW:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

.field public static final enum PENDING:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

.field public static final enum RETRY:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 868
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->NEW:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    .line 871
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->PENDING:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    .line 874
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    const-string v1, "RETRY"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->RETRY:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    .line 877
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    const-string v1, "FLUSHED"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->FLUSHED:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    .line 866
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->NEW:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->PENDING:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->RETRY:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->FLUSHED:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->$VALUES:[Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

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
    .line 866
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 866
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;
    .locals 1

    .prologue
    .line 866
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->$VALUES:[Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    return-object v0
.end method
