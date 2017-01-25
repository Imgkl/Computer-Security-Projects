.class final Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$21;
.super Ljava/lang/Object;
.source "GridCacheUtils.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteReducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->mapsReducer(I)Lorg/apache/ignite/lang/IgniteReducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteReducer",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final ret:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic val$size:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    .prologue
    .line 884
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$21;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$21;->val$size:I

    invoke-direct {v0, v1}, Lorg/jsr166/ConcurrentHashMap8;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$21;->ret:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic collect(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 884
    check-cast p1, Ljava/util/Map;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$21;->collect(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public collect(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 888
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz p1, :cond_0

    .line 889
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$21;->ret:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 891
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic reduce()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 884
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$21;->reduce()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public reduce()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 895
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$21;->ret:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Map reducer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$21;->ret:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
