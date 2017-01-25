.class final Lorg/apache/ignite/configuration/CacheConfiguration$1;
.super Ljava/lang/Object;
.source "CacheConfiguration.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgnitePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/configuration/CacheConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgnitePredicate",
        "<",
        "Lorg/apache/ignite/cluster/ClusterNode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 156
    check-cast p1, Lorg/apache/ignite/cluster/ClusterNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/configuration/CacheConfiguration$1;->apply(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 2
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 158
    const-string v1, "org.apache.ignite.cache.client"

    invoke-interface {p1, v1}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 160
    .local v0, "attr":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
