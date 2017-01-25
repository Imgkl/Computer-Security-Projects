.class Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$3;
.super Ljava/lang/Object;
.source "GridCacheProcessor.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cacheNames()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteClosure",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;)V
    .locals 0

    .prologue
    .line 1224
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1224
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$3;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1226
    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->unmaskNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
