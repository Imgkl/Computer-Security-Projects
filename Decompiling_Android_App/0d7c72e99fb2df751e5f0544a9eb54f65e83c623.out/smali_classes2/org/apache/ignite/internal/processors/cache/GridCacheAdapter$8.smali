.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$8;
.super Ljava/lang/Object;
.source "GridCacheAdapter.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->localEntries([Lorg/apache/ignite/cache/CachePeekMode;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

.field final synthetic val$it:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 735
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$8;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.8;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$8;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$8;->val$it:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 737
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$8;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.8;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$8;->val$it:Ljava/util/Iterator;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 741
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$8;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.8;"
    const-string v0, "CacheLocalEntries []"

    return-object v0
.end method
