.class Lorg/apache/ignite/internal/util/lang/GridFunc$96$2;
.super Lorg/apache/ignite/internal/util/GridSerializableSet;
.source "GridFunc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc$96;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/GridSerializableSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$96;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/lang/GridFunc$96;)V
    .locals 0

    .prologue
    .line 3439
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$96$2;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$96;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3456
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    new-array v3, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    iget-object v4, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$96$2;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$96;

    # getter for: Lorg/apache/ignite/internal/util/lang/GridFunc$96;->ep:Lorg/apache/ignite/lang/IgnitePredicate;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/lang/GridFunc$96;->access$100(Lorg/apache/ignite/internal/util/lang/GridFunc$96;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/F;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$96$2;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$96;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/lang/GridFunc$96;->val$m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3460
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$96$2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3442
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$96$2;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$96;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/lang/GridFunc$96;->val$m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$96$2;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$96;

    # getter for: Lorg/apache/ignite/internal/util/lang/GridFunc$96;->ep:Lorg/apache/ignite/lang/IgnitePredicate;
    invoke-static {v2}, Lorg/apache/ignite/internal/util/lang/GridFunc$96;->access$100(Lorg/apache/ignite/internal/util/lang/GridFunc$96;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v3, v1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->iterator0(Ljava/lang/Iterable;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3451
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    new-array v3, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    iget-object v4, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$96$2;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$96;

    # getter for: Lorg/apache/ignite/internal/util/lang/GridFunc$96;->ep:Lorg/apache/ignite/lang/IgnitePredicate;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/lang/GridFunc$96;->access$100(Lorg/apache/ignite/internal/util/lang/GridFunc$96;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/F;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$96$2;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$96;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/lang/GridFunc$96;->val$m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 3446
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$96$2;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$96;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/lang/GridFunc$96;->val$m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$96$2;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$96;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/lang/GridFunc$96;->val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->size(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)I

    move-result v0

    return v0
.end method
