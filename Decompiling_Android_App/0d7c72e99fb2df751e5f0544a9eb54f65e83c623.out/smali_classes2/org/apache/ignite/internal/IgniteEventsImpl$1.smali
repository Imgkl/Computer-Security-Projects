.class final Lorg/apache/ignite/internal/IgniteEventsImpl$1;
.super Ljava/lang/Object;
.source "IgniteEventsImpl.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgnitePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/IgniteEventsImpl;->compoundPredicate(Lorg/apache/ignite/lang/IgnitePredicate;[I)Lorg/apache/ignite/lang/IgnitePredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgnitePredicate",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$p:Lorg/apache/ignite/lang/IgnitePredicate;

.field final synthetic val$types:[I


# direct methods
.method constructor <init>([ILorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lorg/apache/ignite/internal/IgniteEventsImpl$1;->val$types:[I

    iput-object p2, p0, Lorg/apache/ignite/internal/IgniteEventsImpl$1;->val$p:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 273
    check-cast p1, Lorg/apache/ignite/events/Event;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/IgniteEventsImpl$1;->apply(Lorg/apache/ignite/events/Event;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/events/Event;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "t":Lorg/apache/ignite/events/Event;, "TT;"
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteEventsImpl$1;->val$types:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 276
    .local v3, "type":I
    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 277
    iget-object v4, p0, Lorg/apache/ignite/internal/IgniteEventsImpl$1;->val$p:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {v4, p1}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    .line 280
    .end local v3    # "type":I
    :goto_1
    return v4

    .line 275
    .restart local v3    # "type":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    .end local v3    # "type":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
