.class Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$2;
.super Ljava/lang/Object;
.source "GridClientAbstractProjection.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/GridClientPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->balancedNode(Lorg/apache/ignite/internal/client/GridClientNode;)Lorg/apache/ignite/internal/client/GridClientNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/client/GridClientPredicate",
        "<",
        "Lorg/apache/ignite/internal/client/GridClientNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;

.field final synthetic val$exclude:Lorg/apache/ignite/internal/client/GridClientNode;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;Lorg/apache/ignite/internal/client/GridClientNode;)V
    .locals 0

    .prologue
    .line 328
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$2;, "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$2;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;

    iput-object p2, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$2;->val$exclude:Lorg/apache/ignite/internal/client/GridClientNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 328
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$2;, "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection.2;"
    check-cast p1, Lorg/apache/ignite/internal/client/GridClientNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$2;->apply(Lorg/apache/ignite/internal/client/GridClientNode;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/client/GridClientNode;)Z
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/internal/client/GridClientNode;

    .prologue
    .line 330
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$2;, "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection.2;"
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$2;->val$exclude:Lorg/apache/ignite/internal/client/GridClientNode;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$2;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;

    iget-object v0, v0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->client:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    iget-object v0, v0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getProtocol()Lorg/apache/ignite/internal/client/GridClientProtocol;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/client/util/GridClientUtils;->restAvailable(Lorg/apache/ignite/internal/client/GridClientNode;Lorg/apache/ignite/internal/client/GridClientProtocol;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$2;, "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection.2;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filter nodes with available REST and exclude (probably due to connection failure) node: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$2;->val$exclude:Lorg/apache/ignite/internal/client/GridClientNode;

    invoke-interface {v1}, Lorg/apache/ignite/internal/client/GridClientNode;->nodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
