.class public Lcom/genie_connect/common/utils/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mFirst:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT1;"
        }
    .end annotation
.end field

.field private mSecond:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT2;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;)V"
        }
    .end annotation

    .prologue
    .line 8
    .local p0, "this":Lcom/genie_connect/common/utils/Pair;, "Lcom/genie_connect/common/utils/Pair<TT1;TT2;>;"
    .local p1, "first":Ljava/lang/Object;, "TT1;"
    .local p2, "second":Ljava/lang/Object;, "TT2;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/genie_connect/common/utils/Pair;->mFirst:Ljava/lang/Object;

    .line 10
    iput-object p2, p0, Lcom/genie_connect/common/utils/Pair;->mSecond:Ljava/lang/Object;

    .line 11
    return-void
.end method


# virtual methods
.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT1;"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lcom/genie_connect/common/utils/Pair;, "Lcom/genie_connect/common/utils/Pair<TT1;TT2;>;"
    iget-object v0, p0, Lcom/genie_connect/common/utils/Pair;->mFirst:Ljava/lang/Object;

    return-object v0
.end method

.method public second()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT2;"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/genie_connect/common/utils/Pair;, "Lcom/genie_connect/common/utils/Pair<TT1;TT2;>;"
    iget-object v0, p0, Lcom/genie_connect/common/utils/Pair;->mSecond:Ljava/lang/Object;

    return-object v0
.end method
