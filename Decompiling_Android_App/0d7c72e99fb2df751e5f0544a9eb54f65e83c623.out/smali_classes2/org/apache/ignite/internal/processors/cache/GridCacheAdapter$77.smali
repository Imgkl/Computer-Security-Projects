.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;
.super Ljava/lang/Object;
.source "GridCacheAdapter.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->iterator(Ljava/util/Iterator;Z)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private next:Ljavax/cache/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

.field final synthetic val$deserializePortable:Z

.field final synthetic val$it:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Iterator;Z)V
    .locals 0

    .prologue
    .line 5210
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.77;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;->val$it:Ljava/util/Iterator;

    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;->val$deserializePortable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5212
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;->advance()V

    .line 5213
    return-void
.end method

.method private advance()V
    .locals 4

    .prologue
    .line 5241
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.77;"
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;->next:Ljavax/cache/Cache$Entry;

    .line 5243
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;->val$it:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5244
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;->val$it:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 5247
    .local v1, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;->val$deserializePortable:Z

    invoke-static {v2, v1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->access$1700(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Z)Ljavax/cache/Cache$Entry;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;->next:Ljavax/cache/Cache$Entry;

    .line 5249
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;->next:Ljavax/cache/Cache$Entry;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 5261
    .end local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_1
    return-void

    .line 5254
    .restart local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :catch_0
    move-exception v0

    .line 5255
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->convertToCacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 5257
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 5219
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.77;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;->next:Ljavax/cache/Cache$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5210
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.77;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;->next()Ljavax/cache/Cache$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljavax/cache/Cache$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 5223
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.77;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;->next:Ljavax/cache/Cache$Entry;

    if-nez v1, :cond_0

    .line 5224
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 5226
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;->next:Ljavax/cache/Cache$Entry;

    .line 5228
    .local v0, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;->advance()V

    .line 5230
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 5234
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.77;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
