.class public interface abstract Lorg/apache/ignite/plugin/PluginContext;
.super Ljava/lang/Object;
.source "PluginContext.java"


# virtual methods
.method public abstract configuration()Lorg/apache/ignite/plugin/PluginConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lorg/apache/ignite/plugin/PluginConfiguration;",
            ">()TC;"
        }
    .end annotation
.end method

.method public abstract deregisterPort(ILorg/apache/ignite/spi/IgnitePortProtocol;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/ignite/spi/IgnitePortProtocol;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract deregisterPorts(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract grid()Lorg/apache/ignite/Ignite;
.end method

.method public abstract igniteConfiguration()Lorg/apache/ignite/configuration/IgniteConfiguration;
.end method

.method public abstract localNode()Lorg/apache/ignite/cluster/ClusterNode;
.end method

.method public abstract log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/ignite/IgniteLogger;"
        }
    .end annotation
.end method

.method public abstract nodes()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerPort(ILorg/apache/ignite/spi/IgnitePortProtocol;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/ignite/spi/IgnitePortProtocol;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation
.end method
