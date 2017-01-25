.class public Lorg/apache/ignite/internal/processors/resource/GridResourceServiceInjector;
.super Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;
.source "GridResourceServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector",
        "<",
        "Ljava/util/Collection",
        "<",
        "Lorg/apache/ignite/services/Service;",
        ">;>;"
    }
.end annotation


# instance fields
.field private ignite:Lorg/apache/ignite/Ignite;


# direct methods
.method public constructor <init>(Lorg/apache/ignite/Ignite;)V
    .locals 1
    .param p1, "ignite"    # Lorg/apache/ignite/Ignite;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;-><init>(Ljava/lang/Object;)V

    .line 40
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceServiceInjector;->ignite:Lorg/apache/ignite/Ignite;

    .line 41
    return-void
.end method


# virtual methods
.method public inject(Lorg/apache/ignite/internal/processors/resource/GridResourceField;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V
    .locals 6
    .param p1, "field"    # Lorg/apache/ignite/internal/processors/resource/GridResourceField;
    .param p2, "target"    # Ljava/lang/Object;
    .param p4, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
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

    .prologue
    .line 46
    .local p3, "depCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceField;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/resources/ServiceResource;

    .line 48
    .local v0, "ann":Lorg/apache/ignite/resources/ServiceResource;
    invoke-interface {v0}, Lorg/apache/ignite/resources/ServiceResource;->proxyInterface()Ljava/lang/Class;

    move-result-object v2

    .line 52
    .local v2, "svcItf":Ljava/lang/Class;
    const-class v3, Ljava/lang/Void;

    if-ne v2, v3, :cond_1

    .line 53
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceServiceInjector;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v3}, Lorg/apache/ignite/Ignite;->services()Lorg/apache/ignite/IgniteServices;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/ignite/resources/ServiceResource;->serviceName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteServices;->service(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 57
    .local v1, "svc":Ljava/lang/Object;
    :goto_0
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceField;->getField()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v3, p2, v1}, Lorg/apache/ignite/internal/processors/resource/GridResourceUtils;->inject(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    :cond_0
    return-void

    .line 55
    .end local v1    # "svc":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceServiceInjector;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v3}, Lorg/apache/ignite/Ignite;->services()Lorg/apache/ignite/IgniteServices;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/ignite/resources/ServiceResource;->serviceName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/ignite/resources/ServiceResource;->proxySticky()Z

    move-result v5

    invoke-interface {v3, v4, v2, v5}, Lorg/apache/ignite/IgniteServices;->serviceProxy(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "svc":Ljava/lang/Object;
    goto :goto_0
.end method

.method public inject(Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V
    .locals 7
    .param p1, "mtd"    # Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;
    .param p2, "target"    # Ljava/lang/Object;
    .param p4, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
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

    .prologue
    .line 64
    .local p3, "depCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/resources/ServiceResource;

    .line 66
    .local v0, "ann":Lorg/apache/ignite/resources/ServiceResource;
    invoke-interface {v0}, Lorg/apache/ignite/resources/ServiceResource;->proxyInterface()Ljava/lang/Class;

    move-result-object v2

    .line 70
    .local v2, "svcItf":Ljava/lang/Class;
    const-class v4, Ljava/lang/Void;

    if-ne v2, v4, :cond_0

    .line 71
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceServiceInjector;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v4}, Lorg/apache/ignite/Ignite;->services()Lorg/apache/ignite/IgniteServices;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/ignite/resources/ServiceResource;->serviceName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteServices;->service(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 75
    .local v1, "svc":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 77
    .local v3, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 78
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setter does not have single parameter of required type [type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", setter="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 73
    .end local v1    # "svc":Ljava/lang/Object;
    .end local v3    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceServiceInjector;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v4}, Lorg/apache/ignite/Ignite;->services()Lorg/apache/ignite/IgniteServices;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/ignite/resources/ServiceResource;->serviceName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/apache/ignite/resources/ServiceResource;->proxySticky()Z

    move-result v6

    invoke-interface {v4, v5, v2, v6}, Lorg/apache/ignite/IgniteServices;->serviceProxy(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "svc":Ljava/lang/Object;
    goto :goto_0

    .line 81
    .restart local v3    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    if-eqz v1, :cond_2

    .line 82
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v4, p2, v1}, Lorg/apache/ignite/internal/processors/resource/GridResourceUtils;->inject(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    :cond_2
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic undeploy(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;->undeploy(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V

    return-void
.end method
