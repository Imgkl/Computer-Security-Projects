.class public final enum Lorg/apache/ignite/internal/client/GridClientCacheFlag;
.super Ljava/lang/Enum;
.source "GridClientCacheFlag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/client/GridClientCacheFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/client/GridClientCacheFlag;

.field public static final enum INVALIDATE:Lorg/apache/ignite/internal/client/GridClientCacheFlag;

.field public static final enum KEEP_PORTABLES:Lorg/apache/ignite/internal/client/GridClientCacheFlag;

.field public static final enum SKIP_STORE:Lorg/apache/ignite/internal/client/GridClientCacheFlag;

.field public static final enum SKIP_SWAP:Lorg/apache/ignite/internal/client/GridClientCacheFlag;

.field public static final enum SYNC_COMMIT:Lorg/apache/ignite/internal/client/GridClientCacheFlag;

.field private static final VALS:[Lorg/apache/ignite/internal/client/GridClientCacheFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    const-string v1, "SKIP_STORE"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/client/GridClientCacheFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/client/GridClientCacheFlag;->SKIP_STORE:Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    .line 30
    new-instance v0, Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    const-string v1, "SKIP_SWAP"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/client/GridClientCacheFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/client/GridClientCacheFlag;->SKIP_SWAP:Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    .line 33
    new-instance v0, Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    const-string v1, "SYNC_COMMIT"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/client/GridClientCacheFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/client/GridClientCacheFlag;->SYNC_COMMIT:Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    .line 40
    new-instance v0, Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    const-string v1, "INVALIDATE"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/client/GridClientCacheFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/client/GridClientCacheFlag;->INVALIDATE:Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    .line 51
    new-instance v0, Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    const-string v1, "KEEP_PORTABLES"

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/internal/client/GridClientCacheFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/client/GridClientCacheFlag;->KEEP_PORTABLES:Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    sget-object v1, Lorg/apache/ignite/internal/client/GridClientCacheFlag;->SKIP_STORE:Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/client/GridClientCacheFlag;->SKIP_SWAP:Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/client/GridClientCacheFlag;->SYNC_COMMIT:Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/client/GridClientCacheFlag;->INVALIDATE:Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/internal/client/GridClientCacheFlag;->KEEP_PORTABLES:Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/ignite/internal/client/GridClientCacheFlag;->$VALUES:[Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    .line 54
    invoke-static {}, Lorg/apache/ignite/internal/client/GridClientCacheFlag;->values()[Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/client/GridClientCacheFlag;->VALS:[Lorg/apache/ignite/internal/client/GridClientCacheFlag;

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

.method public static fromOrdinal(I)Lorg/apache/ignite/internal/client/GridClientCacheFlag;
    .locals 1
    .param p0, "ord"    # I

    .prologue
    .line 63
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/client/GridClientCacheFlag;->VALS:[Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/client/GridClientCacheFlag;->VALS:[Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/client/GridClientCacheFlag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/client/GridClientCacheFlag;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/apache/ignite/internal/client/GridClientCacheFlag;->$VALUES:[Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/client/GridClientCacheFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    return-object v0
.end method
