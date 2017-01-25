.class public interface abstract Lorg/apache/ignite/spi/deployment/DeploymentSpi;
.super Ljava/lang/Object;
.source "DeploymentSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpi;


# virtual methods
.method public abstract findResource(Ljava/lang/String;)Lorg/apache/ignite/spi/deployment/DeploymentResource;
.end method

.method public abstract register(Ljava/lang/ClassLoader;Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation
.end method

.method public abstract setListener(Lorg/apache/ignite/spi/deployment/DeploymentListener;)V
    .param p1    # Lorg/apache/ignite/spi/deployment/DeploymentListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract unregister(Ljava/lang/String;)Z
.end method
