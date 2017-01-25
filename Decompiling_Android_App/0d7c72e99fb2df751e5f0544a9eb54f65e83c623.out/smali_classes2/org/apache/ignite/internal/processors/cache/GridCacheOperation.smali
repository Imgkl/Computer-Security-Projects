.class public final enum Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
.super Ljava/lang/Enum;
.source "GridCacheOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

.field public static final enum CREATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

.field public static final enum DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

.field public static final enum NOOP:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

.field public static final enum READ:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

.field public static final enum RELOAD:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

.field public static final enum TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

.field public static final enum UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

.field private static final VALS:[Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    const-string v1, "READ"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->READ:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 30
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->CREATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 33
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 36
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 39
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    const-string v1, "TRANSFORM"

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 42
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    const-string v1, "RELOAD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->RELOAD:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 48
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    const-string v1, "NOOP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->NOOP:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 25
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->READ:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->CREATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->RELOAD:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->NOOP:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->$VALUES:[Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 51
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->values()[Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->VALS:[Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 58
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->VALS:[Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->VALS:[Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->$VALUES:[Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    return-object v0
.end method
