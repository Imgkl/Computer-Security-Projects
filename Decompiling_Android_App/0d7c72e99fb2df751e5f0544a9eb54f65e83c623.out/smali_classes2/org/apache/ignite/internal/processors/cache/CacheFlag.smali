.class public final enum Lorg/apache/ignite/internal/processors/cache/CacheFlag;
.super Ljava/lang/Enum;
.source "CacheFlag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/CacheFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

.field public static final enum CLONE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

.field public static final enum FORCE_TRANSFORM_BACKUP:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

.field public static final enum INVALIDATE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

.field public static final enum LOCAL:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

.field public static final enum READ:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

.field public static final enum SKIP_STORE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

.field public static final enum SKIP_SWAP:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

.field public static final enum SYNC_COMMIT:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

.field private static final VALS:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/cache/CacheFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->LOCAL:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    .line 52
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    const-string v1, "READ"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/cache/CacheFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->READ:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    .line 63
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    const-string v1, "CLONE"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/processors/cache/CacheFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->CLONE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    .line 66
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    const-string v1, "SKIP_STORE"

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/internal/processors/cache/CacheFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->SKIP_STORE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    .line 69
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    const-string v1, "SKIP_SWAP"

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/internal/processors/cache/CacheFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->SKIP_SWAP:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    .line 72
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    const-string v1, "SYNC_COMMIT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/CacheFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->SYNC_COMMIT:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    .line 82
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    const-string v1, "INVALIDATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/CacheFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->INVALIDATE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    .line 94
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    const-string v1, "FORCE_TRANSFORM_BACKUP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/CacheFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->FORCE_TRANSFORM_BACKUP:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    .line 36
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->LOCAL:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->READ:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->CLONE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->SKIP_STORE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->SKIP_SWAP:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->SYNC_COMMIT:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->INVALIDATE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->FORCE_TRANSFORM_BACKUP:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->$VALUES:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    .line 97
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->values()[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->VALS:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 106
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->VALS:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->VALS:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->$VALUES:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    return-object v0
.end method
