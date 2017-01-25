.class final Lorg/apache/ignite/internal/util/IgniteUtils$14;
.super Ljava/lang/Object;
.source "IgniteUtils.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/IgniteUtils;->gridEvents([I)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$excl:[I


# direct methods
.method constructor <init>([I)V
    .locals 0

    .prologue
    .line 742
    iput-object p1, p0, Lorg/apache/ignite/internal/util/IgniteUtils$14;->val$excl:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Integer;)Z
    .locals 2
    .param p1, "i"    # Ljava/lang/Integer;

    .prologue
    .line 745
    iget-object v0, p0, Lorg/apache/ignite/internal/util/IgniteUtils$14;->val$excl:[I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->containsIntArray([II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 742
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/IgniteUtils$14;->apply(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method
