.class public Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;
.super Ljava/lang/Object;
.source "IgfsModeResolver.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MAX_PATH_CACHE:I = 0x3e8


# instance fields
.field private childrenModesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/igfs/IgfsMode;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

.field private modes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Lorg/apache/ignite/igfs/IgfsMode;",
            ">;>;"
        }
    .end annotation
.end field

.field private modesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Lorg/apache/ignite/igfs/IgfsMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/igfs/IgfsMode;Ljava/util/List;)V
    .locals 3
    .param p1, "dfltMode"    # Lorg/apache/ignite/igfs/IgfsMode;
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsMode;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Lorg/apache/ignite/igfs/IgfsMode;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "modes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/typedef/T2<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;>;>;"
    const/16 v2, 0x3e8

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 53
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

    .line 55
    if-eqz p2, :cond_1

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    .local v0, "modes0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/ignite/internal/util/typedef/T2<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;>;>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver$1;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 66
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->modes:Ljava/util/ArrayList;

    .line 68
    new-instance v1, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;-><init>(I)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->modesCache:Ljava/util/Map;

    .line 69
    new-instance v1, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;-><init>(I)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->childrenModesCache:Ljava/util/Map;

    .line 71
    .end local v0    # "modes0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/ignite/internal/util/typedef/T2<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;>;>;"
    :cond_1
    return-void
.end method

.method private static startsWith(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;)Z
    .locals 7
    .param p0, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p1, "prefix"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 159
    invoke-virtual {p0}, Lorg/apache/ignite/igfs/IgfsPath;->components()Ljava/util/List;

    move-result-object v1

    .line 160
    .local v1, "p1Comps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/igfs/IgfsPath;->components()Ljava/util/List;

    move-result-object v2

    .line 162
    .local v2, "p2Comps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-le v3, v6, :cond_0

    move v3, v4

    .line 175
    :goto_0
    return v3

    .line 165
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 166
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    move v3, v5

    .line 168
    goto :goto_0

    .line 170
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    .line 171
    goto :goto_0

    .line 165
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v3, v5

    .line 175
    goto :goto_0
.end method


# virtual methods
.method public modesOrdered()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Lorg/apache/ignite/igfs/IgfsMode;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->modes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->modes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resolveChildrenModes(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/Set;
    .locals 6
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/igfs/IgfsMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    sget-boolean v4, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 114
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->modes:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 115
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 139
    :cond_1
    :goto_0
    return-object v1

    .line 117
    :cond_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->childrenModesCache:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 119
    .local v1, "children":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/igfs/IgfsMode;>;"
    if-nez v1, :cond_1

    .line 120
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "children":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/igfs/IgfsMode;>;"
    invoke-static {}, Lorg/apache/ignite/igfs/IgfsMode;->values()[Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v4

    array-length v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v5}, Ljava/util/HashSet;-><init>(IF)V

    .line 122
    .restart local v1    # "children":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/igfs/IgfsMode;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

    .line 124
    .local v3, "pathDefault":Lorg/apache/ignite/igfs/IgfsMode;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->modes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/typedef/T2;

    .line 125
    .local v0, "child":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/typedef/T2;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/igfs/IgfsPath;

    invoke-static {p1, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->startsWith(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 126
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/typedef/T2;->getValue()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "pathDefault":Lorg/apache/ignite/igfs/IgfsMode;
    check-cast v3, Lorg/apache/ignite/igfs/IgfsMode;

    .line 134
    .end local v0    # "child":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;>;"
    .restart local v3    # "pathDefault":Lorg/apache/ignite/igfs/IgfsMode;
    :cond_4
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->childrenModesCache:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 130
    .restart local v0    # "child":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;>;"
    :cond_5
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/typedef/T2;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/igfs/IgfsPath;

    invoke-static {v4, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->startsWith(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 131
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/typedef/T2;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public resolveMode(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;
    .locals 4
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 80
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 82
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->modes:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 83
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

    .line 103
    :cond_1
    :goto_0
    return-object v2

    .line 85
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->modesCache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/igfs/IgfsMode;

    .line 87
    .local v2, "mode":Lorg/apache/ignite/igfs/IgfsMode;
    if-nez v2, :cond_1

    .line 88
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->modes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/typedef/T2;

    .line 89
    .local v0, "entry":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/typedef/T2;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/igfs/IgfsPath;

    invoke-static {p1, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->startsWith(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/typedef/T2;->getValue()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mode":Lorg/apache/ignite/igfs/IgfsMode;
    check-cast v2, Lorg/apache/ignite/igfs/IgfsMode;

    .line 97
    .end local v0    # "entry":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;>;"
    .restart local v2    # "mode":Lorg/apache/ignite/igfs/IgfsMode;
    :cond_4
    if-nez v2, :cond_5

    .line 98
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

    .line 100
    :cond_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->modesCache:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
