.class Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1$1;
.super Ljava/lang/Object;
.source "GridLeanMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1;->iterator()Ljava/util/Iterator;
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
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private idx:I

.field final synthetic this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1;)V
    .locals 0

    .prologue
    .line 468
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 472
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1.1;"
    iget v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1$1;->idx:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map1;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->k1:Ljava/lang/Object;

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
    .line 468
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1.1;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1.1;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 479
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1$1;->idx:I

    .line 481
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map1;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map1;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->k1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map1;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->v1:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 485
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
