.class final Lorg/apache/ignite/internal/util/IgniteUtils$26;
.super Ljava/lang/Object;
.source "IgniteUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/IgniteUtils;->inetAddressesComparator(Z)Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/net/InetSocketAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$sameHost:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 8767
    iput-boolean p1, p0, Lorg/apache/ignite/internal/util/IgniteUtils$26;->val$sameHost:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 8767
    check-cast p1, Ljava/net/InetSocketAddress;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/net/InetSocketAddress;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/IgniteUtils$26;->compare(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)I
    .locals 5
    .param p1, "addr1"    # Ljava/net/InetSocketAddress;
    .param p2, "addr2"    # Ljava/net/InetSocketAddress;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 8769
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    .line 8784
    :cond_0
    :goto_0
    return v1

    .line 8772
    :cond_1
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8773
    :cond_2
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 8775
    :cond_3
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    .line 8778
    .local v0, "addr1Loopback":Z
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-ne v0, v4, :cond_4

    move v1, v3

    .line 8779
    goto :goto_0

    .line 8781
    :cond_4
    iget-boolean v3, p0, Lorg/apache/ignite/internal/util/IgniteUtils$26;->val$sameHost:Z

    if-eqz v3, :cond_6

    .line 8782
    if-eqz v0, :cond_5

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_5
    move v2, v1

    goto :goto_1

    .line 8784
    :cond_6
    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0
.end method
