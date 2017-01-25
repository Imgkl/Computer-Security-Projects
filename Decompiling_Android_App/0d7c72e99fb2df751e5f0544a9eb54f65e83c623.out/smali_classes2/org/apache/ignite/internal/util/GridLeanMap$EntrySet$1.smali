.class Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;
.super Ljava/lang/Object;
.source "GridLeanMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet;->iterator()Ljava/util/Iterator;
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
.field private curEnt:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private idx:I

.field private mapIter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet;)V
    .locals 1

    .prologue
    .line 274
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->idx:I

    return-void
.end method

.method private getMapIterator(Z)Ljava/util/Iterator;
    .locals 1
    .param p1, "forceNew"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->mapIter:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 291
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap;

    # getter for: Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/GridLeanMap;->access$300(Lorg/apache/ignite/internal/util/GridLeanMap;)Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap;

    # getter for: Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/GridLeanMap;->access$300(Lorg/apache/ignite/internal/util/GridLeanMap;)Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->mapIter:Ljava/util/Iterator;

    .line 310
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->mapIter:Ljava/util/Iterator;

    return-object v0

    .line 294
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1$1;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->mapIter:Ljava/util/Iterator;

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet.1;"
    const/4 v0, 0x0

    .line 314
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap;

    # getter for: Lorg/apache/ignite/internal/util/GridLeanMap;->map:Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/GridLeanMap;->access$300(Lorg/apache/ignite/internal/util/GridLeanMap;)Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->getMapIterator(Z)Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 274
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet.1;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet.1;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 321
    :cond_0
    iget v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->idx:I

    .line 323
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->getMapIterator(Z)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->curEnt:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 327
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet.1;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->curEnt:Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    .line 328
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 330
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->curEnt:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridLeanMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->curEnt:Ljava/util/Map$Entry;

    .line 334
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->getMapIterator(Z)Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->mapIter:Ljava/util/Iterator;

    .line 336
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->idx:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->mapIter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->mapIter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_1
    iget v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->idx:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->idx:I

    .line 340
    return-void
.end method
