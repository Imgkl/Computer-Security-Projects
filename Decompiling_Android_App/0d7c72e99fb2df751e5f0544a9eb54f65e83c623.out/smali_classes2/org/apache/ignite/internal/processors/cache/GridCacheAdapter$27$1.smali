.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27$1;
.super Ljava/lang/Object;
.source "GridCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27;->op(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<TK;",
        "Ljavax/cache/processor/EntryProcessor",
        "<TK;TV;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27;)V
    .locals 0

    .prologue
    .line 2550
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2550
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27.1;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27$1;->apply(Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessor;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljavax/cache/processor/EntryProcessor;"
        }
    .end annotation

    .prologue
    .line 2552
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27.1;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27;->val$entryProcessor:Ljavax/cache/processor/EntryProcessor;

    return-object v0
.end method
