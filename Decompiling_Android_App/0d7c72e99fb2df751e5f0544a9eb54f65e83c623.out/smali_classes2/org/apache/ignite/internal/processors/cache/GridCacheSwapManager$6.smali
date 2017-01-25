.class Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;
.super Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;
.source "GridCacheSwapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->iterator(I)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter",
        "<",
        "Ljava/util/Map$Entry",
        "<[B",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private done:Z

.field private it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<[B",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private offheap:Z

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

.field final synthetic val$part:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1155
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1155
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iput p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->val$part:I

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;-><init>()V

    .line 1158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->offheap:Z

    .line 1163
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->val$part:I

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offHeapIterator(I)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    .line 1165
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->advance()V

    .line 1166
    return-void
.end method

.method private advance()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1169
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1189
    :cond_0
    :goto_0
    return-void

    .line 1172
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V

    .line 1174
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->offheap:Z

    if-eqz v0, :cond_3

    .line 1175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->offheap:Z

    .line 1177
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->val$part:I

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapIterator(I)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    .line 1179
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1181
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1182
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V

    .line 1184
    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->done:Z

    goto :goto_0

    .line 1188
    :cond_3
    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->done:Z

    goto :goto_0
.end method


# virtual methods
.method protected onClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1207
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V

    .line 1209
    :cond_0
    return-void
.end method

.method protected onHasNext()Z
    .locals 1

    .prologue
    .line 1203
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onNext()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1155
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->onNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected onNext()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<[B",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1192
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->done:Z

    if-eqz v1, :cond_0

    .line 1193
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1195
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1197
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[BLorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;->advance()V

    .line 1199
    return-object v0
.end method
