.class public Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;
.super Lcom/eventgenie/android/activities/base/GenieListActivity;
.source "FloorplanHallListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity$HallColourAdapter;
    }
.end annotation


# static fields
.field public static final MAP_TYPE_EXTRA:Ljava/lang/String; = "map_type"

.field public static final MAP_TYPE_INTERACTIVE:I = 0x2

.field public static final MAP_TYPE_STATIC:I = 0x1


# instance fields
.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mHalls:[Ljava/lang/Object;

.field private mMapsCursor:Landroid/database/Cursor;

.field private mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

.field private mUseInteractiveMaps:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->mUseInteractiveMaps:Z

    .line 202
    return-void
.end method


# virtual methods
.method protected getListData([Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .param p1, "halls"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v3, "listData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 84
    aget-object v0, p1, v1

    check-cast v0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    .line 86
    .local v0, "h":Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v2, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v4, "name"

    invoke-virtual {v0}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v4, "colour"

    invoke-virtual {v0}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->getColour()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v4, "object"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "h":Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;
    .end local v2    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-object v3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v13, 0x1020014

    const/4 v6, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 99
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    sget-object v2, Lcom/eventgenie/android/ui/help/UIUtils$Layout;->GENERIC_LIST:Lcom/eventgenie/android/ui/help/UIUtils$Layout;

    invoke-static {v2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getAppropriateLayout(Lcom/eventgenie/android/ui/help/UIUtils$Layout;Lcom/eventgenie/android/activities/base/GenieActivity;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->setContentView(I)V

    .line 102
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 103
    .local v10, "intentBundle":Landroid/os/Bundle;
    if-eqz v10, :cond_0

    .line 104
    const-string v2, "map_type"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 105
    iput-boolean v11, p0, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->mUseInteractiveMaps:Z

    .line 109
    :cond_0
    new-instance v2, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v2}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    iput-object v2, p0, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    .line 111
    iget-boolean v2, p0, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->mUseInteractiveMaps:Z

    if-eqz v2, :cond_3

    .line 113
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->FLOORPLANS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->getInteractiveHalls(Landroid/content/Context;J)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->mHalls:[Ljava/lang/Object;

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ Number of halls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->mHalls:[Ljava/lang/Object;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->mHalls:[Ljava/lang/Object;

    array-length v2, v2

    if-le v2, v11, :cond_1

    .line 121
    new-instance v0, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity$HallColourAdapter;

    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->mHalls:[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->getListData([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$layout;->list_item_mapping_hall:I

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "name"

    aput-object v5, v4, v12

    const-string v5, "colour"

    aput-object v5, v4, v11

    new-array v5, v6, [I

    aput v13, v5, v12

    sget v6, Lcom/eventgenie/android/R$id;->color_indicator:I

    aput v6, v5, v11

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity$HallColourAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 127
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v2, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :goto_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 161
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMapping()Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 162
    return-void

    .line 130
    :cond_1
    const/4 v9, 0x0

    .line 131
    .local v9, "intent":Landroid/content/Intent;
    new-instance v9, Landroid/content/Intent;

    .end local v9    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    invoke-direct {v9, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->getDefaultHall(Landroid/content/Context;J)Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    move-result-object v8

    .line 134
    .local v8, "h":Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v7, "b":Landroid/os/Bundle;
    if-eqz v8, :cond_2

    .line 136
    const-string v2, "hall_filter"

    invoke-virtual {v7, v2, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 138
    :cond_2
    const-string/jumbo v2, "window_title"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->FLOORPLANS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v9, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v9}, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 141
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->finish()V

    goto :goto_0

    .line 145
    .end local v7    # "b":Landroid/os/Bundle;
    .end local v8    # "h":Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->STATICMAPS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 148
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getMaps()Lcom/genie_connect/android/db/access/DbMaps;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/genie_connect/android/db/access/DbMaps;->getMaps(I)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->mMapsCursor:Landroid/database/Cursor;

    .line 151
    new-instance v1, Landroid/widget/SimpleCursorAdapter;

    sget v3, Lcom/eventgenie/android/R$layout;->list_item_mapping_hall:I

    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->mMapsCursor:Landroid/database/Cursor;

    new-array v5, v11, [Ljava/lang/String;

    const-string v2, "name"

    aput-object v2, v5, v12

    new-array v6, v11, [I

    aput v13, v6, v12

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 156
    .local v1, "adapterCategories":Landroid/widget/ListAdapter;
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v2, v1}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->mMapsCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->close(Landroid/database/Cursor;)V

    .line 167
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onDestroy()V

    .line 168
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-boolean v5, p0, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->mUseInteractiveMaps:Z

    if-eqz v5, :cond_1

    .line 175
    iget-object v5, p0, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->mHalls:[Ljava/lang/Object;

    aget-object v1, v5, p3

    check-cast v1, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    .line 176
    .local v1, "h":Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->FLOORPLANS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v7, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v5, v6, v7}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "label":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .local v3, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v5, "window_title"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v5, "hall_filter"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 182
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 200
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "h":Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 186
    .end local v4    # "label":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->mMapsCursor:Landroid/database/Cursor;

    invoke-interface {v5, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 187
    iget-object v5, p0, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->mMapsCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->mMapsCursor:Landroid/database/Cursor;

    const-string v7, "imageUrl"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "imageUrl":Ljava/lang/String;
    iget-object v5, p0, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->mMapsCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->mMapsCursor:Landroid/database/Cursor;

    const-string v7, "name"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 189
    .restart local v4    # "label":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 191
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/eventgenie/android/activities/mapping/FloorplanImageActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .restart local v3    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 193
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string/jumbo v5, "window_title"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v5, "image_url"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;->startActivityCarefully(Landroid/content/Intent;)V

    goto :goto_0
.end method
