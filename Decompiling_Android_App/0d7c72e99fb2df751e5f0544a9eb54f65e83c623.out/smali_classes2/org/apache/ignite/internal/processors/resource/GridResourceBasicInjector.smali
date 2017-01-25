.class Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;
.super Ljava/lang/Object;
.source "GridResourceBasicInjector.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;"
    }
.end annotation


# instance fields
.field private final rsrc:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;, "Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector<TT;>;"
    .local p1, "rsrc":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;->rsrc:Ljava/lang/Object;

    .line 39
    return-void
.end method


# virtual methods
.method public getResource()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;, "Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;->rsrc:Ljava/lang/Object;

    return-object v0
.end method

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
    .line 53
    .local p0, "this":Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;, "Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector<TT;>;"
    .local p3, "depCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceField;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;->rsrc:Ljava/lang/Object;

    invoke-static {v0, p2, v1}, Lorg/apache/ignite/internal/processors/resource/GridResourceUtils;->inject(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
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
    .line 59
    .local p0, "this":Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;, "Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector<TT;>;"
    .local p3, "depCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;->rsrc:Ljava/lang/Object;

    invoke-static {v0, p2, v1}, Lorg/apache/ignite/internal/processors/resource/GridResourceUtils;->inject(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;, "Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector<TT;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public undeploy(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V
    .locals 0
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .prologue
    .line 65
    .local p0, "this":Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;, "Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector<TT;>;"
    return-void
.end method
