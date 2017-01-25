.class interface abstract Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;
.super Ljava/lang/Object;
.source "GridResourceInjector.java"


# virtual methods
.method public abstract inject(Lorg/apache/ignite/internal/processors/resource/GridResourceField;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/resource/GridResourceField;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract inject(Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract undeploy(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V
.end method
