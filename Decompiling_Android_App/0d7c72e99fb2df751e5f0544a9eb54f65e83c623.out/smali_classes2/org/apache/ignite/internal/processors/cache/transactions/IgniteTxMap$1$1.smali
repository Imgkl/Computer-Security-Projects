.class Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1$1;
.super Ljava/lang/Object;
.source "IgniteTxMap.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/GridSerializableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/GridSerializableIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field private cur:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation
.end field

.field private it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;)V
    .locals 1

    .prologue
    .line 95
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1$1;->this$1:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1$1;->this$1:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;->set:Ljava/util/Set;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;->access$100(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1$1;->it:Ljava/util/Iterator;

    .line 102
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1$1;->advance()V

    .line 103
    return-void
.end method

.method private advance()V
    .locals 3

    .prologue
    .line 125
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1$1;->cur:Ljava/util/Map$Entry;

    .line 127
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1$1;->cur:Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1$1;->it:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1$1;->it:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 130
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1$1;->this$1:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->filter:Lorg/apache/ignite/lang/IgnitePredicate;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->access$200(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1$1;->cur:Ljava/util/Map$Entry;

    goto :goto_0

    .line 133
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1$1;->cur:Ljava/util/Map$Entry;

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
    .line 95
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1$1;->cur:Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1$1;->cur:Ljava/util/Map$Entry;

    .line 115
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1$1;->advance()V

    .line 117
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
