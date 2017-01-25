.class Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AttributeFilter;
.super Ljava/lang/Object;
.source "ClusterGroupAdapter.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgnitePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttributeFilter"
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


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final name:Ljava/lang/String;

.field private final val:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 737
    iput-object p1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AttributeFilter;->name:Ljava/lang/String;

    .line 738
    iput-object p2, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AttributeFilter;->val:Ljava/lang/Object;

    .line 739
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$1;

    .prologue
    .line 722
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 722
    check-cast p1, Lorg/apache/ignite/cluster/ClusterNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AttributeFilter;->apply(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 2
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 743
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AttributeFilter;->val:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->attributes()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AttributeFilter;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AttributeFilter;->val:Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$AttributeFilter;->name:Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
