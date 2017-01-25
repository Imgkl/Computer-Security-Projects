.class final Lorg/apache/ignite/internal/util/F0$7;
.super Ljava/lang/Object;
.source "F0.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/F0;->and([Lorg/apache/ignite/lang/IgnitePredicate;[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;
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
.field final synthetic val$e1:Z

.field final synthetic val$e2:Z

.field final synthetic val$p1:[Lorg/apache/ignite/lang/IgnitePredicate;

.field final synthetic val$p2:[Lorg/apache/ignite/lang/IgnitePredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 316
    const-class v0, Lorg/apache/ignite/internal/util/F0;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/F0$7;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Z[Lorg/apache/ignite/lang/IgnitePredicate;Z[Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 0

    .prologue
    .line 316
    iput-boolean p1, p0, Lorg/apache/ignite/internal/util/F0$7;->val$e1:Z

    iput-object p2, p0, Lorg/apache/ignite/internal/util/F0$7;->val$p1:[Lorg/apache/ignite/lang/IgnitePredicate;

    iput-boolean p3, p0, Lorg/apache/ignite/internal/util/F0$7;->val$e2:Z

    iput-object p4, p0, Lorg/apache/ignite/internal/util/F0$7;->val$p2:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    .line 318
    iget-boolean v5, p0, Lorg/apache/ignite/internal/util/F0$7;->val$e1:Z

    if-nez v5, :cond_3

    .line 319
    sget-boolean v5, Lorg/apache/ignite/internal/util/F0$7;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/apache/ignite/internal/util/F0$7;->val$p1:[Lorg/apache/ignite/lang/IgnitePredicate;

    if-nez v5, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 321
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/F0$7;->val$p1:[Lorg/apache/ignite/lang/IgnitePredicate;

    .local v0, "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 322
    .local v3, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3, p1}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 334
    .end local v0    # "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    :cond_1
    :goto_1
    return v4

    .line 321
    .restart local v0    # "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    .end local v0    # "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    :cond_3
    iget-boolean v5, p0, Lorg/apache/ignite/internal/util/F0$7;->val$e2:Z

    if-nez v5, :cond_6

    .line 327
    sget-boolean v5, Lorg/apache/ignite/internal/util/F0$7;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lorg/apache/ignite/internal/util/F0$7;->val$p2:[Lorg/apache/ignite/lang/IgnitePredicate;

    if-nez v5, :cond_4

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 329
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/util/F0$7;->val$p2:[Lorg/apache/ignite/lang/IgnitePredicate;

    .restart local v0    # "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_2
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    .line 330
    .restart local v3    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    if-eqz v3, :cond_5

    invoke-interface {v3, p1}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 329
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 334
    .end local v0    # "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    :cond_6
    const/4 v4, 0x1

    goto :goto_1
.end method
