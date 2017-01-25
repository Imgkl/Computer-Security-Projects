.class public Lorg/apache/ignite/cache/affinity/AffinityKey;
.super Ljava/lang/Object;
.source "AffinityKey.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private affKey:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    .local p0, "this":Lorg/apache/ignite/cache/affinity/AffinityKey;, "Lorg/apache/ignite/cache/affinity/AffinityKey<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lorg/apache/ignite/cache/affinity/AffinityKey;, "Lorg/apache/ignite/cache/affinity/AffinityKey<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Lorg/apache/ignite/cache/affinity/AffinityKey;->key:Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p2, "affKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lorg/apache/ignite/cache/affinity/AffinityKey;, "Lorg/apache/ignite/cache/affinity/AffinityKey<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lorg/apache/ignite/cache/affinity/AffinityKey;->key:Ljava/lang/Object;

    .line 96
    iput-object p2, p0, Lorg/apache/ignite/cache/affinity/AffinityKey;->affKey:Ljava/lang/Object;

    .line 97
    return-void
.end method


# virtual methods
.method public affinityKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/cache/affinity/AffinityKeyMapped;
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lorg/apache/ignite/cache/affinity/AffinityKey;, "Lorg/apache/ignite/cache/affinity/AffinityKey<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/AffinityKey;->key:Ljava/lang/Object;

    const-string v1, "key"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/AffinityKey;->affKey:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/AffinityKey;->key:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/AffinityKey;->affKey:Ljava/lang/Object;

    goto :goto_0
.end method

.method public affinityKey(Ljava/lang/Object;)V
    .locals 0
    .param p1, "affKey"    # Ljava/lang/Object;

    .prologue
    .line 141
    .local p0, "this":Lorg/apache/ignite/cache/affinity/AffinityKey;, "Lorg/apache/ignite/cache/affinity/AffinityKey<TK;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/affinity/AffinityKey;->affKey:Ljava/lang/Object;

    .line 142
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 180
    .local p0, "this":Lorg/apache/ignite/cache/affinity/AffinityKey;, "Lorg/apache/ignite/cache/affinity/AffinityKey<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/AffinityKey;->key:Ljava/lang/Object;

    const-string v1, "key"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/AffinityKey;->key:Ljava/lang/Object;

    check-cast p1, Lorg/apache/ignite/cache/affinity/AffinityKey;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lorg/apache/ignite/cache/affinity/AffinityKey;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 165
    .local p0, "this":Lorg/apache/ignite/cache/affinity/AffinityKey;, "Lorg/apache/ignite/cache/affinity/AffinityKey<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/AffinityKey;->key:Ljava/lang/Object;

    const-string v1, "key"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/AffinityKey;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public key()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lorg/apache/ignite/cache/affinity/AffinityKey;, "Lorg/apache/ignite/cache/affinity/AffinityKey<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/AffinityKey;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public key(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lorg/apache/ignite/cache/affinity/AffinityKey;, "Lorg/apache/ignite/cache/affinity/AffinityKey<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Lorg/apache/ignite/cache/affinity/AffinityKey;->key:Ljava/lang/Object;

    .line 115
    return-void
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
    .line 152
    .local p0, "this":Lorg/apache/ignite/cache/affinity/AffinityKey;, "Lorg/apache/ignite/cache/affinity/AffinityKey<TK;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/cache/affinity/AffinityKey;->key:Ljava/lang/Object;

    .line 153
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/cache/affinity/AffinityKey;->affKey:Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    .local p0, "this":Lorg/apache/ignite/cache/affinity/AffinityKey;, "Lorg/apache/ignite/cache/affinity/AffinityKey<TK;>;"
    const-class v0, Lorg/apache/ignite/cache/affinity/AffinityKey;

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
    .line 146
    .local p0, "this":Lorg/apache/ignite/cache/affinity/AffinityKey;, "Lorg/apache/ignite/cache/affinity/AffinityKey<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/AffinityKey;->key:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/AffinityKey;->affKey:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 148
    return-void
.end method
