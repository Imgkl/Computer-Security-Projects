.class final Lorg/jsr166/ConcurrentHashMap8$MapEntry;
.super Ljava/lang/Object;
.source "ConcurrentHashMap8.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentHashMap8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final map:Lorg/jsr166/ConcurrentHashMap8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentHashMap8",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field val:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/jsr166/ConcurrentHashMap8",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3215
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$MapEntry;, "Lorg/jsr166/ConcurrentHashMap8$MapEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    .local p3, "map":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3216
    iput-object p1, p0, Lorg/jsr166/ConcurrentHashMap8$MapEntry;->key:Ljava/lang/Object;

    .line 3217
    iput-object p2, p0, Lorg/jsr166/ConcurrentHashMap8$MapEntry;->val:Ljava/lang/Object;

    .line 3218
    iput-object p3, p0, Lorg/jsr166/ConcurrentHashMap8$MapEntry;->map:Lorg/jsr166/ConcurrentHashMap8;

    .line 3219
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3227
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$MapEntry;, "Lorg/jsr166/ConcurrentHashMap8$MapEntry<TK;TV;>;"
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-eqz v3, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .local v1, "k":Ljava/lang/Object;
    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "v":Ljava/lang/Object;
    if-eqz v2, :cond_2

    iget-object v3, p0, Lorg/jsr166/ConcurrentHashMap8$MapEntry;->key:Ljava/lang/Object;

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lorg/jsr166/ConcurrentHashMap8$MapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Lorg/jsr166/ConcurrentHashMap8$MapEntry;->val:Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lorg/jsr166/ConcurrentHashMap8$MapEntry;->val:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "k":Ljava/lang/Object;
    .end local v2    # "v":Ljava/lang/Object;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3220
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$MapEntry;, "Lorg/jsr166/ConcurrentHashMap8$MapEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8$MapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3221
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$MapEntry;, "Lorg/jsr166/ConcurrentHashMap8$MapEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8$MapEntry;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 3222
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$MapEntry;, "Lorg/jsr166/ConcurrentHashMap8$MapEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8$MapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/jsr166/ConcurrentHashMap8$MapEntry;->val:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3243
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$MapEntry;, "Lorg/jsr166/ConcurrentHashMap8$MapEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 3244
    :cond_0
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8$MapEntry;->val:Ljava/lang/Object;

    .line 3245
    .local v0, "v":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lorg/jsr166/ConcurrentHashMap8$MapEntry;->val:Ljava/lang/Object;

    .line 3246
    iget-object v1, p0, Lorg/jsr166/ConcurrentHashMap8$MapEntry;->map:Lorg/jsr166/ConcurrentHashMap8;

    iget-object v2, p0, Lorg/jsr166/ConcurrentHashMap8$MapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lorg/jsr166/ConcurrentHashMap8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3247
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3223
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$MapEntry;, "Lorg/jsr166/ConcurrentHashMap8$MapEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jsr166/ConcurrentHashMap8$MapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsr166/ConcurrentHashMap8$MapEntry;->val:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
