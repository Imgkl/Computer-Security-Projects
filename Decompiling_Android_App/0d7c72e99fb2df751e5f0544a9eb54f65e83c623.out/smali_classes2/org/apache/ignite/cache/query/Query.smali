.class public abstract Lorg/apache/ignite/cache/query/Query;
.super Ljava/lang/Object;
.source "Query.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final DFLT_PAGE_SIZE:I = 0x400

.field private static final serialVersionUID:J


# instance fields
.field private loc:Z

.field private pageSize:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lorg/apache/ignite/cache/query/Query;, "Lorg/apache/ignite/cache/query/Query<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x400

    iput v0, p0, Lorg/apache/ignite/cache/query/Query;->pageSize:I

    .line 50
    return-void
.end method


# virtual methods
.method public getPageSize()I
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lorg/apache/ignite/cache/query/Query;, "Lorg/apache/ignite/cache/query/Query<TR;>;"
    iget v0, p0, Lorg/apache/ignite/cache/query/Query;->pageSize:I

    return v0
.end method

.method public isLocal()Z
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lorg/apache/ignite/cache/query/Query;, "Lorg/apache/ignite/cache/query/Query<TR;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/cache/query/Query;->loc:Z

    return v0
.end method

.method public setLocal(Z)Lorg/apache/ignite/cache/query/Query;
    .locals 0
    .param p1, "loc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/apache/ignite/cache/query/Query",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lorg/apache/ignite/cache/query/Query;, "Lorg/apache/ignite/cache/query/Query<TR;>;"
    iput-boolean p1, p0, Lorg/apache/ignite/cache/query/Query;->loc:Z

    .line 94
    return-object p0
.end method

.method public setPageSize(I)Lorg/apache/ignite/cache/query/Query;
    .locals 2
    .param p1, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/ignite/cache/query/Query",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lorg/apache/ignite/cache/query/Query;, "Lorg/apache/ignite/cache/query/Query<TR;>;"
    if-gtz p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Page size must be above zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iput p1, p0, Lorg/apache/ignite/cache/query/Query;->pageSize:I

    .line 73
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lorg/apache/ignite/cache/query/Query;, "Lorg/apache/ignite/cache/query/Query<TR;>;"
    const-class v0, Lorg/apache/ignite/cache/query/Query;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
