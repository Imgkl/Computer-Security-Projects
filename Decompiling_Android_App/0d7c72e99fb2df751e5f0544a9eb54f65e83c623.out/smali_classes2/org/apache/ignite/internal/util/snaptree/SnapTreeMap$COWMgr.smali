.class Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;
.super Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;
.source "SnapTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "COWMgr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager",
        "<",
        "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 376
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;-><init>(Ljava/lang/Object;I)V

    .line 377
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;I)V
    .locals 0
    .param p2, "initialSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr<TK;TV;>;"
    .local p1, "initialValue":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;-><init>(Ljava/lang/Object;I)V

    .line 381
    return-void
.end method


# virtual methods
.method protected bridge synthetic cloneFrozen(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 374
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;->cloneFrozen(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;

    move-result-object v0

    return-object v0
.end method

.method protected cloneFrozen(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr<TK;TV;>;"
    .local p1, "frozenValue":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;)V

    return-object v0
.end method

.method protected bridge synthetic freezeAndClone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 374
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;->freezeAndClone(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;

    move-result-object v0

    return-object v0
.end method

.method protected freezeAndClone(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr<TK;TV;>;"
    .local p1, "value":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder<TK;TV;>;"
    iget-object v0, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->markShared(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 385
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;)V

    return-object v0
.end method
