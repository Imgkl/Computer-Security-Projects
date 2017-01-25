.class Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$4;
.super Lorg/jsr166/ConcurrentLinkedDeque8;
.source "GridCacheMvccManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jsr166/ConcurrentLinkedDeque8",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheFuture",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private hash:I

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

.field final synthetic val$fut:Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)V
    .locals 1

    .prologue
    .line 366
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$4;->val$fut:Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;

    invoke-direct {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    .line 373
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$4;->val$fut:Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$4;->add(Ljava/lang/Object;)Z

    .line 374
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 384
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$4;->hash:I

    if-nez v0, :cond_0

    .line 378
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$4;->hash:I

    .line 380
    :cond_0
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$4;->hash:I

    return v0
.end method
