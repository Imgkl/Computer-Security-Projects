.class public final Lorg/apache/ignite/cache/query/TextQuery;
.super Lorg/apache/ignite/cache/query/Query;
.source "TextQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/cache/query/Query",
        "<",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private txt:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "txt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lorg/apache/ignite/cache/query/TextQuery;, "Lorg/apache/ignite/cache/query/TextQuery<TK;TV;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/apache/ignite/cache/query/Query;-><init>()V

    .line 59
    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/query/TextQuery;->setType(Ljava/lang/Class;)Lorg/apache/ignite/cache/query/TextQuery;

    .line 60
    invoke-virtual {p0, p2}, Lorg/apache/ignite/cache/query/TextQuery;->setText(Ljava/lang/String;)Lorg/apache/ignite/cache/query/TextQuery;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "txt"    # Ljava/lang/String;

    .prologue
    .line 47
    .local p0, "this":Lorg/apache/ignite/cache/query/TextQuery;, "Lorg/apache/ignite/cache/query/TextQuery<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/cache/query/Query;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/query/TextQuery;->setType(Ljava/lang/String;)Lorg/apache/ignite/cache/query/TextQuery;

    .line 49
    invoke-virtual {p0, p2}, Lorg/apache/ignite/cache/query/TextQuery;->setText(Ljava/lang/String;)Lorg/apache/ignite/cache/query/TextQuery;

    .line 50
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    .local p0, "this":Lorg/apache/ignite/cache/query/TextQuery;, "Lorg/apache/ignite/cache/query/TextQuery<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/query/TextQuery;->txt:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lorg/apache/ignite/cache/query/TextQuery;, "Lorg/apache/ignite/cache/query/TextQuery<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/query/TextQuery;->type:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic setLocal(Z)Lorg/apache/ignite/cache/query/Query;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 31
    .local p0, "this":Lorg/apache/ignite/cache/query/TextQuery;, "Lorg/apache/ignite/cache/query/TextQuery<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/query/TextQuery;->setLocal(Z)Lorg/apache/ignite/cache/query/TextQuery;

    move-result-object v0

    return-object v0
.end method

.method public setLocal(Z)Lorg/apache/ignite/cache/query/TextQuery;
    .locals 1
    .param p1, "loc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/apache/ignite/cache/query/TextQuery",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lorg/apache/ignite/cache/query/TextQuery;, "Lorg/apache/ignite/cache/query/TextQuery<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/apache/ignite/cache/query/Query;->setLocal(Z)Lorg/apache/ignite/cache/query/Query;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/query/TextQuery;

    return-object v0
.end method

.method public bridge synthetic setPageSize(I)Lorg/apache/ignite/cache/query/Query;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 31
    .local p0, "this":Lorg/apache/ignite/cache/query/TextQuery;, "Lorg/apache/ignite/cache/query/TextQuery<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/query/TextQuery;->setPageSize(I)Lorg/apache/ignite/cache/query/TextQuery;

    move-result-object v0

    return-object v0
.end method

.method public setPageSize(I)Lorg/apache/ignite/cache/query/TextQuery;
    .locals 1
    .param p1, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/ignite/cache/query/TextQuery",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lorg/apache/ignite/cache/query/TextQuery;, "Lorg/apache/ignite/cache/query/TextQuery<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/apache/ignite/cache/query/Query;->setPageSize(I)Lorg/apache/ignite/cache/query/Query;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/query/TextQuery;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)Lorg/apache/ignite/cache/query/TextQuery;
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/cache/query/TextQuery",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lorg/apache/ignite/cache/query/TextQuery;, "Lorg/apache/ignite/cache/query/TextQuery<TK;TV;>;"
    const-string v0, "txt"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lorg/apache/ignite/cache/query/TextQuery;->txt:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public setType(Ljava/lang/Class;)Lorg/apache/ignite/cache/query/TextQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/ignite/cache/query/TextQuery",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lorg/apache/ignite/cache/query/TextQuery;, "Lorg/apache/ignite/cache/query/TextQuery<TK;TV;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->typeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/cache/query/TextQuery;->setType(Ljava/lang/String;)Lorg/apache/ignite/cache/query/TextQuery;

    move-result-object v0

    return-object v0
.end method

.method public setType(Ljava/lang/String;)Lorg/apache/ignite/cache/query/TextQuery;
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/cache/query/TextQuery",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lorg/apache/ignite/cache/query/TextQuery;, "Lorg/apache/ignite/cache/query/TextQuery<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/query/TextQuery;->type:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Lorg/apache/ignite/cache/query/TextQuery;, "Lorg/apache/ignite/cache/query/TextQuery<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/cache/query/TextQuery;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
