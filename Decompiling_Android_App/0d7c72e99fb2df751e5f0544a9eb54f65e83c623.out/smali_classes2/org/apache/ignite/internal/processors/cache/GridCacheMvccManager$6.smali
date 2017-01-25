.class Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$6;
.super Ljava/lang/Object;
.source "GridCacheMvccManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->finishKeys(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

.field final synthetic val$keys0:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 989
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$6;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$6;->val$keys0:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 989
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$6;->apply(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Z
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .prologue
    .line 991
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$6;->val$keys0:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
