.class Lorg/apache/ignite/internal/util/GridLeanMap$Map1;
.super Ljava/util/AbstractMap;
.source "GridLeanMap.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/GridLeanMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Map1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected k1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field protected v1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 375
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map1<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 377
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map1<TK;TV;>;"
    .local p1, "k1":Ljava/lang/Object;, "TK;"
    .local p2, "v1":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 386
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->k1:Ljava/lang/Object;

    .line 387
    iput-object p2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->v1:Ljava/lang/Object;

    .line 388
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 421
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map1<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->k1:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->k1:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 426
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map1<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->k1:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->v1:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map1<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, p1, p2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 466
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map1<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map1$1;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap$Map1;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 431
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map1<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->k1:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->k1:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->v1:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 416
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map1<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map1<TK;TV;>;"
    const/4 v0, 0x1

    .line 392
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 445
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map1<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 447
    .local v0, "oldVal":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->k1:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->k1:Ljava/lang/Object;

    invoke-static {v1, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->k1:Ljava/lang/Object;

    .line 449
    iput-object p2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->v1:Ljava/lang/Object;

    .line 452
    :cond_1
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map1<TK;TV;>;"
    const/4 v2, 0x0

    .line 397
    const/4 v0, 0x0

    .line 399
    .local v0, "res":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->k1:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->v1:Ljava/lang/Object;

    .line 402
    iput-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->v1:Ljava/lang/Object;

    .line 403
    iput-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->k1:Ljava/lang/Object;

    .line 406
    .end local v0    # "res":Ljava/lang/Object;, "TV;"
    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 411
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map1<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map1;->k1:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
