.class final Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$3;
.super Ljava/lang/Object;
.source "GridClientComputeImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/GridClientPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/client/GridClientPredicate",
        "<",
        "Lorg/apache/ignite/internal/client/GridClientNode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Lorg/apache/ignite/internal/client/GridClientNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$3;->apply(Lorg/apache/ignite/internal/client/GridClientNode;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/client/GridClientNode;)Z
    .locals 2
    .param p1, "e"    # Lorg/apache/ignite/internal/client/GridClientNode;

    .prologue
    .line 52
    const-string v0, "true"

    const-string v1, "org.apache.ignite.daemon"

    invoke-interface {p1, v1}, Lorg/apache/ignite/internal/client/GridClientNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
