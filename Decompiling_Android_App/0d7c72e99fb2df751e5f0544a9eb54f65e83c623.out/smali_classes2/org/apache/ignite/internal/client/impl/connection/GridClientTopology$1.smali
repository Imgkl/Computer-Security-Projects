.class Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$1;
.super Ljava/lang/Object;
.source "GridClientTopology.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->updateTopology(Ljava/util/Collection;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;",
        "Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$1;->this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 164
    check-cast p1, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$1;->apply(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$1;->this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    # invokes: Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->prepareNode(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    invoke-static {v0, p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->access$100(Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    move-result-object v0

    return-object v0
.end method
