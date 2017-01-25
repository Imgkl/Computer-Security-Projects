.class Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;
.super Ljava/lang/Object;
.source "GridCacheEvictionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EvictionInfo"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private entry:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

.field private filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

.field private ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1469
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 1
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p3, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p4, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .prologue
    .line 1485
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1486
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1487
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1489
    :cond_1
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->entry:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 1490
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 1491
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 1492
    return-void
.end method


# virtual methods
.method entry()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .locals 1

    .prologue
    .line 1498
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->entry:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    return-object v0
.end method

.method filter()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1517
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 1505
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method
