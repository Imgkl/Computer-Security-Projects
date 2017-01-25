.class final Lorg/apache/ignite/internal/util/lang/GridFunc$109;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->and([Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic val$ps:[Lorg/apache/ignite/lang/IgnitePredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4834
    const-class v0, Lorg/apache/ignite/internal/util/lang/GridFunc;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFunc$109;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>([Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 0

    .prologue
    .line 4834
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$109;->val$ps:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 4836
    .local p1, "t":Ljava/lang/Object;, "TT;"
    sget-boolean v4, Lorg/apache/ignite/internal/util/lang/GridFunc$109;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$109;->val$ps:[Lorg/apache/ignite/lang/IgnitePredicate;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 4838
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$109;->val$ps:[Lorg/apache/ignite/lang/IgnitePredicate;

    .local v0, "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 4839
    .local v3, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3, p1}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4840
    const/4 v4, 0x0

    .line 4842
    .end local v3    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    :goto_1
    return v4

    .line 4838
    .restart local v3    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4842
    .end local v3    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method
