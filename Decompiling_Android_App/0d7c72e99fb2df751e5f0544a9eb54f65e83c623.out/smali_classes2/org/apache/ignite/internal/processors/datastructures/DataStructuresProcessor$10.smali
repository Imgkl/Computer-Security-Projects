.class Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$10;
.super Lorg/apache/ignite/internal/util/lang/IgniteClosureX;
.source "DataStructuresProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->queue(Ljava/lang/String;ILorg/apache/ignite/configuration/CollectionConfiguration;)Lorg/apache/ignite/IgniteQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/lang/IgniteClosureX",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
        "Lorg/apache/ignite/IgniteQueue",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

.field final synthetic val$cap0:I

.field final synthetic val$cfg:Lorg/apache/ignite/configuration/CollectionConfiguration;

.field final synthetic val$create:Z

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/String;IZLorg/apache/ignite/configuration/CollectionConfiguration;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$10;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$10;->val$name:Ljava/lang/String;

    iput p3, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$10;->val$cap0:I

    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$10;->val$create:Z

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$10;->val$cfg:Lorg/apache/ignite/configuration/CollectionConfiguration;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/IgniteClosureX;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyx(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 700
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$10;->applyx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/IgniteQueue;

    move-result-object v0

    return-object v0
.end method

.method public applyx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/IgniteQueue;
    .locals 5
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            ")",
            "Lorg/apache/ignite/IgniteQueue",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 702
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dataStructures()Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$10;->val$name:Ljava/lang/String;

    iget v3, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$10;->val$cap0:I

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$10;->val$create:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$10;->val$cfg:Lorg/apache/ignite/configuration/CollectionConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CollectionConfiguration;->isCollocated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$10;->val$create:Z

    invoke-virtual {v1, v2, v3, v0, v4}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->queue(Ljava/lang/String;IZZ)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
