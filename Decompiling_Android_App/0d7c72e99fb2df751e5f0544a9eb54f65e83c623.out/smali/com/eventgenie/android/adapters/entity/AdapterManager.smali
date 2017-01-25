.class public Lcom/eventgenie/android/adapters/entity/AdapterManager;
.super Ljava/lang/Object;
.source "AdapterManager.java"

# interfaces
.implements Lcom/genie_connect/android/db/QuerySettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/adapters/entity/AdapterManager$2;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method public static getAdapter(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Landroid/os/Bundle;)Landroid/support/v4/widget/SimpleCursorAdapter;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p3, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p4, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 97
    if-nez p4, :cond_0

    new-instance p4, Landroid/os/Bundle;

    .end local p4    # "bundle":Landroid/os/Bundle;
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 99
    .restart local p4    # "bundle":Landroid/os/Bundle;
    :cond_0
    sget-object v2, Lcom/eventgenie/android/adapters/entity/AdapterManager$2;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 122
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdapterManager - No adapter for entity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    :pswitch_0
    const-string v2, "query_setting_loc_display_mode"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    .line 102
    .local v0, "locationMode":Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;
    const-string v2, "query_setting_show_type"

    const/4 v3, 0x1

    invoke-virtual {p4, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 103
    .local v1, "showType":Z
    invoke-static {p0, p2, p3, v0, v1}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getExhibitorListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;Z)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v2

    .line 120
    .end local v0    # "locationMode":Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;
    .end local v1    # "showType":Z
    :goto_0
    return-object v2

    .line 105
    :pswitch_1
    invoke-static {p0, p2, p3}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getProductsListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v2

    goto :goto_0

    .line 108
    :pswitch_2
    invoke-static {p0, p2, p3}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getDownloadableListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;)Lcom/eventgenie/android/adapters/entity/DownloadableAdapter;

    move-result-object v2

    goto :goto_0

    .line 110
    :pswitch_3
    invoke-static {p0, p2, p3}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getNotesListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v2

    goto :goto_0

    .line 112
    :pswitch_4
    invoke-static {p0, p2, p3}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getPoiListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v2

    goto :goto_0

    .line 114
    :pswitch_5
    invoke-static {p0, p2, p3}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getQrCodeListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v2

    goto :goto_0

    .line 116
    :pswitch_6
    invoke-static {p0, p2, p3}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getSpeakerListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v2

    goto :goto_0

    .line 118
    :pswitch_7
    invoke-static {p0, p2, p3}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getVisitorListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v2

    goto :goto_0

    .line 120
    :pswitch_8
    invoke-static {p0, p2, p3}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getFavouriteSessionAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v2

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Ljava/util/List;)Landroid/widget/ListAdapter;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/genie_connect/android/db/config/AppConfig;",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/container/EntityWrapper;",
            ">;)",
            "Landroid/widget/ListAdapter;"
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/container/EntityWrapper;>;"
    new-instance v0, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/genie_connect/android/db/config/AppConfig;J)V

    return-object v0
.end method

.method private static getDownloadableListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;)Lcom/eventgenie/android/adapters/entity/DownloadableAdapter;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    const/4 v5, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 157
    new-instance v0, Lcom/eventgenie/android/adapters/entity/DownloadableAdapter;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {v1}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getLayoutForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)I

    move-result v2

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v3

    const-string v1, "fileType"

    aput-object v1, v4, v6

    const-string/jumbo v1, "thumbnailUrl"

    aput-object v1, v4, v7

    const-string v1, "fullDescription"

    aput-object v1, v4, v8

    new-array v5, v5, [I

    sget v1, Lcom/eventgenie/android/R$id;->name:I

    aput v1, v5, v3

    sget v1, Lcom/eventgenie/android/R$id;->type:I

    aput v1, v5, v6

    sget v1, Lcom/eventgenie/android/R$id;->photo:I

    aput v1, v5, v7

    sget v1, Lcom/eventgenie/android/R$id;->description:I

    aput v1, v5, v8

    const-string v6, "name"

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/FeatureConfig;->getDownloadFeatures()Lcom/genie_connect/android/db/config/features/DownloadFeatures;

    move-result-object v7

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v8

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/eventgenie/android/adapters/entity/DownloadableAdapter;-><init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;Lcom/genie_connect/android/db/config/features/GmListModifier;J)V

    return-object v0
.end method

.method public static getExhibitorListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;)Landroid/support/v4/widget/SimpleCursorAdapter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p3, "locationMode"    # Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    .prologue
    .line 173
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getExhibitorListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;Z)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getExhibitorListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;Z)Landroid/support/v4/widget/SimpleCursorAdapter;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p3, "locationMode"    # Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;
    .param p4, "showType"    # Z

    .prologue
    .line 183
    sget-object v2, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;->ExpandedLocation:Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_2

    .line 184
    const-string v13, "locations"

    .line 189
    .local v13, "locationColumn":Ljava/lang/String;
    :goto_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v12, "fieldNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v14, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v2, "name"

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    sget v2, Lcom/eventgenie/android/R$id;->name:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v2, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;->NoLocation:Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_0

    .line 196
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    sget v2, Lcom/eventgenie/android/R$id;->location:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getExhibitors()Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->showType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    const-string v2, "exhibitorType"

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    const-string v2, "colour"

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    sget v2, Lcom/eventgenie/android/R$id;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    sget v2, Lcom/eventgenie/android/R$id;->color_indicator:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_1
    const-string v2, "fullDescription"

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    const-string v2, "logoUrl"

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    sget v2, Lcom/eventgenie/android/R$id;->description:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    sget v2, Lcom/eventgenie/android/R$id;->photo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v2, Lcom/eventgenie/android/adapters/entity/ExhibitorAdapter;

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {v3}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getLayoutForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)I

    move-result v4

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-static {v14}, Lcom/a_vcard/com/android/internal/util/ArrayUtils;->toIntArray(Ljava/util/ArrayList;)[I

    move-result-object v7

    const-string v8, "name"

    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/FeatureConfig;->getExhibitorsFeatures()Lcom/genie_connect/android/db/config/features/ExhibitorFeatures;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v10

    move-object v3, p0

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v11}, Lcom/eventgenie/android/adapters/entity/ExhibitorAdapter;-><init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;Lcom/genie_connect/android/db/config/features/GmListModifier;J)V

    return-object v2

    .line 186
    .end local v12    # "fieldNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "locationColumn":Ljava/lang/String;
    .end local v14    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    const-string v13, "multilocations"

    .restart local v13    # "locationColumn":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private static getFavouriteSessionAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;)Landroid/support/v4/widget/SimpleCursorAdapter;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 135
    new-instance v0, Lcom/eventgenie/android/adapters/entity/FavouriteSessionCursorAdapter;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {v1}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getLayoutForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)I

    move-result v2

    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v3

    const-string v1, "runningTime_from"

    aput-object v1, v4, v6

    const-string v1, "runningTime_to"

    aput-object v1, v4, v7

    const-string v1, "eventDay"

    aput-object v1, v4, v8

    const-string v1, "location"

    aput-object v1, v4, v9

    const/4 v1, 0x5

    new-array v5, v1, [I

    sget v1, Lcom/eventgenie/android/R$id;->name:I

    aput v1, v5, v3

    sget v1, Lcom/eventgenie/android/R$id;->start:I

    aput v1, v5, v6

    sget v1, Lcom/eventgenie/android/R$id;->end:I

    aput v1, v5, v7

    sget v1, Lcom/eventgenie/android/R$id;->day:I

    aput v1, v5, v8

    sget v1, Lcom/eventgenie/android/R$id;->location:I

    aput v1, v5, v9

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/eventgenie/android/adapters/entity/FavouriteSessionCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    return-object v0
.end method

.method public static getLayoutForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)I
    .locals 3
    .param p0, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 227
    sget-object v1, Lcom/eventgenie/android/adapters/entity/AdapterManager$2;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual {p0}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 289
    :pswitch_0
    const/4 v0, 0x0

    .line 293
    .local v0, "methodResult":I
    :goto_0
    return v0

    .line 229
    .end local v0    # "methodResult":I
    :pswitch_1
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_entity_as_comment:I

    .line 230
    .restart local v0    # "methodResult":I
    goto :goto_0

    .line 232
    .end local v0    # "methodResult":I
    :pswitch_2
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_proofer_app:I

    .line 233
    .restart local v0    # "methodResult":I
    goto :goto_0

    .line 235
    .end local v0    # "methodResult":I
    :pswitch_3
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_entity_app:I

    .line 236
    .restart local v0    # "methodResult":I
    goto :goto_0

    .line 238
    .end local v0    # "methodResult":I
    :pswitch_4
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_article:I

    .line 239
    .restart local v0    # "methodResult":I
    goto :goto_0

    .line 241
    .end local v0    # "methodResult":I
    :pswitch_5
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_entity_downloadable:I

    .line 242
    .restart local v0    # "methodResult":I
    goto :goto_0

    .line 244
    .end local v0    # "methodResult":I
    :pswitch_6
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_entity_exhibitor:I

    .line 245
    .restart local v0    # "methodResult":I
    goto :goto_0

    .line 247
    .end local v0    # "methodResult":I
    :pswitch_7
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_entity_game:I

    .line 248
    .restart local v0    # "methodResult":I
    goto :goto_0

    .line 250
    .end local v0    # "methodResult":I
    :pswitch_8
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_entity_mapfacility:I

    .line 251
    .restart local v0    # "methodResult":I
    goto :goto_0

    .line 253
    .end local v0    # "methodResult":I
    :pswitch_9
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_entity_mapzone:I

    .line 254
    .restart local v0    # "methodResult":I
    goto :goto_0

    .line 256
    .end local v0    # "methodResult":I
    :pswitch_a
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_message:I

    .line 257
    .restart local v0    # "methodResult":I
    goto :goto_0

    .line 259
    .end local v0    # "methodResult":I
    :pswitch_b
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_entity_note:I

    .line 260
    .restart local v0    # "methodResult":I
    goto :goto_0

    .line 262
    .end local v0    # "methodResult":I
    :pswitch_c
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_entity_poi:I

    .line 263
    .restart local v0    # "methodResult":I
    goto :goto_0

    .line 265
    .end local v0    # "methodResult":I
    :pswitch_d
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_entity_product:I

    .line 266
    .restart local v0    # "methodResult":I
    goto :goto_0

    .line 268
    .end local v0    # "methodResult":I
    :pswitch_e
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_entity_qrcode:I

    .line 269
    .restart local v0    # "methodResult":I
    goto :goto_0

    .line 271
    .end local v0    # "methodResult":I
    :pswitch_f
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_session:I

    .line 272
    .restart local v0    # "methodResult":I
    goto :goto_0

    .line 274
    .end local v0    # "methodResult":I
    :pswitch_10
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_entity_speaker:I

    .line 275
    .restart local v0    # "methodResult":I
    goto :goto_0

    .line 277
    .end local v0    # "methodResult":I
    :pswitch_11
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_subsession:I

    .line 278
    .restart local v0    # "methodResult":I
    goto :goto_0

    .line 280
    .end local v0    # "methodResult":I
    :pswitch_12
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_entity_trophy:I

    .line 281
    .restart local v0    # "methodResult":I
    goto :goto_0

    .line 283
    .end local v0    # "methodResult":I
    :pswitch_13
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_entity_visitor:I

    .line 284
    .restart local v0    # "methodResult":I
    goto :goto_0

    .line 286
    .end local v0    # "methodResult":I
    :pswitch_14
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_favourite_session:I

    .line 287
    .restart local v0    # "methodResult":I
    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_d
        :pswitch_0
        :pswitch_5
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_10
        :pswitch_13
        :pswitch_14
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_f
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public static getMessagesAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;I)Landroid/support/v4/widget/SimpleCursorAdapter;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p3, "filterType"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x2

    .line 297
    new-instance v0, Lcom/eventgenie/android/adapters/entity/MessageAdapter;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MESSAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {v1}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getLayoutForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)I

    move-result v2

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "subject"

    aput-object v1, v4, v6

    if-ne p3, v3, :cond_0

    const-string v1, "recipient"

    :goto_0
    aput-object v1, v4, v7

    const-string/jumbo v1, "timestamp"

    aput-object v1, v4, v3

    const-string/jumbo v1, "type"

    aput-object v1, v4, v8

    new-array v5, v5, [I

    sget v1, Lcom/eventgenie/android/R$id;->message_subject:I

    aput v1, v5, v6

    sget v1, Lcom/eventgenie/android/R$id;->message_author:I

    aput v1, v5, v7

    sget v1, Lcom/eventgenie/android/R$id;->message_timestamp:I

    aput v1, v5, v3

    sget v1, Lcom/eventgenie/android/R$id;->icon:I

    aput v1, v5, v8

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/adapters/entity/MessageAdapter;-><init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[I)V

    return-object v0

    :cond_0
    const-string v1, "author"

    goto :goto_0
.end method

.method private static getNotesListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;)Landroid/support/v4/widget/SimpleCursorAdapter;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 315
    new-instance v0, Lcom/eventgenie/android/adapters/entity/NotesAdapter;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->NOTE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {v1}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getLayoutForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)I

    move-result v2

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v3

    const-string v1, "image"

    aput-object v1, v4, v6

    const-string v1, "fullDescription"

    aput-object v1, v4, v7

    new-array v5, v5, [I

    sget v1, Lcom/eventgenie/android/R$id;->name:I

    aput v1, v5, v3

    sget v1, Lcom/eventgenie/android/R$id;->photo:I

    aput v1, v5, v6

    sget v1, Lcom/eventgenie/android/R$id;->description:I

    aput v1, v5, v7

    const-string v6, "name"

    move-object v1, p0

    move-object v3, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/eventgenie/android/adapters/entity/NotesAdapter;-><init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;Lcom/genie_connect/android/db/config/AppConfig;)V

    return-object v0
.end method

.method private static getPoiListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;)Landroid/support/v4/widget/SimpleCursorAdapter;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 329
    new-instance v0, Lcom/eventgenie/android/adapters/entity/PoiAdapter;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {v1}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getLayoutForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)I

    move-result v2

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v3

    const-string/jumbo v1, "thumbUrl"

    aput-object v1, v4, v6

    const-string v1, "fullDescription"

    aput-object v1, v4, v7

    new-array v5, v5, [I

    sget v1, Lcom/eventgenie/android/R$id;->name:I

    aput v1, v5, v3

    sget v1, Lcom/eventgenie/android/R$id;->photo:I

    aput v1, v5, v6

    sget v1, Lcom/eventgenie/android/R$id;->description:I

    aput v1, v5, v7

    const-string v6, "name"

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/FeatureConfig;->getPoiFeatures()Lcom/genie_connect/android/db/config/features/PoiFeatures;

    move-result-object v7

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v8

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/eventgenie/android/adapters/entity/PoiAdapter;-><init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;Lcom/genie_connect/android/db/config/features/GmListModifier;J)V

    return-object v0
.end method

.method private static getProductsListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;)Landroid/support/v4/widget/SimpleCursorAdapter;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 347
    if-eqz p2, :cond_0

    const-string v1, "exhibitorName"

    invoke-interface {p2, v1}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 348
    new-array v4, v9, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v3

    const-string v1, "exhibitorName"

    aput-object v1, v4, v6

    const-string v1, "mainImageUrl"

    aput-object v1, v4, v7

    const-string v1, "fullDescription"

    aput-object v1, v4, v8

    .line 353
    .local v4, "cursorFields":[Ljava/lang/String;
    new-array v5, v9, [I

    sget v1, Lcom/eventgenie/android/R$id;->name:I

    aput v1, v5, v3

    sget v1, Lcom/eventgenie/android/R$id;->location:I

    aput v1, v5, v6

    sget v1, Lcom/eventgenie/android/R$id;->photo:I

    aput v1, v5, v7

    sget v1, Lcom/eventgenie/android/R$id;->description:I

    aput v1, v5, v8

    .line 362
    .local v5, "destinationFields":[I
    :goto_0
    new-instance v0, Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {v1}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getLayoutForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)I

    move-result v2

    const-string v6, "name"

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/FeatureConfig;->getProductFeatures()Lcom/genie_connect/android/db/config/features/ProductFeatures;

    move-result-object v7

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v8

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;-><init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;Lcom/genie_connect/android/db/config/features/GmListModifier;J)V

    .line 372
    .local v0, "entityImageIndexedCursorAdapter":Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;
    new-instance v1, Lcom/eventgenie/android/adapters/entity/AdapterManager$1;

    invoke-direct {v1}, Lcom/eventgenie/android/adapters/entity/AdapterManager$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;->setViewBinder(Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 388
    return-object v0

    .line 355
    .end local v0    # "entityImageIndexedCursorAdapter":Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;
    .end local v4    # "cursorFields":[Ljava/lang/String;
    .end local v5    # "destinationFields":[I
    :cond_0
    new-array v4, v8, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v3

    const-string v1, "mainImageUrl"

    aput-object v1, v4, v6

    const-string v1, "fullDescription"

    aput-object v1, v4, v7

    .line 359
    .restart local v4    # "cursorFields":[Ljava/lang/String;
    new-array v5, v8, [I

    sget v1, Lcom/eventgenie/android/R$id;->name:I

    aput v1, v5, v3

    sget v1, Lcom/eventgenie/android/R$id;->photo:I

    aput v1, v5, v6

    sget v1, Lcom/eventgenie/android/R$id;->description:I

    aput v1, v5, v7

    .restart local v5    # "destinationFields":[I
    goto :goto_0
.end method

.method private static getQrCodeListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;)Landroid/support/v4/widget/SimpleCursorAdapter;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 393
    new-instance v0, Lcom/eventgenie/android/adapters/entity/QrCodeAdapter;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->QRCODE_CUSTOM:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {v1}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getLayoutForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)I

    move-result v2

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v3

    const-string v1, "image"

    aput-object v1, v4, v6

    const-string v1, "fullDescription"

    aput-object v1, v4, v7

    new-array v5, v5, [I

    sget v1, Lcom/eventgenie/android/R$id;->name:I

    aput v1, v5, v3

    sget v1, Lcom/eventgenie/android/R$id;->photo:I

    aput v1, v5, v6

    sget v1, Lcom/eventgenie/android/R$id;->description:I

    aput v1, v5, v7

    const-string v6, "name"

    move-object v1, p0

    move-object v3, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/eventgenie/android/adapters/entity/QrCodeAdapter;-><init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;Lcom/genie_connect/android/db/config/AppConfig;)V

    return-object v0
.end method

.method public static getSessionListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;ZZ)Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p3, "showFavourites"    # Z
    .param p4, "isScheduleView"    # Z

    .prologue
    .line 408
    new-instance v0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;

    const/4 v3, 0x0

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {v1}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getLayoutForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)I

    move-result v6

    move-object v1, p0

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;IZZI)V

    return-object v0
.end method

.method private static getSpeakerListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;)Landroid/support/v4/widget/SimpleCursorAdapter;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    const/4 v5, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 414
    new-instance v0, Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {v1}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getLayoutForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)I

    move-result v2

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "fullTitleNames"

    aput-object v1, v4, v3

    const-string v1, "companyName"

    aput-object v1, v4, v6

    const-string v1, "mugShotUrl"

    aput-object v1, v4, v7

    const-string v1, "fullDescription"

    aput-object v1, v4, v8

    new-array v5, v5, [I

    sget v1, Lcom/eventgenie/android/R$id;->name:I

    aput v1, v5, v3

    sget v1, Lcom/eventgenie/android/R$id;->location:I

    aput v1, v5, v6

    sget v1, Lcom/eventgenie/android/R$id;->photo:I

    aput v1, v5, v7

    sget v1, Lcom/eventgenie/android/R$id;->description:I

    aput v1, v5, v8

    const-string v6, "lastNames"

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/FeatureConfig;->getSpeakerFeatures()Lcom/genie_connect/android/db/config/features/SpeakerFeatures;

    move-result-object v7

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v8

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;-><init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;Lcom/genie_connect/android/db/config/features/GmListModifier;J)V

    return-object v0
.end method

.method public static getSubsessionListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Landroid/database/Cursor;Z)Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "isAgendaView"    # Z

    .prologue
    const/4 v3, 0x0

    .line 430
    new-instance v0, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {v1}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getLayoutForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)I

    move-result v6

    move-object v1, p0

    move-object v2, p2

    move v4, v3

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;IZZI)V

    return-object v0
.end method

.method private static getVisitorListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;)Landroid/support/v4/widget/SimpleCursorAdapter;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    const/4 v5, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 435
    new-instance v0, Lcom/eventgenie/android/adapters/entity/VisitorCursorAdapter;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {v1}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getLayoutForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)I

    move-result v2

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "fullTitleNames"

    aput-object v1, v4, v3

    const-string v1, "companyName"

    aput-object v1, v4, v6

    const-string v1, "mugShotUrl"

    aput-object v1, v4, v7

    const-string v1, "fullDescription"

    aput-object v1, v4, v8

    new-array v5, v5, [I

    sget v1, Lcom/eventgenie/android/R$id;->name:I

    aput v1, v5, v3

    sget v1, Lcom/eventgenie/android/R$id;->location:I

    aput v1, v5, v6

    sget v1, Lcom/eventgenie/android/R$id;->photo:I

    aput v1, v5, v7

    sget v1, Lcom/eventgenie/android/R$id;->description:I

    aput v1, v5, v8

    const-string v6, "lastNames"

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v7

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v8

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/eventgenie/android/adapters/entity/VisitorCursorAdapter;-><init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;Lcom/genie_connect/android/db/config/features/GmListModifier;J)V

    return-object v0
.end method

.method public static getVisitorListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Lorg/json/JSONArray;)Landroid/widget/ListAdapter;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "data"    # Lorg/json/JSONArray;

    .prologue
    .line 451
    new-instance v0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;-><init>(Landroid/content/Context;Lorg/json/JSONArray;Lcom/genie_connect/android/db/config/AppConfig;J)V

    return-object v0
.end method

.method public static getWrappedAdapter(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Landroid/os/Bundle;)Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p3, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p4, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 86
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-ne p1, v0, :cond_0

    .line 87
    new-instance v0, Lcom/eventgenie/android/adapters/entity/wrapper/SectionCursorAdapterWrapper;

    const/4 v1, 0x1

    invoke-static {p0, p2, p3, v1, v2}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getSessionListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;ZZ)Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eventgenie/android/adapters/entity/wrapper/SectionCursorAdapterWrapper;-><init>(Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;)V

    .line 91
    :goto_0
    return-object v0

    .line 88
    :cond_0
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-ne p1, v0, :cond_1

    .line 89
    new-instance v0, Lcom/eventgenie/android/adapters/entity/wrapper/SectionCursorAdapterWrapper;

    invoke-static {p0, p2, p3, v2}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getSubsessionListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Landroid/database/Cursor;Z)Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eventgenie/android/adapters/entity/wrapper/SectionCursorAdapterWrapper;-><init>(Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;)V

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Lcom/eventgenie/android/adapters/entity/wrapper/SimpleCursorAdapterWrapper;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getAdapter(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Landroid/os/Bundle;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eventgenie/android/adapters/entity/wrapper/SimpleCursorAdapterWrapper;-><init>(Landroid/support/v4/widget/SimpleCursorAdapter;)V

    goto :goto_0
.end method
