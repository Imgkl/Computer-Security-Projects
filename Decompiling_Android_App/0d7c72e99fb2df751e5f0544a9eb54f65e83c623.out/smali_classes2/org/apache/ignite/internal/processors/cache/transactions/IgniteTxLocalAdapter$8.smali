.class Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$8;
.super Ljava/lang/Object;
.source "IgniteTxLocalAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->enlistWrite(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljavax/cache/expiry/ExpiryPolicy;ZLjava/util/Map;Ljava/util/Map;[Ljava/lang/Object;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;Ljava/util/Collection;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI2",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

.field final synthetic val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field final synthetic val$ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2279
    const-class v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$8;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V
    .locals 0

    .prologue
    .line 2279
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$8;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$8;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$8;->val$ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2279
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$8;->apply(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;)V
    .locals 5
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 2281
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2282
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded value from remote node [key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", val="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2284
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$8;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$8;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v4

    invoke-direct {v3, p1, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;-><init>(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;I)V

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v1

    .line 2286
    .local v1, "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$8;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2288
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$8;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    .line 2290
    .local v0, "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v2, v3, :cond_2

    .line 2291
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$8;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$8;->val$ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-static {v2, v1, v0, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->access$100(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V

    .line 2294
    :goto_0
    return-void

    .line 2293
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$8;->val$ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$8;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->set(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheObject;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    goto :goto_0
.end method
