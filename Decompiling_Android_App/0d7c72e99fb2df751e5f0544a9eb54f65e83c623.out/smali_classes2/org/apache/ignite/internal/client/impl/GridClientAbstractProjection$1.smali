.class Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$1;
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


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;)V
    .locals 0

    .prologue
    .line 319
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$1;, "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$1;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 319
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$1;, "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection.1;"
    check-cast p1, Lorg/apache/ignite/internal/client/GridClientNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$1;->apply(Lorg/apache/ignite/internal/client/GridClientNode;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/client/GridClientNode;)Z
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/internal/client/GridClientNode;

    .prologue
    .line 321
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$1;, "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$1;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;

    iget-object v0, v0, Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;->client:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    iget-object v0, v0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getProtocol()Lorg/apache/ignite/internal/client/GridClientProtocol;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/client/util/GridClientUtils;->restAvailable(Lorg/apache/ignite/internal/client/GridClientNode;Lorg/apache/ignite/internal/client/GridClientProtocol;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$1;, "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection.1;"
    const-string v0, "Filter nodes with available REST."

    return-object v0
.end method
