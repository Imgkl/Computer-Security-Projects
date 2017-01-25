.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$12$1;
.super Ljava/lang/Object;
.source "GridCacheQueryManager.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteBiPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$12;->forSpace(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteBiPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteBiPredicate",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$12;

.field final synthetic val$fltr1:Lorg/apache/ignite/lang/IgniteBiPredicate;

.field final synthetic val$fltr2:Lorg/apache/ignite/lang/IgniteBiPredicate;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$12;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/lang/IgniteBiPredicate;)V
    .locals 0

    .prologue
    .line 1856
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$12$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$12;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$12$1;->val$fltr1:Lorg/apache/ignite/lang/IgniteBiPredicate;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$12$1;->val$fltr2:Lorg/apache/ignite/lang/IgniteBiPredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 1858
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$12$1;->val$fltr1:Lorg/apache/ignite/lang/IgniteBiPredicate;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/lang/IgniteBiPredicate;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$12$1;->val$fltr2:Lorg/apache/ignite/lang/IgniteBiPredicate;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/lang/IgniteBiPredicate;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
