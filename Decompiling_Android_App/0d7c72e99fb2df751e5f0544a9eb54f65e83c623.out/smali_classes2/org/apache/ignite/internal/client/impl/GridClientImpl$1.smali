.class Lorg/apache/ignite/internal/client/impl/GridClientImpl$1;
.super Ljava/lang/Object;
.source "GridClientImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/GridClientPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/client/impl/GridClientImpl;->data(Ljava/lang/String;)Lorg/apache/ignite/internal/client/GridClientData;
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
.field final synthetic this$0:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

.field final synthetic val$cacheName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/client/impl/GridClientImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl$1;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl$1;->val$cacheName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 255
    check-cast p1, Lorg/apache/ignite/internal/client/GridClientNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientImpl$1;->apply(Lorg/apache/ignite/internal/client/GridClientNode;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/client/GridClientNode;)Z
    .locals 2
    .param p1, "e"    # Lorg/apache/ignite/internal/client/GridClientNode;

    .prologue
    .line 257
    invoke-interface {p1}, Lorg/apache/ignite/internal/client/GridClientNode;->caches()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl$1;->val$cacheName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridClientHasCacheFilter [cacheName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl$1;->val$cacheName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
