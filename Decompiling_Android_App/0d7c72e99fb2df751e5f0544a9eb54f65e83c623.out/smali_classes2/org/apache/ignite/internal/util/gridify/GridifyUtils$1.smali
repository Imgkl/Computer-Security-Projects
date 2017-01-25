.class final Lorg/apache/ignite/internal/util/gridify/GridifyUtils$1;
.super Ljava/lang/Object;
.source "GridifyUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->getIterator(Ljava/lang/Object;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$enumeration:Ljava/util/Enumeration;


# direct methods
.method constructor <init>(Ljava/util/Enumeration;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$1;->val$enumeration:Ljava/util/Enumeration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$1;->val$enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$1;->val$enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
