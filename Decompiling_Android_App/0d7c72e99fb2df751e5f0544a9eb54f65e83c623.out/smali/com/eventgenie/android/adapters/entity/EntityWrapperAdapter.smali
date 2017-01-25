.class public Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EntityWrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/eventgenie/android/container/EntityWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private mDeleteListener:Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$DeleteRequestedListener;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/container/EntityWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/genie_connect/android/db/config/AppConfig;J)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p4, "namespace"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/container/EntityWrapper;",
            ">;",
            "Lcom/genie_connect/android/db/config/AppConfig;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/container/EntityWrapper;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/genie_connect/android/db/config/AppConfig;JLcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$DeleteRequestedListener;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/genie_connect/android/db/config/AppConfig;JLcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$DeleteRequestedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p4, "namespace"    # J
    .param p6, "listener"    # Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$DeleteRequestedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/container/EntityWrapper;",
            ">;",
            "Lcom/genie_connect/android/db/config/AppConfig;",
            "J",
            "Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$DeleteRequestedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/container/EntityWrapper;>;"
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_icon_text:I

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;->mList:Ljava/util/List;

    .line 45
    iput-object p6, p0, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;->mDeleteListener:Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$DeleteRequestedListener;

    .line 46
    invoke-virtual {p0, p2}, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;->append(Ljava/util/Collection;)V

    .line 47
    return-void
.end method

.method private addDeleteClickHandler(Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;)V
    .locals 1
    .param p1, "wrapper"    # Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;->mDeleteListener:Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$DeleteRequestedListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;->mDeleteListener:Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$DeleteRequestedListener;

    invoke-virtual {p1, v0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;->addDeleteRequestedListener(Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$DeleteRequestedListener;)V

    .line 128
    :cond_0
    return-void
.end method

.method private static getWrapperForEntity(Lcom/genie_connect/common/db/entityfactory/EGEntity;Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Landroid/content/Context;)Lcom/eventgenie/android/container/EntityWrapper;
    .locals 2
    .param p0, "item"    # Lcom/genie_connect/common/db/entityfactory/EGEntity;
    .param p1, "visitor"    # Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget-object v0, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->getEntityType()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 66
    const/4 v0, 0x0

    .end local p0    # "item":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :goto_0
    return-object v0

    .line 64
    .restart local p0    # "item":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_0
    new-instance v0, Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;

    check-cast p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;

    .end local p0    # "item":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    invoke-direct {v0, p0, p1, p2}, Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;-><init>(Lcom/genie_connect/common/db/model/ActivityStreamComment;Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Landroid/content/Context;)V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static wrapEntities(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/genie_connect/common/db/entityfactory/EGEntity;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/container/EntityWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<+Lcom/genie_connect/common/db/entityfactory/EGEntity;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v3, "wrappers":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/container/EntityWrapper;>;"
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v2

    .line 54
    .local v2, "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/common/db/entityfactory/EGEntity;

    .line 55
    .local v1, "item":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    invoke-static {v1, v2, p1}, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;->getWrapperForEntity(Lcom/genie_connect/common/db/entityfactory/EGEntity;Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Landroid/content/Context;)Lcom/eventgenie/android/container/EntityWrapper;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    .end local v1    # "item":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public append(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/eventgenie/android/container/EntityWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/eventgenie/android/container/EntityWrapper;>;"
    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;->notifyDataSetChanged()V

    .line 75
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 91
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 92
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/eventgenie/android/container/EntityWrapper;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/container/EntityWrapper;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;->getItem(I)Lcom/eventgenie/android/container/EntityWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;->getItem(I)Lcom/eventgenie/android/container/EntityWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/eventgenie/android/container/EntityWrapper;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 102
    move-object v1, p2

    .line 103
    .local v1, "row":Landroid/view/View;
    const/4 v2, 0x0

    .line 105
    .local v2, "wrapper":Lcom/eventgenie/android/adapters/entity/genericviewholders/GenericViewHolder;
    if-nez v1, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 107
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;->getItem(I)Lcom/eventgenie/android/container/EntityWrapper;

    move-result-object v3

    invoke-interface {v3}, Lcom/eventgenie/android/container/EntityWrapper;->getEntityType()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getLayoutForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 108
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;->getItem(I)Lcom/eventgenie/android/container/EntityWrapper;

    move-result-object v3

    invoke-interface {v3}, Lcom/eventgenie/android/container/EntityWrapper;->getEntityType()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/eventgenie/android/adapters/entity/genericviewholders/ViewHolderFactory;->getInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/view/View;)Lcom/eventgenie/android/adapters/entity/genericviewholders/AbstractViewHolder;

    move-result-object v2

    .line 110
    instance-of v3, v2, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 111
    check-cast v3, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;

    invoke-direct {p0, v3}, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;->addDeleteClickHandler(Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;)V

    .line 113
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 118
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;->getItem(I)Lcom/eventgenie/android/container/EntityWrapper;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/eventgenie/android/adapters/entity/genericviewholders/GenericViewHolder;->populateFrom(Lcom/eventgenie/android/container/EntityWrapper;)V

    .line 120
    return-object v1

    .line 115
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "wrapper":Lcom/eventgenie/android/adapters/entity/genericviewholders/GenericViewHolder;
    check-cast v2, Lcom/eventgenie/android/adapters/entity/genericviewholders/GenericViewHolder;

    .restart local v2    # "wrapper":Lcom/eventgenie/android/adapters/entity/genericviewholders/GenericViewHolder;
    goto :goto_0
.end method
