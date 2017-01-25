.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$3;
.super Ljava/lang/Object;
.source "GridCacheAtomicReferenceImpl.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgnitePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->wrapperPredicate(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgnitePredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgnitePredicate",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

.field final synthetic val$val:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 193
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$3;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$3;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$3;->val$val:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$3;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl.3;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$3;->val$val:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$3;->val$val:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
