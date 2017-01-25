.class Lorg/apache/ignite/internal/util/GridConsistentHash$2;
.super Ljava/lang/Object;
.source "GridConsistentHash.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgnitePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/GridConsistentHash;->nodes(Ljava/lang/Object;ILjava/util/Collection;Ljava/util/Collection;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgnitePredicate",
        "<TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/GridConsistentHash;

.field final synthetic val$exc:Ljava/util/Collection;

.field final synthetic val$inc:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/GridConsistentHash;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 491
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash$2;, "Lorg/apache/ignite/internal/util/GridConsistentHash.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridConsistentHash$2;->this$0:Lorg/apache/ignite/internal/util/GridConsistentHash;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/GridConsistentHash$2;->val$inc:Ljava/util/Collection;

    iput-object p3, p0, Lorg/apache/ignite/internal/util/GridConsistentHash$2;->val$exc:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .prologue
    .line 493
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash$2;, "Lorg/apache/ignite/internal/util/GridConsistentHash.2;"
    .local p1, "n":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConsistentHash$2;->val$inc:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConsistentHash$2;->val$inc:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConsistentHash$2;->val$exc:Ljava/util/Collection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConsistentHash$2;->val$exc:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
