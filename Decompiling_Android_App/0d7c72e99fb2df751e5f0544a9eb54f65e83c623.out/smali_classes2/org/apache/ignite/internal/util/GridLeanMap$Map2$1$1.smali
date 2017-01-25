.class Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;
.super Ljava/lang/Object;
.source "GridLeanMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;->iterator()Ljava/util/Iterator;
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

.field private next:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;)V
    .locals 3

    .prologue
    .line 602
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map2;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2;->k1:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 609
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->idx:I

    .line 610
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map2;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map2;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map2;->k1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map2;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map2;->v1:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/GridLeanMap$Map2;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->next:Ljava/util/Map$Entry;

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map2;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2;->k2:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 613
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->idx:I

    .line 614
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map2;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map2;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map2;->k2:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map2;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map2;->v2:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/GridLeanMap$Map2;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->next:Ljava/util/Map$Entry;

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 619
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->next:Ljava/util/Map$Entry;

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
    .line 602
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1.1;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 623
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1.1;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 624
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 626
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->next:Ljava/util/Map$Entry;

    .line 628
    .local v0, "old":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->next:Ljava/util/Map$Entry;

    .line 630
    iget v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->idx:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map2;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map2;->k2:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 631
    const/4 v1, 0x2

    iput v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->idx:I

    .line 632
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map2;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map2;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map2;->k2:Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;

    iget-object v3, v3, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map2;

    iget-object v3, v3, Lorg/apache/ignite/internal/util/GridLeanMap$Map2;->v2:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/util/GridLeanMap$Map2;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;->next:Ljava/util/Map$Entry;

    .line 635
    :cond_1
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 639
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
