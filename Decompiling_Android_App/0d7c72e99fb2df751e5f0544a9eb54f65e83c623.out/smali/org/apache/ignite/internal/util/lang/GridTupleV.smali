.class public Lorg/apache/ignite/internal/util/lang/GridTupleV;
.super Ljava/lang/Object;
.source "GridTupleV.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Externalizable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private vals:[Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "cnt"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "cnt > 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 57
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTupleV;->vals:[Ljava/lang/Object;

    .line 58
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .param p1, "vals"    # [Ljava/lang/Object;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridTupleV;->vals:[Ljava/lang/Object;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/util/lang/GridTupleV;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/lang/GridTupleV;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTupleV;->vals:[Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 157
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "ignore":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 181
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lorg/apache/ignite/internal/util/lang/GridTupleV;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTupleV;->vals:[Ljava/lang/Object;

    check-cast p1, Lorg/apache/ignite/internal/util/lang/GridTupleV;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lorg/apache/ignite/internal/util/lang/GridTupleV;->vals:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I)TV;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTupleV;->vals:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "i < vals.length"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 80
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTupleV;->vals:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAll()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTupleV;->vals:[Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTupleV;->vals:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridTupleV$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridTupleV$1;-><init>(Lorg/apache/ignite/internal/util/lang/GridTupleV;)V

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readArray(Ljava/io/ObjectInput;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTupleV;->vals:[Ljava/lang/Object;

    .line 172
    return-void
.end method

.method public set(ILjava/lang/Object;)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(ITV;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p2, "v":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTupleV;->vals:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "i < vals.length"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 93
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTupleV;->vals:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 94
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs set(I[Ljava/lang/Object;)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "v"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    if-lez p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "pos > 0"

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 116
    array-length v0, p2

    add-int/2addr v0, p1

    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridTupleV;->vals:[Ljava/lang/Object;

    array-length v3, v3

    if-gt v0, v3, :cond_2

    :goto_1
    const-string/jumbo v0, "v.length + pos <= vals.length"

    invoke-static {v1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 118
    array-length v0, p2

    if-lez v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTupleV;->vals:[Ljava/lang/Object;

    array-length v1, p2

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 115
    goto :goto_0

    :cond_2
    move v1, v2

    .line 116
    goto :goto_1
.end method

.method public varargs set([Ljava/lang/Object;)V
    .locals 3
    .param p1, "v"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 102
    array-length v0, p1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridTupleV;->vals:[Ljava/lang/Object;

    array-length v2, v2

    if-gt v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v2, "v.length <= vals.length"

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 104
    array-length v0, p1

    if-lez v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTupleV;->vals:[Ljava/lang/Object;

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 102
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-class v0, Lorg/apache/ignite/internal/util/lang/GridTupleV;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTupleV;->vals:[Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeArray(Ljava/io/ObjectOutput;[Ljava/lang/Object;)V

    .line 167
    return-void
.end method
