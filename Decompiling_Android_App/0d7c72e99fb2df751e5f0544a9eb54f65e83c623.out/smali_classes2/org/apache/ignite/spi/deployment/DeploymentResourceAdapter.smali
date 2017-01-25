.class public Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;
.super Ljava/lang/Object;
.source "DeploymentResourceAdapter.java"

# interfaces
.implements Lorg/apache/ignite/spi/deployment/DeploymentResource;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final clsLdr:Ljava/lang/ClassLoader;

.field private final name:Ljava/lang/String;

.field private final rsrcCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "clsLdr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "rsrcCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-boolean v0, Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 45
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;->name:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;->rsrcCls:Ljava/lang/Class;

    .line 49
    iput-object p3, p0, Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;->clsLdr:Ljava/lang/ClassLoader;

    .line 50
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 69
    if-ne p0, p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v1

    .line 72
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 73
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 75
    check-cast v0, Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;

    .line 77
    .local v0, "rsrc":Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;
    iget-object v3, p0, Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;->clsLdr:Ljava/lang/ClassLoader;

    iget-object v4, v0, Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;->clsLdr:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v1, :cond_4

    iget-object v3, p0, Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;->name:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v1, :cond_4

    iget-object v3, p0, Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;->rsrcCls:Ljava/lang/Class;

    iget-object v4, v0, Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;->rsrcCls:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v1, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;->clsLdr:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;->rsrcCls:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 85
    .local v0, "res":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;->rsrcCls:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 86
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;->clsLdr:Ljava/lang/ClassLoader;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 88
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-class v0, Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
