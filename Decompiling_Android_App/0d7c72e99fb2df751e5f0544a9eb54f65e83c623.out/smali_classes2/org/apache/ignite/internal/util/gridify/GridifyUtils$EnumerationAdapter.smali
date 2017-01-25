.class Lorg/apache/ignite/internal/util/gridify/GridifyUtils$EnumerationAdapter;
.super Ljava/lang/Object;
.source "GridifyUtils.java"

# interfaces
.implements Ljava/util/Enumeration;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/gridify/GridifyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumerationAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private col:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation
.end field

.field private transient iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p0, "this":Lorg/apache/ignite/internal/util/gridify/GridifyUtils$EnumerationAdapter;, "Lorg/apache/ignite/internal/util/gridify/GridifyUtils$EnumerationAdapter<TT;>;"
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p1, p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$EnumerationAdapter;->col:Ljava/util/Collection;

    .line 425
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$EnumerationAdapter;->iter:Ljava/util/Iterator;

    .line 426
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collection;Lorg/apache/ignite/internal/util/gridify/GridifyUtils$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Collection;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/gridify/GridifyUtils$1;

    .prologue
    .line 407
    .local p0, "this":Lorg/apache/ignite/internal/util/gridify/GridifyUtils$EnumerationAdapter;, "Lorg/apache/ignite/internal/util/gridify/GridifyUtils$EnumerationAdapter<TT;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$EnumerationAdapter;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    .local p0, "this":Lorg/apache/ignite/internal/util/gridify/GridifyUtils$EnumerationAdapter;, "Lorg/apache/ignite/internal/util/gridify/GridifyUtils$EnumerationAdapter<TT;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 449
    iget-object v0, p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$EnumerationAdapter;->col:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$EnumerationAdapter;->iter:Ljava/util/Iterator;

    .line 450
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    .local p0, "this":Lorg/apache/ignite/internal/util/gridify/GridifyUtils$EnumerationAdapter;, "Lorg/apache/ignite/internal/util/gridify/GridifyUtils$EnumerationAdapter<TT;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 459
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 430
    .local p0, "this":Lorg/apache/ignite/internal/util/gridify/GridifyUtils$EnumerationAdapter;, "Lorg/apache/ignite/internal/util/gridify/GridifyUtils$EnumerationAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$EnumerationAdapter;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "this":Lorg/apache/ignite/internal/util/gridify/GridifyUtils$EnumerationAdapter;, "Lorg/apache/ignite/internal/util/gridify/GridifyUtils$EnumerationAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$EnumerationAdapter;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
