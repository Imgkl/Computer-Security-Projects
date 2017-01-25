.class public interface abstract Lorg/apache/ignite/spi/deployment/DeploymentResource;
.super Ljava/lang/Object;
.source "DeploymentResource.java"


# virtual methods
.method public abstract getClassLoader()Ljava/lang/ClassLoader;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getResourceClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method
