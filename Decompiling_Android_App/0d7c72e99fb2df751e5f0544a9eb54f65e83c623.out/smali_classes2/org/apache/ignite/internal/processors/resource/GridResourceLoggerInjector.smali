.class public Lorg/apache/ignite/internal/processors/resource/GridResourceLoggerInjector;
.super Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;
.source "GridResourceLoggerInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector",
        "<",
        "Lorg/apache/ignite/IgniteLogger;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/ignite/IgniteLogger;)V
    .locals 0
    .param p1, "rsrc"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;-><init>(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method private resource(Lorg/apache/ignite/resources/LoggerResource;Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;
    .locals 4
    .param p1, "ann"    # Lorg/apache/ignite/resources/LoggerResource;
    .param p2, "target"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-interface {p1}, Lorg/apache/ignite/resources/LoggerResource;->categoryClass()Ljava/lang/Class;

    move-result-object v1

    .line 55
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p1}, Lorg/apache/ignite/resources/LoggerResource;->categoryName()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "cat":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/resource/GridResourceLoggerInjector;->getResource()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/IgniteLogger;

    .line 59
    .local v2, "rsrc":Lorg/apache/ignite/IgniteLogger;
    if-eqz v1, :cond_0

    const-class v3, Ljava/lang/Void;

    if-eq v1, v3, :cond_0

    .line 60
    invoke-interface {v2, v1}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    .line 66
    :goto_0
    return-object v2

    .line 61
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 62
    invoke-interface {v2, v0}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public inject(Lorg/apache/ignite/internal/processors/resource/GridResourceField;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V
    .locals 2
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
    .line 38
    .local p3, "depCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceField;->getField()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceField;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/resources/LoggerResource;

    invoke-direct {p0, v0, p2}, Lorg/apache/ignite/internal/processors/resource/GridResourceLoggerInjector;->resource(Lorg/apache/ignite/resources/LoggerResource;Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-static {v1, p2, v0}, Lorg/apache/ignite/internal/processors/resource/GridResourceUtils;->inject(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public inject(Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V
    .locals 2
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
    .line 44
    .local p3, "depCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/resources/LoggerResource;

    invoke-direct {p0, v0, p2}, Lorg/apache/ignite/internal/processors/resource/GridResourceLoggerInjector;->resource(Lorg/apache/ignite/resources/LoggerResource;Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-static {v1, p2, v0}, Lorg/apache/ignite/internal/processors/resource/GridResourceUtils;->inject(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic undeploy(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;->undeploy(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V

    return-void
.end method
