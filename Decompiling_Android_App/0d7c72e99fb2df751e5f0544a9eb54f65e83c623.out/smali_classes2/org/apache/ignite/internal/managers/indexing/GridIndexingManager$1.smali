.class Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager$1;
.super Ljava/lang/Object;
.source "GridIndexingManager.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->query(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;

.field final synthetic val$res:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager$1;->this$0:Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager$1;->val$res:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager$1;->val$res:Ljava/util/Iterator;

    instance-of v1, v1, Ljava/lang/AutoCloseable;

    if-eqz v1, :cond_0

    .line 159
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager$1;->val$res:Ljava/util/Iterator;

    check-cast v1, Ljava/lang/AutoCloseable;

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager$1;->val$res:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager$1;->val$res:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
