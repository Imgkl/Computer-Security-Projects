.class Lorg/apache/ignite/internal/util/lang/GridFunc$89$1;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc$89;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private cnt:I

.field private iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$89;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/lang/GridFunc$89;)V
    .locals 1

    .prologue
    .line 3107
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$89$1;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$89;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3108
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$89$1;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$89;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/lang/GridFunc$89;->val$col:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$89$1;->iter:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 3113
    iget v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$89$1;->cnt:I

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$89$1;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$89;

    iget v1, v1, Lorg/apache/ignite/internal/util/lang/GridFunc$89;->val$limit:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$89$1;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 3117
    iget v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$89$1;->cnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$89$1;->cnt:I

    .line 3119
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$89$1;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 3123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
