.class Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;
.super Ljava/util/AbstractCollection;
.source "GridCacheStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntriesView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<",
        "Ljavax/cache/Cache$Entry",
        "<**>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private cleared:Z

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<*",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<*",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;>;"
        }
    .end annotation
.end field

.field private rmvd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 969
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<*",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<*",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 983
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<*Lorg/apache/ignite/lang/IgniteBiTuple<*Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 984
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 986
    :cond_0
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->map:Ljava/util/Map;

    .line 987
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$1;

    .prologue
    .line 970
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;

    .prologue
    .line 970
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->rmvd:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;Ljavax/cache/Cache$Entry;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;
    .param p1, "x1"    # Ljavax/cache/Cache$Entry;

    .prologue
    .line 970
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->addRemoved(Ljavax/cache/Cache$Entry;)V

    return-void
.end method

.method private addRemoved(Ljavax/cache/Cache$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/Cache$Entry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 1167
    .local p1, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<**>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->rmvd:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1168
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->rmvd:Ljava/util/Set;

    .line 1170
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->rmvd:Ljava/util/Set;

    invoke-interface {p1}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1171
    return-void
.end method

.method private mapContains(Ljavax/cache/Cache$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/Cache$Entry",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .line 1178
    .local p1, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<**>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->map:Ljava/util/Map;

    invoke-interface {p1}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 969
    check-cast p1, Ljavax/cache/Cache$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->add(Ljavax/cache/Cache$Entry;)Z

    move-result v0

    return v0
.end method

.method public add(Ljavax/cache/Cache$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/Cache$Entry",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .line 1085
    .local p1, "entry":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<**>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/cache/Cache$Entry",
            "<**>;>;)Z"
        }
    .end annotation

    .prologue
    .line 1090
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/cache/Cache$Entry<**>;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->cleared:Z

    .line 1161
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1001
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->cleared:Z

    if-nez v1, :cond_0

    instance-of v1, p1, Ljavax/cache/Cache$Entry;

    if-nez v1, :cond_1

    .line 1002
    :cond_0
    const/4 v1, 0x0

    .line 1006
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 1004
    check-cast v0, Ljavax/cache/Cache$Entry;

    .line 1006
    .local v0, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<**>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v2, 0x0

    .line 1114
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->cleared:Z

    if-eqz v3, :cond_0

    .line 1122
    :goto_0
    return v2

    .line 1117
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1118
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1122
    .end local v1    # "o":Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 996
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->cleared:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<**>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1011
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->cleared:Z

    if-eqz v1, :cond_0

    .line 1012
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->emptyIterator()Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v1

    .line 1016
    :goto_0
    return-object v1

    .line 1014
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1016
    .local v0, "it0":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<*Lorg/apache/ignite/lang/IgniteBiTuple<*Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1095
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->cleared:Z

    if-nez v2, :cond_0

    instance-of v2, p1, Ljavax/cache/Cache$Entry;

    if-nez v2, :cond_1

    .line 1109
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 1098
    check-cast v0, Ljavax/cache/Cache$Entry;

    .line 1100
    .local v0, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<**>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->rmvd:Ljava/util/Set;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->rmvd:Ljava/util/Set;

    invoke-interface {v0}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1103
    :cond_2
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->mapContains(Ljavax/cache/Cache$Entry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1104
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->addRemoved(Ljavax/cache/Cache$Entry;)V

    .line 1106
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1127
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->cleared:Z

    if-eqz v3, :cond_1

    .line 1128
    const/4 v1, 0x0

    .line 1137
    :cond_0
    return v1

    .line 1130
    :cond_1
    const/4 v1, 0x0

    .line 1132
    .local v1, "modified":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1133
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1134
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1142
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->cleared:Z

    if-eqz v3, :cond_1

    .line 1143
    const/4 v2, 0x0

    .line 1155
    :cond_0
    return v2

    .line 1145
    :cond_1
    const/4 v2, 0x0

    .line 1147
    .local v2, "modified":Z
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/Cache$Entry;

    .line 1148
    .local v0, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<**>;"
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1149
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->addRemoved(Ljavax/cache/Cache$Entry;)V

    .line 1151
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 991
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->cleared:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->rmvd:Ljava/util/Set;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->rmvd:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    :cond_1
    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1183
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1185
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/cache/Cache$Entry<**>;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1186
    const-string v3, "[]"

    .line 1196
    :goto_0
    return-object v3

    .line 1188
    :cond_0
    new-instance v2, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    const-string v3, "["

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>(Ljava/lang/String;)V

    .line 1191
    .local v2, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/Cache$Entry;

    .line 1193
    .local v0, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<**>;"
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1195
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1196
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1198
    :cond_1
    const-string v3, ", "

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto :goto_1
.end method
