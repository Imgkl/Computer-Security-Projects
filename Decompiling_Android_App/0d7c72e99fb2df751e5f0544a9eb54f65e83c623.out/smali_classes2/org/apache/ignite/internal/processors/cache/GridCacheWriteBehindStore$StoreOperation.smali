.class final enum Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;
.super Ljava/lang/Enum;
.source "GridCacheWriteBehindStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StoreOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

.field public static final enum PUT:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

.field public static final enum RMV:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 857
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;->PUT:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    .line 860
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    const-string v1, "RMV"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;->RMV:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    .line 855
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;->PUT:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;->RMV:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;->$VALUES:[Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

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
    .line 855
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 855
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;
    .locals 1

    .prologue
    .line 855
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;->$VALUES:[Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    return-object v0
.end method
