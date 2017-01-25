.class final Lorg/apache/ignite/internal/util/IgniteUtils$18;
.super Ljava/lang/Object;
.source "IgniteUtils.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/IgniteUtils;->asIterable(Ljava/util/Enumeration;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$e:Ljava/util/Enumeration;


# direct methods
.method constructor <init>(Ljava/util/Enumeration;)V
    .locals 0

    .prologue
    .line 2658
    iput-object p1, p0, Lorg/apache/ignite/internal/util/IgniteUtils$18;->val$e:Ljava/util/Enumeration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2660
    new-instance v0, Lorg/apache/ignite/internal/util/IgniteUtils$18$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/IgniteUtils$18$1;-><init>(Lorg/apache/ignite/internal/util/IgniteUtils$18;)V

    return-object v0
.end method
