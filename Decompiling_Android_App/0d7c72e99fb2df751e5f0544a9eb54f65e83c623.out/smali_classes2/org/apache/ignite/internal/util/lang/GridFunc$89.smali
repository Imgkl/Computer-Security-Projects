.class final Lorg/apache/ignite/internal/util/lang/GridFunc$89;
.super Ljava/util/AbstractSet;
.source "GridFunc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->limit(Ljava/util/Set;I)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic val$col:Ljava/util/Set;

.field final synthetic val$limit:I


# direct methods
.method constructor <init>(Ljava/util/Set;I)V
    .locals 0

    .prologue
    .line 3105
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$89;->val$col:Ljava/util/Set;

    iput p2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$89;->val$limit:I

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3107
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$89$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$89$1;-><init>(Lorg/apache/ignite/internal/util/lang/GridFunc$89;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 3129
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$89;->val$col:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$89;->val$limit:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$89;->val$limit:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$89;->val$col:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0
.end method
