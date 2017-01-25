.class public Lorg/apache/ignite/internal/util/GridListSet;
.super Lorg/apache/ignite/internal/util/GridSerializableSet;
.source "GridListSet.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/GridSerializableSet",
        "<TV;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private comp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private strict:Z

.field private vals:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridListSet;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableSet;-><init>()V

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet;->comp:Ljava/util/Comparator;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/GridListSet;->strict:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableSet;-><init>()V

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    .line 74
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridListSet;->comp:Ljava/util/Comparator;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/GridListSet;->strict:Z

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Z)V
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TV;>;Z)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableSet;-><init>()V

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    .line 87
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridListSet;->comp:Ljava/util/Comparator;

    .line 88
    iput-boolean p2, p0, Lorg/apache/ignite/internal/util/GridListSet;->strict:Z

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/util/GridListSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/GridListSet",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    .local p1, "copy":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableSet;-><init>()V

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    .line 97
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridListSet;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 99
    :cond_0
    iget-object v0, p1, Lorg/apache/ignite/internal/util/GridListSet;->comp:Ljava/util/Comparator;

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet;->comp:Ljava/util/Comparator;

    .line 100
    iget-boolean v0, p1, Lorg/apache/ignite/internal/util/GridListSet;->strict:Z

    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/GridListSet;->strict:Z

    .line 102
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridListSet;->addAll(Ljava/util/Collection;)Z

    .line 103
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    .local p1, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridListSet;->addx(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addx(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    .local p1, "val":Ljava/lang/Object;, "TV;"
    const/4 v4, 0x0

    .line 135
    const-string/jumbo v5, "val"

    invoke-static {p1, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridListSet;->comp:Ljava/util/Comparator;

    if-nez v5, :cond_3

    .line 138
    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 139
    .local v3, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 198
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    :goto_0
    return-object v3

    .line 142
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v5, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object v3, v4

    .line 144
    goto :goto_0

    .line 147
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-boolean v5, p0, Lorg/apache/ignite/internal/util/GridListSet;->strict:Z

    if-eqz v5, :cond_7

    .line 148
    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TV;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 149
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 152
    .restart local v3    # "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 155
    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridListSet;->comp:Ljava/util/Comparator;

    invoke-interface {v5, v3, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 157
    .local v0, "c":I
    if-nez v0, :cond_5

    .line 158
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Inconsistent equals and compare methods."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 160
    :cond_5
    if-lez v0, :cond_4

    .line 162
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 164
    invoke-interface {v2, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    move-object v3, v4

    .line 166
    goto :goto_0

    .line 170
    .end local v0    # "c":I
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_6
    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v5, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object v3, v4

    .line 172
    goto :goto_0

    .line 176
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TV;>;"
    :cond_7
    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 177
    .restart local v3    # "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_0

    .line 180
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_9
    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .restart local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TV;>;"
    :cond_a
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 181
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 183
    .restart local v3    # "v":Ljava/lang/Object;, "TV;"
    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridListSet;->comp:Ljava/util/Comparator;

    invoke-interface {v5, v3, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_a

    .line 186
    :cond_b
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    .line 188
    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridListSet;->comp:Ljava/util/Comparator;

    invoke-interface {v5, v3, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-eqz v5, :cond_b

    .line 190
    invoke-interface {v2, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    move-object v3, v4

    .line 192
    goto/16 :goto_0

    .line 196
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_c
    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v5, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object v3, v4

    .line 198
    goto/16 :goto_0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 391
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/GridListSet;

    .line 393
    .local v0, "clone":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    iput-object v1, v0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    .line 394
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridListSet;->comp:Ljava/util/Comparator;

    iput-object v1, v0, Lorg/apache/ignite/internal/util/GridListSet;->comp:Ljava/util/Comparator;

    .line 395
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/GridListSet;->strict:Z

    iput-boolean v1, v0, Lorg/apache/ignite/internal/util/GridListSet;->strict:Z

    .line 397
    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet;->comp:Ljava/util/Comparator;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 337
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    const-string/jumbo v2, "val"

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridListSet;->comp:Ljava/util/Comparator;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/GridListSet;->strict:Z

    if-eqz v2, :cond_3

    .line 340
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 342
    .local v1, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    const/4 v2, 0x1

    .line 352
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :goto_0
    return v2

    .line 345
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridListSet;->comp:Ljava/util/Comparator;

    invoke-interface {v2, v1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    .line 349
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 352
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public copy()Lorg/apache/ignite/internal/util/GridListSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/GridListSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/GridListSet;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/GridListSet;-><init>(Lorg/apache/ignite/internal/util/GridListSet;)V

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridListSet;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "idx >= 0 && idx < size()"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 331
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 329
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    .local p1, "val":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    .line 297
    const-string/jumbo v3, "val"

    invoke-static {p1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridListSet;->comp:Ljava/util/Comparator;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lorg/apache/ignite/internal/util/GridListSet;->strict:Z

    if-nez v3, :cond_4

    .line 300
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 301
    .local v1, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    :goto_0
    return-object v1

    :cond_3
    move-object v1, v2

    .line 304
    goto :goto_0

    .line 307
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    sget-boolean v3, Lorg/apache/ignite/internal/util/GridListSet;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridListSet;->comp:Ljava/util/Comparator;

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lorg/apache/ignite/internal/util/GridListSet;->strict:Z

    if-nez v3, :cond_6

    :cond_5
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 309
    :cond_6
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 311
    .restart local v1    # "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 314
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridListSet;->comp:Ljava/util/Comparator;

    invoke-interface {v3, v1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_7

    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_8
    move-object v1, v2

    .line 318
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 234
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 240
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    const-string/jumbo v0, "val"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridListSet;->removex(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public removex(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    .local p1, "val":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    .line 253
    const-string/jumbo v3, "val"

    invoke-static {p1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridListSet;->comp:Ljava/util/Comparator;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lorg/apache/ignite/internal/util/GridListSet;->strict:Z

    if-nez v3, :cond_3

    .line 256
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 257
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 259
    .local v1, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 260
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 285
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v1

    :cond_2
    move-object v1, v2

    .line 266
    goto :goto_0

    .line 269
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_3
    sget-boolean v3, Lorg/apache/ignite/internal/util/GridListSet;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridListSet;->comp:Ljava/util/Comparator;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lorg/apache/ignite/internal/util/GridListSet;->strict:Z

    if-nez v3, :cond_5

    :cond_4
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 271
    :cond_5
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 272
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 275
    .restart local v1    # "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 276
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 281
    :cond_7
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridListSet;->comp:Ljava/util/Comparator;

    invoke-interface {v3, v1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_6

    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_8
    move-object v1, v2

    .line 285
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 371
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public strict()Z
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/GridListSet;->strict:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    const-class v0, Lorg/apache/ignite/internal/util/GridListSet;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSynchronized()Lorg/apache/ignite/internal/util/GridListSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/GridListSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    move-object v0, p0

    .line 413
    .local v0, "set":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    new-instance v1, Lorg/apache/ignite/internal/util/GridListSet$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/ignite/internal/util/GridListSet$1;-><init>(Lorg/apache/ignite/internal/util/GridListSet;Lorg/apache/ignite/internal/util/GridListSet;)V

    return-object v1
.end method

.method public values()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet;, "Lorg/apache/ignite/internal/util/GridListSet<TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridListSet;->vals:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
