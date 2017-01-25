.class Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$17;
.super Lorg/apache/ignite/internal/util/typedef/CX1;
.source "DataStructuresProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->set(Ljava/lang/String;Lorg/apache/ignite/configuration/CollectionConfiguration;)Lorg/apache/ignite/IgniteSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/typedef/CX1",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
        "Lorg/apache/ignite/IgniteSet",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

.field final synthetic val$cfg:Lorg/apache/ignite/configuration/CollectionConfiguration;

.field final synthetic val$create:Z

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/String;ZLorg/apache/ignite/configuration/CollectionConfiguration;)V
    .locals 0

    .prologue
    .line 1072
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$17;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$17;->val$name:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$17;->val$create:Z

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$17;->val$cfg:Lorg/apache/ignite/configuration/CollectionConfiguration;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CX1;-><init>()V

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
    .line 1072
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$17;->applyx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/IgniteSet;

    move-result-object v0

    return-object v0
.end method

.method public applyx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/IgniteSet;
    .locals 4
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            ")",
            "Lorg/apache/ignite/IgniteSet",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1074
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dataStructures()Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$17;->val$name:Ljava/lang/String;

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$17;->val$create:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$17;->val$cfg:Lorg/apache/ignite/configuration/CollectionConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CollectionConfiguration;->isCollocated()Z

    move-result v0

    :goto_0
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$17;->val$create:Z

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->set(Ljava/lang/String;ZZ)Lorg/apache/ignite/IgniteSet;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
