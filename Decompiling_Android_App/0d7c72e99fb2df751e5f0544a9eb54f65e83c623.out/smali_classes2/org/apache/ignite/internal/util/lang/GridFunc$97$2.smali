.class Lorg/apache/ignite/internal/util/lang/GridFunc$97$2;
.super Lorg/apache/ignite/internal/util/GridSerializableSet;
.source "GridFunc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc$97;->entrySet()Ljava/util/Set;
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
        "<TK;TV1;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$97;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/lang/GridFunc$97;)V
    .locals 0

    .prologue
    .line 3524
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$97$2;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$97;

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

    .line 3569
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    new-array v3, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    iget-object v4, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$97$2;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$97;

    # getter for: Lorg/apache/ignite/internal/util/lang/GridFunc$97;->ep:Lorg/apache/ignite/lang/IgnitePredicate;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/lang/GridFunc$97;->access$200(Lorg/apache/ignite/internal/util/lang/GridFunc$97;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/F;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$97$2;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$97;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/lang/GridFunc$97;->val$m:Ljava/util/Map;

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
    .line 3573
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$97$2;->iterator()Ljava/util/Iterator;

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV1;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 3527
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$97$2$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$97$2$1;-><init>(Lorg/apache/ignite/internal/util/lang/GridFunc$97$2;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3564
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove is not support for readonly map view."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 3559
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$97$2;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$97;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/lang/GridFunc$97;->val$m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$97$2;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$97;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/lang/GridFunc$97;->val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->size(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)I

    move-result v0

    return v0
.end method
