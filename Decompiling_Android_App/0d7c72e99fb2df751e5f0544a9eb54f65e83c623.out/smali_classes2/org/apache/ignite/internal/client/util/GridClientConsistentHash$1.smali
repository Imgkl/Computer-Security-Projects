.class Lorg/apache/ignite/internal/client/util/GridClientConsistentHash$1;
.super Ljava/lang/Object;
.source "GridClientConsistentHash.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/GridClientPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->node(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/client/GridClientPredicate",
        "<TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;

.field final synthetic val$exc:Ljava/util/Collection;

.field final synthetic val$inc:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 313
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridClientConsistentHash$1;, "Lorg/apache/ignite/internal/client/util/GridClientConsistentHash.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash$1;->this$0:Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;

    iput-object p2, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash$1;->val$inc:Ljava/util/Collection;

    iput-object p3, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash$1;->val$exc:Ljava/util/Collection;

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
    .line 315
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridClientConsistentHash$1;, "Lorg/apache/ignite/internal/client/util/GridClientConsistentHash.1;"
    .local p1, "n":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash$1;->val$inc:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash$1;->val$inc:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash$1;->val$exc:Ljava/util/Collection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash$1;->val$exc:Ljava/util/Collection;

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
