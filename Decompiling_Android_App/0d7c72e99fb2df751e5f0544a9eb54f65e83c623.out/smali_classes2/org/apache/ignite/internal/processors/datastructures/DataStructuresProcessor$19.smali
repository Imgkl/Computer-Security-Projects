.class Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$19;
.super Lorg/apache/ignite/internal/util/typedef/CIX1;
.source "DataStructuresProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->removeSet(Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/typedef/CIX1",
        "<",
        "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

.field final synthetic val$cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 0

    .prologue
    .line 1094
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$19;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$19;->val$cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CIX1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyx(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1094
    check-cast p1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$19;->applyx(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;)V

    return-void
.end method

.method public applyx(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;)V
    .locals 2
    .param p1, "hdr"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1096
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$19;->val$cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dataStructures()Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->removeSetData(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1097
    return-void
.end method
