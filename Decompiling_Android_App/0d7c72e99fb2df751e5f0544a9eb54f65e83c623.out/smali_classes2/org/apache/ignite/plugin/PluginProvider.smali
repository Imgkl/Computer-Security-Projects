.class public interface abstract Lorg/apache/ignite/plugin/PluginProvider;
.super Ljava/lang/Object;
.source "PluginProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lorg/apache/ignite/plugin/PluginConfiguration;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract copyright()Ljava/lang/String;
.end method

.method public abstract createComponent(Lorg/apache/ignite/plugin/PluginContext;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/plugin/PluginContext;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract initExtensions(Lorg/apache/ignite/plugin/PluginContext;Lorg/apache/ignite/plugin/ExtensionRegistry;)V
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract onIgniteStart()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract onIgniteStop(Z)V
.end method

.method public abstract plugin()Lorg/apache/ignite/plugin/IgnitePlugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/plugin/IgnitePlugin;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract provideDiscoveryData(Ljava/util/UUID;)Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract receiveDiscoveryData(Ljava/util/UUID;Ljava/lang/Object;)V
.end method

.method public abstract start(Lorg/apache/ignite/plugin/PluginContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract stop(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract validateNewNode(Lorg/apache/ignite/cluster/ClusterNode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/plugin/PluginValidationException;
        }
    .end annotation
.end method

.method public abstract version()Ljava/lang/String;
.end method
