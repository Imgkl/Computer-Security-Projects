.class final Lorg/apache/ignite/internal/util/lang/GridFunc$97;
.super Lorg/apache/ignite/internal/util/GridSerializableMap;
.source "GridFunc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->viewReadOnly(Ljava/util/Map;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/GridSerializableMap",
        "<TK;TV1;>;"
    }
.end annotation


# instance fields
.field private ep:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic val$m:Ljava/util/Map;

.field final synthetic val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

.field final synthetic val$trans:Lorg/apache/ignite/lang/IgniteClosure;


# direct methods
.method constructor <init>([Lorg/apache/ignite/lang/IgnitePredicate;Ljava/util/Map;Lorg/apache/ignite/lang/IgniteClosure;)V
    .locals 1

    .prologue
    .line 3514
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$97;->val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$97;->val$m:Ljava/util/Map;

    iput-object p3, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$97;->val$trans:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableMap;-><init>()V

    .line 3516
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$97$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$97$1;-><init>(Lorg/apache/ignite/internal/util/lang/GridFunc$97;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$97;->ep:Lorg/apache/ignite/lang/IgnitePredicate;

    return-void
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/util/lang/GridFunc$97;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/lang/GridFunc$97;

    .prologue
    .line 3514
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$97;->ep:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 3604
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$97;->val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$97;->val$m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV1;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 3524
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$97$2;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$97$2;-><init>(Lorg/apache/ignite/internal/util/lang/GridFunc$97;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV1;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 3584
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$97;->val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3585
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$97;->val$m:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3587
    .local v0, "v":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 3588
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$97;->val$trans:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-interface {v1, v0}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3591
    .end local v0    # "v":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3579
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$97;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV1;)TV1;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 3595
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Put is not supported for readonly map view."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV1;"
        }
    .end annotation

    .prologue
    .line 3599
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove is not supported for readonly map view."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
